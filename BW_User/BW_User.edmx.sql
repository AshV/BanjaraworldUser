
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/27/2016 00:24:31
-- Generated from EDMX file: D:\VS Projects\BanjaraWorld\User\BanjaraworldUser\BW_User\BW_User.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Chandan_Banjara_World];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[Chandan_Banjara_User].[FK_ftd_PlaceID_FK]', 'F') IS NOT NULL
    ALTER TABLE [Chandan_Banjara_User].[tbl_FeaturedPackage] DROP CONSTRAINT [FK_ftd_PlaceID_FK];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[FK_glr_PackageID_FK]', 'F') IS NOT NULL
    ALTER TABLE [Chandan_Banjara_User].[tbl_Gallery] DROP CONSTRAINT [FK_glr_PackageID_FK];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[FK_glr_PlaceID_FK]', 'F') IS NOT NULL
    ALTER TABLE [Chandan_Banjara_User].[tbl_Gallery] DROP CONSTRAINT [FK_glr_PlaceID_FK];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[FK_pkg_CancelPolicy_FK]', 'F') IS NOT NULL
    ALTER TABLE [Chandan_Banjara_User].[tbl_Package] DROP CONSTRAINT [FK_pkg_CancelPolicy_FK];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[FK_pkg_Subcategory_FK]', 'F') IS NOT NULL
    ALTER TABLE [Chandan_Banjara_User].[tbl_Package] DROP CONSTRAINT [FK_pkg_Subcategory_FK];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[FK_pkg_TermsAndCondions_FK]', 'F') IS NOT NULL
    ALTER TABLE [Chandan_Banjara_User].[tbl_Package] DROP CONSTRAINT [FK_pkg_TermsAndCondions_FK];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[FK_plg_PackageID_FK]', 'F') IS NOT NULL
    ALTER TABLE [Chandan_Banjara_User].[tbl_PlacePackage] DROP CONSTRAINT [FK_plg_PackageID_FK];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[FK_plg_PlaceID_FK]', 'F') IS NOT NULL
    ALTER TABLE [Chandan_Banjara_User].[tbl_PlacePackage] DROP CONSTRAINT [FK_plg_PlaceID_FK];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[FK_prc_PackageID_FK]', 'F') IS NOT NULL
    ALTER TABLE [Chandan_Banjara_User].[tbl_Price] DROP CONSTRAINT [FK_prc_PackageID_FK];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[FK_sct_CategoryID_FK]', 'F') IS NOT NULL
    ALTER TABLE [Chandan_Banjara_User].[tbl_Subcategory] DROP CONSTRAINT [FK_sct_CategoryID_FK];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[FK_try_FK]', 'F') IS NOT NULL
    ALTER TABLE [Chandan_Banjara_User].[tbl_Package] DROP CONSTRAINT [FK_try_FK];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[Chandan_Banjara_User].[tbl_Account]', 'U') IS NOT NULL
    DROP TABLE [Chandan_Banjara_User].[tbl_Account];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[tbl_CancelPolicy]', 'U') IS NOT NULL
    DROP TABLE [Chandan_Banjara_User].[tbl_CancelPolicy];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[tbl_Category]', 'U') IS NOT NULL
    DROP TABLE [Chandan_Banjara_User].[tbl_Category];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[tbl_Exclusion]', 'U') IS NOT NULL
    DROP TABLE [Chandan_Banjara_User].[tbl_Exclusion];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[tbl_FeaturedPackage]', 'U') IS NOT NULL
    DROP TABLE [Chandan_Banjara_User].[tbl_FeaturedPackage];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[tbl_Gallery]', 'U') IS NOT NULL
    DROP TABLE [Chandan_Banjara_User].[tbl_Gallery];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[tbl_Package]', 'U') IS NOT NULL
    DROP TABLE [Chandan_Banjara_User].[tbl_Package];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[tbl_Place]', 'U') IS NOT NULL
    DROP TABLE [Chandan_Banjara_User].[tbl_Place];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[tbl_PlacePackage]', 'U') IS NOT NULL
    DROP TABLE [Chandan_Banjara_User].[tbl_PlacePackage];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[tbl_Price]', 'U') IS NOT NULL
    DROP TABLE [Chandan_Banjara_User].[tbl_Price];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[tbl_Subcategory]', 'U') IS NOT NULL
    DROP TABLE [Chandan_Banjara_User].[tbl_Subcategory];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[tbl_TermsAndCondition]', 'U') IS NOT NULL
    DROP TABLE [Chandan_Banjara_User].[tbl_TermsAndCondition];
