.class public final Landroid/net/wifi/aware/ConfigRequest$Builder;
.super Ljava/lang/Object;
.source "ConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/ConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mClusterHigh:I

.field private greylist-max-o mClusterLow:I

.field private greylist-max-o mDiscoveryWindowInterval:[I

.field private greylist-max-o mMasterPreference:I

.field private greylist-max-o mSupport5gBand:Z

.field private blacklist mSupport6gBand:Z

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport5gBand:Z

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport6gBand:Z

    .line 310
    iput v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mMasterPreference:I

    .line 311
    iput v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    .line 312
    const v0, 0xffff

    iput v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    .line 313
    const/4 v0, -0x1

    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mDiscoveryWindowInterval:[I

    .line 315
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mVendorData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/aware/ConfigRequest;
    .registers 12

    .line 482
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    if-gt v0, v1, :cond_1b

    .line 487
    new-instance v2, Landroid/net/wifi/aware/ConfigRequest;

    iget-boolean v3, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport5gBand:Z

    iget-boolean v4, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport6gBand:Z

    iget v5, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mMasterPreference:I

    iget v6, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    iget v7, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    iget-object v8, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mDiscoveryWindowInterval:[I

    iget-object v9, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mVendorData:Ljava/util/List;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZZIII[ILjava/util/List;Landroid/net/wifi/aware/ConfigRequest-IA;)V

    return-object v2

    .line 483
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid argument combination - must have Cluster Low <= Cluster High"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setClusterHigh(I)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .registers 4
    .param p1, "clusterHigh"    # I

    .line 410
    if-ltz p1, :cond_12

    .line 413
    const v0, 0xffff

    if-gt p1, v0, :cond_a

    .line 417
    iput p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    .line 418
    return-object p0

    .line 414
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setClusterLow(I)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .registers 4
    .param p1, "clusterLow"    # I

    .line 384
    if-ltz p1, :cond_12

    .line 387
    const v0, 0xffff

    if-gt p1, v0, :cond_a

    .line 391
    iput p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    .line 392
    return-object p0

    .line 388
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDiscoveryWindowInterval(II)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .registers 6
    .param p1, "band"    # I
    .param p2, "interval"    # I

    .line 437
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    if-eq p1, v1, :cond_11

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 438
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid band value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_11
    :goto_11
    const/4 v2, 0x5

    if-nez p1, :cond_18

    if-lt p2, v1, :cond_25

    if-gt p2, v2, :cond_25

    :cond_18
    if-ne p1, v1, :cond_1e

    if-ltz p2, :cond_25

    if-gt p2, v2, :cond_25

    :cond_1e
    if-ne p1, v0, :cond_2d

    if-ltz p2, :cond_25

    if-gt p2, v2, :cond_25

    goto :goto_2d

    .line 443
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid interval value: 2.4 GHz [1,5] or 5GHz/6GHz [0,5]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mDiscoveryWindowInterval:[I

    aput p2, v0, p1

    .line 448
    return-object p0
.end method

.method public greylist-max-o setMasterPreference(I)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .registers 4
    .param p1, "masterPreference"    # I

    .line 356
    if-ltz p1, :cond_16

    .line 360
    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/16 v0, 0xff

    if-eq p1, v0, :cond_e

    if-gt p1, v0, :cond_e

    .line 365
    iput p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mMasterPreference:I

    .line 366
    return-object p0

    .line 361
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Master Preference specification must not exceed 255 or use 1 or 255 (reserved values)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Master Preference specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setSupport5gBand(Z)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .registers 2
    .param p1, "support5gBand"    # Z

    .line 327
    iput-boolean p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport5gBand:Z

    .line 328
    return-object p0
.end method

.method public blacklist setSupport6gBand(Z)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .registers 2
    .param p1, "support6gBand"    # Z

    .line 341
    iput-boolean p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport6gBand:Z

    .line 342
    return-object p0
.end method

.method public whitelist setVendorData(Ljava/util/List;)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)",
            "Landroid/net/wifi/aware/ConfigRequest$Builder;"
        }
    .end annotation

    .line 465
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 468
    if-eqz p1, :cond_b

    .line 471
    iput-object p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mVendorData:Ljava/util/List;

    .line 472
    return-object p0

    .line 469
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
