.class public final Landroid/net/wifi/aware/PublishConfig$Builder;
.super Ljava/lang/Object;
.source "PublishConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/PublishConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBand:I

.field private blacklist mEnableInstantMode:Z

.field private blacklist mEnablePeriodicRangingResults:Z

.field private greylist-max-o mEnableRanging:Z

.field private greylist-max-o mEnableTerminateNotification:Z

.field private blacklist mIsSuspendable:Z

.field private greylist-max-o mMatchFilter:[B

.field private blacklist mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

.field private greylist-max-o mPublishType:I

.field private blacklist mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

.field private greylist-max-o mServiceName:[B

.field private greylist-max-o mServiceSpecificInfo:[B

.field private greylist-max-o mTtlSec:I

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
    .registers 3

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mPublishType:I

    .line 425
    iput v0, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mTtlSec:I

    .line 426
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableTerminateNotification:Z

    .line 427
    iput-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableRanging:Z

    .line 428
    iput-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableInstantMode:Z

    .line 429
    iput v1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mBand:I

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 431
    iput-object v1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    .line 432
    iput-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mIsSuspendable:Z

    .line 433
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mVendorData:Ljava/util/List;

    .line 434
    iput-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnablePeriodicRangingResults:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/aware/PublishConfig;
    .registers 16

    .line 751
    new-instance v0, Landroid/net/wifi/aware/PublishConfig;

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mServiceName:[B

    iget-object v2, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mServiceSpecificInfo:[B

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mMatchFilter:[B

    iget v4, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mPublishType:I

    iget v5, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mTtlSec:I

    iget-boolean v6, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableTerminateNotification:Z

    iget-boolean v7, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableRanging:Z

    iget-boolean v8, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableInstantMode:Z

    iget v9, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mBand:I

    iget-object v10, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    iget-object v11, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    iget-boolean v12, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mIsSuspendable:Z

    iget-object v13, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mVendorData:Ljava/util/List;

    iget-boolean v14, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnablePeriodicRangingResults:Z

    invoke-direct/range {v0 .. v14}, Landroid/net/wifi/aware/PublishConfig;-><init>([B[B[BIIZZZILandroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;Landroid/net/wifi/aware/AwarePairingConfig;ZLjava/util/List;Z)V

    return-object v0
.end method

.method public whitelist setDataPathSecurityConfig(Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;)Landroid/net/wifi/aware/PublishConfig$Builder;
    .registers 4
    .param p1, "securityConfig"    # Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 662
    if-eqz p1, :cond_13

    .line 666
    invoke-virtual {p1}, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->isValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 670
    iput-object p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 671
    return-object p0

    .line 667
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The WifiAwareDataPathSecurityConfig is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The WifiAwareDataPathSecurityConfig should be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setInstantCommunicationModeEnabled(ZI)Landroid/net/wifi/aware/PublishConfig$Builder;
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "band"    # I

    .line 632
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 635
    const/4 v0, 0x1

    if-eq p2, v0, :cond_13

    const/4 v0, 0x2

    if-ne p2, v0, :cond_d

    goto :goto_13

    .line 636
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 638
    :cond_13
    :goto_13
    iput p2, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mBand:I

    .line 639
    iput-boolean p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableInstantMode:Z

    .line 640
    return-object p0

    .line 633
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setMatchFilter(Ljava/util/List;)Landroid/net/wifi/aware/PublishConfig$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/net/wifi/aware/PublishConfig$Builder;"
        }
    .end annotation

    .line 496
    .local p1, "matchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->allocateAndPut(Ljava/util/List;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->getArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mMatchFilter:[B

    .line 498
    return-object p0
.end method

.method public whitelist setPairingConfig(Landroid/net/wifi/aware/AwarePairingConfig;)Landroid/net/wifi/aware/PublishConfig$Builder;
    .registers 3
    .param p1, "config"    # Landroid/net/wifi/aware/AwarePairingConfig;

    .line 685
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 688
    iput-object p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    .line 689
    return-object p0

    .line 686
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setPeriodicRangingResultsEnabled(Z)Landroid/net/wifi/aware/PublishConfig$Builder;
    .registers 2
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 609
    iput-boolean p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnablePeriodicRangingResults:Z

    .line 610
    return-object p0
.end method

.method public whitelist setPublishType(I)Landroid/net/wifi/aware/PublishConfig$Builder;
    .registers 5
    .param p1, "publishType"    # I

    .line 515
    if-ltz p1, :cond_8

    const/4 v0, 0x1

    if-gt p1, v0, :cond_8

    .line 518
    iput p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mPublishType:I

    .line 519
    return-object p0

    .line 516
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid publishType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRangingEnabled(Z)Landroid/net/wifi/aware/PublishConfig$Builder;
    .registers 2
    .param p1, "enable"    # Z

    .line 582
    iput-boolean p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableRanging:Z

    .line 583
    return-object p0
.end method

.method public whitelist setServiceName(Ljava/lang/String;)Landroid/net/wifi/aware/PublishConfig$Builder;
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 456
    if-eqz p1, :cond_b

    .line 459
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mServiceName:[B

    .line 460
    return-object p0

    .line 457
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid service name - must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setServiceSpecificInfo([B)Landroid/net/wifi/aware/PublishConfig$Builder;
    .registers 2
    .param p1, "serviceSpecificInfo"    # [B

    .line 479
    iput-object p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mServiceSpecificInfo:[B

    .line 480
    return-object p0
.end method

.method public whitelist setSuspendable(Z)Landroid/net/wifi/aware/PublishConfig$Builder;
    .registers 3
    .param p1, "isSuspendable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 716
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 719
    iput-boolean p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mIsSuspendable:Z

    .line 720
    return-object p0

    .line 717
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setTerminateNotificationEnabled(Z)Landroid/net/wifi/aware/PublishConfig$Builder;
    .registers 2
    .param p1, "enable"    # Z

    .line 559
    iput-boolean p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableTerminateNotification:Z

    .line 560
    return-object p0
.end method

.method public whitelist setTtlSec(I)Landroid/net/wifi/aware/PublishConfig$Builder;
    .registers 4
    .param p1, "ttlSec"    # I

    .line 540
    if-ltz p1, :cond_5

    .line 543
    iput p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mTtlSec:I

    .line 544
    return-object p0

    .line 541
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ttlSec - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVendorData(Ljava/util/List;)Landroid/net/wifi/aware/PublishConfig$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)",
            "Landroid/net/wifi/aware/PublishConfig$Builder;"
        }
    .end annotation

    .line 736
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 739
    if-eqz p1, :cond_b

    .line 742
    iput-object p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mVendorData:Ljava/util/List;

    .line 743
    return-object p0

    .line 740
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
