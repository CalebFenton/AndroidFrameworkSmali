.class Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
.super Landroid/icu/impl/UResource$Value;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReaderValue"
.end annotation


# instance fields
.field greylist-max-o reader:Landroid/icu/impl/ICUResourceBundleReader;

.field greylist-max-o res:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 804
    invoke-direct {p0}, Landroid/icu/impl/UResource$Value;-><init>()V

    return-void
.end method

.method private greylist-max-o getStringArray(Landroid/icu/impl/ICUResourceBundleReader$Array;)[Ljava/lang/String;
    .registers 8
    .param p1, "array"    # Landroid/icu/impl/ICUResourceBundleReader$Array;

    .line 928
    iget v0, p1, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    new-array v0, v0, [Ljava/lang/String;

    .line 929
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v2, p1, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    if-ge v1, v2, :cond_24

    .line 930
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p1, v2, v1}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v2

    .line 931
    .local v2, "r":I
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v3, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 932
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_1c

    .line 935
    aput-object v3, v0, v1

    .line 929
    .end local v2    # "r":I
    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 933
    .restart local v2    # "r":I
    .restart local v3    # "s":Ljava/lang/String;
    :cond_1c
    new-instance v4, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v5, ""

    invoke-direct {v4, v5}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 937
    .end local v1    # "i":I
    .end local v2    # "r":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_24
    return-object v0
.end method


# virtual methods
.method public blacklist getAliasString()Ljava/lang/String;
    .registers 4

    .line 824
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getAlias(I)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 828
    return-object v0

    .line 826
    :cond_b
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getArray()Landroid/icu/impl/UResource$Array;
    .registers 4

    .line 867
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    .line 868
    .local v0, "array":Landroid/icu/impl/ICUResourceBundleReader$Array;
    if-eqz v0, :cond_b

    .line 871
    return-object v0

    .line 869
    :cond_b
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getBinary()Ljava/nio/ByteBuffer;
    .registers 4

    .line 858
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getBinary(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 859
    .local v0, "bb":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_b

    .line 862
    return-object v0

    .line 860
    :cond_b
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getInt()I
    .registers 3

    .line 833
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    .line 836
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_INT(I)I

    move-result v0

    return v0

    .line 834
    :cond_10
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getIntVector()[I
    .registers 4

    .line 849
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getIntVector(I)[I

    move-result-object v0

    .line 850
    .local v0, "iv":[I
    if-eqz v0, :cond_b

    .line 853
    return-object v0

    .line 851
    :cond_b
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getString()Ljava/lang/String;
    .registers 4

    .line 815
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 819
    return-object v0

    .line 817
    :cond_b
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getStringArray()[Ljava/lang/String;
    .registers 4

    .line 890
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    .line 891
    .local v0, "array":Landroid/icu/impl/ICUResourceBundleReader$Array;
    if-eqz v0, :cond_f

    .line 894
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->getStringArray(Landroid/icu/impl/ICUResourceBundleReader$Array;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 892
    :cond_f
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getStringArrayOrStringAsArray()[Ljava/lang/String;
    .registers 5

    .line 899
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    .line 900
    .local v0, "array":Landroid/icu/impl/ICUResourceBundleReader$Array;
    if-eqz v0, :cond_f

    .line 901
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->getStringArray(Landroid/icu/impl/ICUResourceBundleReader$Array;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 903
    :cond_f
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_1e

    .line 905
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 907
    :cond_1e
    new-instance v2, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getStringOrFirstOfArray()Ljava/lang/String;
    .registers 5

    .line 912
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 914
    return-object v0

    .line 916
    :cond_b
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v1

    .line 917
    .local v1, "array":Landroid/icu/impl/ICUResourceBundleReader$Array;
    if-eqz v1, :cond_29

    iget v2, v1, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    if-lez v2, :cond_29

    .line 918
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v2

    .line 919
    .local v2, "r":I
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v3, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_29

    .line 921
    return-object v0

    .line 924
    .end local v2    # "r":I
    :cond_29
    new-instance v2, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getTable()Landroid/icu/impl/UResource$Table;
    .registers 4

    .line 876
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v0

    .line 877
    .local v0, "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    if-eqz v0, :cond_b

    .line 880
    return-object v0

    .line 878
    :cond_b
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getType()I
    .registers 3

    .line 810
    invoke-static {}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$sfgetPUBLIC_TYPES()[I

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public blacklist getUInt()I
    .registers 3

    .line 841
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    .line 844
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_UINT(I)I

    move-result v0

    return v0

    .line 842
    :cond_10
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isNoInheritanceMarker()Z
    .registers 3

    .line 885
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$misNoInheritanceMarker(Landroid/icu/impl/ICUResourceBundleReader;I)Z

    move-result v0

    return v0
.end method
