.class public final Landroid/net/wifi/nan/PublishData$Builder;
.super Ljava/lang/Object;
.source "PublishData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/PublishData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mRxFilter:[B

.field private mRxFilterLength:I

.field private mServiceName:Ljava/lang/String;

.field private mServiceSpecificInfo:[B

.field private mServiceSpecificInfoLength:I

.field private mTxFilter:[B

.field private mTxFilterLength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 216
    new-array v0, v1, [B

    #@6
    iput-object v0, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfo:[B

    #@8
    .line 218
    new-array v0, v1, [B

    #@a
    iput-object v0, p0, Landroid/net/wifi/nan/PublishData$Builder;->mTxFilter:[B

    #@c
    .line 220
    new-array v0, v1, [B

    #@e
    iput-object v0, p0, Landroid/net/wifi/nan/PublishData$Builder;->mRxFilter:[B

    #@10
    .line 213
    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/nan/PublishData;
    .locals 9

    #@0
    .prologue
    .line 339
    new-instance v0, Landroid/net/wifi/nan/PublishData;

    #@2
    iget-object v1, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceName:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfo:[B

    #@6
    iget v3, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfoLength:I

    #@8
    .line 340
    iget-object v4, p0, Landroid/net/wifi/nan/PublishData$Builder;->mTxFilter:[B

    #@a
    iget v5, p0, Landroid/net/wifi/nan/PublishData$Builder;->mTxFilterLength:I

    #@c
    iget-object v6, p0, Landroid/net/wifi/nan/PublishData$Builder;->mRxFilter:[B

    #@e
    iget v7, p0, Landroid/net/wifi/nan/PublishData$Builder;->mRxFilterLength:I

    #@10
    .line 339
    const/4 v8, 0x0

    #@11
    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/nan/PublishData;-><init>(Ljava/lang/String;[BI[BI[BILandroid/net/wifi/nan/PublishData;)V

    #@14
    return-object v0
.end method

.method public setRxFilter([BI)Landroid/net/wifi/nan/PublishData$Builder;
    .locals 2
    .param p1, "rxFilter"    # [B
    .param p2, "rxFilterLength"    # I

    #@0
    .prologue
    .line 325
    if-eqz p2, :cond_1

    #@2
    if-eqz p1, :cond_0

    #@4
    array-length v0, p1

    #@5
    if-ge v0, p2, :cond_1

    #@7
    .line 326
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    .line 327
    const-string/jumbo v1, "Non-matching combination of rxFilter and rxFilterLength"

    #@c
    .line 326
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 329
    :cond_1
    iput-object p1, p0, Landroid/net/wifi/nan/PublishData$Builder;->mRxFilter:[B

    #@12
    .line 330
    iput p2, p0, Landroid/net/wifi/nan/PublishData$Builder;->mRxFilterLength:I

    #@14
    .line 331
    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Landroid/net/wifi/nan/PublishData$Builder;
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 231
    iput-object p1, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceName:Ljava/lang/String;

    #@2
    .line 232
    return-object p0
.end method

.method public setServiceSpecificInfo(Ljava/lang/String;)Landroid/net/wifi/nan/PublishData$Builder;
    .locals 1
    .param p1, "serviceSpecificInfoStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfoLength:I

    #@6
    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfo:[B

    #@c
    .line 275
    return-object p0
.end method

.method public setServiceSpecificInfo([BI)Landroid/net/wifi/nan/PublishData$Builder;
    .locals 2
    .param p1, "serviceSpecificInfo"    # [B
    .param p2, "serviceSpecificInfoLength"    # I

    #@0
    .prologue
    .line 251
    if-eqz p2, :cond_1

    #@2
    if-eqz p1, :cond_0

    #@4
    .line 252
    array-length v0, p1

    #@5
    if-ge v0, p2, :cond_1

    #@7
    .line 253
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Non-matching combination of serviceSpecificInfo and serviceSpecificInfoLength"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 256
    :cond_1
    iput p2, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfoLength:I

    #@12
    .line 257
    iput-object p1, p0, Landroid/net/wifi/nan/PublishData$Builder;->mServiceSpecificInfo:[B

    #@14
    .line 258
    return-object p0
.end method

.method public setTxFilter([BI)Landroid/net/wifi/nan/PublishData$Builder;
    .locals 2
    .param p1, "txFilter"    # [B
    .param p2, "txFilterLength"    # I

    #@0
    .prologue
    .line 297
    if-eqz p2, :cond_1

    #@2
    if-eqz p1, :cond_0

    #@4
    array-length v0, p1

    #@5
    if-ge v0, p2, :cond_1

    #@7
    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    .line 299
    const-string/jumbo v1, "Non-matching combination of txFilter and txFilterLength"

    #@c
    .line 298
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 301
    :cond_1
    iput-object p1, p0, Landroid/net/wifi/nan/PublishData$Builder;->mTxFilter:[B

    #@12
    .line 302
    iput p2, p0, Landroid/net/wifi/nan/PublishData$Builder;->mTxFilterLength:I

    #@14
    .line 303
    return-object p0
.end method
