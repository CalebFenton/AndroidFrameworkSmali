.class public Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSelectionStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;,
        Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$Builder;,
        Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$NetworkSelectionDisableReason;,
        Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$NetworkEnabledStatus;
    }
.end annotation


# static fields
.field private static final greylist-max-o CONNECT_CHOICE_EXISTS:I = 0x1

.field private static final greylist-max-o CONNECT_CHOICE_NOT_EXISTS:I = -0x1

.field public static final whitelist DISABLED_ASSOCIATION_REJECTION:I = 0x1

.field public static final whitelist DISABLED_AUTHENTICATION_FAILURE:I = 0x2

.field public static final whitelist DISABLED_AUTHENTICATION_NO_CREDENTIALS:I = 0x5

.field public static final whitelist DISABLED_AUTHENTICATION_NO_SUBSCRIPTION:I = 0x9

.field public static final whitelist DISABLED_AUTHENTICATION_PRIVATE_EAP_ERROR:I = 0xa

.field public static final whitelist DISABLED_BY_WIFI_MANAGER:I = 0x7

.field public static final whitelist DISABLED_BY_WRONG_PASSWORD:I = 0x8

.field public static final whitelist DISABLED_CONSECUTIVE_FAILURES:I = 0xc

.field public static final whitelist DISABLED_DHCP_FAILURE:I = 0x3

.field public static final whitelist DISABLED_NETWORK_NOT_FOUND:I = 0xb

.field public static final whitelist DISABLED_NONE:I = 0x0

.field public static final whitelist DISABLED_NO_INTERNET_PERMANENT:I = 0x6

.field public static final whitelist DISABLED_NO_INTERNET_TEMPORARY:I = 0x4

.field public static final blacklist DISABLED_REPEATED_NUD_FAILURES:I = 0xf

.field public static final whitelist DISABLED_TRANSITION_DISABLE_INDICATION:I = 0xd

.field public static final whitelist DISABLED_UNWANTED_LOW_RSSI:I = 0xe

.field public static final blacklist DISABLE_REASON_INFOS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o INVALID_NETWORK_SELECTION_DISABLE_TIMESTAMP:J = -0x1L

.field public static final greylist-max-o NETWORK_SELECTION_DISABLED_MAX:I = 0x10

.field public static final greylist-max-o NETWORK_SELECTION_DISABLED_STARTING_INDEX:I = 0x1

.field public static final whitelist NETWORK_SELECTION_ENABLED:I = 0x0

.field public static final whitelist NETWORK_SELECTION_PERMANENTLY_DISABLED:I = 0x2

.field public static final greylist-max-o NETWORK_SELECTION_STATUS_MAX:I = 0x3

.field public static final whitelist NETWORK_SELECTION_TEMPORARY_DISABLED:I = 0x1

.field public static final greylist-max-o QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mCandidate:Landroid/net/wifi/ScanResult;

.field private greylist-max-o mCandidateScore:I

.field private blacklist mCandidateSecurityParams:Landroid/net/wifi/SecurityParams;

.field private greylist-max-o mConnectChoice:Ljava/lang/String;

.field private blacklist mConnectChoiceRssi:I

.field private greylist-max-o mHasEverConnected:Z

.field private blacklist mHasEverValidatedInternetAccess:Z

.field private blacklist mHasNeverDetectedCaptivePortal:Z

.field private blacklist mLastUsedSecurityParams:Landroid/net/wifi/SecurityParams;

