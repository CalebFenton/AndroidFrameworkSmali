.class public final Landroid/net/wifi/aware/PublishConfig;
.super Ljava/lang/Object;
.source "PublishConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/PublishConfig$Builder;,
        Landroid/net/wifi/aware/PublishConfig$PublishTypes;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/PublishConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PUBLISH_TYPE_SOLICITED:I = 0x1

.field public static final whitelist PUBLISH_TYPE_UNSOLICITED:I


# instance fields
.field private final blacklist mBand:I

.field private final blacklist mEnableInstantMode:Z

.field public final blacklist mEnablePeriodicRangingResults:Z

.field public final greylist-max-o mEnableRanging:Z

.field public final greylist-max-o mEnableTerminateNotification:Z

.field private final blacklist mIsSuspendable:Z

.field public final greylist-max-o mMatchFilter:[B

.field private final blacklist mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

.field public final greylist-max-o mPublishType:I

.field private final blacklist mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

.field public final greylist-max-o mServiceName:[B

.field public final greylist-max-o mServiceSpecificInfo:[B

.field public final greylist-max-o mTtlSec:I

.field private final blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 189
    new-instance v0, Landroid/net/wifi/aware/PublishConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/PublishConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>([B[B[BIIZZZILandroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;Landroid/net/wifi/aware/AwarePairingConfig;ZLjava/util/List;Z)V
    .registers 15
    .param p1, "serviceName"    # [B
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "matchFilter"    # [B
    .param p4, "publishType"    # I
    .param p5, "ttlSec"    # I
    .param p6, "enableTerminateNotification"    # Z
    .param p7, "enableRanging"    # Z
    .param p8, "enableInstantMode"    # Z
    .param p9, "band"    # I
    .param p10, "securityConfig"    # Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
    .param p11, "pairingConfig"    # Landroid/net/wifi/aware/AwarePairingConfig;
    .param p12, "isSuspendable"    # Z
    .param p14, "enablePeriodicRangingResults"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BIIZZZI",
            "Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;",
            "Landroid/net/wifi/aware/AwarePairingConfig;",
            "Z",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;Z)V"
        }
    .end annotation

    .line 125
    .local p13, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    .line 127
    iput-object p2, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    .line 128
    iput-object p3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    .line 129
    iput p4, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    .line 130
    iput p5, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    .line 131
    iput-boolean p6, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    .line 132
    iput-boolean p7, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    .line 133
    iput-boolean p8, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableInstantMode:Z

    .line 134
    iput p9, p0, Landroid/net/wifi/aware/PublishConfig;->mBand:I

    .line 135
    iput-object p10, p0, Landroid/net/wifi/aware/PublishConfig;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 136
    iput-object p11, p0, Landroid/net/wifi/aware/PublishConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    .line 137
    iput-boolean p12, p0, Landroid/net/wifi/aware/PublishConfig;->mIsSuspendable:Z

    .line 138
    iput-object p13, p0, Landroid/net/wifi/aware/PublishConfig;->mVendorData:Ljava/util/List;

    .line 139
    iput-boolean p14, p0, Landroid/net/wifi/aware/PublishConfig;->mEnablePeriodicRangingResults:Z

    .line 140
    return-void
.end method


# virtual methods
.method public greylist-max-o assertValid(Landroid/net/wifi/aware/Characteristics;Z)V
    .registers 8
    .param p1, "characteristics"    # Landroid/net/wifi/aware/Characteristics;
    .param p2, "rttSupported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareUtils;->validateServiceName([B)V

    .line 266
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils;->isValid([BII)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 270
    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    if-ltz v0, :cond_110

    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    if-gt v0, v2, :cond_110

    .line 273
    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    if-ltz v0, :cond_108

    .line 276
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    invoke-virtual {v0}, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->isValid()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_30

    .line 277
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WifiAwareDataPathSecurityConfig is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_30
    :goto_30
    if-eqz p1, :cond_e4

    .line 281
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceNameLength()I

    move-result v0

    .line 282
    .local v0, "maxServiceNameLength":I
    if-eqz v0, :cond_46

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    array-length v1, v1

    if-gt v1, v0, :cond_3e

    goto :goto_46

    .line 283
    :cond_3e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Service name longer than supported by device characteristics"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_46
    :goto_46
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceSpecificInfoLength()I

    move-result v1

    .line 287
    .local v1, "maxServiceSpecificInfoLength":I
    if-eqz v1, :cond_5e

    iget-object v2, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    if-eqz v2, :cond_5e

    iget-object v2, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    array-length v2, v2

    if-gt v2, v1, :cond_56

    goto :goto_5e

    .line 289
    :cond_56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Service specific info longer than supported by device characteristics"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :cond_5e
    :goto_5e
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxMatchFilterLength()I

    move-result v2

    .line 293
    .local v2, "maxMatchFilterLength":I
    if-eqz v2, :cond_76

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    if-eqz v3, :cond_76

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    array-length v3, v3

    if-gt v3, v2, :cond_6e

    goto :goto_76

    .line 295
    :cond_6e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Match filter longer than supported by device characteristics"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 298
    :cond_76
    :goto_76
    iget-boolean v3, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableInstantMode:Z

    if-eqz v3, :cond_8f

    .line 299
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 300
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->isInstantCommunicationModeSupported()Z

    move-result v3

    if-eqz v3, :cond_87

    goto :goto_8f

    .line 303
    :cond_87
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "instant mode is not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 306
    :cond_8f
    :goto_8f
    iget-boolean v3, p0, Landroid/net/wifi/aware/PublishConfig;->mIsSuspendable:Z

    if-eqz v3, :cond_a2

    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->isSuspensionSupported()Z

    move-result v3

    if-eqz v3, :cond_9a

    goto :goto_a2

    .line 307
    :cond_9a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Aware Suspension is not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 309
    :cond_a2
    :goto_a2
    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    if-eqz v3, :cond_bc

    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getSupportedCipherSuites()I

    move-result v3

    iget-object v4, p0, Landroid/net/wifi/aware/PublishConfig;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 310
    invoke-virtual {v4}, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->getCipherSuite()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_b4

    goto :goto_bc

    .line 311
    :cond_b4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported cipher suite"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :cond_bc
    :goto_bc
    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    if-eqz v3, :cond_cf

    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->isAwarePairingSupported()Z

    move-result v3

    if-eqz v3, :cond_c7

    goto :goto_cf

    .line 314
    :cond_c7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Aware Pairing is not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 316
    :cond_cf
    :goto_cf
    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    if-eqz v3, :cond_e4

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    invoke-virtual {v3, p1}, Landroid/net/wifi/aware/AwarePairingConfig;->assertValid(Landroid/net/wifi/aware/Characteristics;)Z

    move-result v3

    if-eqz v3, :cond_dc

    goto :goto_e4

    .line 317
    :cond_dc
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported pairing config"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 321
    .end local v0    # "maxServiceNameLength":I
    .end local v1    # "maxServiceSpecificInfoLength":I
    .end local v2    # "maxMatchFilterLength":I
    :cond_e4
    :goto_e4
    if-nez p2, :cond_f3

    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    if-nez v0, :cond_eb

    goto :goto_f3

    .line 322
    :cond_eb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ranging is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_f3
    :goto_f3
    if-eqz p2, :cond_fb

    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->isPeriodicRangingSupported()Z

    move-result v0

    if-nez v0, :cond_ff

    :cond_fb
    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnablePeriodicRangingResults:Z

    if-nez v0, :cond_100

    .line 329
    :cond_ff
    return-void

    .line 327
    :cond_100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Periodic Ranging is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ttlSec - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid publishType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_12b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid txFilter configuration - LV fields do not match up to length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 223
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 224
    return v0

    .line 227
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/aware/PublishConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 228
    return v2

    .line 231
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/PublishConfig;

    .line 233
    .local v1, "lhs":Landroid/net/wifi/aware/PublishConfig;
    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    iget-object v4, v1, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    iget-object v4, v1, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    iget-object v4, v1, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    .line 234
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget v3, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    iget v4, v1, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    if-ne v3, v4, :cond_7a

    iget v3, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    iget v4, v1, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    if-ne v3, v4, :cond_7a

    iget-boolean v3, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    if-ne v3, v4, :cond_7a

    iget-boolean v3, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    if-ne v3, v4, :cond_7a

    iget-boolean v3, p0, Landroid/net/wifi/aware/PublishConfig;->mEnablePeriodicRangingResults:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/PublishConfig;->mEnablePeriodicRangingResults:Z

    if-ne v3, v4, :cond_7a

    iget-boolean v3, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableInstantMode:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/PublishConfig;->mEnableInstantMode:Z

    if-ne v3, v4, :cond_7a

    iget v3, p0, Landroid/net/wifi/aware/PublishConfig;->mBand:I

    iget v4, v1, Landroid/net/wifi/aware/PublishConfig;->mBand:I

    if-ne v3, v4, :cond_7a

    iget-boolean v3, p0, Landroid/net/wifi/aware/PublishConfig;->mIsSuspendable:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/PublishConfig;->mIsSuspendable:Z

    if-ne v3, v4, :cond_7a

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    iget-object v4, v1, Landroid/net/wifi/aware/PublishConfig;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 243
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    iget-object v4, v1, Landroid/net/wifi/aware/PublishConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    .line 244
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mVendorData:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/aware/PublishConfig;->mVendorData:Ljava/util/List;

    .line 245
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    goto :goto_7b

    :cond_7a
    move v0, v2

    .line 233
    :goto_7b
    return v0
.end method

.method public whitelist getInstantCommunicationBand()I
    .registers 2

    .line 349
    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mBand:I

    return v0
.end method

.method public whitelist getPairingConfig()Landroid/net/wifi/aware/AwarePairingConfig;
    .registers 2

    .line 369
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    return-object v0
.end method

.method public whitelist getSecurityConfig()Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
    .registers 2

    .line 359
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    return-object v0
.end method

.method public whitelist getVendorData()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation

    .line 399
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 402
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mVendorData:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mVendorData:Ljava/util/List;

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_11
    return-object v0

    .line 400
    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 16

    .line 250
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    .line 251
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    .line 252
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableInstantMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mBand:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/aware/PublishConfig;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    iget-object v11, p0, Landroid/net/wifi/aware/PublishConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mIsSuspendable:Z

    .line 253
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-object v13, p0, Landroid/net/wifi/aware/PublishConfig;->mVendorData:Ljava/util/List;

    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnablePeriodicRangingResults:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 250
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isInstantCommunicationModeEnabled()Z
    .registers 2

    .line 337
    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableInstantMode:Z

    return v0
.end method

.method public whitelist isPeriodicRangingResultsEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 414
    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnablePeriodicRangingResults:Z

    return v0
.end method

.method public whitelist isSuspendable()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 381
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 384
    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mIsSuspendable:Z

    return v0

    .line 382
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PublishConfig [mServiceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    const-string v2, "<null>"

    if-nez v1, :cond_13

    move-object v1, v2

    goto :goto_1d

    :cond_13
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    .line 145
    invoke-static {v1}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    move-result-object v1

    .line 144
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceName.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    const/4 v3, 0x0

    if-nez v1, :cond_2e

    move v1, v3

    goto :goto_31

    :cond_2e
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    array-length v1, v1

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceSpecificInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_40

    goto :goto_4a

    :cond_40
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    .line 148
    invoke-static {v1}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    move-result-object v1

    .line 147
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    :goto_4a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceSpecificInfo.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_5a

    move v1, v3

    goto :goto_5d

    .line 150
    :cond_5a
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    array-length v1, v1

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMatchFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    const/4 v2, 0x1

    iget-object v4, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    invoke-direct {v1, v3, v2, v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;-><init>(II[B)V

    .line 151
    invoke-virtual {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMatchFilter.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    if-nez v1, :cond_82

    goto :goto_85

    :cond_82
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    array-length v3, v1

    :goto_85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPublishType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTtlSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnableTerminateNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnableRanging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mEnableInstantMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableInstantMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSecurityConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPairingConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSuspendable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mIsSuspendable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVendorData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mVendorData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mEnablePeriodicRangingResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mEnablePeriodicRangingResults:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 172
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 173
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 174
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 175
    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableInstantMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 180
    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 182
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 183
    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mIsSuspendable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 184
    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mVendorData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 185
    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnablePeriodicRangingResults:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 186
    return-void
.end method
