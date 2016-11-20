.class public final Landroid/net/wifi/nan/SubscribeData$Builder;
.super Ljava/lang/Object;
.source "SubscribeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/SubscribeData;
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
    iput-object v0, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfo:[B

    #@8
    .line 218
    new-array v0, v1, [B

    #@a
    iput-object v0, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mTxFilter:[B

    #@c
    .line 220
    new-array v0, v1, [B

    #@e
    iput-object v0, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mRxFilter:[B

    #@10
    .line 213
    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/nan/SubscribeData;
    .locals 9

    #@0
    .prologue
    .line 325
    new-instance v0, Landroid/net/wifi/nan/SubscribeData;

    #@2
    iget-object v1, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceName:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfo:[B

    #@6
    iget v3, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfoLength:I

    #@8
    .line 326
    iget-object v4, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mTxFilter:[B

    #@a
    iget v5, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mTxFilterLength:I

    #@c
    iget-object v6, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mRxFilter:[B

    #@e
    iget v7, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mRxFilterLength:I

    #@10
    .line 325
    const/4 v8, 0x0

    #@11
    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/nan/SubscribeData;-><init>(Ljava/lang/String;[BI[BI[BILandroid/net/wifi/nan/SubscribeData;)V

    #@14
    return-object v0
.end method

.method public setRxFilter([BI)Landroid/net/wifi/nan/SubscribeData$Builder;
    .locals 0
    .param p1, "rxFilter"    # [B
    .param p2, "rxFilterLength"    # I

    #@0
    .prologue
    .line 315
    iput-object p1, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mRxFilter:[B

    #@2
    .line 316
    iput p2, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mRxFilterLength:I

    #@4
    .line 317
    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Landroid/net/wifi/nan/SubscribeData$Builder;
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 231
    iput-object p1, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceName:Ljava/lang/String;

    #@2
    .line 232
    return-object p0
.end method

.method public setServiceSpecificInfo(Ljava/lang/String;)Landroid/net/wifi/nan/SubscribeData$Builder;
    .locals 1
    .param p1, "serviceSpecificInfoStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfoLength:I

    #@6
    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfo:[B

    #@c
    .line 270
    return-object p0
.end method

.method public setServiceSpecificInfo([BI)Landroid/net/wifi/nan/SubscribeData$Builder;
    .locals 0
    .param p1, "serviceSpecificInfo"    # [B
    .param p2, "serviceSpecificInfoLength"    # I

    #@0
    .prologue
    .line 251
    iput p2, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfoLength:I

    #@2
    .line 252
    iput-object p1, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mServiceSpecificInfo:[B

    #@4
    .line 253
    return-object p0
.end method

.method public setTxFilter([BI)Landroid/net/wifi/nan/SubscribeData$Builder;
    .locals 0
    .param p1, "txFilter"    # [B
    .param p2, "txFilterLength"    # I

    #@0
    .prologue
    .line 292
    iput-object p1, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mTxFilter:[B

    #@2
    .line 293
    iput p2, p0, Landroid/net/wifi/nan/SubscribeData$Builder;->mTxFilterLength:I

    #@4
    .line 294
    return-object p0
.end method