GO
IF OBJECT_ID(N'[Chandan_Banjara_User].[tbl_Tour]', 'U') IS NOT NULL
    DROP TABLE [Chandan_Banjara_User].[tbl_Tour];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tbl_Account'
CREATE TABLE [dbo].[tbl_Account] (
    [acc_UserID] nvarchar(25)  NOT NULL,
    [acc_Password] nvarchar(25)  NULL,
    [acc_Active] bit  NULL
);
GO

-- Creating table 'tbl_CancelPolicy'
CREATE TABLE [dbo].[tbl_CancelPolicy] (
    [cnp_ID] int IDENTITY(1,1) NOT NULL,
    [cnp_Name] nvarchar(25)  NULL,
    [cnp_Description] nvarchar(max)  NULL
);
GO

-- Creating table 'tbl_Category'
CREATE TABLE [dbo].[tbl_Category] (
    [cat_ID] int IDENTITY(1,1) NOT NULL,
    [cat_Name] nvarchar(25)  NULL,
    [cat_Descripton] nvarchar(max)  NULL,
    [cat_Priority] int  NULL,
    [cat_Active] bit  NULL,
    [cat_BannerImage] nvarchar(50)  NULL,
    [cat_SquareImage] nvarchar(50)  NULL,
    [cat_BackgroundImage1] nvarchar(50)  NULL,
    [cat_BackgroundImage2] nvarchar(50)  NULL
);
GO

-- Creating table 'tbl_Exclusion'
CREATE TABLE [dbo].[tbl_Exclusion] (
    [exc_ID] int IDENTITY(1,1) NOT NULL,
    [exc_Name] nvarchar(25)  NULL,
    [exc_Description] nvarchar(max)  NULL
);
GO

-- Creating table 'tbl_FeaturedPackage'
CREATE TABLE [dbo].[tbl_FeaturedPackage] (
    [ftp_ID] int IDENTITY(1,1) NOT NULL,
    [ftp_PlaceFK] int  NULL,
    [ftp_Priority] int  NULL
);
GO

-- Creating table 'tbl_Gallery'
CREATE TABLE [dbo].[tbl_Gallery] (
    [glr_ID] int IDENTITY(1,1) NOT NULL,
    [glr_Image] nvarchar(100)  NULL,
    [glr_Description] nvarchar(25)  NULL,
    [glr_Type] nvarchar(25)  NULL,
    [glr_PlaceID] int  NULL,
    [glr_PackageID] int  NULL
);
GO

-- Creating table 'tbl_Package'
CREATE TABLE [dbo].[tbl_Package] (
    [pkg_ID] int IDENTITY(1,1) NOT NULL,
    [pkf_Name] nvarchar(50)  NULL,
    [pkg_Subtitle] nvarchar(250)  NULL,
    [pkg_Overview] nvarchar(max)  NULL,
    [pkg_Description] nvarchar(max)  NULL,
    [pkg_Inclusion] nvarchar(max)  NULL,
    [pkg_DefaultSeason] bit  NULL,
    [pkg_DefaultRoom] nvarchar(1)  NULL,
    [pkg_DefaultDay] nvarchar(1)  NULL,
    [pkg_DayHeading1] nvarchar(25)  NULL,
    [pkg_DayItinerary1] nvarchar(max)  NULL,
    [pkg_DayHeading2] nvarchar(25)  NULL,
    [pkg_DayItinerary2] nvarchar(max)  NULL,
    [pkg_DayHeading3] nvarchar(25)  NULL,
    [pkg_DayItinerary3] nvarchar(max)  NULL,
    [pkg_Roomtype1] nvarchar(25)  NULL,
    [pkg_Roomtype2] nvarchar(25)  NULL,
    [pkg_Roomtype3] nvarchar(25)  NULL,
    [pkg_Priority] int  NULL,
    [pkg_Active] bit  NULL,
    [pkg_BannerImage] nvarchar(50)  NULL,
    [pkg_SquareImage] nvarchar(50)  NULL,
    [pkg_BackgroundImage1] nvarchar(50)  NULL,
    [pkg_BackgroundImage2] nvarchar(50)  NULL,
    [pkg_ExclusionFK] int  NULL,
    [pkg_TermsAndConditionFK] int  NULL,
    [pkg_CancelPolicyFK] int  NULL,
    [pkg_SubcategoryFK] int  NULL
);
GO

