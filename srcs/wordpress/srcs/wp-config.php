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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'wpuser' );

/** MySQL database password */
define( 'DB_PASSWORD', 'wppassword' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Gjs9ALbLOe,)}p0)Q2m)>2g j]1Y=J%~.{/1 U(BfaufwXhUU3c{3ZwM?^Uj/WP4' );
define( 'SECURE_AUTH_KEY',  ';}=ub!AyUKlYt_SB8bi*SKMA8<?jZ3@z+pve]PC/2pJ8R+!s&zWhn-0>[jN6RLNl' );
define( 'LOGGED_IN_KEY',    'jE &o9eqx|X{@tvg]{-McUfX~7yShBI_;13],P%-TvVj+q;O3u$-G#t4Rvl12D#X' );
define( 'NONCE_KEY',        '#^Rf`Su,HR4$280&K[pk]Gr/sSY!_12f-u,rOHg(<|&4^)f7hyc62[ ^pN<Tbs12' );
define( 'AUTH_SALT',        'h6PI9>2j=Ny(>$5hqS@wEy$s/lx$A2/l+KTTgN<sJw NPim#sR5-NEg!mehwOG_P' );
define( 'SECURE_AUTH_SALT', 'jDLPw $ss4UE5~ip[C*I.tvPZqn|X;-jj8xPEeWP-or/tTN8S*cLq9vV30/3GX2z' );
define( 'LOGGED_IN_SALT',   'va7TGM.S^-.88>2 <~o.6TalP.E9oa>)j]]Az8@L;YoY0>>#pp=qyE_U?$VzP{3.' );
define( 'NONCE_SALT',       'i%xRBjt:#;fuk$nz|5pDb9q7TV24c_)`sI.9V@NbZ6x[.$C+8aV&W tl# NZo/^:' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';