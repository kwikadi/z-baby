ALTER TRIGGER [dbo].[LabelUpdate] ON [dbo].[Label]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = LabelValue from deleted
	select @new =  LabelValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Label','LabelValue','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[LabelInsert] ON [dbo].[Label]
AFTER INSERT
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  LabelValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Label','LabelValue','INSERT','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[LabelDelete] ON [dbo].[Label]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = LabelValue from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Label','LabelValue','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[MenuUpdate] ON [dbo].[Menu]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = FormName from deleted
	select @new =  FormName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Menu','FormName','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[MenuInsert] ON [dbo].[Menu]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  FormName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Menu','FormName','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[MenuDelete] ON [dbo].[Menu]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = FormName from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Menu','FormName','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[SubMenuUpdate] ON [dbo].[SubMenu]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = FormName from deleted
	select @new =  FormName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'SubMenu','FormName','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[SubMenuInsert] ON [dbo].[SubMenu]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  FormName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'SubMenu','FormName','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[SubMenuDelete] ON [dbo].[SubMenu]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = FormName from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'SubMenu','FormName','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[CountryUpdate] ON [dbo].[Country]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = CountryName from deleted
	select @new =  CountryName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Country','CountryName','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[CountryInsert] ON [dbo].[Country]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  CountryName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Country','CountryName','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[CountryDelete] ON [dbo].[Country]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = CountryName from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Country','CountryName','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[StateUpdate] ON [dbo].[State]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = StateName from deleted
	select @new =  StateName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'State','StateName','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[StateInsert] ON [dbo].[State]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  StateName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'State','StateName','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[StateDelete] ON [dbo].[State]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = StateName from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'State','StateName','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[DistrictUpdate] ON [dbo].[District]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = DistrictName from deleted
	select @new =  DistrictName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'District','DistrictName','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[DistrictInsert] ON [dbo].[District]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  DistrictName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'District','DistrictName','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[DistrictDelete] ON [dbo].[District]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = DistrictName from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'District','DistrictName','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[BlockUpdate] ON [dbo].[Block]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = BlockName from deleted
	select @new =  BlockName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Block','BlockName','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[BlockInsert] ON [dbo].[Block]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  BlockName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Block','BlockName','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[BlockDelete] ON [dbo].[Block]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = BlockName from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Block','BlockName','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[BenefitUpdate] ON [dbo].[Benefit]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = BenefitValue from deleted
	select @new =  BenefitValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Benefit','BenefitValue','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[BenefitInsert] ON [dbo].[Benefit]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  BenefitValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Benefit','BenefitValue','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[BenefitDelete] ON [dbo].[Benefit]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = BenefitValue from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Benefit','BenefitValue','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[CategoryUpdate] ON [dbo].[Category]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = CategoryValue from deleted
	select @new =  CategoryValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Category','CategoryValue','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[CategoryInsert] ON [dbo].[Category]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  CategoryValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Category','CategoryValue','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[CategoryDelete] ON [dbo].[Category]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = CategoryValue from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Category','CategoryValue','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[SubCategoryUpdate] ON [dbo].[SubCategory]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = SubCategoryValue from deleted
	select @new =  SubCategoryValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'SubCategory','SubCategoryValue','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[SubCategoryInsert] ON [dbo].[SubCategory]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  SubCategoryValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'SubCategory','SubCategoryValue','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[SubCategoryDelete] ON [dbo].[SubCategory]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = SubCategoryValue from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'SubCategory','SubCategoryValue','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[IdeaUpdate] ON [dbo].[Idea]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = IdeaTitle from deleted
	select @new =  IdeaTitle from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Idea','IdeaTitle','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[IdeaInsert] ON [dbo].[Idea]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  IdeaTitle from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Idea','IdeaTitle','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[IdeaDelete] ON [dbo].[Idea]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = IdeaTitle from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Idea','IdeaTitle','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[IdeaCatSubCatUpdate] ON [dbo].[IdeaCatSubCat]
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
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @o_IdeaID = IdeaID from deleted
	select @o_CategoryID = CategoryID from deleted
	select @o_SubCategoryID = SubCategoryID from deleted
	select @old = @o_IdeaID + ',' + @o_CategoryID + ',' + @o_SubCategoryID
	select @n_IdeaID =  IdeaID from inserted
	select @n_CategoryID = CategoryID from inserted
	select @n_CategoryID = SubCategoryID from inserted
	select @new =@n_IdeaID + ',' + @n_CategoryID + ',' + @n_SubCategoryID
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'IdeaCatSubCat','IdeaCatSubCatValue','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[IdeaCatSubCatInsert] ON [dbo].[IdeaCatSubCat]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @n_IdeaID NVARCHAR(1000)
	DECLARE @n_CategoryID NVARCHAR(1000)
	DECLARE @n_SubCategoryID NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @n_IdeaID =  IdeaID from inserted
	select @n_CategoryID = CategoryID from inserted
	select @n_CategoryID = SubCategoryID from inserted
	select @new = @n_IdeaID + ',' + @n_CategoryID + ',' + @n_SubCategoryID
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'IdeaCatSubCat','IdeaCatSubCatValue','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[IdeaCatSubCatDelete] ON [dbo].[IdeaCatSubCat]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @o_SubCategoryID NVARCHAR(1000)
	DECLARE @o_IdeaID NVARCHAR(1000)
	DECLARE @o_CategoryID NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @o_IdeaID = IdeaID from deleted
	select @o_CategoryID = CategoryID from deleted
	select @o_SubCategoryID = SubCategoryID from deleted
	select @old = @o_IdeaID + ',' + @o_CategoryID + ',' + @o_SubCategoryID
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'IdeaCatSubCat','IdeaCatSubCatValue','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[LanguageUpdate] ON [dbo].[Language]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = LanguageName from deleted
	select @new =  LanguageName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Language','LanguageName','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[LanguageInsert] ON [dbo].[Language]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  LanguageName from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Language','LanguageName','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[LanguageDelete] ON [dbo].[Language]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = LanguageName from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Language','LanguageName','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[LoginUpdate] ON [dbo].[Login]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = Username from deleted
	select @new =  Username from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Login','Username','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[LoginInsert] ON [dbo].[Login]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  Username from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Login','Username','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[LoginDelete] ON [dbo].[Login]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = Username from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Login','Username','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[MediaUpdate] ON [dbo].[Media]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = MediaValue from deleted
	select @new =  MediaValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Media','MediaValue','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[MediaInsert] ON [dbo].[Media]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  MediaValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Media','MediaValue','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[MediaDelete] ON [dbo].[Media]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = MediaValue from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Media','MediaValue','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[RegistrationUpdate] ON [dbo].[Registration]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = EmployeeID from deleted
	select @new =  EmployeeID from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Registration','EmployeeID','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[RegistrationInsert] ON [dbo].[Registration]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  EmployeeID from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Registration','EmployeeID','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[RegistrationDelete] ON [dbo].[Registration]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = EmployeeID from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Registration','EmployeeID','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[StageUpdate] ON [dbo].[Stage]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = StageValue from deleted
	select @new =  StageValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Stage','StageValue','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[StageInsert] ON [dbo].[Stage]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  StageValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Stage','StageValue','Insert','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[StageDelete] ON [dbo].[Stage]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = StageValue from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Stage','StageValue','Delete',@old,'-',@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[ContactUpdate] ON [dbo].[Contact]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = ContactValue from deleted
	select @new =  ContactValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Contact','ContactValue','UPDATE',@old,@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[ContactInsert] ON [dbo].[Contact]
AFTER INSERT
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  ContactValue from inserted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Contact','ContactValue','INSERT','-',@new,@user,@tmp);
	
GO

ALTER TRIGGER [dbo].[ContactDelete] ON [dbo].[Contact]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	DECLARE @id int
	select @id = MAX(HistoryID) from dbo.History
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = ContactValue from deleted
	insert into dbo.History(HistoryID,TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values(ISNULL(@id,0)+1,'Contact','ContactValue','Delete',@old,'-',@user,@tmp);
	
GO