-- Creating table 'tbl_Place'
CREATE TABLE [dbo].[tbl_Place] (
    [plc_ID] int IDENTITY(1,1) NOT NULL,
    [plc_Description] nvarchar(max)  NULL,
    [plc_TimeToVisit] nvarchar(100)  NULL,
    [plc_Location] nvarchar(100)  NULL,
    [plc_Priority] int  NULL,
    [plc_Active] bit  NULL,
    [plc_BannerImage] nvarchar(50)  NULL,
    [plc_SquareImage] nvarchar(50)  NULL,
    [plc_BackgroundImage1] nvarchar(50)  NULL,
    [plc_BackgroundImage2] nvarchar(50)  NULL,
    [plc_Name] nvarchar(50)  NULL
);
GO

-- Creating table 'tbl_PlacePackage'
CREATE TABLE [dbo].[tbl_PlacePackage] (
    [plg_ID] int IDENTITY(1,1) NOT NULL,
    [plg_PackageID] int  NOT NULL,
    [plg_PlaceID] int  NOT NULL
);
GO

-- Creating table 'tbl_Price'
CREATE TABLE [dbo].[tbl_Price] (
    [prc_ID] int IDENTITY(1,1) NOT NULL,
    [prc_Coordinate] nvarchar(11)  NULL,
    [prc_PackageId] int  NULL,
    [prc_Price] int  NULL
);
GO

-- Creating table 'tbl_Subcategory'
CREATE TABLE [dbo].[tbl_Subcategory] (
    [sct_ID] int IDENTITY(1,1) NOT NULL,
    [sct_Name] nvarchar(25)  NULL,
    [sct_CategoryFK] int  NULL,
    [sct_Descripton] nvarchar(max)  NULL,
    [sct_Priority] int  NULL,
    [sct_Active] bit  NULL,
    [sct_BannerImage] nvarchar(50)  NULL,
    [sct_SquareImage] nvarchar(50)  NULL,
    [sct_BackgroundImage1] nvarchar(50)  NULL,
    [sct_BackgroundImage2] nvarchar(50)  NULL
);
GO

-- Creating table 'tbl_TermsAndCondition'
CREATE TABLE [dbo].[tbl_TermsAndCondition] (
    [tnc_ID] int IDENTITY(1,1) NOT NULL,
    [tnc_Name] nvarchar(25)  NULL,
    [tnc_Description] nvarchar(max)  NULL
);
GO

