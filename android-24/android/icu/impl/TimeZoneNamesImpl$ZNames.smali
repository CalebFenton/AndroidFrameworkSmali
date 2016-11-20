.class Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
.super Ljava/lang/Object;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZNames"
.end annotation


# static fields
.field private static final EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

.field private static final EX_LOC_INDEX:I


# instance fields
.field private _names:[Ljava/lang/String;

.field private didAddIntoTrie:Z


# direct methods
.method static synthetic -get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 704
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    #@6
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@8
    .line 706
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    #@a
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    #@d
    move-result v0

    #@e
    sput v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    #@10
    .line 703
    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 712
    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@5
    .line 713
    if-nez p1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    #@a
    .line 711
    return-void

    #@b
    .line 713
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static getInstance(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 1
    .param p0, "loader"    # Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .param p1, "zoneStrings"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "tzID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 735
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->load(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getInstance([Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance([Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 2
    .param p0, "names"    # [Ljava/lang/String;
    .param p1, "tzID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 717
    if-eqz p1, :cond_2

    #@2
    if-eqz p0, :cond_0

    #@4
    sget v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    #@6
    aget-object v1, p0, v1

    #@8
    if-nez v1, :cond_2

    #@a
    .line 718
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 719
    .local v0, "locationName":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@10
    .line 720
    if-nez p0, :cond_1

    #@12
    .line 721
    sget v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    new-array p0, v1, [Ljava/lang/String;

    #@18
    .line 723
    :cond_1
    sget v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    #@1a
    aput-object v0, p0, v1

    #@1c
    .line 727
    .end local v0    # "locationName":Ljava/lang/String;
    :cond_2
    if-nez p0, :cond_3

    #@1e
    .line 728
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@20
    return-object v1

    #@21
    .line 730
    :cond_3
    new-instance v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@23
    invoke-direct {v1, p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    #@26
    return-object v1
.end method


# virtual methods
.method public addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V
    .locals 5
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "tzID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "trie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;>;"
    const/4 v4, 0x0

    #@1
    .line 747
    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@3
    if-eqz v3, :cond_0

    #@5
    iget-boolean v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 748
    :cond_0
    return-void

    #@a
    .line 750
    :cond_1
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@d
    array-length v3, v3

    #@e
    if-ge v0, v3, :cond_3

    #@10
    .line 751
    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@12
    aget-object v2, v3, v0

    #@14
    .line 752
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@16
    .line 753
    new-instance v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;

    #@18
    invoke-direct {v1, v4}, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;)V

    #@1b
    .line 754
    .local v1, "info":Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
    iput-object p1, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->mzID:Ljava/lang/String;

    #@1d
    .line 755
    iput-object p2, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    #@1f
    .line 756
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl;->-get0()[Landroid/icu/text/TimeZoneNames$NameType;

    #@22
    move-result-object v3

    #@23
    aget-object v3, v3, v0

    #@25
    iput-object v3, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    #@27
    .line 757
    invoke-virtual {p3, v2, v1}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    #@2a
    .line 750
    .end local v1    # "info":Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 760
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    #@2e
    iput-boolean v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    #@30
    .line 746
    return-void
.end method

.method public getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 739
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@8
    move-result v0

    #@9
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@b
    array-length v1, v1

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 740
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@10
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@13
    move-result v1

    #@14
    aget-object v0, v0, v1

    #@16
    return-object v0

    #@17
    .line 742
    :cond_0
    return-object v2
.end method
