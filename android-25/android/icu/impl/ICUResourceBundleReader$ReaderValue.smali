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
.field reader:Landroid/icu/impl/ICUResourceBundleReader;

.field private res:I


# direct methods
.method static synthetic -set0(Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    #@2
    return p1
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 836
    invoke-direct {p0}, Landroid/icu/impl/UResource$Value;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getAliasString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 856
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@2
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    #@4
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getAlias(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 857
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .line 858
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    #@c
    const-string/jumbo v2, ""

    #@f
    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 860
    :cond_0
    return-object v0
.end method

.method public getBinary()Ljava/nio/ByteBuffer;
    .locals 3

    #@0
    .prologue
    .line 890
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@2
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    #@4
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getBinary(I)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v0

    #@8
    .line 891
    .local v0, "bb":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    #@a
    .line 892
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    #@c
    const-string/jumbo v2, ""

    #@f
    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 894
    :cond_0
    return-object v0
.end method

.method public getInt()I
    .locals 2

    #@0
    .prologue
    .line 865
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    #@2
    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x7

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 866
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    #@b
    const-string/jumbo v1, ""

    #@e
    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 868
    :cond_0
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    #@14
    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_INT(I)I

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public getIntVector()[I
    .locals 3

    #@0
    .prologue
    .line 881
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@2
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    #@4
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getIntVector(I)[I

    #@7
    move-result-object v0

    #@8
    .line 882
    .local v0, "iv":[I
    if-nez v0, :cond_0

    #@a
    .line 883
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    #@c
    const-string/jumbo v2, ""

    #@f
    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 885
    :cond_0
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 847
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@2
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    #@4
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 848
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .line 849
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    #@c
    const-string/jumbo v2, ""

    #@f
    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 851
    :cond_0
    return-object v0
.end method

.method public getType()I
    .locals 2

    #@0
    .prologue
    .line 842
    invoke-static {}, Landroid/icu/impl/ICUResourceBundleReader;->-get1()[I

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    #@6
    invoke-static {v1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@9
    move-result v1

    #@a
    aget v0, v0, v1

    #@c
    return v0
.end method

.method public getUInt()I
    .locals 2

    #@0
    .prologue
    .line 873
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    #@2
    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x7

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 874
    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    #@b
    const-string/jumbo v1, ""

    #@e
    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 876
    :cond_0
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    #@14
    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_UINT(I)I

    #@17
    move-result v0

    #@18
    return v0
.end method
