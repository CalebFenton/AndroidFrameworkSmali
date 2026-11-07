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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;
    }
.end annotation


# static fields
.field static final blacklist EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

.field private static final blacklist EX_LOC_INDEX:I

.field public static final blacklist NUM_NAME_TYPES:I = 0x7


# instance fields
.field private blacklist _names:[Ljava/lang/String;

.field private blacklist didAddIntoTrie:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 749
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    .line 751
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->EXEMPLAR_LOCATION:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    sput v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    return-void
.end method

.method protected constructor blacklist <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    .line 758
    if-nez p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    .line 759
    return-void
.end method

.method private blacklist addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V
    .registers 8
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "tzID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)V"
        }
    .end annotation

    .line 807
    .local p3, "trie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;>;"
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    if-eqz v0, :cond_9

    goto :goto_2f

    .line 810
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    .line 812
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 813
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 814
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_2b

    .line 815
    new-instance v2, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;-><init>(Landroid/icu/impl/TimeZoneNamesImpl-IA;)V

    .line 816
    .local v2, "info":Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
    iput-object p1, v2, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->mzID:Ljava/lang/String;

    .line 817
    iput-object p2, v2, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    .line 818
    invoke-static {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getNameType(I)Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    .line 819
    invoke-virtual {p3, v1, v2}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    .line 812
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "info":Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 822
    .end local v0    # "i":I
    :cond_2e
    return-void

    .line 808
    :cond_2f
    :goto_2f
    return-void
.end method

.method public static blacklist createMetaZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .registers 5
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "mzID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;"
        }
    .end annotation

    .line 763
    .local p0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/TimeZoneNamesImpl$ZNames;>;"
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "key":Ljava/lang/String;
    if-nez p1, :cond_9

    .line 766
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    .local v1, "value":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    goto :goto_e

    .line 768
    .end local v1    # "value":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :cond_9
    new-instance v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-direct {v1, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    .line 770
    .restart local v1    # "value":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :goto_e
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    return-object v1
.end method

.method public static blacklist createTimeZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .registers 5
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "tzID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;"
        }
    .end annotation

    .line 778
    .local p0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/TimeZoneNamesImpl$ZNames;>;"
    if-nez p1, :cond_9

    sget v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object v0, p1

    .line 779
    .end local p1    # "names":[Ljava/lang/String;
    .local v0, "names":[Ljava/lang/String;
    :goto_a
    sget p1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    aget-object p1, v0, p1

    if-nez p1, :cond_18

    .line 780
    sget p1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    invoke-static {p2}, Landroid/icu/impl/TimeZoneNamesImpl;->getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 783
    :cond_18
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 784
    .local p1, "key":Ljava/lang/String;
    new-instance v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-direct {v1, v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    .line 785
    .local v1, "value":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    return-object v1
.end method

.method private static blacklist getNameType(I)Landroid/icu/text/TimeZoneNames$NameType;
    .registers 4
    .param p0, "index"    # I

    .line 729
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->values:[Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    .line 745
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No NameType match for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 743
    :pswitch_24
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0

    .line 741
    :pswitch_27
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0

    .line 739
    :pswitch_2a
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0

    .line 737
    :pswitch_2d
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0

    .line 735
    :pswitch_30
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0

    .line 733
    :pswitch_33
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0

    .line 731
    :pswitch_36
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
    .end packed-switch
.end method

.method private static blacklist getNameTypeIndex(Landroid/icu/text/TimeZoneNames$NameType;)I
    .registers 4
    .param p0, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    .line 708
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    .line 724
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No NameTypeIndex match for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 722
    :pswitch_24
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_DAYLIGHT:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    return v0

    .line 720
    :pswitch_2b
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_STANDARD:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    return v0

    .line 718
    :pswitch_32
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_GENERIC:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    return v0

    .line 716
    :pswitch_39
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_DAYLIGHT:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    return v0

    .line 714
    :pswitch_40
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_STANDARD:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    return v0

    .line 712
    :pswitch_47
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_GENERIC:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    return v0

    .line 710
    :pswitch_4e
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->EXEMPLAR_LOCATION:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    return v0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_47
        :pswitch_40
        :pswitch_39
        :pswitch_32
        :pswitch_2b
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public blacklist addAsMetaZoneIntoTrie(Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V
    .registers 4
    .param p1, "mzID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)V"
        }
    .end annotation

    .line 799
    .local p2, "trie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    .line 800
    return-void
.end method

.method public blacklist addAsTimeZoneIntoTrie(Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V
    .registers 4
    .param p1, "tzID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)V"
        }
    .end annotation

    .line 803
    .local p2, "trie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    .line 804
    return-void
.end method

.method public blacklist getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    .line 790
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getNameTypeIndex(Landroid/icu/text/TimeZoneNames$NameType;)I

    move-result v0

    .line 791
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 792
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 794
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method
