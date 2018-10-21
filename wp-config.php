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
define('DB_NAME', 'lupaws');

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
define('AUTH_KEY',         '}(xG2q~C)X)A+%HvM={5Z;r9kxL<M-b&u;R3p.U=rJ}$7C Z/h^cjfaMjBlM Ejp');
define('SECURE_AUTH_KEY',  '/WD[E,5)uA ,s9]`O11@c_0kY}wkijmhm5a7uQd1MW@j/0/.MN;@1xB>thmrdM{P');
define('LOGGED_IN_KEY',    'Qi9r3S<UUu2n I|hyHS:;Kd@qkD(SHsNH#Pt/%S,H*I)e0_= FDI& 4gTbKx<%=?');
define('NONCE_KEY',        'XDAD&Y Ol3utFK9JF>o,^6mM[y&hHCv.I1E@uBA1oG5gz8WA1__;7q_j<BfoBTs ');
define('AUTH_SALT',        'Vtn6PkBEWtE6d@nu0JcX1t/)TFp}],y6r=e}F3YQH]xqJtzDj!X<3Gt~;4>+44*&');
define('SECURE_AUTH_SALT', '8 2:>JlJt$(=$&JR`B<AS(@=YlKN?at~fr@#G&jz{$TF~Ke Iw!4w^AM(d!O*%xI');
define('LOGGED_IN_SALT',   '^#+R2*r3`ip!w44,S/H@$Ks^i)IzKY_V C[#,nRfpFO<G|acDx`~wda5R7t8Z>=+');
define('NONCE_SALT',       'b3%11lU#p7FPW[lpSmfn]@y:VGNB+lt!7as_gnl2p%`NGBOz6*qm]TY(v]y]2(f4');

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


/** Memory Limit */
define('WP_MEMORY_LIMIT', '256M');
define( 'WP_MAX_MEMORY_LIMIT', '256M' );
define( 'WP_CACHE', true );

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
