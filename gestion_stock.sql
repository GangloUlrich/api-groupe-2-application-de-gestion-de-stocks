-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : Dim 07 mars 2021 à 09:45
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_stock`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id`, `firstname`, `lastname`, `email`, `password`, `grade`) VALUES
(1, 'Isaac', 'DAHOUE', 'isaacdahoue1@gmail.com', '123456789', '');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_03_02_103022_create_products_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('053dbd238fae94564bbb3179029159cd830ba7ed163eb9aada63b2ee8ce8dff5566cf77657d4e458', 4, 1, 'MyApp', '[]', 0, '2021-03-02 10:22:47', '2021-03-02 10:22:47', '2022-03-02 11:22:47'),
('4c6a81f0b1e0cce1b386a865f78d440e2491d03453d8414c27c95e7ea531967f5902c8fe6adb70dc', 4, 1, 'MyApp', '[]', 0, '2021-03-02 10:24:01', '2021-03-02 10:24:01', '2022-03-02 11:24:01'),
('4c8caadb93e1379a515de0025ac5ab5c5e80e6d6447025923d8da34bc696145986d6bb673e5fb1ad', 7, 1, 'MyApp', '[]', 0, '2021-03-02 17:05:48', '2021-03-02 17:05:48', '2022-03-02 18:05:48'),
('529cf9745a811c654ff2cf17efffe825920a1d0d1e4bda9935e4c4177cf7d192ff692b368241d81d', 2, 1, 'MyApp', '[]', 0, '2021-03-02 10:24:59', '2021-03-02 10:24:59', '2022-03-02 11:24:59'),
('53466f508b2c285adae5cfa6b541438967b736e110e40896661e3fd1a801ba2690f3b7e874c68aa0', 7, 1, 'MyApp', '[]', 0, '2021-03-02 17:06:21', '2021-03-02 17:06:21', '2022-03-02 18:06:21'),
('58d5fdd0f399b2ddd379e1be5d254a7b578ecb67fd82a9d84658051b352077a50b34fa18fa81560c', 6, 1, 'MyApp', '[]', 0, '2021-03-02 10:49:34', '2021-03-02 10:49:34', '2022-03-02 11:49:34'),
('830651b609bac708595147a04dc8db46a8372ff31da0b6c53ca083b3049f0f4d36d14335776864d3', 8, 1, 'MyApp', '[]', 0, '2021-03-06 19:20:48', '2021-03-06 19:20:48', '2022-03-06 20:20:48'),
('917c9dade27ef71d436a838e62b402feb982d72452dd43b34495a0f40636cf66f1383f1353044638', 2, 1, 'MyApp', '[]', 0, '2021-03-02 17:05:07', '2021-03-02 17:05:07', '2022-03-02 18:05:07'),
('a05fc63ce8e8d323455fe27444c2a67ba5ac15d630bddcce1386e475e4cc6a3c4128f51c7e0d7b47', 1, 1, 'MyApp', '[]', 0, '2021-03-02 10:20:11', '2021-03-02 10:20:11', '2022-03-02 11:20:11'),
('c0402780abbe8d01a5cd0633a1f476010c8ad62ff49e0815eaaf362cc06998e1e9daa4f4298d7f99', 2, 1, 'MyApp', '[]', 0, '2021-03-02 10:54:42', '2021-03-02 10:54:42', '2022-03-02 11:54:42'),
('c30548f9dfbd10819468967d56efc6995f85938dd2ef9781b30820bc5622ec0281d732f2962d14bd', 2, 1, 'MyApp', '[]', 0, '2021-03-02 10:48:18', '2021-03-02 10:48:18', '2022-03-02 11:48:18'),
('df5029af3f13e3f98ab7d1bd025eb896b89bb5eec6280180fb93cc92d0110d67bcbf0f64e0fb16df', 1, 1, 'MyApp', '[]', 0, '2021-03-02 10:25:38', '2021-03-02 10:25:38', '2022-03-02 11:25:38'),
('fce80e12ec59903755f6b15dd1f0803a493df9ada0e0f8f827ceb9ff405b6d425154eeb37c5d5662', 1, 1, 'MyApp', '[]', 0, '2021-03-02 10:28:24', '2021-03-02 10:28:24', '2022-03-02 11:28:24'),
('fecb261fce3f65d629945923e93f542e9a87503d46ae4ec6c5fa2be499b1fc81884127e97a28a534', 2, 1, 'MyApp', '[]', 0, '2021-03-02 10:21:22', '2021-03-02 10:21:22', '2022-03-02 11:21:22');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'J4lsSFT1eTFX7pxG9Dyung52iSQoY9V9nSfxpAWk', NULL, 'http://localhost', 1, 0, 0, '2021-03-01 22:17:11', '2021-03-01 22:17:11'),
(2, NULL, 'Laravel Password Grant Client', 'Gi46iOeTiV2CVShmuDrCOwjW9fraF2pjDYxZOeEW', 'users', 'http://localhost', 0, 1, 0, '2021-03-01 22:17:11', '2021-03-01 22:17:11');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-01 22:17:11', '2021-03-01 22:17:11');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_achat` double(8,2) NOT NULL,
  `price_vente` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `price_achat`, `price_vente`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Savons', 200.00, 250.00, 10, '2021-03-02 13:56:30', '2021-03-02 13:56:30'),
(2, 'Brosse', 300.00, 350.00, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'DAHOUE', 'isaacdahoue1@gmail.com', NULL, '$2y$10$/0e2IeJxkJOQuRWXB8LGgOf.7zYr5trrWSgq9igOFOZhAXdIeNGLm', NULL, '2021-03-02 10:20:11', '2021-03-02 10:20:11'),
(2, 'ZINSOU', 'zinsou@gmail.com', NULL, '$2y$10$XGPzYpPEXEcn/kQQ4QW/0e./YeFOFfF6nI73o4ZzmO4OmI7zW91fa', NULL, '2021-03-02 10:21:21', '2021-03-02 10:21:21'),
(4, 'Richard', 'Richard@gmail.com', NULL, '$2y$10$p.sqHwBcdr.Q.37xbM./6OUEyUKXD82wWx0cxNjkdpmH5kxFUlg.e', NULL, '2021-03-02 10:22:47', '2021-03-02 10:22:47'),
(6, 'Salomon', 'salomon@gmail.com', NULL, '$2y$10$KA1G1IIT/qX9oLDIQ4P0Oe2q9kBa1dwJDA0RbEucj84YAPDNRc9Wm', NULL, '2021-03-02 10:49:33', '2021-03-02 10:49:33'),
(7, 'Isaac', 'isaac@gmail.com', NULL, '$2y$10$.bqpdYVtbReX7E8Xih0AXud7zh2NDMJxAkJAvlcc3lOaJHqu3etve', NULL, '2021-03-02 17:05:48', '2021-03-02 17:05:48'),
(8, 'AGBAHOUNGBA Toundji', 'dahouei@gmail.com', NULL, '$2y$10$Co2sja4NDeSjZ4mkzN66beshwNWNVg8RvK/kDELdKdMPgME2R1YQq', NULL, '2021-03-06 19:20:48', '2021-03-06 19:20:48');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
