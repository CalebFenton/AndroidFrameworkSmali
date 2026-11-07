.class public final Landroid/net/wifi/hotspot2/PasspointConfiguration;
.super Ljava/lang/Object;
.source "PasspointConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final greylist-max-o CERTIFICATE_SHA256_BYTES:I = 0x20

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_HESSID_VALUE:J = 0xffffffffffffL

.field public static final blacklist MAX_NUMBER_OF_ENTRIES:I = 0x10

.field public static final blacklist MAX_NUMBER_OF_OI:I = 0x24

.field public static final blacklist MAX_OI_VALUE:J = 0xffffffffffL

.field public static final blacklist MAX_STRING_LENGTH:I = 0xff

.field public static final greylist-max-o MAX_URL_BYTES:I = 0x800

.field private static final greylist-max-o NULL_VALUE:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PasspointConfiguration"


# instance fields
.field private blacklist mAaaServerTrustedNames:[Ljava/lang/String;

.field private blacklist mCarrierId:I

.field private greylist-max-o mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

.field private greylist-max-o mCredentialPriority:I

.field private blacklist mDecoratedIdentityPrefix:Ljava/lang/String;

.field private greylist-max-o mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

.field private blacklist mIsAutojoinEnabled:Z

.field private blacklist mIsCarrierMerged:Z

.field private blacklist mIsMacRandomizationEnabled:Z

.field private blacklist mIsNonPersistentMacRandomizationEnabled:Z

.field private blacklist mIsOemPaid:Z

.field private blacklist mIsOemPrivate:Z

.field private blacklist mMeteredOverride:I

.field private greylist-max-o mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

.field private blacklist mServiceFriendlyNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSubscriptionCreationTimeInMillis:J

.field private blacklist mSubscriptionExpirationTimeMillis:J

.field private blacklist mSubscriptionGroup:Landroid/os/ParcelUuid;

.field private blacklist mSubscriptionId:I

.field private greylist-max-o mSubscriptionType:Ljava/lang/String;

.field private greylist-max-o mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

.field private greylist-max-o mTrustRootCertList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private greylist-max-o mUpdateIdentifier:I

.field private greylist-max-o mUsageLimitDataLimit:J

.field private greylist-max-o mUsageLimitStartTimeInMillis:J

.field private greylist-max-o mUsageLimitTimeLimitInMinutes:J

.field private greylist-max-o mUsageLimitUsageTimePeriodInMinutes:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmCarrierId(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDecoratedIdentityPrefix(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAutojoinEnabled(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsCarrierMerged(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsMacRandomizationEnabled(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsNonPersistentMacRandomizationEnabled(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsNonPersistentMacRandomizationEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsOemPaid(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsOemPrivate(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMeteredOverride(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubscriptionGroup(Landroid/net/wifi/hotspot2/PasspointConfiguration;Landroid/os/ParcelUuid;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubscriptionId(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1079
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 136
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    .line 159
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 180
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    .line 197
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 216
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    .line 236
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    .line 255
    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    .line 275
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    .line 295
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    .line 324
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    .line 343
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    .line 363
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    .line 383
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    .line 401
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    .line 420
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    .line 463
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    .line 469
    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    .line 471
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    .line 537
    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsNonPersistentMacRandomizationEnabled:Z

    .line 575
    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    .line 732
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .registers 5
    .param p1, "source"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 136
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    .line 159
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 180
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    .line 197
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 216
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    .line 236
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    .line 255
    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    .line 275
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    .line 295
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    .line 324
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    .line 343
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    .line 363
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    .line 383
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    .line 401
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    .line 420
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    .line 463
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    .line 469
    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    .line 471
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    .line 537
    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsNonPersistentMacRandomizationEnabled:Z

    .line 575
    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    .line 740
    if-nez p1, :cond_3c

    .line 741
    return-void

    .line 744
    :cond_3c
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-eqz v0, :cond_49

    .line 745
    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 747
    :cond_49
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-eqz v0, :cond_56

    .line 748
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>(Landroid/net/wifi/hotspot2/pps/Credential;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 750
    :cond_56
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-eqz v0, :cond_63

    .line 751
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;-><init>(Landroid/net/wifi/hotspot2/pps/Policy;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    .line 753
    :cond_63
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    if-eqz v0, :cond_6f

    .line 754
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    .line 756
    :cond_6f
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v0, :cond_7c

    .line 757
    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 759
    :cond_7c
    iget v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    .line 760
    iget v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    .line 761
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    .line 762
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    .line 763
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    .line 764
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    .line 765
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    .line 766
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    .line 767
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    .line 768
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    .line 769
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    .line 770
    iget v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    .line 771
    iget v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    .line 772
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    .line 773
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    .line 774
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsNonPersistentMacRandomizationEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsNonPersistentMacRandomizationEnabled:Z

    .line 775
    iget v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    .line 776
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    .line 777
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    .line 778
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    .line 779
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    .line 780
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 781
    return-void
.end method

.method private static greylist-max-o isTrustRootCertListEquals(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)Z"
        }
    .end annotation

    .line 1174
    .local p0, "list1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .local p1, "list2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_3f

    if-nez p1, :cond_7

    goto :goto_3f

    .line 1177
    :cond_7
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_12

    .line 1178
    return v1

    .line 1180
    :cond_12
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1181
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1182
    return v1

    .line 1184
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    :cond_3d
    goto :goto_1a

    .line 1185
    :cond_3e
    return v0

    .line 1175
    :cond_3f
    :goto_3f
    if-ne p0, p1, :cond_42

    goto :goto_43

    :cond_42
    move v0, v1

    :goto_43
    return v0
.end method

.method private blacklist validateForCommonR1andR2()Z
    .registers 11

    .line 977
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b6

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->validate()Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_1b6

    .line 982
    :cond_f
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-eqz v0, :cond_1b5

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->validate()Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_1b5

    .line 987
    :cond_1d
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Policy;->validate()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 988
    return v1

    .line 991
    :cond_2a
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x10

    const/16 v3, 0xff

    const-string v4, "PasspointConfiguration"

    if-nez v0, :cond_8b

    .line 992
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    const-string v5, "!"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 993
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Invalid decorated identity prefix"

    const-string v3, "246539931"

    filled-new-array {v3, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x534e4554

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 995
    return v1

    .line 997
    :cond_56
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, "decoratedIdentityPrefixArray":[Ljava/lang/String;
    array-length v5, v0

    if-le v5, v2, :cond_65

    .line 999
    const-string v2, "too many decoratedIdentityPrefix"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return v1

    .line 1002
    :cond_65
    array-length v5, v0

    move v6, v1

    :goto_67
    if-ge v6, v5, :cond_8b

    aget-object v7, v0, v6

    .line 1003
    .local v7, "prefix":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v3, :cond_88

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The decoratedIdentityPrefix is too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return v1

    .line 1002
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_88
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 1010
    .end local v0    # "decoratedIdentityPrefixArray":[Ljava/lang/String;
    :cond_8b
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    if-eqz v0, :cond_b4

    .line 1011
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_9a

    .line 1012
    const-string v0, "Too many AaaServerTrustedNames"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return v1

    .line 1015
    :cond_9a
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    array-length v5, v0

    move v6, v1

    :goto_9e
    if-ge v6, v5, :cond_b4

    aget-object v7, v0, v6

    .line 1016
    .local v7, "fqdn":Ljava/lang/String;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v8, v8

    if-le v8, v3, :cond_b1

    .line 1017
    const-string v0, "AaaServerTrustedNames is too long"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return v1

    .line 1015
    .end local v7    # "fqdn":Ljava/lang/String;
    :cond_b1
    add-int/lit8 v6, v6, 0x1

    goto :goto_9e

    .line 1022
    :cond_b4
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    if-eqz v0, :cond_c9

    .line 1023
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v3, :cond_c9

    .line 1024
    const-string v0, "SubscriptionType is too long"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    return v1

    .line 1029
    :cond_c9
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    if-eqz v0, :cond_158

    .line 1030
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v2, :cond_db

    .line 1031
    const-string v0, "Too many TrustRootCert"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    return v1

    .line 1034
    :cond_db
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_158

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1035
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1036
    .local v6, "url":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1037
    .local v7, "certFingerprint":[B
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_109

    .line 1038
    const-string v0, "Empty URL"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return v1

    .line 1041
    :cond_109
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v8, v8

    const/16 v9, 0x800

    if-le v8, v9, :cond_132

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL bytes exceeded the max: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1043
    invoke-virtual {v6, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1042
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return v1

    .line 1047
    :cond_132
    if-nez v7, :cond_13a

    .line 1048
    const-string v0, "Fingerprint not specified"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return v1

    .line 1051
    :cond_13a
    array-length v8, v7

    const/16 v9, 0x20

    if-eq v8, v9, :cond_157

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect size of trust root certificate SHA-256 fingerprint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    return v1

    .line 1056
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "certFingerprint":[B
    :cond_157
    goto :goto_e5

    .line 1059
    :cond_158
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    if-eqz v0, :cond_1b3

    .line 1060
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v2, :cond_16a

    .line 1061
    const-string v0, "ServiceFriendlyNames exceed the max!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return v1

    .line 1064
    :cond_16a
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_174
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1065
    .local v2, "names":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1ad

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_18d

    goto :goto_1ad

    .line 1069
    :cond_18d
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v3, :cond_1a7

    .line 1070
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_1a6

    goto :goto_1a7

    .line 1074
    .end local v2    # "names":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1a6
    goto :goto_174

    .line 1071
    .restart local v2    # "names":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1a7
    :goto_1a7
    const-string v0, "Service friendly name is to long"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    return v1

    .line 1066
    :cond_1ad
    :goto_1ad
    const-string v0, "Service friendly name entry should not be null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    return v1

    .line 1076
    .end local v2    # "names":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1b3
    const/4 v0, 0x1

    return v0

    .line 983
    :cond_1b5
    :goto_1b5
    return v1

    .line 978
    :cond_1b6
    :goto_1b6
    return v1
.end method

.method private static greylist-max-o writeTrustRootCerts(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 5
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 1153
    .local p1, "trustRootCerts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    if-nez p1, :cond_7

    .line 1154
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    return-void

    .line 1157
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1159
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1161
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    goto :goto_16

    .line 1162
    :cond_35
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 824
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 825
    return v0

    .line 827
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 828
    return v2

    .line 830
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 831
    .local v1, "that":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-nez v3, :cond_16

    iget-object v3, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-nez v3, :cond_11a

    goto :goto_20

    :cond_16
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11a

    :goto_20
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    if-nez v3, :cond_29

    iget-object v3, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    if-nez v3, :cond_11a

    goto :goto_33

    :cond_29
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    .line 833
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11a

    :goto_33
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-nez v3, :cond_3c

    iget-object v3, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-nez v3, :cond_11a

    goto :goto_46

    :cond_3c
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 835
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11a

    :goto_46
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-nez v3, :cond_4f

    iget-object v3, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-nez v3, :cond_11a

    goto :goto_59

    :cond_4f
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    .line 836
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Policy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11a

    :goto_59
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v3, :cond_62

    iget-object v3, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v3, :cond_11a

    goto :goto_6c

    :cond_62
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 838
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11a

    :goto_6c
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    .line 839
    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->isTrustRootCertListEquals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_11a

    iget v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    iget v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    if-ne v3, v4, :cond_11a

    iget v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    iget v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    if-ne v3, v4, :cond_11a

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11a

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11a

    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    .line 844
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11a

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11a

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11a

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11a

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11a

    iget v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    iget v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    if-ne v3, v4, :cond_11a

    iget v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    iget v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    if-ne v3, v4, :cond_11a

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    if-ne v3, v4, :cond_11a

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    if-ne v3, v4, :cond_11a

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    if-ne v3, v4, :cond_11a

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    if-ne v3, v4, :cond_11a

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    if-ne v3, v4, :cond_11a

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsNonPersistentMacRandomizationEnabled:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsNonPersistentMacRandomizationEnabled:Z

    if-ne v3, v4, :cond_11a

    iget v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    iget v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    if-ne v3, v4, :cond_11a

    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    if-nez v3, :cond_fb

    iget-object v3, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    if-nez v3, :cond_11a

    goto :goto_105

    :cond_fb
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    .line 860
    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11a

    :goto_105
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    .line 861
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11a

    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 862
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11a

    goto :goto_11b

    :cond_11a
    move v0, v2

    .line 831
    :goto_11b
    return v0
.end method

.method public blacklist getAaaServerTrustedNames()[Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCarrierId()I
    .registers 2

    .line 488
    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    return v0
.end method

.method public whitelist getCredential()Landroid/net/wifi/hotspot2/pps/Credential;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    return-object v0
.end method

.method public greylist-max-o getCredentialPriority()I
    .registers 2

    .line 266
    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    return v0
.end method

.method public whitelist getDecoratedIdentityPrefix()Ljava/lang/String;
    .registers 2

    .line 1249
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1252
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    return-object v0

    .line 1250
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    return-object v0
.end method

.method public whitelist getMeteredOverride()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 652
    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    return v0
.end method

.method public greylist-max-o getPolicy()Landroid/net/wifi/hotspot2/pps/Policy;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    return-object v0
.end method

.method public blacklist getServiceFriendlyName()Ljava/lang/String;
    .registers 5

    .line 446
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_49

    .line 447
    :cond_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "lang":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 449
    .local v1, "friendlyName":Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 450
    return-object v1

    .line 452
    :cond_20
    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    const-string v3, "en"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 453
    if-eqz v1, :cond_2e

    .line 454
    return-object v1

    .line 456
    :cond_2e
    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 446
    .end local v0    # "lang":Ljava/lang/String;
    .end local v1    # "friendlyName":Ljava/lang/String;
    :cond_49
    :goto_49
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getServiceFriendlyNames()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    return-object v0
.end method

.method public greylist-max-o getSubscriptionCreationTimeInMillis()J
    .registers 3

    .line 286
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    return-wide v0
.end method

.method public whitelist getSubscriptionExpirationTimeMillis()J
    .registers 3

    .line 317
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    return-wide v0
.end method

.method public blacklist getSubscriptionGroup()Landroid/os/ParcelUuid;
    .registers 2

    .line 522
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public blacklist getSubscriptionId()I
    .registers 2

    .line 506
    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    return v0
.end method

.method public greylist-max-o getSubscriptionType()Ljava/lang/String;
    .registers 2

    .line 335
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSubscriptionUpdate()Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .registers 2

    .line 208
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-object v0
.end method

.method public greylist-max-o getTrustRootCertList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getUniqueId()Ljava/lang/String;
    .registers 5

    .line 1208
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1213
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getUniqueId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 1214
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/Credential;->getUniqueId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 1213
    const-string v2, "%s_%x%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1209
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Credential or HomeSP are not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getUpdateIdentifier()I
    .registers 2

    .line 247
    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    return v0
.end method

.method public greylist-max-o getUsageLimitDataLimit()J
    .registers 3

    .line 394
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    return-wide v0
.end method

.method public greylist-max-o getUsageLimitStartTimeInMillis()J
    .registers 3

    .line 374
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    return-wide v0
.end method

.method public greylist-max-o getUsageLimitTimeLimitInMinutes()J
    .registers 3

    .line 412
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    return-wide v0
.end method

.method public greylist-max-o getUsageLimitUsageTimePeriodInMinutes()J
    .registers 3

    .line 354
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 28

    .line 867
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    iget-object v2, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    iget-object v4, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object v5, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    iget v6, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    .line 868
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    .line 869
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v10, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v11, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    .line 870
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v12, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v13, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-object v14, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    iget v15, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    .line 871
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v1

    iget-boolean v1, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v17, v1

    iget-boolean v1, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v18, v1

    iget-boolean v1, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsNonPersistentMacRandomizationEnabled:Z

    .line 872
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v19, v1

    iget v1, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v20, v1

    iget v1, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v21, v1

    iget-boolean v1, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    .line 873
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v22, v1

    iget-boolean v1, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v23, v1

    iget-boolean v1, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    move-object/from16 v26, v25

    move-object/from16 v25, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v26

    filled-new-array/range {v1 .. v25}, [Ljava/lang/Object;

    move-result-object v1

    .line 867
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isAutojoinEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 640
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    return v0
.end method

.method public blacklist isCarrierMerged()Z
    .registers 2

    .line 726
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    return v0
.end method

.method public whitelist isMacRandomizationEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 665
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    return v0
.end method

.method public blacklist isNonPersistentMacRandomizationEnabled()Z
    .registers 2

    .line 678
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsNonPersistentMacRandomizationEnabled:Z

    return v0
.end method

.method public blacklist isOemPaid()Z
    .registers 2

    .line 694
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    return v0
.end method

.method public blacklist isOemPrivate()Z
    .registers 2

    .line 710
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    return v0
.end method

.method public whitelist isOsuProvisioned()Z
    .registers 3

    .line 1195
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUpdateIdentifier()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist setAaaServerTrustedNames([Ljava/lang/String;)V
    .registers 2
    .param p1, "aaaServerTrustedNames"    # [Ljava/lang/String;

    .line 144
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    .line 145
    return-void
.end method

.method public blacklist setAutojoinEnabled(Z)V
    .registers 2
    .param p1, "autojoinEnabled"    # Z

    .line 589
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    .line 590
    return-void
.end method

.method public blacklist setCarrierId(I)V
    .registers 2
    .param p1, "carrierId"    # I

    .line 479
    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    .line 480
    return-void
.end method

.method public blacklist setCarrierMerged(Z)V
    .registers 2
    .param p1, "isCarrierMerged"    # Z

    .line 718
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    .line 719
    return-void
.end method

.method public whitelist setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V
    .registers 2
    .param p1, "credential"    # Landroid/net/wifi/hotspot2/pps/Credential;

    .line 166
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 167
    return-void
.end method

.method public greylist-max-o setCredentialPriority(I)V
    .registers 2
    .param p1, "credentialPriority"    # I

    .line 260
    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    .line 261
    return-void
.end method

.method public whitelist setDecoratedIdentityPrefix(Ljava/lang/String;)V
    .registers 4
    .param p1, "decoratedIdentityPrefix"    # Ljava/lang/String;

    .line 1232
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 1236
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Decorated identity prefix must be delimited by \'!\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    :cond_1d
    :goto_1d
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    .line 1240
    return-void

    .line 1233
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V
    .registers 2
    .param p1, "homeSp"    # Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 125
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    return-void
.end method

.method public blacklist setMacRandomizationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 601
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    .line 602
    return-void
.end method

.method public blacklist setMeteredOverride(I)V
    .registers 2
    .param p1, "meteredOverride"    # I

    .line 625
    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    .line 626
    return-void
.end method

.method public blacklist setNonPersistentMacRandomizationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 615
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsNonPersistentMacRandomizationEnabled:Z

    .line 616
    return-void
.end method

.method public blacklist setOemPaid(Z)V
    .registers 2
    .param p1, "isOemPaid"    # Z

    .line 686
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    .line 687
    return-void
.end method

.method public blacklist setOemPrivate(Z)V
    .registers 2
    .param p1, "isOemPrivate"    # Z

    .line 702
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    .line 703
    return-void
.end method

.method public greylist-max-o setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V
    .registers 2
    .param p1, "policy"    # Landroid/net/wifi/hotspot2/pps/Policy;

    .line 185
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    .line 186
    return-void
.end method

.method public blacklist setServiceFriendlyNames(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 426
    .local p1, "serviceFriendlyNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    .line 427
    return-void
.end method

.method public greylist-max-o setSubscriptionCreationTimeInMillis(J)V
    .registers 3
    .param p1, "subscriptionCreationTimeInMillis"    # J

    .line 280
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    .line 281
    return-void
.end method

.method public whitelist setSubscriptionExpirationTimeInMillis(J)V
    .registers 3
    .param p1, "subscriptionExpirationTimeInMillis"    # J

    .line 306
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    .line 307
    return-void
.end method

.method public blacklist setSubscriptionGroup(Landroid/os/ParcelUuid;)V
    .registers 2
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;

    .line 514
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 515
    return-void
.end method

.method public blacklist setSubscriptionId(I)V
    .registers 2
    .param p1, "subscriptionId"    # I

    .line 497
    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    .line 498
    return-void
.end method

.method public greylist-max-o setSubscriptionType(Ljava/lang/String;)V
    .registers 2
    .param p1, "subscriptionType"    # Ljava/lang/String;

    .line 329
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public greylist-max-o setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .registers 2
    .param p1, "subscriptionUpdate"    # Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 202
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 203
    return-void
.end method

.method public greylist-max-o setTrustRootCertList(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 221
    .local p1, "trustRootCertList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    .line 222
    return-void
.end method

.method public greylist-max-o setUpdateIdentifier(I)V
    .registers 2
    .param p1, "updateIdentifier"    # I

    .line 241
    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    .line 242
    return-void
.end method

.method public greylist-max-o setUsageLimitDataLimit(J)V
    .registers 3
    .param p1, "usageLimitDataLimit"    # J

    .line 388
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    .line 389
    return-void
.end method

.method public greylist-max-o setUsageLimitStartTimeInMillis(J)V
    .registers 3
    .param p1, "usageLimitStartTimeInMillis"    # J

    .line 368
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    .line 369
    return-void
.end method

.method public greylist-max-o setUsageLimitTimeLimitInMinutes(J)V
    .registers 3
    .param p1, "usageLimitTimeLimitInMinutes"    # J

    .line 406
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    .line 407
    return-void
.end method

.method public greylist-max-o setUsageLimitUsageTimePeriodInMinutes(J)V
    .registers 3
    .param p1, "usageLimitUsageTimePeriodInMinutes"    # J

    .line 348
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    .line 349
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "UpdateIdentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    const-string v1, "CredentialPriority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    const-string v1, "SubscriptionCreationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 883
    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    const-string v4, "Not specified"

    if-eqz v3, :cond_3d

    .line 884
    new-instance v3, Ljava/util/Date;

    iget-wide v7, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto :goto_3e

    :cond_3d
    move-object v3, v4

    .line 882
    :goto_3e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 884
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    const-string v1, "SubscriptionExpirationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 886
    iget-wide v7, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    cmp-long v3, v7, v5

    if-eqz v3, :cond_59

    .line 887
    new-instance v3, Ljava/util/Date;

    iget-wide v7, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto :goto_5a

    :cond_59
    move-object v3, v4

    .line 885
    :goto_5a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 887
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    const-string v1, "UsageLimitStartTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v7, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    cmp-long v3, v7, v5

    if-eqz v3, :cond_75

    .line 889
    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_76

    :cond_75
    nop

    .line 888
    :goto_76
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 889
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    const-string v1, "UsageTimePeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 891
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    const-string v1, "UsageLimitDataLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const-string v1, "UsageLimitTimeLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    const-string v1, "Provisioned by a subscription server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 895
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->isOsuProvisioned()Z

    move-result v3

    if-eqz v3, :cond_b9

    const-string v3, "Yes"

    goto :goto_bb

    :cond_b9
    const-string v3, "No"

    :goto_bb
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-eqz v1, :cond_d5

    .line 897
    const-string v1, "HomeSP Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 899
    const-string v1, "HomeSP End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    :cond_d5
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-eqz v1, :cond_e8

    .line 902
    const-string v1, "Credential Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 904
    const-string v1, "Credential End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    :cond_e8
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-eqz v1, :cond_fb

    .line 907
    const-string v1, "Policy Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 909
    const-string v1, "Policy End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    :cond_fb
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v1, :cond_10e

    .line 912
    const-string v1, "SubscriptionUpdate Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 914
    const-string v1, "SubscriptionUpdate End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    :cond_10e
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    if-eqz v1, :cond_125

    .line 917
    const-string v1, "TrustRootCertServers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 918
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    :cond_125
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    if-eqz v1, :cond_13e

    .line 921
    const-string v1, "AAAServerTrustedNames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    .line 922
    const-string v4, ";"

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    :cond_13e
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    if-eqz v1, :cond_14d

    .line 925
    const-string v1, "ServiceFriendlyNames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 927
    :cond_14d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarrierId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubscriptionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsAutojoinEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsMacRandomizationEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsNonPersistentMacRandomizationEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsNonPersistentMacRandomizationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMeteredOverride:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCarrierMerged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsOemPaid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsOemPrivate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDecoratedUsernamePrefix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubscriptionGroup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o validate()Z
    .registers 2

    .line 950
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->validate()Z

    move-result v0

    if-nez v0, :cond_e

    .line 951
    const/4 v0, 0x0

    return v0

    .line 953
    :cond_e
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->validateForCommonR1andR2()Z

    move-result v0

    return v0
.end method

.method public blacklist validateForR2()Z
    .registers 4

    .line 964
    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 965
    return v2

    .line 969
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->validate()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1a

    .line 972
    :cond_15
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->validateForCommonR1andR2()Z

    move-result v0

    return v0

    .line 970
    :cond_1a
    :goto_1a
    return v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 790
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 791
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 792
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 793
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 794
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->writeTrustRootCerts(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 795
    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 798
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 799
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 800
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 801
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 802
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 803
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 804
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 805
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 806
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "serviceFriendlyNames"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 808
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 809
    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 811
    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 812
    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsNonPersistentMacRandomizationEnabled:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 813
    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 816
    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 817
    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 818
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 819
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 820
    return-void
.end method
