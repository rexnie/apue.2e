#include "apue.h"

int
main(int argc, char *argv[])
{
	int nums_sgid = 0;
	gid_t *gids = NULL;
	int i;

	if((nums_sgid = getgroups(0, NULL)) < 0)
		err_sys("getgroups err");

	if((gids = malloc(sizeof(gid_t) * nums_sgid)) == NULL)
		err_sys("malloc for getgrops err");

	if(getgroups(nums_sgid, gids) < 0)
		err_sys("get groups err");

	for(i = 0; i < nums_sgid; i++)
		printf("%d: %d\n", i, gids[i]);
	free(gids);
	return 0;
}
