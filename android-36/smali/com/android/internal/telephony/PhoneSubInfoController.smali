.class public Lcom/android/internal/telephony/PhoneSubInfoController;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;,
        Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;
    }
.end annotation


# instance fields
.field private blacklist mAppOps:Landroid/app/AppOpsManager;

.field private final greylist-max-r mContext:Landroid/content/Context;

.field private blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mVendorApiLevel:I


# direct methods
.method public static synthetic blacklist $r8$lambda$-5_4gI1czIoTs5co1DlRQ88op3Y(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getVoiceMailNumberForSubscriber$12(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$0yV2PvodQYVbibO0ISy965E9vUg(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getIccSerialNumberForSubscriber$8(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$1-3CjpC_wz80O20CAZj2oITvxLw(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 1

    .line 105
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$1FGsLj_Esg0Nty_7ZkJYsf1t3zk(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 745
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$1NqsuCt5dgbj5lx47bQiDoMivtE(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;ILcom/android/internal/telephony/Phone;)Landroid/telephony/ImsiEncryptionInfo;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getCarrierInfoForImsiEncryption$3(Ljava/lang/String;ILcom/android/internal/telephony/Phone;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$6VR8x0PHW76MPC4plb5g9CPMTjc(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getGroupIdLevel2ForSubscriber$25(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$B-9UzJydLkE2wx5ixau0PbLkeHU(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getNaiForSubscriber$1(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$BKx5PQoaf2riSDX1StvbftCZCWQ(Lcom/android/internal/telephony/PhoneSubInfoController;ILcom/android/internal/telephony/Phone;)Landroid/net/Uri;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getSmscIdentity$32(ILcom/android/internal/telephony/Phone;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$D3ob_ZCvMF-QW49byqEBuMpBFpA(Lcom/android/internal/telephony/Phone;)[Ljava/lang/String;
    .registers 1

    .line 468
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 470
    invoke-interface {p0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpu()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$EN2JpTOgrNXky85ur1FVCIiVB_A(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 773
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Gaa--krdRJL_HsiLPA_r9Sp0jQQ(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 1

    .line 286
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$HAddreWi61BWCSjKxVt9WxMudD8(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getVoiceMailAlphaTagForSubscriber$13(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$JxHU3--cQ6_FzqZkvAF79AEJChA(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 725
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$NxRXZMiehJUCn8mTPuaTGpnDsEk(Lcom/android/internal/telephony/PhoneSubInfoController;ILcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getSimServiceTable$22(ILcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$QA4m81okqK7dbPe2EYaPlWKbqeQ(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getLine1NumberForSubscriber$9(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$QLcP_6KbklBCVBOzZ24lrh0w_D0(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 1

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 409
    invoke-interface {p0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$QYZn-xpOxq2zmWXTxPmcyApmH0w(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 1

    .line 175
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDeviceSvn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$XSGwR9Gwqr4jP_4bEkKuwGXsbfA(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getGroupIdLevel1ForSubscriber$24(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$YP2POKgqq4956k-zuWnz4SLEDUM(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getIccSimChallengeResponse$23(Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$e3Bsu0mofAg6jQzKS_cpG8XojnA(Landroid/telephony/ImsiEncryptionInfo;Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .registers 2

    .line 143
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Phone;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$g2BsDTtxKrtnNI_knedhGXlxBm4(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getSubscriberIdForSubscriber$7(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$kQYe0urZiF8B4Xov2j6heHgm6LE(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 735
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$kwwHgtiIFZ18sra63tx10U_S_l4(Lcom/android/internal/telephony/PhoneSubInfoController;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$callPhoneMethodForSubIdWithModifyCheck$30(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$pGjrcxYEaJqqEaEV7O2Wj9WwXqw(Lcom/android/internal/telephony/PhoneSubInfoController;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceIccSimChallengeResponsePermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$psCpH0WlMsvQBXbJAnd4A87mA_k(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 579
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$r9spsBV5RV1FKoZd_6r8ohGAW_Y(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$resetCarrierKeysForImsiEncryption$5(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$s7D2J_hVjFHRfyl0J0psGu83MUk(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 1

    .line 122
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getImei()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$t3-0FlnLyRa4re1dmWiP1ahfaOM(Lcom/android/internal/telephony/PhoneSubInfoController;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getIsimIst$17(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$tp3g0kkY9kP5701LPzaJRNQoaKM(Lcom/android/internal/telephony/PhoneSubInfoController;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getIsimDomain$15(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$wkX2_xK8rKAX6sqqoYhnJMhRa40(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 1

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$y6vfTbT-gyTx85O07i6k4TL3vn8(Ljava/lang/String;)Z
    .registers 1

    .line 0
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$yGfwbPXQanq8iyiiJ92d39dODO8(Lcom/android/internal/telephony/Phone;)[Ljava/lang/String;
    .registers 1

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 541
    invoke-interface {p0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimPcscf()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ypqZ6TrgxGHj4vma9RhiFmBVVUw(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$callPhoneMethodForSubIdWithPrivilegedCheck$29(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ziWz92ypg1tgwvLGNew_bzl7hPg(Ljava/lang/String;)Z
    .registers 1

    .line 580
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const-class v0, Lcom/android/internal/telephony/PhoneSubInfoController;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 73
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 5

    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 78
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_14

    .line 81
    invoke-virtual {v0, p0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->register(Landroid/os/IBinder;)V

    .line 83
    :cond_14
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mAppOps:Landroid/app/AppOpsManager;

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 86
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 87
    const-string p1, "ro.vendor.api_level"

    sget p2, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mVendorApiLevel:I

    return-void
.end method

.method private blacklist callPhoneMethodForPhoneIdWithReadDeviceIdentifiersCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 781
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 p1, 0x0

    .line 784
    :cond_7
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_f

    return-object v0

    .line 788
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    .line 789
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 788
    invoke-static {p0, v1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1c

    return-object v0

    .line 793
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 795
    :try_start_20
    invoke-interface {p5, p1}, Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;->callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_28

    .line 797
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_28
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    throw p0
.end method

.method private blacklist callPhoneMethodForSubIdWithModifyCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 760
    new-instance v6, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda29;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda29;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 751
    new-instance v6, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda32;

    invoke-direct {v6, p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda32;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 722
    new-instance v6, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda30;

    invoke-direct {v6}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda30;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist callPhoneMethodForSubIdWithReadDeviceIdentifiersCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 732
    new-instance v6, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda28;

    invoke-direct {v6}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda28;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist callPhoneMethodForSubIdWithReadPhoneNumberCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 770
    new-instance v6, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda33;

    invoke-direct {v6}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda33;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist callPhoneMethodForSubIdWithReadSubscriberIdentifiersCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 742
    new-instance v6, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda31;

    invoke-direct {v6}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda31;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;",
            ")TT;"
        }
    .end annotation

    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v0, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;->checkPermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_f

    return-object p2

    .line 705
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 707
    :try_start_13
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 709
    invoke-interface {p5, p0}, Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;->callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_21

    .line 715
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_21
    move-exception v0

    move-object p0, v0

    goto :goto_28

    :cond_24
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :goto_28
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 716
    throw p0
.end method

.method private blacklist enforceCallingPackageUidMatched(Ljava/lang/String;)V
    .registers 3

    .line 352
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 354
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "188677422"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x534e4554

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 355
    throw p0
.end method

.method private blacklist enforceIccSimChallengeResponsePermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 361
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfUseIccAuthWithDeviceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_8

    return p3

    .line 366
    :cond_8
    invoke-direct {p0, p2, p5}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforcePrivilegedPermissionOrCarrierPrivilege(ILjava/lang/String;)V

    return p3
.end method

.method private blacklist enforceModifyPermission()V
    .registers 3

    .line 392
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const-string v1, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist enforcePrivilegedPermissionOrCarrierPrivilege(ILjava/lang/String;)V
    .registers 5

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 385
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private blacklist enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_3e

    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_7

    goto :goto_3e

    :cond_7
    const-wide/32 v0, 0x11c2f5c6

    .line 865
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 864
    invoke-static {v0, v1, p1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mVendorApiLevel:I

    const/16 v0, 0x23

    if-ge p1, v0, :cond_1b

    goto :goto_3e

    .line 873
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_3e

    .line 874
    :cond_24
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is unsupported without "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    :goto_3e
    return-void
.end method

.method private blacklist getCurrentPackageName()Ljava/lang/String;
    .registers 4

    .line 842
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 843
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_13

    return-object v0

    .line 845
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1e

    return-object v0

    .line 846
    :cond_1e
    aget-object p0, p0, v1

    return-object p0
.end method

.method private greylist-max-r getDefaultSubscription()I
    .registers 1

    .line 398
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result p0

    return p0
.end method

.method private greylist-max-r getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 2

    .line 343
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 344
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 347
    :cond_c
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$callPhoneMethodForSubIdWithModifyCheck$30(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 762
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceModifyPermission()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$callPhoneMethodForSubIdWithPrivilegedCheck$29(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 753
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$getCarrierInfoForImsiEncryption$3(Ljava/lang/String;ILcom/android/internal/telephony/Phone;)Landroid/telephony/ImsiEncryptionInfo;
    .registers 6

    .line 130
    const-string v0, "android.hardware.telephony.subscription"

    const-string v1, "getCarrierInfoForImsiEncryption"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 134
    invoke-virtual {p3, p2, p0}, Lcom/android/internal/telephony/Phone;->getCarrierInfoForImsiEncryption(IZ)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getGroupIdLevel1ForSubscriber$24(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 5

    .line 654
    const-string v0, "android.hardware.telephony.subscription"

    const-string v1, "getGroupIdLevel1ForSubscriber"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-interface {p2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getGroupIdLevel2ForSubscriber$25(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 5

    .line 669
    const-string v0, "android.hardware.telephony.subscription"

    const-string v1, "getGroupIdLevel2ForSubscriber"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-interface {p2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getIccSerialNumberForSubscriber$8(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 5

    .line 250
    const-string v0, "android.hardware.telephony.subscription"

    const-string v1, "getIccSerialNumberForSubscriber"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getIccSimChallengeResponse$23(Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 8

    .line 617
    const-string v0, "android.hardware.telephony.subscription"

    const-string v1, "getIccSimChallengeResponse"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p5}, Lcom/android/internal/telephony/Phone;->getUiccPort()Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p1

    const/4 p5, 0x0

    if-nez p1, :cond_14

    .line 622
    const-string p1, "getIccSimChallengeResponse() uiccPort is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-object p5

    .line 626
    :cond_14
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/UiccPort;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    if-nez p1, :cond_2f

    .line 628
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getIccSimChallengeResponse() no app with specified type -- "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-object p5

    .line 631
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccSimChallengeResponse() found app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " specified type -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    const/16 p2, 0x80

    if-eq p3, p2, :cond_74

    const/16 p2, 0x81

    if-eq p3, p2, :cond_74

    const/16 p2, 0x84

    if-eq p3, p2, :cond_74

    const/16 p2, 0x85

    if-eq p3, p2, :cond_74

    .line 639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getIccSimChallengeResponse() unsupported authType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-object p5

    .line 642
    :cond_74
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getIsimDomain$15(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 5

    .line 450
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.telephony.subscription"

    const-string v2, "getIsimDomain"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 455
    invoke-interface {p0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimDomain()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic blacklist lambda$getIsimIst$17(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 5

    .line 521
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.telephony.subscription"

    const-string v2, "getIsimIst"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 526
    invoke-interface {p0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimIst()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic blacklist lambda$getLine1NumberForSubscriber$9(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 5

    .line 270
    const-string v0, "android.hardware.telephony.subscription"

    const-string v1, "getLine1NumberForSubscriber"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-interface {p2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getNaiForSubscriber$1(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 5

    .line 111
    const-string v0, "android.hardware.telephony.subscription"

    const-string v1, "getNaiForSubscriber"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getNai()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getSimServiceTable$22(ILcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 6

    .line 594
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.telephony.subscription"

    const-string v2, "getSimServiceTable"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getUiccPort()Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_43

    .line 598
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccPort;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    if-nez v1, :cond_19

    goto :goto_43

    .line 602
    :cond_19
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccPort;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p2

    if-nez p2, :cond_38

    .line 605
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimServiceTable(): no app with specified apptype="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-object v0

    .line 609
    :cond_38
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSimServiceTable()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 599
    :cond_43
    :goto_43
    const-string p1, "getSimServiceTable(): uiccPort or uiccProfile is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$getSmscIdentity$32(ILcom/android/internal/telephony/Phone;)Landroid/net/Uri;
    .registers 6

    .line 809
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.telephony.subscription"

    const-string v2, "getSmscIdentity"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 814
    :try_start_c
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getUiccPort()Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p2

    .line 816
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccPort;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 818
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getSmscIdentity()Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    :catch_23
    move-exception p1

    goto :goto_34

    :cond_25
    move-object p1, p0

    .line 820
    :goto_26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 821
    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object p0

    .line 823
    :cond_2f
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_33} :catch_23

    return-object p0

    .line 825
    :goto_34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSmscIdentity(): Exception = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhoneSubInfoController"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private synthetic blacklist lambda$getSubscriberIdForSubscriber$7(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 5

    .line 204
    const-string v0, "android.hardware.telephony.subscription"

    const-string v1, "getSubscriberIdForSubscriber"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-interface {p2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getVoiceMailAlphaTagForSubscriber$13(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 5

    .line 330
    const-string v0, "android.hardware.telephony.calling"

    const-string v1, "getVoiceMailAlphaTagForSubscriber"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-interface {p2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getVoiceMailNumberForSubscriber$12(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 5

    .line 310
    const-string v0, "android.hardware.telephony.calling"

    const-string v1, "getVoiceMailNumberForSubscriber"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-interface {p2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object p0

    .line 314
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$resetCarrierKeysForImsiEncryption$5(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .registers 5

    .line 159
    const-string v0, "android.hardware.telephony.subscription"

    const-string v1, "resetCarrierKeysForImsiEncryption"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->resetCarrierKeysForImsiEncryption()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist-max-r loge(Ljava/lang/String;)V
    .registers 2

    .line 885
    const-string p0, "PhoneSubInfoController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist getCarrierInfoForImsiEncryption(IILjava/lang/String;)Landroid/telephony/ImsiEncryptionInfo;
    .registers 5

    .line 127
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;I)V

    const-string p2, "getCarrierInfoForImsiEncryption"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ImsiEncryptionInfo;

    return-object p0
.end method

.method public blacklist getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDeviceIdForPhone(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 103
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceCallingPackageUidMatched(Ljava/lang/String;)V

    .line 104
    new-instance v5, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda11;

    invoke-direct {v5}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda11;-><init>()V

    const-string v4, "getDeviceId"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForPhoneIdWithReadDeviceIdentifiersCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceIdForPhone(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDeviceSvn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceSvnUsingSubId(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDeviceSvnUsingSubId(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 174
    new-instance v5, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda18;

    invoke-direct {v5}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda18;-><init>()V

    const-string v4, "getDeviceSvn"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getGroupIdLevel1ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 652
    new-instance v5, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V

    const-string v4, "getGroupIdLevel1"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getGroupIdLevel2ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 667
    new-instance p3, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V

    const-string p2, "getGroupIdLevel2"

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getIccSerialNumberWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getIccSerialNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 248
    new-instance v5, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V

    const-string v4, "getIccSerialNumber"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadSubscriberIdentifiersCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIccSerialNumberWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 242
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getIccSerialNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getIccSimChallengeResponse(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda13;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;IILjava/lang/String;)V

    move-object p3, p6

    move-object p5, v0

    move-object p2, v2

    .line 645
    new-instance p6, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda14;

    invoke-direct {p6, p0}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;)V

    const-string p4, "getIccSimChallengeResponse"

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getImeiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 121
    new-instance v5, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda21;

    invoke-direct {v5}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda21;-><init>()V

    const-string v4, "getImei"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadDeviceIdentifiersCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getImsPcscfAddresses(ILjava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 562
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    .line 567
    const-string v1, "getImsPcscfAddresses"

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfReadPrivilegedPhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 569
    const-string v0, "android.hardware.telephony.subscription"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object p0

    if-eqz p0, :cond_4a

    .line 576
    invoke-interface {p0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimPcscf()[Ljava/lang/String;

    move-result-object p0

    .line 577
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda1;-><init>()V

    .line 578
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda2;-><init>()V

    .line 579
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda3;-><init>()V

    .line 580
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 581
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 584
    :cond_4a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ISIM is not loaded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 563
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid subscription: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getImsPrivateUserIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 427
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v1, "getImsPrivateUserIdentity"

    invoke-static {v0, p2, p3, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfUseIccAuthWithDeviceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 434
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 436
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 438
    invoke-interface {p0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 440
    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ISIM is not loaded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 432
    :cond_27
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No permissions to the caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 428
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid SubscriptionID  = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getImsPublicUserIdentities(ILjava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 489
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    .line 494
    const-string v1, "getImsPublicUserIdentities"

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfReadPrivilegedPhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 496
    const-string v0, "android.hardware.telephony.subscription"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 503
    invoke-interface {p0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpu()[Ljava/lang/String;

    move-result-object p0

    .line 504
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 505
    array-length p2, p0

    const/4 v0, 0x0

    :goto_27
    if-ge v0, p2, :cond_41

    aget-object v1, p0, v0

    if-eqz v1, :cond_3e

    .line 506
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3e

    .line 507
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_41
    return-object p1

    .line 512
    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ISIM is not loaded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 490
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid subscription: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getIsimDomain(I)Ljava/lang/String;
    .registers 4

    .line 448
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;)V

    const-string v1, "getIsimDomain"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIsimImpi(I)Ljava/lang/String;
    .registers 4

    .line 405
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "getIsimImpi"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIsimImpu(I)[Ljava/lang/String;
    .registers 4

    .line 466
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "getIsimImpu"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIsimIst(I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;)V

    const-string v1, "getIsimIst"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIsimPcscf(I)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "getIsimPcscf"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getLine1AlphaTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 279
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1AlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getLine1AlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 285
    new-instance v5, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda9;-><init>()V

    const-string v4, "getLine1AlphaTag"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getLine1Number(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 259
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1NumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getLine1NumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 267
    new-instance v5, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V

    const-string v4, "getLine1Number"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadPhoneNumberCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 290
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getMsisdnForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMsisdnForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 297
    new-instance v5, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda26;

    invoke-direct {v5}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda26;-><init>()V

    const-string v4, "getMsisdn"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadPhoneNumberCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNaiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 109
    new-instance v5, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda17;

    invoke-direct {v5, p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda17;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V

    const-string v4, "getNai"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadSubscriberIdentifiersCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSimServiceTable(II)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda27;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;I)V

    const-string p2, "getSimServiceTable"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSmscIdentity(II)Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;I)V

    const-string p2, "getSmscIdentity"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    if-eqz p0, :cond_10

    return-object p0

    .line 830
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony service error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getSubscriberIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSubscriberIdForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 196
    :try_start_d
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_6c

    .line 199
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    const-string v7, "getSubscriberIdForSubscriber"

    if-eqz v0, :cond_2c

    .line 202
    new-instance v8, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda24;

    invoke-direct {v8, p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda24;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadSubscriberIdentifiersCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2c
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 211
    iget-object p0, v3, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    invoke-static {p0, v4, v5, v6, v7}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_3a

    return-object p1

    .line 216
    :cond_3a
    const-string p0, "android.hardware.telephony.subscription"

    const-string p2, "getSubscriberIdForSubscriber"

    invoke-direct {v3, v5, p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 221
    :try_start_45
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    .line 222
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getImsi()Ljava/lang/String;

    move-result-object p0
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_61

    .line 228
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_61
    move-exception v0

    move-object p0, v0

    goto :goto_68

    :cond_64
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :goto_68
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    throw p0

    :catchall_6c
    move-exception v0

    move-object p0, v0

    .line 199
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    throw p0
.end method

.method public blacklist getSubscriberIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getSubscriberIdForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getVoiceMailAlphaTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 322
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 328
    new-instance v5, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda25;

    invoke-direct {v5, p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda25;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V

    const-string v4, "getVoiceMailAlphaTag"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 302
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getVoiceMailNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 308
    new-instance v5, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V

    const-string v4, "getVoiceMailNumber"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist resetCarrierKeysForImsiEncryption(ILjava/lang/String;)V
    .registers 5

    .line 156
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V

    const-string v1, "resetCarrierKeysForImsiEncryption"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithModifyCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryption(ILjava/lang/String;Landroid/telephony/ImsiEncryptionInfo;)V
    .registers 5

    .line 140
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3}, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ImsiEncryptionInfo;)V

    const-string p3, "setCarrierInfoForImsiEncryption"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithModifyCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    return-void
.end method
