.class public Lcom/android/internal/telephony/data/DataProfileManager;
.super Landroid/os/Handler;
.source "DataProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;
    }
.end annotation


# instance fields
.field private final blacklist mAllDataProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private final blacklist mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field private final blacklist mDataProfileManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

.field private final blacklist mLastInternetDataProfiles:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPreferredDataProfile:Landroid/telephony/data/DataProfile;

.field private blacklist mPreferredDataProfileSetId:I

.field private final blacklist mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$2w99gBr7jaIl183azONOuQf011w(ILandroid/telephony/data/DataProfile;)Z
    .registers 2

    .line 594
    invoke-static {p0}, Lcom/android/internal/telephony/data/DataUtils;->apnTypeToNetworkCapability(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$48Gg-pyrojb-a-w5Qs-cPIivTAI(Lcom/android/internal/telephony/data/DataProfileManager;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$canPreferredDataProfileSatisfy$13(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$4EK-8xfqi3qEElC5zrMmqJT2jUo(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .registers 2

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda27;-><init>(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    .line 383
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5QodsIFugT70mKgdF8SrJYeq-Xk(Landroid/telephony/data/DataProfile;)Z
    .registers 2

    const/4 v0, 0x4

    .line 312
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$7jSBMW4h_6Fpq4A5vfnGXZMlrVY(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Landroid/telephony/data/DataProfile;)V
    .registers 4

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$95J2KKMHiDTf0m-dNCktcKaaUrE(Landroid/telephony/data/DataProfile;)Z
    .registers 2

    const/16 v0, 0x1d

    .line 328
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$IwuHZjCzDWaOC8Koyaf07v3K3C8(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$getApnSettingForNetworkRequest$11(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$OK0ez1EknBy8R8ahHJY0y4ksHKk(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$isDataProfileCompatible$16(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$TLj2ky2crtidvNIMXYLpUdLrzOQ(IZZLandroid/telephony/data/DataProfile;)Z
    .registers 5

    .line 778
    invoke-virtual {p3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_39

    .line 779
    :cond_7
    invoke-virtual {p3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/data/ApnSetting;->canSupportNetworkType(I)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_39

    .line 781
    :cond_12
    invoke-virtual {p3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->isEsimBootstrapProvisioning()Z

    move-result p0

    if-eq p1, p0, :cond_1d

    goto :goto_39

    :cond_1d
    if-eqz p2, :cond_2b

    .line 782
    invoke-virtual {p3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting;->isForInfrastructure(I)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_39

    :cond_2b
    const/4 p0, 0x1

    if-nez p2, :cond_3a

    .line 786
    invoke-virtual {p3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/telephony/data/ApnSetting;->isForInfrastructure(I)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 p0, 0x0

    :cond_3a
    :goto_3a
    return p0
.end method

.method public static synthetic blacklist $r8$lambda$TbkbT1ej-018E4ZcJC6T38pDhvg(ZLandroid/telephony/data/DataProfile;)Z
    .registers 2

    if-nez p0, :cond_15

    .line 812
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 813
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ThDuvBGgBhHotDl9ecKTvItqL1A(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;)Ljava/lang/Boolean;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$updateInitialAttachDataProfileAtModem$8(Landroid/telephony/data/DataProfile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$UxwtUbQcfz2bsuJ-dBq_Q37LEwk(Lcom/android/internal/telephony/data/DataProfileManager;Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$onInternetDataNetworkConnected$4(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ZmsOdIFvccOrnynXIU506M-CYno(Landroid/telephony/data/DataProfile;)Z
    .registers 2

    .line 1183
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$cdQft-TWGx7Je4AOwxnpskIzauM(ILandroid/telephony/data/DataProfile;)Z
    .registers 3

    .line 474
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 475
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p1

    if-ne p1, p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$iaPNZJ_A3E22SxdPSLjrFJU6KK0(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$isDataProfileCompatible$15(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$l3efEhjUsemtiDLlR-XJKR_7Qp8(Landroid/telephony/data/ApnSetting;)V
    .registers 2

    const/4 v0, 0x0

    .line 1047
    invoke-virtual {p0, v0}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uLD87rHvXgkNOV9SMpEBYguKEow(Lcom/android/internal/telephony/data/DataProfileManager;ILandroid/telephony/data/DataProfile;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$updatePreferredDataProfile$7(ILandroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$up7IlUW73wh1c6TCPADyE6AWYeY(Ljava/lang/String;Landroid/telephony/data/DataProfile;)Z
    .registers 3

    .line 494
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 495
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$uzRwB9BLvNL-cBPpYGGp2MQWbKo(Landroid/telephony/data/DataProfile;)Z
    .registers 2

    const/16 v0, 0xa

    .line 341
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataProfileManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->onCarrierConfigUpdated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInternetDataNetworkConnected(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/Set;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->onInternetDataNetworkConnected(Ljava/util/Set;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .registers 9

    .line 162
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    new-instance p4, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p4, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 101
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    const/4 p4, 0x0

    .line 105
    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    .line 109
    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 113
    new-instance p4, Landroid/util/LruCache;

    const/16 v0, 0x100

    invoke-direct {p4, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLastInternetDataProfiles:Landroid/util/LruCache;

    const/4 p4, 0x0

    .line 117
    iput p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    .line 120
    new-instance p4, Landroid/util/ArraySet;

    invoke-direct {p4}, Landroid/util/ArraySet;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    .line 163
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DPM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLogTag:Ljava/lang/String;

    .line 165
    iput-object p5, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 166
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 167
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    .line 168
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 169
    invoke-interface {p4, p6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->registerAllEvents()V

    return-void
.end method

.method private blacklist buildDefaultApnSetting(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/data/ApnSetting;
    .registers 4

    .line 632
    new-instance p0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {p0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    .line 633
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 634
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    .line 635
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    .line 636
    invoke-virtual {p0, p2}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    .line 637
    invoke-virtual {p0, p3}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 638
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    const/4 p1, -0x1

    .line 639
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    .line 640
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    return-object p0
.end method

.method private blacklist checkApnSetting(Landroid/telephony/data/ApnSetting;)V
    .registers 6

    const/4 v0, 0x2

    .line 907
    invoke-virtual {p1, v0}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 908
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getEditedStatus()I

    move-result v0

    if-nez v0, :cond_80

    .line 909
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "9af73e18-b523-4dc5-adab-ec754d959d4d"

    const-string v2, "^https?:\\/\\/.+"

    if-nez v0, :cond_2e

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS is supported but no MMSC configured "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "9af73e18-b523-4dc5-adab-19d86c6a3685"

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 912
    :cond_2e
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Apn config mmsc should start with http but is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_54
    :goto_54
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 918
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apn config mmsc_proxy should NOT start with http but is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 919
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    return-void
.end method

.method private blacklist checkDataProfiles(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 932
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_74

    .line 933
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 934
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getEditedStatus()I

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_71

    :cond_1a
    const-wide/16 v2, 0x0

    .line 937
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_71

    .line 938
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 939
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_71

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Apn["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v3

    int-to-long v3, v3

    .line 941
    invoke-static {v3, v4}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " should be a subset of the lingering network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v3

    .line 944
    invoke-static {v3, v4}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "9af73e18-b523-4dc5-adab-4bb24355d838"

    .line 940
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    :goto_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_74
    return-void
.end method

.method private blacklist dedupeDataProfiles(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 879
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6d

    .line 880
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    add-int/lit8 v2, v0, 0x1

    move v3, v2

    .line 882
    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6b

    .line 883
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/DataProfile;

    .line 884
    invoke-static {v1, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->mergeDataProfiles(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Landroid/telephony/data/DataProfile;

    move-result-object v5

    if-eqz v5, :cond_68

    .line 886
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Created a merged profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 888
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Merging data profiles will not be supported anymore. Please directly configure the merged profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in the APN config."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    .line 891
    invoke-interface {p1, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 892
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_12

    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_6b
    move v0, v2

    goto :goto_1

    :cond_6d
    return-void
.end method

.method private blacklist getApnSettingForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/ApnSetting;
    .registers 13

    const/4 v0, 0x1

    .line 729
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 731
    const-string p1, "Network request does not have APN setting attribute."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return-object v2

    :cond_e
    if-nez p4, :cond_67

    .line 740
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v1, :cond_67

    .line 741
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/telephony/data/DataProfile;)Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 742
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 743
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting;->canSupportNetworkType(I)Z

    move-result v1

    if-eqz v1, :cond_67

    if-eqz p3, :cond_3d

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 744
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/telephony/data/ApnSetting;->isForInfrastructure(I)Z

    move-result v1

    if-nez v1, :cond_4b

    :cond_3d
    if-nez p3, :cond_67

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 746
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/data/ApnSetting;->isForInfrastructure(I)Z

    move-result v0

    if-eqz v0, :cond_67

    :cond_4b
    if-nez p5, :cond_60

    .line 748
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    .line 749
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result p1

    if-nez p1, :cond_5a

    goto :goto_60

    .line 752
    :cond_5a
    const-string p1, "The preferred data profile is permanently failed. Only condition based retry can happen."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v2

    .line 750
    :cond_60
    :goto_60
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    return-object p0

    .line 760
    :cond_67
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 761
    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda6;-><init>()V

    .line 764
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 765
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 766
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataProfile;

    .line 767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Satisfied profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", last setup="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getLastSetupTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 767
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->logv(Ljava/lang/String;)V

    goto :goto_91

    .line 770
    :cond_c2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 771
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t find any data profile that can satisfy "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v2

    .line 776
    :cond_dd
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2, p4, p3}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;-><init>(IZZ)V

    .line 777
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 789
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 790
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 791
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t find any data profile for network type "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and infrastructure for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-static {p3}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetworkToString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 791
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v2

    .line 798
    :cond_11f
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 799
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 803
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 804
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_153

    .line 805
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find any data profile has APN set id matched. mPreferredDataProfileSetId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v2

    .line 811
    :cond_153
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda9;

    invoke-direct {p2, p5}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda9;-><init>(Z)V

    .line 812
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 814
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 815
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_176

    .line 816
    const-string p1, "The suitable data profiles are all in permanent failed state."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v2

    :cond_176
    const/4 p2, 0x0

    if-eqz p4, :cond_197

    .line 821
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Found esim bootstrap provisioning data profile for network request: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/data/DataProfile;

    invoke-virtual {p4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 821
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 824
    :cond_197
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/data/DataProfile;

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getEnterpriseDataProfile()Landroid/telephony/data/DataProfile;
    .registers 8

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 239
    const-string v0, "Cannot access APN database through telephony provider."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_1d
    move-object p0, v1

    .line 244
    :cond_1e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 245
    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 247
    new-instance p0, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {p0}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 248
    invoke-virtual {p0, v2}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    new-instance v3, Landroid/telephony/data/TrafficDescriptor;

    .line 249
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {p0, v3}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    const/4 v2, 0x0

    .line 250
    invoke-virtual {p0, v2}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    const/16 v2, 0x1d

    .line 252
    invoke-virtual {p0, v2}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 257
    :cond_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0
.end method

.method private blacklist getPreferredDataProfileFromConfig()Landroid/telephony/data/DataProfile;
    .registers 4

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultPreferredApn()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_27

    .line 493
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda22;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 496
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 497
    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/data/DataProfile;

    return-object p0

    :cond_27
    return-object v2
.end method

.method private blacklist getPreferredDataProfileFromDb()Landroid/telephony/data/DataProfile;
    .registers 8

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers;->PREFERRED_APN_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 466
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const-string v6, "name ASC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 464
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    .line 470
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_52

    .line 471
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 472
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 473
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda26;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda26;-><init>(I)V

    .line 474
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 476
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    .line 477
    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    .line 479
    :cond_52
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 481
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredDataProfileFromDb: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist getPreferredDataProfileSetId()I
    .registers 8

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers;->PREFERRED_APN_SET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 396
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "apn_set_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_30

    .line 402
    const-string v0, "getPreferredDataProfileSetId: cursor is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return v2

    .line 407
    :cond_30
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_3d

    .line 408
    const-string v0, "getPreferredDataProfileSetId: no APNs found"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    goto :goto_48

    .line 411
    :cond_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 412
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 415
    :goto_48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2
.end method

.method private synthetic blacklist lambda$canPreferredDataProfileSatisfy$13(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 847
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$getApnSettingForNetworkRequest$11(Landroid/telephony/data/DataProfile;)Z
    .registers 4

    .line 799
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 800
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 802
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result p1

    iget p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    if-ne p1, p0, :cond_1f

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$isDataProfileCompatible$15(Landroid/telephony/data/DataProfile;)Z
    .registers 4

    .line 1067
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1068
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 1070
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result p1

    iget p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    if-ne p1, p0, :cond_1f

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$isDataProfileCompatible$16(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z
    .registers 3

    .line 1071
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->areDataProfilesSharingApn(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$onInternetDataNetworkConnected$4(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_11

    .line 434
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object p1

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->canPreferredDataProfileSatisfy(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$updateInitialAttachDataProfileAtModem$8(Landroid/telephony/data/DataProfile;)Ljava/lang/Boolean;
    .registers 2

    .line 589
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$updatePreferredDataProfile$7(ILandroid/telephony/data/DataProfile;)Z
    .registers 4

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLastInternetDataProfiles:Landroid/util/LruCache;

    .line 544
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/DataProfile;

    .line 543
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->areDataProfilesSharingApn(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 1120
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1128
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 1144
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 1145
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 2

    .line 1136
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist mergeDataProfiles(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Landroid/telephony/data/DataProfile;
    .registers 6

    .line 962
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 963
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 966
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    return-object v1

    .line 969
    :cond_16
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_1e1

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-nez v0, :cond_24

    goto/16 :goto_1e1

    .line 972
    :cond_24
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting;->similar(Landroid/telephony/data/ApnSetting;)Z

    move-result v0

    if-nez v0, :cond_33

    return-object v1

    .line 975
    :cond_33
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    .line 976
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    .line 977
    new-instance v1, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v1}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    .line 981
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 982
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    const/16 v2, 0x11

    .line 983
    invoke-virtual {p1, v2}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 984
    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 985
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 986
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 990
    :cond_6a
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 991
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7d

    :cond_79
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    .line 990
    :goto_7d
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 992
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8c

    .line 993
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v2

    goto :goto_90

    :cond_8c
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v2

    .line 992
    :goto_90
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 994
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_9e

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v2

    goto :goto_a2

    :cond_9e
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v2

    :goto_a2
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    .line 995
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 996
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b8

    :cond_b4
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    .line 995
    :goto_b8
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 997
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v2

    if-ne v2, v3, :cond_c6

    .line 998
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v2

    goto :goto_ca

    :cond_c6
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v2

    .line 997
    :goto_ca
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 999
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_dc

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v2

    goto :goto_e0

    :cond_dc
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v2

    :goto_e0
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1000
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 1001
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v2

    goto :goto_f6

    :cond_f2
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 1000
    :goto_f6
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1002
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v2

    if-ne v2, v3, :cond_104

    .line 1003
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v2

    goto :goto_108

    :cond_104
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v2

    .line 1002
    :goto_108
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1004
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1005
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v2

    if-gtz v2, :cond_122

    .line 1006
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v2

    goto :goto_126

    :cond_122
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v2

    .line 1005
    :goto_126
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1007
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v2

    if-gtz v2, :cond_134

    .line 1008
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result p1

    goto :goto_138

    :cond_134
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result p1

    .line 1007
    :goto_138
    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1010
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1011
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1015
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1016
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1017
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1018
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1019
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 1020
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1021
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/data/ApnSetting$Builder;->setLingeringNetworkTypeBitmask(J)Landroid/telephony/data/ApnSetting$Builder;

    .line 1022
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1023
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setPersistent(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 1024
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1025
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1026
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1027
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1028
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getCarrierId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1029
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1030
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isAlwaysOn()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 1031
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getInfrastructureBitmask()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setInfrastructureBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1032
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isEsimBootstrapProvisioning()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setEsimBootstrapProvisioning(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 1034
    new-instance p1, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {p1}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 1035
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 1036
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 1037
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0

    :cond_1e1
    :goto_1e1
    return-object v1
.end method

.method private blacklist onCarrierConfigUpdated()V
    .registers 2

    .line 225
    const-string v0, "Update data profiles due to carrier config updated."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->allowClearInitialAttachDataProfile()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles(Z)V

    return-void
.end method

.method private blacklist onInternetDataNetworkConnected(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;)V"
        }
    .end annotation

    .line 429
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda23;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 430
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda24;-><init>()V

    .line 435
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda25;-><init>()V

    .line 436
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 437
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_3b

    .line 442
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLastInternetDataProfiles:Landroid/util/LruCache;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    if-eqz v0, :cond_73

    .line 448
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_73

    .line 449
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInternetDataNetworkConnected: defaultProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " previous preferredDataProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " internetNetworks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->logv(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->setPreferredDataProfile(Landroid/telephony/data/DataProfile;)V

    const/4 p1, 0x0

    .line 454
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles(Z)V

    :cond_73
    :goto_73
    return-void
.end method

.method private blacklist registerAllEvents()V
    .registers 5

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$1;

    new-instance v2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager$1;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$2;

    new-instance v2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager$2;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/internal/telephony/data/DataProfileManager$3;

    invoke-direct {v2, p0, p0}, Lcom/android/internal/telephony/data/DataProfileManager$3;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1111
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    .line 1112
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    invoke-static {p2, p1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist setPreferredDataProfile(Landroid/telephony/data/DataProfile;)V
    .registers 5

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredDataProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 512
    sget-object v1, Landroid/provider/Telephony$Carriers;->PREFERRED_APN_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 513
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    .line 514
    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p1, :cond_54

    .line 516
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 517
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 520
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "apn_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_54
    return-void
.end method

.method private blacklist updateDataProfiles(Z)V
    .registers 12

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_bc

    .line 271
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v1, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filtered/subId/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 273
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const-string v9, "_id"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 271
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_47

    .line 275
    const-string p1, "Cannot access APN database through telephony provider."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_47
    move v4, v2

    .line 279
    :cond_48
    :goto_48
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 280
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v5

    if-eqz v5, :cond_48

    .line 282
    new-instance v6, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v6}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 283
    invoke-virtual {v6, v5}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v6

    new-instance v7, Landroid/telephony/data/TrafficDescriptor;

    .line 284
    invoke-virtual {v5}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v6, v7}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v6

    .line 285
    invoke-virtual {v6, v2}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v6

    .line 286
    invoke-virtual {v6}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object v6

    .line 287
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    const/16 v6, 0x11

    .line 290
    invoke-virtual {v5, v6}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v6

    or-int/2addr v4, v6

    .line 291
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/data/DataConfigManager;->isApnConfigAnomalyReportEnabled()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 292
    invoke-virtual {v5}, Landroid/telephony/data/ApnSetting;->getEditedStatus()I

    move-result v6

    if-nez v6, :cond_48

    .line 293
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->checkApnSetting(Landroid/telephony/data/ApnSetting;)V

    goto :goto_48

    .line 297
    :cond_a2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-nez v4, :cond_bc

    .line 300
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_bc

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 301
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isApnConfigAnomalyReportEnabled()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 302
    const-string v1, "Carrier doesn\'t support internet."

    const-string v4, "9af73e18-b523-4dc5-adab-363eb6613305"

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_bc
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/IccCardConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 311
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda12;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda12;-><init>()V

    .line 312
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 313
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 314
    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    if-nez v1, :cond_10f

    .line 316
    new-instance v1, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v1}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    const-string v4, "DEFAULT IMS"

    const/16 v5, 0x40

    .line 317
    const-string v6, "ims"

    invoke-direct {p0, v4, v6, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->buildDefaultApnSetting(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    new-instance v4, Landroid/telephony/data/TrafficDescriptor;

    invoke-direct {v4, v6, v3}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    .line 319
    invoke-virtual {v1, v4}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 316
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v1, "Added default IMS data profile."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 327
    :cond_10f
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda13;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda13;-><init>()V

    .line 328
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 329
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 330
    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    if-nez v1, :cond_145

    .line 332
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getEnterpriseDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    if-eqz v1, :cond_145

    .line 334
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added enterprise profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 340
    :cond_145
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda14;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda14;-><init>()V

    .line 341
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 342
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 343
    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    if-nez v1, :cond_186

    .line 345
    new-instance v1, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v1}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    const-string v4, "DEFAULT EIMS"

    const/16 v5, 0x200

    .line 346
    const-string v6, "sos"

    invoke-direct {p0, v4, v6, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->buildDefaultApnSetting(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    new-instance v4, Landroid/telephony/data/TrafficDescriptor;

    invoke-direct {v4, v6, v3}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    .line 348
    invoke-virtual {v1, v4}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 345
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v1, "Added default EIMS data profile."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 353
    :cond_186
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->dedupeDataProfiles(Ljava/util/List;)V

    .line 355
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isApnConfigAnomalyReportEnabled()Z

    move-result v1

    if-eqz v1, :cond_194

    .line 356
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->checkDataProfiles(Ljava/util/List;)V

    .line 359
    :cond_194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " data profiles. profiles = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1c9

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1d9

    .line 363
    :cond_1c9
    const-string v1, "Data profiles changed."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 365
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v2, v4

    .line 370
    :cond_1d9
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updatePreferredDataProfile()Z

    move-result v0

    or-int/2addr v0, v2

    .line 372
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileSetId()I

    move-result v1

    .line 373
    iget v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    if-eq v1, v2, :cond_1fd

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed preferred data profile set id to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    .line 375
    iput v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    goto :goto_1fe

    :cond_1fd
    move v4, v0

    .line 379
    :goto_1fe
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfilesAtModem()V

    .line 380
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->updateInitialAttachDataProfileAtModem(Z)V

    if-eqz v4, :cond_210

    .line 383
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda15;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda15;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_210
    return-void
.end method

.method private blacklist updateDataProfilesAtModem()V
    .registers 4

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDataProfilesAtModem: set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data profiles."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 618
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result p0

    const/4 v2, 0x0

    .line 617
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->setDataProfile(Ljava/util/List;ZLandroid/os/Message;)V

    return-void
.end method

.method private blacklist updateInitialAttachDataProfileAtModem(Z)V
    .registers 8

    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 589
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 590
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 592
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAllowedInitialAttachApnTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 593
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda21;

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda21;-><init>(I)V

    .line 594
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 595
    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    .line 596
    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataProfile;

    if-eqz v3, :cond_23

    :cond_4c
    if-nez p1, :cond_56

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 601
    :cond_56
    iput-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial attach data profile updated as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " or forceUpdateIa= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    .line 604
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    if-nez p1, :cond_84

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 605
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->allowClearInitialAttachDataProfile()Z

    move-result p1

    if-eqz p1, :cond_83

    goto :goto_84

    :cond_83
    return-void

    .line 606
    :cond_84
    :goto_84
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 607
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result p0

    .line 606
    invoke-virtual {p1, v0, p0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V

    return-void
.end method

.method private blacklist updatePreferredDataProfile()Z
    .registers 5

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 534
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    .line 535
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileFromDb()Landroid/telephony/data/DataProfile;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 537
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileFromConfig()Landroid/telephony/data/DataProfile;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 540
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->setPreferredDataProfile(Landroid/telephony/data/DataProfile;)V

    :cond_1c
    move-object v2, v1

    goto :goto_42

    .line 542
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;I)V

    .line 543
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 545
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 546
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/data/DataProfile;

    if-eqz v2, :cond_42

    .line 548
    const-string v0, "updatePreferredDataProfile: preferredDB is empty and no carrier default configured, setting preferred to be prev internet DP."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 550
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->setPreferredDataProfile(Landroid/telephony/data/DataProfile;)V

    .line 558
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    .line 559
    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/data/DataProfile;->setPreferred(Z)V

    goto :goto_48

    .line 562
    :cond_5c
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 563
    iput-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changed preferred data profile to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_7e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist areDataProfilesSharingApn(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z
    .registers 4

    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    .line 1081
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1082
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1083
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result p0

    .line 1082
    invoke-virtual {p1, p2, p0}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;Z)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist canPreferredDataProfileSatisfy(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z
    .registers 3

    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 847
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist clearAllDataProfilePermanentFailures()V
    .registers 2

    .line 1044
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda16;-><init>()V

    .line 1045
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda17;-><init>()V

    .line 1046
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda18;-><init>()V

    .line 1047
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 1156
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1157
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1160
    const-string p2, "Data profiles for the current carrier:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1162
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    .line 1163
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", last setup time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getLastSetupTimestamp()J

    move-result-wide v3

    .line 1164
    invoke-static {v3, v4}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_40

    .line 1167
    :cond_6c
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferred data profile="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferred data profile from db="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileFromDb()Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferred data profile from config="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileFromConfig()Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferred data profile set id="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1173
    const-string p2, "Last internet data profile for="

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1175
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLastInternetDataProfiles:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1176
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1177
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial attach data profile="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTetheringDataProfileExisting="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->isTetheringDataProfileExisting(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1180
    const-string p2, "Permanent failed profiles="

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1182
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda3;-><init>()V

    .line 1183
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1184
    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1185
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1187
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1189
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1191
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;
    .registers 8

    const/4 v0, 0x1

    .line 658
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 660
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataProfileManager;->getApnSettingForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/ApnSetting;

    move-result-object p2

    goto :goto_e

    :cond_d
    move-object p2, v1

    .line 664
    :goto_e
    new-instance p3, Landroid/telephony/data/TrafficDescriptor$Builder;

    invoke-direct {p3}, Landroid/telephony/data/TrafficDescriptor$Builder;-><init>()V

    const/4 p4, 0x2

    .line 665
    invoke-virtual {p1, p4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result p4

    if-eqz p4, :cond_23

    if-eqz p2, :cond_23

    .line 668
    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/telephony/data/TrafficDescriptor$Builder;->setDataNetworkName(Ljava/lang/String;)Landroid/telephony/data/TrafficDescriptor$Builder;

    :cond_23
    const/4 p4, 0x4

    .line 672
    invoke-virtual {p1, p4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result p4

    if-eqz p4, :cond_37

    .line 674
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getOsAppId()Landroid/telephony/data/TrafficDescriptor$OsAppId;

    move-result-object p4

    if-eqz p4, :cond_37

    .line 676
    invoke-virtual {p4}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getBytes()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/telephony/data/TrafficDescriptor$Builder;->setOsAppId([B)Landroid/telephony/data/TrafficDescriptor$Builder;

    .line 682
    :cond_37
    :try_start_37
    invoke-virtual {p3}, Landroid/telephony/data/TrafficDescriptor$Builder;->build()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p3
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3b} :catch_90

    .line 692
    iget-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_41
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_62

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/telephony/data/DataProfile;

    .line 693
    invoke-virtual {p5}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 694
    invoke-virtual {p5}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/telephony/data/TrafficDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    return-object p5

    .line 702
    :cond_62
    new-instance p4, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {p4}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    if-eqz p2, :cond_6c

    .line 704
    invoke-virtual {p4, p2}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    .line 708
    :cond_6c
    invoke-virtual {p4, p3}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    .line 710
    invoke-virtual {p4}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p2

    .line 711
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Created data profile "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object p2

    .line 685
    :catch_90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to find a data profile for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return-void

    .line 207
    :cond_1d
    const-string p1, "Update data profiles due to SIM refresh."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->allowClearInitialAttachDataProfile()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles(Z)V

    return-void

    .line 212
    :cond_2e
    const-string p1, "Update data profiles due to APN db updated."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 213
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles(Z)V

    return-void
.end method

.method public blacklist isDataProfileCompatible(Landroid/telephony/data/DataProfile;)Z
    .registers 4

    .line 1059
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    .line 1066
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 1067
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;)V

    .line 1071
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isDataProfilePreferred(Landroid/telephony/data/DataProfile;)Z
    .registers 3

    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->areDataProfilesSharingApn(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public blacklist isTetheringDataProfileExisting(I)Z
    .registers 10

    .line 859
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->isTetheringProfileDisabledForRoaming()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 860
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    .line 864
    :cond_16
    new-instance v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x2

    .line 866
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 867
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v3, v0, v2, v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 869
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v5

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 870
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result v6

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p1

    .line 868
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;

    move-result-object p0

    if-eqz p0, :cond_48

    const/4 p0, 0x1

    return p0

    :cond_48
    return v1
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .registers 2

    .line 1092
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .registers 2

    .line 1101
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
