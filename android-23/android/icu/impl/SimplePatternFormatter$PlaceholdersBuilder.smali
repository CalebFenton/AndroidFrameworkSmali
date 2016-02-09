.class Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;
.super Ljava/lang/Object;
.source "SimplePatternFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/SimplePatternFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaceholdersBuilder"
.end annotation


# instance fields
.field private firstPlaceholderReused:Z

.field private placeholderCount:I

.field private placeholderIdsOrderedByOffset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 343
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->placeholderIdsOrderedByOffset:Ljava/util/List;

    #@b
    .line 344
    iput v1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->placeholderCount:I

    #@d
    .line 345
    iput-boolean v1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->firstPlaceholderReused:Z

    #@f
    .line 342
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 4
    .param p1, "placeholderId"    # I
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 348
    iget-object v1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->placeholderIdsOrderedByOffset:Ljava/util/List;

    #@3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a
    .line 349
    iget-object v1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->placeholderIdsOrderedByOffset:Ljava/util/List;

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 350
    iget v1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->placeholderCount:I

    #@15
    if-lt p1, v1, :cond_0

    #@17
    .line 351
    add-int/lit8 v1, p1, 0x1

    #@19
    iput v1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->placeholderCount:I

    #@1b
    .line 353
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->placeholderIdsOrderedByOffset:Ljava/util/List;

    #@1d
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@20
    move-result v0

    #@21
    .line 354
    .local v0, "len":I
    const/4 v1, 0x2

    #@22
    if-le v0, v1, :cond_1

    #@24
    .line 355
    iget-object v1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->placeholderIdsOrderedByOffset:Ljava/util/List;

    #@26
    add-int/lit8 v2, v0, -0x1

    #@28
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Ljava/lang/Integer;

    #@2e
    .line 356
    iget-object v2, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->placeholderIdsOrderedByOffset:Ljava/util/List;

    #@30
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    .line 354
    if-eqz v1, :cond_1

    #@3a
    .line 357
    iput-boolean v3, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->firstPlaceholderReused:Z

    #@3c
    .line 347
    :cond_1
    return-void
.end method

.method public getFirstPlaceholderReused()Z
    .locals 1

    #@0
    .prologue
    .line 374
    iget-boolean v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->firstPlaceholderReused:Z

    #@2
    return v0
.end method

.method public getPlaceholderCount()I
    .locals 1

    #@0
    .prologue
    .line 362
    iget v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->placeholderCount:I

    #@2
    return v0
.end method

.method public getPlaceholderIdsOrderedByOffset()[I
    .locals 3

    #@0
    .prologue
    .line 366
    iget-object v2, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->placeholderIdsOrderedByOffset:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@5
    move-result v2

    #@6
    new-array v1, v2, [I

    #@8
    .line 367
    .local v1, "result":[I
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@a
    if-ge v0, v2, :cond_0

    #@c
    .line 368
    iget-object v2, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->placeholderIdsOrderedByOffset:Ljava/util/List;

    #@e
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/lang/Integer;

    #@14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v2

    #@18
    aput v2, v1, v0

    #@1a
    .line 367
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 370
    :cond_0
    return-object v1
.end method