-- Creating table 'tbl_Tour'
CREATE TABLE [dbo].[tbl_Tour] (
    [tor_ID] int IDENTITY(1,1) NOT NULL,
    [tor_Overview] nvarchar(max)  NULL,
    [tor_Description] nvarchar(max)  NULL,
    [tor_Priority] int  NULL,
    [tor_Active] bit  NULL,
    [tor_BannerImage] nvarchar(50)  NULL,
    [tor_SquareImage] nvarchar(50)  NULL,
    [tor_BackgroundImage1] nvarchar(50)  NULL,
    [tor_BackgroundImage2] nvarchar(50)  NULL,
    [tor_Name] nvarchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [acc_UserID] in table 'tbl_Account'
ALTER TABLE [dbo].[tbl_Account]
ADD CONSTRAINT [PK_tbl_Account]
    PRIMARY KEY CLUSTERED ([acc_UserID] ASC);
GO

-- Creating primary key on [cnp_ID] in table 'tbl_CancelPolicy'
ALTER TABLE [dbo].[tbl_CancelPolicy]
ADD CONSTRAINT [PK_tbl_CancelPolicy]
    PRIMARY KEY CLUSTERED ([cnp_ID] ASC);
GO

-- Creating primary key on [cat_ID] in table 'tbl_Category'
ALTER TABLE [dbo].[tbl_Category]
ADD CONSTRAINT [PK_tbl_Category]
    PRIMARY KEY CLUSTERED ([cat_ID] ASC);
GO

-- Creating primary key on [exc_ID] in table 'tbl_Exclusion'
ALTER TABLE [dbo].[tbl_Exclusion]
ADD CONSTRAINT [PK_tbl_Exclusion]
    PRIMARY KEY CLUSTERED ([exc_ID] ASC);
GO

-- Creating primary key on [ftp_ID] in table 'tbl_FeaturedPackage'
ALTER TABLE [dbo].[tbl_FeaturedPackage]
ADD CONSTRAINT [PK_tbl_FeaturedPackage]
    PRIMARY KEY CLUSTERED ([ftp_ID] ASC);
GO

-- Creating primary key on [glr_ID] in table 'tbl_Gallery'
ALTER TABLE [dbo].[tbl_Gallery]
ADD CONSTRAINT [PK_tbl_Gallery]
    PRIMARY KEY CLUSTERED ([glr_ID] ASC);
GO

-- Creating primary key on [pkg_ID] in table 'tbl_Package'
ALTER TABLE [dbo].[tbl_Package]
ADD CONSTRAINT [PK_tbl_Package]
    PRIMARY KEY CLUSTERED ([pkg_ID] ASC);
GO

-- Creating primary key on [plc_ID] in table 'tbl_Place'
ALTER TABLE [dbo].[tbl_Place]
ADD CONSTRAINT [PK_tbl_Place]
    PRIMARY KEY CLUSTERED ([plc_ID] ASC);
GO

-- Creating primary key on [plg_PackageID], [plg_PlaceID] in table 'tbl_PlacePackage'
ALTER TABLE [dbo].[tbl_PlacePackage]
ADD CONSTRAINT [PK_tbl_PlacePackage]
    PRIMARY KEY CLUSTERED ([plg_PackageID], [plg_PlaceID] ASC);
GO

-- Creating primary key on [prc_ID] in table 'tbl_Price'
ALTER TABLE [dbo].[tbl_Price]
ADD CONSTRAINT [PK_tbl_Price]
    PRIMARY KEY CLUSTERED ([prc_ID] ASC);
GO

-- Creating primary key on [sct_ID] in table 'tbl_Subcategory'
ALTER TABLE [dbo].[tbl_Subcategory]
ADD CONSTRAINT [PK_tbl_Subcategory]
    PRIMARY KEY CLUSTERED ([sct_ID] ASC);
GO

-- Creating primary key on [tnc_ID] in table 'tbl_TermsAndCondition'
ALTER TABLE [dbo].[tbl_TermsAndCondition]
ADD CONSTRAINT [PK_tbl_TermsAndCondition]
    PRIMARY KEY CLUSTERED ([tnc_ID] ASC);
GO

-- Creating primary key on [tor_ID] in table 'tbl_Tour'
ALTER TABLE [dbo].[tbl_Tour]
ADD CONSTRAINT [PK_tbl_Tour]
    PRIMARY KEY CLUSTERED ([tor_ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [pkg_CancelPolicyFK] in table 'tbl_Package'
ALTER TABLE [dbo].[tbl_Package]
ADD CONSTRAINT [FK_pkg_CancelPolicy_FK]
    FOREIGN KEY ([pkg_CancelPolicyFK])
    REFERENCES [dbo].[tbl_CancelPolicy]
        ([cnp_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_pkg_CancelPolicy_FK'
CREATE INDEX [IX_FK_pkg_CancelPolicy_FK]
ON [dbo].[tbl_Package]
    ([pkg_CancelPolicyFK]);
GO

-- Creating foreign key on [sct_CategoryFK] in table 'tbl_Subcategory'
ALTER TABLE [dbo].[tbl_Subcategory]
ADD CONSTRAINT [FK_sct_CategoryID_FK]
    FOREIGN KEY ([sct_CategoryFK])
    REFERENCES [dbo].[tbl_Category]
        ([cat_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sct_CategoryID_FK'
CREATE INDEX [IX_FK_sct_CategoryID_FK]
ON [dbo].[tbl_Subcategory]
    ([sct_CategoryFK]);
GO

-- Creating foreign key on [pkg_ExclusionFK] in table 'tbl_Package'
ALTER TABLE [dbo].[tbl_Package]
ADD CONSTRAINT [FK_try_FK]
    FOREIGN KEY ([pkg_ExclusionFK])
    REFERENCES [dbo].[tbl_Exclusion]
        ([exc_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_try_FK'
CREATE INDEX [IX_FK_try_FK]
ON [dbo].[tbl_Package]
    ([pkg_ExclusionFK]);
GO

-- Creating foreign key on [ftp_PlaceFK] in table 'tbl_FeaturedPackage'
ALTER TABLE [dbo].[tbl_FeaturedPackage]
ADD CONSTRAINT [FK_ftd_PlaceID_FK]
    FOREIGN KEY ([ftp_PlaceFK])
    REFERENCES [dbo].[tbl_Package]
        ([pkg_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ftd_PlaceID_FK'
CREATE INDEX [IX_FK_ftd_PlaceID_FK]
ON [dbo].[tbl_FeaturedPackage]
    ([ftp_PlaceFK]);
GO

-- Creating foreign key on [glr_PackageID] in table 'tbl_Gallery'
ALTER TABLE [dbo].[tbl_Gallery]
ADD CONSTRAINT [FK_glr_PackageID_FK]
    FOREIGN KEY ([glr_PackageID])
    REFERENCES [dbo].[tbl_Package]
        ([pkg_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_glr_PackageID_FK'
CREATE INDEX [IX_FK_glr_PackageID_FK]
ON [dbo].[tbl_Gallery]
    ([glr_PackageID]);
GO

-- Creating foreign key on [glr_PlaceID] in table 'tbl_Gallery'
ALTER TABLE [dbo].[tbl_Gallery]
ADD CONSTRAINT [FK_glr_PlaceID_FK]
    FOREIGN KEY ([glr_PlaceID])
    REFERENCES [dbo].[tbl_Place]
        ([plc_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_glr_PlaceID_FK'
CREATE INDEX [IX_FK_glr_PlaceID_FK]
ON [dbo].[tbl_Gallery]
    ([glr_PlaceID]);
GO

-- Creating foreign key on [pkg_SubcategoryFK] in table 'tbl_Package'
ALTER TABLE [dbo].[tbl_Package]
ADD CONSTRAINT [FK_pkg_Subcategory_FK]
    FOREIGN KEY ([pkg_SubcategoryFK])
    REFERENCES [dbo].[tbl_Subcategory]
        ([sct_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_pkg_Subcategory_FK'
CREATE INDEX [IX_FK_pkg_Subcategory_FK]
ON [dbo].[tbl_Package]
    ([pkg_SubcategoryFK]);
GO

-- Creating foreign key on [pkg_TermsAndConditionFK] in table 'tbl_Package'
ALTER TABLE [dbo].[tbl_Package]
ADD CONSTRAINT [FK_pkg_TermsAndCondions_FK]
    FOREIGN KEY ([pkg_TermsAndConditionFK])
    REFERENCES [dbo].[tbl_TermsAndCondition]
        ([tnc_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_pkg_TermsAndCondions_FK'
CREATE INDEX [IX_FK_pkg_TermsAndCondions_FK]
ON [dbo].[tbl_Package]
    ([pkg_TermsAndConditionFK]);
GO

-- Creating foreign key on [plg_PackageID] in table 'tbl_PlacePackage'
ALTER TABLE [dbo].[tbl_PlacePackage]
ADD CONSTRAINT [FK_plg_PackageID_FK]
    FOREIGN KEY ([plg_PackageID])
    REFERENCES [dbo].[tbl_Package]
        ([pkg_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [prc_PackageId] in table 'tbl_Price'
ALTER TABLE [dbo].[tbl_Price]
ADD CONSTRAINT [FK_prc_PackageID_FK]
    FOREIGN KEY ([prc_PackageId])
    REFERENCES [dbo].[tbl_Package]
        ([pkg_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_prc_PackageID_FK'
CREATE INDEX [IX_FK_prc_PackageID_FK]
ON [dbo].[tbl_Price]
    ([prc_PackageId]);
GO

-- Creating foreign key on [plg_PlaceID] in table 'tbl_PlacePackage'
ALTER TABLE [dbo].[tbl_PlacePackage]
ADD CONSTRAINT [FK_plg_PlaceID_FK]
    FOREIGN KEY ([plg_PlaceID])
    REFERENCES [dbo].[tbl_Place]
        ([plc_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_plg_PlaceID_FK'
CREATE INDEX [IX_FK_plg_PlaceID_FK]
ON [dbo].[tbl_PlacePackage]
    ([plg_PlaceID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