.field private greylist-max-o mNetworkSeclectionDisableCounter:[I

.field private greylist-max-o mNetworkSelectionBSSID:Ljava/lang/String;

.field private greylist-max-o mNetworkSelectionDisableReason:I

.field private greylist-max-o mSeenInLastQualifiedNetworkSelection:Z

.field private greylist-max-o mStatus:I

.field private blacklist mTemporarilyDisabledEndTime:J

.field private greylist-max-o mTemporarilyDisabledTimestamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2174
    const-string v0, "NETWORK_SELECTION_TEMPORARY_DISABLED"

    const-string v1, "NETWORK_SELECTION_PERMANENTLY_DISABLED"

    const-string v2, "NETWORK_SELECTION_ENABLED"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;

    .line 2335
    invoke-static {}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->buildDisableReasonInfos()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->DISABLE_REASON_INFOS:Landroid/util/SparseArray;

    .line 2334
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 2751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2498
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    .line 2500
    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledEndTime:J

    .line 2505
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    .line 2569
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasNeverDetectedCaptivePortal:Z

    .line 2753
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    .line 2754
    return-void
.end method

.method private static blacklist buildDisableReasonInfos()Landroid/util/SparseArray;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;",
            ">;"
        }
    .end annotation

    .line 2338
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2346
    .local v0, "reasons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;>;"
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v2, "NETWORK_SELECTION_ENABLE"

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2356
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v2, "NETWORK_SELECTION_DISABLED_ASSOCIATION_REJECTION "

    const/4 v4, 0x3

    const v5, 0x493e0

    invoke-direct {v1, v2, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2364
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v6, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_FAILURE"

    invoke-direct {v1, v6, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2370
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v7, "NETWORK_SELECTION_DISABLED_DHCP_FAILURE"

    invoke-direct {v1, v7, v6, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2376
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v7, "NETWORK_SELECTION_DISABLED_NO_INTERNET_TEMPORARY"

    const v8, 0x927c0

    invoke-direct {v1, v7, v2, v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2382
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v7, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_NO_CREDENTIALS"

    invoke-direct {v1, v7, v4, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2388
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v4, "NETWORK_SELECTION_DISABLED_NO_INTERNET_PERMANENT"

    invoke-direct {v1, v4, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2394
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v4, "NETWORK_SELECTION_DISABLED_BY_WIFI_MANAGER"

    invoke-direct {v1, v4, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2400
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v4, "NETWORK_SELECTION_DISABLED_BY_WRONG_PASSWORD"

    invoke-direct {v1, v4, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2406
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v4, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_NO_SUBSCRIPTION"

    invoke-direct {v1, v4, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2412
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v4, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_PRIVATE_EAP_ERROR"

    invoke-direct {v1, v4, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2418
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v4, "NETWORK_SELECTION_DISABLED_NETWORK_NOT_FOUND"

    invoke-direct {v1, v4, v6, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2424
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v4, "NETWORK_SELECTION_DISABLED_CONSECUTIVE_FAILURES"

    invoke-direct {v1, v4, v2, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0xc

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2429
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v4, "NETWORK_SELECTION_DISABLED_TRANSITION_DISABLE_INDICATION"

    invoke-direct {v1, v4, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2435
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v3, "NETWORK_SELECTION_DISABLED_UNWANTED_LOW_RSSI"

    const/16 v4, 0x7530

    invoke-direct {v1, v3, v2, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2439
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v3, "NETWORK_SELECTION_DISABLED_REPEATED_NUD_FAILURES"

    const v4, 0xdbba0

    invoke-direct {v1, v3, v2, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2443
    return-object v0
.end method

.method public static blacklist getDisableReasonByString(Ljava/lang/String;)I
    .registers 5
    .param p0, "reasonString"    # Ljava/lang/String;

    .line 2454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->DISABLE_REASON_INFOS:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 2455
    sget-object v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->DISABLE_REASON_INFOS:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2456
    .local v1, "key":I
    sget-object v2, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->DISABLE_REASON_INFOS:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    .line 2457
    .local v2, "value":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;
    if-eqz v2, :cond_22

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;->mReasonStr:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2458
    return v1

    .line 2454
    .end local v1    # "key":I
    .end local v2    # "value":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2461
    .end local v0    # "i":I
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized network disable reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist getMaxNetworkSelectionDisableReason()I
    .registers 1

    .line 2281
    const/16 v0, 0xf

    return v0
.end method

.method public static whitelist getNetworkSelectionDisableReasonString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"    # I

    .line 2817
    sget-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->DISABLE_REASON_INFOS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    .line 2818
    .local v0, "info":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;
    if-nez v0, :cond_c

    .line 2819
    const/4 v1, 0x0

    return-object v1

    .line 2821
    :cond_c
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;->mReasonStr:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public greylist-max-o clearDisableReasonCounter()V
    .registers 3

    .line 2999
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 3000
    return-void
.end method

.method public greylist-max-o clearDisableReasonCounter(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 2987
    if-ltz p1, :cond_c

    const/16 v0, 0x10

    if-ge p1, v0, :cond_c

    .line 2988
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 2992
    return-void

    .line 2990
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o copy(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3027
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    .line 3028
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    .line 3029
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    .line 3032
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    .line 3033
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledEndTime:J

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledEndTime:J

    .line 3034
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    .line 3035
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    .line 3036
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 3037
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    .line 3038
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateSecurityParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateSecurityParams(Landroid/net/wifi/SecurityParams;)V

    .line 3039
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getLastUsedSecurityParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setLastUsedSecurityParams(Landroid/net/wifi/SecurityParams;)V

    .line 3040
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 3041
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceRssi()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceRssi(I)V

    .line 3042
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 3043
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasNeverDetectedCaptivePortal()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasNeverDetectedCaptivePortal(Z)V

    .line 3044
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverValidatedInternetAccess()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverValidatedInternetAccess(Z)V

    .line 3045
    return-void
.end method

.method public greylist-max-o getCandidate()Landroid/net/wifi/ScanResult;
    .registers 2

    .line 2612
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidate:Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public greylist-max-o getCandidateScore()I
    .registers 2

    .line 2630
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidateScore:I

    return v0
.end method

.method public blacklist getCandidateSecurityParams()Landroid/net/wifi/SecurityParams;
    .registers 2

    .line 2648
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidateSecurityParams:Landroid/net/wifi/SecurityParams;

    return-object v0
.end method

.method public greylist-max-o getConnectChoice()Ljava/lang/String;
    .registers 2

    .line 2675
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoice:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getConnectChoiceRssi()I
    .registers 2

    .line 2701
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoiceRssi:I

    return v0
.end method

.method public blacklist getDisableEndTime()J
    .registers 3

    .line 2933
    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledEndTime:J

    return-wide v0
.end method

.method public whitelist getDisableReasonCounter(I)I
    .registers 5
    .param p1, "reason"    # I

    .line 2944
    if-ltz p1, :cond_b

    const/16 v0, 0x10

    if-ge p1, v0, :cond_b

    .line 2945
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aget v0, v0, p1

    return v0

    .line 2947
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDisableTime()J
    .registers 3

    .line 2915
    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    return-wide v0
.end method

.method public blacklist getLastUsedSecurityParams()Landroid/net/wifi/SecurityParams;
    .registers 2

    .line 2666
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mLastUsedSecurityParams:Landroid/net/wifi/SecurityParams;

    return-object v0
.end method

.method public greylist-max-o getNetworkSelectionBSSID()Ljava/lang/String;
    .registers 2

    .line 3013
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNetworkSelectionDisableReason()I
    .registers 2

    .line 2887
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    return v0
.end method

.method public blacklist getNetworkSelectionDisableReasonString()Ljava/lang/String;
    .registers 2

    .line 2830
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReasonString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkSelectionStatus()I
    .registers 2

    .line 2842
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    return v0
.end method

.method public whitelist getNetworkStatusString()Ljava/lang/String;
    .registers 3

    .line 2707
    sget-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public greylist-max-o getSeenInLastQualifiedNetworkSelection()Z
    .registers 2

    .line 2594
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mSeenInLastQualifiedNetworkSelection:Z

    return v0
.end method

.method public whitelist hasEverConnected()Z
    .registers 2

    .line 2717
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    return v0
.end method

.method public blacklist hasEverValidatedInternetAccess()Z
    .registers 2

    .line 2740
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverValidatedInternetAccess:Z

    return v0
.end method

.method public blacklist hasNeverDetectedCaptivePortal()Z
    .registers 2

    .line 2731
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasNeverDetectedCaptivePortal:Z

    return v0
.end method

.method public greylist-max-o incrementDisableReasonCounter(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 2973
    if-ltz p1, :cond_f

    const/16 v0, 0x10

    if-ge p1, v0, :cond_f

    .line 2974
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 2978
    return-void

    .line 2976
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o isNetworkEnabled()Z
    .registers 2

    .line 2850
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o isNetworkPermanentlyDisabled()Z
    .registers 3

    .line 2866
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o isNetworkTemporaryDisabled()Z
    .registers 3

    .line 2858
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3074
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 3075
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 3076
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_f
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1d

    .line 3078
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableReasonCounter(II)V

    .line 3077
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 3080
    .end local v0    # "index":I
    :cond_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    .line 3081
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableEndTime(J)V

    .line 3082
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    .line 3083
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_49

    .line 3084
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceRssi(I)V

    goto :goto_4c

    .line 3087
    :cond_49
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 3089
    :goto_4c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_55

    move v0, v2

    goto :goto_56

    :cond_55
    move v0, v3

    :goto_56
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 3090
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_61

    :cond_60
    move v2, v3

    :goto_61
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasNeverDetectedCaptivePortal(Z)V

    .line 3091
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverValidatedInternetAccess(Z)V

    .line 3092
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SecurityParams;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateSecurityParams(Landroid/net/wifi/SecurityParams;)V

    .line 3093
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SecurityParams;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setLastUsedSecurityParams(Landroid/net/wifi/SecurityParams;)V

    .line 3094
    return-void
.end method

.method public greylist-max-o setCandidate(Landroid/net/wifi/ScanResult;)V
    .registers 2
    .param p1, "scanCandidate"    # Landroid/net/wifi/ScanResult;

    .line 2602
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidate:Landroid/net/wifi/ScanResult;

    .line 2603
    return-void
.end method

.method public greylist-max-o setCandidateScore(I)V
    .registers 2
    .param p1, "score"    # I

    .line 2621
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidateScore:I

    .line 2622
    return-void
.end method

.method public blacklist setCandidateSecurityParams(Landroid/net/wifi/SecurityParams;)V
    .registers 2
    .param p1, "params"    # Landroid/net/wifi/SecurityParams;

    .line 2639
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidateSecurityParams:Landroid/net/wifi/SecurityParams;

    .line 2640
    return-void
.end method

.method public greylist-max-o setConnectChoice(Ljava/lang/String;)V
    .registers 2
    .param p1, "newConnectChoice"    # Ljava/lang/String;

    .line 2684
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoice:Ljava/lang/String;

    .line 2685
    return-void
.end method

.method public blacklist setConnectChoiceRssi(I)V
    .registers 2
    .param p1, "rssi"    # I

    .line 2693
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoiceRssi:I

    .line 2694
    return-void
.end method

.method public blacklist setDisableEndTime(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 2924
    iput-wide p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledEndTime:J

    .line 2925
    return-void
.end method

.method public greylist-max-o setDisableReasonCounter(II)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "value"    # I

    .line 2959
    if-ltz p1, :cond_b

    const/16 v0, 0x10

    if-ge p1, v0, :cond_b

    .line 2960
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aput p2, v0, p1

    .line 2964
    return-void

    .line 2962
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDisableTime(J)V
    .registers 3
    .param p1, "timeStamp"    # J

    .line 2908
    iput-wide p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    .line 2909
    return-void
.end method

.method public greylist-max-o setHasEverConnected(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 2712
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    .line 2713
    return-void
.end method

.method public blacklist setHasEverValidatedInternetAccess(Z)V
    .registers 2
    .param p1, "everValidated"    # Z

    .line 2747
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverValidatedInternetAccess:Z

    .line 2748
    return-void
.end method

.method public blacklist setHasNeverDetectedCaptivePortal(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 2725
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasNeverDetectedCaptivePortal:Z

    .line 2726
    return-void
.end method

.method public blacklist setLastUsedSecurityParams(Landroid/net/wifi/SecurityParams;)V
    .registers 2
    .param p1, "params"    # Landroid/net/wifi/SecurityParams;

    .line 2657
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mLastUsedSecurityParams:Landroid/net/wifi/SecurityParams;

    .line 2658
    return-void
.end method

.method public greylist-max-o setNetworkSelectionBSSID(Ljava/lang/String;)V
    .registers 2
    .param p1, "bssid"    # Ljava/lang/String;

    .line 3022
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    .line 3023
    return-void
.end method

.method public greylist-max-o setNetworkSelectionDisableReason(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 2896
    if-ltz p1, :cond_9

    const/16 v0, 0x10

    if-ge p1, v0, :cond_9

    .line 2897
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    .line 2901
    return-void

    .line 2899
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setNetworkSelectionStatus(I)V
    .registers 3
    .param p1, "status"    # I

    .line 2875
    if-ltz p1, :cond_7

    const/4 v0, 0x3

    if-ge p1, v0, :cond_7

    .line 2876
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    .line 2878
    :cond_7
    return-void
.end method

.method public greylist-max-o setSeenInLastQualifiedNetworkSelection(Z)V
    .registers 2
    .param p1, "seen"    # Z

    .line 2584
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mSeenInLastQualifiedNetworkSelection:Z

    .line 2585
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3049
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3050
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3051
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_f
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1d

    .line 3053
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3052
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 3055
    .end local v0    # "index":I
    :cond_1d
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3056
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableEndTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3057
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3058
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 3059
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3060
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceRssi()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4f

    .line 3063
    :cond_4b
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3065
    :goto_4f
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3066
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasNeverDetectedCaptivePortal()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3067
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverValidatedInternetAccess()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3068
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateSecurityParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3069
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getLastUsedSecurityParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3070
    return-void
.end method
