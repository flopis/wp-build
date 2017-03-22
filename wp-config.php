<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_vcs_templ2');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '}SJJb X$iK(@~hj|+3[gDQE$@oId)%)kUn>pZCc$+yYc.LiEqPK8XM?->|1H@.=_');
define('SECURE_AUTH_KEY',  'zlMpj7NS}Q:.38~m%@z$<R,E*H`mJVOSJRx7&DmUkUZVoc}~R9.`!Ql;-)X*WG5d');
define('LOGGED_IN_KEY',    ' MTLOxIPIH@*p+{3zRF5GS!WXEa}lJ;u!CENp|,{;mL~{LUB3Ae[|<` 6TW$/,)r');
define('NONCE_KEY',        't6bO*[IbZF[=&vV(>2z}sw-(M#`n-XcuC/j)$$x*Y`,l^af)[X~$B4s9c3;WKuGy');
define('AUTH_SALT',        'VpbK~n4A1ggu8* be/8VrRJ@:;.5@6/@I6NDur>^/=eQ1rJv(QF2@k$W&Z9&,D+t');
define('SECURE_AUTH_SALT', '&!y!`[^(g&ij]ZD(X)9tg>*CQG:WoTW=h]Q[+J!{n,sKuMK#xeC><fJq&Vx[5A]:');
define('LOGGED_IN_SALT',   '{YSpoVKr*%,2L&5|SJga3zhLh35;f/uqv`SZplk01nb9eVn-=s1f?ZRo<dxSv(2K');
define('NONCE_SALT',       'H>7=bXf^MvDlL[c~]%v>iIx}#&4=?1FQJ<j@~^l9 2|Td*{V^ITF}2X]HY]yCZw ');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
