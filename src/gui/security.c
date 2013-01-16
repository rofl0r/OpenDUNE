/* $Id$ */

/** @file src/security.c Security routines. */

#include "types.h"

/**
 * Ask the security question to the user. Give him 3 times. If he fails,
 *  return false, otherwise true.
 * @return True if and only if the user answered one of the three questions
 *   correct.
 */
bool GUI_Security_Show(void)
{
	return true;	
}
