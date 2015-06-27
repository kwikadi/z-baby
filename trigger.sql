ALTER TRIGGER [dbo].[LabelUpdate] ON [dbo].[Label]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = LabelValue from deleted
	select @new =  LabelValue from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Label','LabelValue','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[LabelInsert] ON [dbo].[Label]
AFTER INSERT
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  LabelValue from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Label','LabelValue','INSERT','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[LabelDelete] ON [dbo].[Label]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = LabelValue from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Label','LabelValue','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[MenuUpdate] ON [dbo].[Menu]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = FormName from deleted
	select @new =  FormName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Menu','FormName','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[MenuInsert] ON [dbo].[Menu]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  FormName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Menu','FormName','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[MenuDelete] ON [dbo].[Menu]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = FormName from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Menu','FormName','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[SubMenuUpdate] ON [dbo].[SubMenu]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = FormName from deleted
	select @new =  FormName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('SubMenu','FormName','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[SubMenuInsert] ON [dbo].[SubMenu]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  FormName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('SubMenu','FormName','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[SubMenuDelete] ON [dbo].[SubMenu]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = FormName from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('SubMenu','FormName','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[CountryUpdate] ON [dbo].[Country]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = CountryName from deleted
	select @new =  CountryName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Country','CountryName','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[CountryInsert] ON [dbo].[Country]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  CountryName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Country','CountryName','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[CountryDelete] ON [dbo].[Country]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = CountryName from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Country','CountryName','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[StateUpdate] ON [dbo].[State]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = StateName from deleted
	select @new =  StateName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('State','StateName','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[StateInsert] ON [dbo].[State]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  StateName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('State','StateName','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[StateDelete] ON [dbo].[State]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = StateName from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('State','StateName','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[DistrictUpdate] ON [dbo].[District]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = DistrictName from deleted
	select @new =  DistrictName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('District','DistrictName','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[DistrictInsert] ON [dbo].[District]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  DistrictName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('District','DistrictName','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[DistrictDelete] ON [dbo].[District]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = DistrictName from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('District','DistrictName','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[BlockUpdate] ON [dbo].[Block]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = BlockName from deleted
	select @new =  BlockName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Block','BlockName','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[BlockInsert] ON [dbo].[Block]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  BlockName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Block','BlockName','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[BlockDelete] ON [dbo].[Block]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = BlockName from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Block','BlockName','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[BenefitUpdate] ON [dbo].[Benefit]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = BenefitValue from deleted
	select @new =  BenefitValue from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Benefit','BenefitValue','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[BenefitInsert] ON [dbo].[Benefit]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  BenefitValue from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Benefit','BenefitValue','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[BenefitDelete] ON [dbo].[Benefit]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = BenefitValue from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Benefit','BenefitValue','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[CategoryUpdate] ON [dbo].[Category]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = CategoryValue from deleted
	select @new =  CategoryValue from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Category','CategoryValue','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[CategoryInsert] ON [dbo].[Category]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  CategoryValue from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Category','CategoryValue','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[CategoryDelete] ON [dbo].[Category]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = CategoryValue from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Category','CategoryValue','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[SubCategoryUpdate] ON [dbo].[SubCategory]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = SubCategoryValue from deleted
	select @new =  SubCategoryValue from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('SubCategory','SubCategoryValue','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[SubCategoryInsert] ON [dbo].[SubCategory]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  SubCategoryValue from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('SubCategory','SubCategoryValue','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[SubCategoryDelete] ON [dbo].[SubCategory]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = SubCategoryValue from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('SubCategory','SubCategoryValue','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[IdeaUpdate] ON [dbo].[Idea]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = IdeaTitle from deleted
	select @new =  IdeaTitle from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Idea','IdeaTitle','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[IdeaInsert] ON [dbo].[Idea]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  IdeaTitle from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Idea','IdeaTitle','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[IdeaDelete] ON [dbo].[Idea]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = IdeaTitle from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Idea','IdeaTitle','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[IdeaCatSubCatUpdate] ON [dbo].[IdeaCatSubCat]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @o_IdeaID NVARCHAR(1000)
	DECLARE @o_CategoryID NVARCHAR(1000)
	DECLARE @o_SubCategoryID NVARCHAR(1000)
	DECLARE @n_IdeaID NVARCHAR(1000)
	DECLARE @n_CategoryID NVARCHAR(1000)
	DECLARE @n_SubCategoryID NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @o_IdeaID = IdeaID from deleted
	select @o_CategoryID = CategoryID from deleted
	select @o_SubCategoryID = SubCategoryID from deleted
	select @old = select @o_IdeaID + ',' + @o_CategoryID + ',' + @o_SubCategoryID
	select @n_IdeaID =  IdeaID from inserted
	select @n_CategoryID = CategoryID from inserted
	select @n_CategoryID = SubCategoryID from inserted
	select @new = select @n_IdeaID + ',' + @n_CategoryID + ',' + @n_SubCategoryID
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('IdeaCatSubCat','IdeaCatSubCatValue','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[IdeaCatSubCatInsert] ON [dbo].[IdeaCatSubCat]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @n_IdeaID NVARCHAR(1000)
	DECLARE @n_CategoryID NVARCHAR(1000)
	DECLARE @n_SubCategoryID NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @n_IdeaID =  IdeaID from inserted
	select @n_CategoryID = CategoryID from inserted
	select @n_CategoryID = SubCategoryID from inserted
	select @new = select @n_IdeaID + ',' + @n_CategoryID + ',' + @n_SubCategoryID
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('IdeaCatSubCat','IdeaCatSubCatValue','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[IdeaCatSubCatDelete] ON [dbo].[IdeaCatSubCat]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @o_IdeaID NVARCHAR(1000)
	DECLARE @o_CategoryID NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @o_IdeaID = IdeaID from deleted
	select @o_CategoryID = CategoryID from deleted
	select @o_SubCategoryID = SubCategoryID from deleted
	select @old = select @o_IdeaID + ',' + @o_CategoryID + ',' + @o_SubCategoryID
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('IdeaCatSubCat','IdeaCatSubCatValue','Delete',@old,'-',@user,@tmp);
	
GO