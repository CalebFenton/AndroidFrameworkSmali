.class public Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
.super Lcom/android/internal/telephony/ISub$Stub;
.source "SubscriptionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;,
        Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;,
        Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;,
        Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;
    }
.end annotation


# static fields
.field private static final blacklist BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

.field private static final blacklist DIRECT_ACCESS_SUBSCRIPTION_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FILTER_ACCESSIBLE_SUBS_BY_USER:J = 0x11a5c582L

.field public static final blacklist REQUIRE_DEVICE_IDENTIFIERS_FOR_GROUP_UUID:J = 0xcbfe60dL

.field private static blacklist bootstrapProvisioningTimer:Landroid/os/CountDownTimer;

.field private static blacklist sInstance:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# instance fields
.field private final blacklist mAppOpsManager:Landroid/app/AppOpsManager;

.field private final blacklist mBackgroundHandler:Landroid/os/Handler;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDefaultDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

.field private final blacklist mDefaultSmsSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

.field private final blacklist mDefaultSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

.field private final blacklist mDefaultVoiceSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

.field private blacklist mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

.field private final blacklist mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mSimState:[I

.field private final blacklist mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

.field private final blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final blacklist mSubscriptionManagerServiceCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final blacklist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private blacklist mUserIdToAvailableSubs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mVendorApiLevel:I


# direct methods
.method public static synthetic blacklist $r8$lambda$2O8bYkcAliGnTyv09NvIOGeoCzA(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$markSubscriptionsInactive$6(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3KobC1mbFgab_5mDli6t_lkppdc(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateEmbeddedSubscriptions$8(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5OTjLXO6XJXVeS_GqwwZ5pYTpjc(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getSubscriptionsInGroup$25(Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$8ALRo4RNNK-ow7g8APJFiQlFdAo(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ZLandroid/os/UserHandle;Ljava/lang/Integer;)Z
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getActiveSubIdListAsUser$28(ZLandroid/os/UserHandle;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$BA0WLmVkQm29e5MT6xE-WDz0ilk(Landroid/os/ParcelUuid;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 2

    .line 703
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$BdNvpEQan2qa5Ol8ZazEoZcV3J8(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getOpportunisticSubscriptions$22(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$CvxsdHiJrtfyAhaRY6RJUuh03qw(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$new$0(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EA_ZiX7g2HaYe3zCpR0T7i_S8LU(Ljava/lang/String;)Z
    .registers 1

    .line 4641
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$EOOe211rAJ606jAjnng7sgzsEPI(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/UserHandle;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getSubscriptionInfoStreamAsUser$33(Landroid/os/UserHandle;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Ec2LvuOHKJZzZRBbBNkc1IJl0Vk(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getAllSubInfoList$16(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$GQzSZ6dqnRlUbmJjvnZQ3gOydIk(ILcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .registers 3

    .line 3219
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda45;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda45;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HQ6sD-Ypo_ZQxJMbV4JvI1--m1c(Ljava/util/Set;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 2

    .line 1323
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$HfmFG67cF-ifheiL2Hbxhd5KTX0(ILjava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 4

    .line 1531
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSimSlotIndex()I

    move-result v0

    if-ne v0, p0, :cond_12

    .line 1532
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getIccId()Ljava/lang/String;

    move-result-object p0

    .line 1531
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$IbbtxufaQUpvKtXXBShxG6JX_iA(ILcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 2

    .line 1065
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSimSlotIndex()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$JtFxg-slsovEKst3jOnaSeCFw48(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 4642
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$MdVJ7g7TzWs-ca3APy990nxl4Yg(Ljava/util/List;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 3

    .line 1481
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getIccId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    .line 1482
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isEmbedded()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$NLF3-rt4fRge9glzTIcBnExKjKY(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .registers 1

    .line 5136
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Nnklcn2PAenyU2qWJdkBZ7P4LAo(ILcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .registers 3

    .line 3727
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda53;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda53;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NnwAWvjHI7UhUsbXYUFcndm0M9Y(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getAllSubInfoList$17(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$PjSwhd2lE7RKr0MUWLzKZ2laX7s(Ljava/lang/String;)Z
    .registers 1

    .line 4714
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$RUQLFTNgnKvLltKcQ3oazPfnq4s(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;I)V
    .registers 2

    .line 3728
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->onUiccApplicationsEnabledChanged(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RvfjPiLOZPRRJFTZv69-uqNdoYQ(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$new$1(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VlWJg_Zjv-JEUMYSz-gXrOVqhSU(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$new$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Wc_ngiaXOf-eHLZUflMUflePTi0(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/util/List;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getAvailableSubscriptionsInternalStream$19(Ljava/util/List;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$_fmINilRR3Eja9WNqFRoL9Yrpac(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 3

    .line 4893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$cY9elXGbcxj1can9sGPTKqxWyEs(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateSimStateForInactivePort$34(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eeyiZ8oOrx60VPCmDvbTM-7nD9s(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;I)Z
    .registers 2

    .line 2881
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p0

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$fdM6ImgZeOKLZ436NRkk-rlbiC4(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateEmbeddedSubscriptions$9(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$fj0GfwO0yUO3hOf_SsXtZLaD5PM(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateSimState$35(IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hBSXz0SYpktsv6WZC-c3BWBbdMU(ILcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 3

    .line 3582
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSimSlotIndex()I

    move-result p1

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$h_CDPjM1Is0zqNkeO9s6gqWNFvw(Ljava/lang/Integer;)I
    .registers 1

    .line 3411
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$iDD3gWq8W6TKyRsslw-iAH5aSiw(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getActiveSubscriptionInfoList$18(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$jJNoRSjWMmhktwweflY4fJHTN9g(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 5125
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$k3ogaB69bS-bn97tveyP2nfoHck(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)Z
    .registers 3

    .line 4555
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v0

    if-nez v0, :cond_16

    .line 4556
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object p0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$kQUFslkw77CFUtVKYtw8W6X8LoE(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getAccessibleSubscriptionInfoList$20(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$m1UVNlUsHcKEZC6AGW-_FfpWSXg(Landroid/telephony/SubscriptionInfo;)Z
    .registers 2

    if-eqz p0, :cond_a

    .line 4824
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getProfileClass()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$nYOrFlhqWLeHkFVdhdr8bSCU2dM(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateSubscription$13(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oG2sDqHgpFvbce7ifKmGDb4vq1Y(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ILjava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Runnable;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateSubscriptionByCarrierConfig$15(ILjava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$p1e1UQ1MXk4sLVBWIaT02bsrb60(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5

    .line 5080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logical SIM slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": subId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qEsWMbTKajj7hXe5A4kqn9atLT0(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getOpportunisticSubscriptions$21(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$qIm2YNZOszqUzfCfwu41OzfIqQA(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/Runnable;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateEmbeddedSubscriptions$11(Ljava/lang/Runnable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ti25Ze69KcghbuNUU4VOlWlbQtc(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 4715
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vgvDQQXcEASWhiLbaG_PJHLUZVI(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;I)V
    .registers 2

    .line 3220
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->onDefaultDataSubscriptionChanged(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vzTV8OO6nk4l4se-GaB0Y1pxR0g(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getSubscriptionsInGroup$24(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$wB1It6QIFNZinJ4Fou9Uv5nKpnc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .registers 1

    .line 5119
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$xSfcifxoNvMusuk7d_KFoZXorXM(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$syncGroupedSetting$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xs7qVIM8c7i54r-FsEpahLJiXUE(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .registers 1

    .line 5131
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$zh5QeNF7Ngx-Q27iGsPl2hgvyto(Ljava/lang/Runnable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 1350
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptionDatabaseManager(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptionManagerServiceCallbacks(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManagerServiceCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Landroid/telephony/TelephonyManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelEsimBootstrapTimer(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->cancelEsimBootstrapTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateEmbeddedSubscriptions(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateEmbeddedSubscriptions()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateUserIdToAvailableSubs(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateUserIdToAvailableSubs()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 40

    .line 175
    const-string v38, "satellite_entitlement_data_service_policy"

    const-string v39, "satellite_entitlement_voice_service_policy"

    const-string v1, "enable_cmas_extreme_threat_alerts"

    const-string v2, "enable_cmas_severe_threat_alerts"

    const-string v3, "enable_cmas_amber_alerts"

    const-string v4, "enable_emergency_alerts"

    const-string v5, "alert_sound_duration"

    const-string v6, "alert_reminder_interval"

    const-string v7, "enable_alert_vibrate"

    const-string v8, "enable_alert_speech"

    const-string v9, "enable_etws_test_alerts"

    const-string v10, "enable_channel_50_alerts"

    const-string v11, "enable_cmas_test_alerts"

    const-string v12, "show_cmas_opt_out_dialog"

    const-string v13, "volte_vt_enabled"

    const-string v14, "vt_ims_enabled"

    const-string v15, "wfc_ims_enabled"

    const-string v16, "wfc_ims_mode"

    const-string v17, "wfc_ims_roaming_mode"

    const-string v18, "wfc_ims_roaming_enabled"

    const-string v19, "enabled_mobile_data_policies"

    const-string v20, "ims_rcs_uce_enabled"

    const-string v21, "cross_sim_calling_enabled"

    const-string v22, "rcs_config"

    const-string v23, "allowed_network_types_for_reasons"

    const-string v24, "d2d_sharing_status"

    const-string v25, "voims_opt_in_status"

    const-string v26, "d2d_sharing_contacts"

    const-string v27, "nr_advanced_calling_enabled"

    const-string v28, "satellite_enabled"

    const-string v29, "satellite_attach_enabled_for_carrier"

    const-string v30, "is_only_ntn"

    const-string v31, "satellite_entitlement_status"

    const-string v32, "satellite_entitlement_plmns"

    const-string v33, "satellite_esos_supported"

    const-string v34, "is_satellite_provisioned_for_non_ip_datagram"

    const-string v35, "satellite_entitlement_barred_plmns"

    const-string v36, "satellite_entitlement_data_plan_plmns"

    const-string v37, "satellite_entitlement_service_type_map"

    filled-new-array/range {v1 .. v39}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->DIRECT_ACCESS_SUBSCRIPTION_COLUMNS:Ljava/util/Set;

    .line 236
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 11

    .line 491
    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    .line 298
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 306
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    .line 310
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManagerServiceCallbacks:Ljava/util/Set;

    .line 344
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUserIdToAvailableSubs:Ljava/util/Map;

    .line 492
    const-string v1, "Created SubscriptionManagerService"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 493
    sput-object p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->sInstance:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 494
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 495
    iput-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 496
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 497
    const-class v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    iput-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 498
    const-class v2, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/euicc/EuiccManager;

    iput-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    .line 499
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 500
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 501
    const-string v2, "ro.vendor.api_level"

    sget v3, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mVendorApiLevel:I

    .line 504
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 505
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    .line 510
    new-instance p2, Landroid/os/HandlerThread;

    const-string v3, "SMSVC"

    invoke-direct {p2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 513
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v4, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 516
    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$1;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_sim_voice_call"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p2, p0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$1;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultVoiceSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    .line 532
    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$2;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_sim_data_call"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p2, p0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$2;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    .line 548
    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_sim_sms"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p2, p0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSmsSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    .line 564
    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-direct {p2, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    .line 566
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    const/4 v1, 0x0

    .line 567
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 576
    new-instance p2, Landroid/os/HandlerThread;

    invoke-direct {p2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 578
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    .line 581
    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    new-instance v3, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;

    .line 585
    new-instance v4, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p1, p2, p3, v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;)V

    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 629
    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 630
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result p3

    .line 629
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->broadcastSubId(Ljava/lang/String;I)V

    .line 632
    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    invoke-interface {v0, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 638
    const-string p2, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    .line 639
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubId()I

    move-result p3

    .line 638
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->broadcastSubId(Ljava/lang/String;I)V

    .line 640
    const-string p2, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    .line 641
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubId()I

    move-result p3

    .line 640
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->broadcastSubId(Ljava/lang/String;I)V

    .line 642
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateDefaultSubId()V

    .line 646
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object p2

    .line 647
    invoke-virtual {p2}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object p2

    .line 648
    invoke-virtual {p2}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object p3

    if-nez p3, :cond_121

    .line 649
    invoke-virtual {p2, p0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->register(Landroid/os/IBinder;)V

    .line 652
    :cond_121
    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda20;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    invoke-virtual {v2, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 661
    invoke-static {}, Landroid/telephony/SubscriptionManager;->invalidateSubscriptionManagerServiceCaches()V

    .line 663
    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$5;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$5;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 669
    const-string p1, "Registered iSub service"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist areAllSubscriptionsLoaded()Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 1419
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-ge v1, v2, :cond_b6

    .line 1420
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    if-nez v2, :cond_27

    .line 1422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areAllSubscriptionsLoaded: slot is null. phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return v0

    .line 1425
    :cond_27
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isActive()Z

    move-result v3

    if-nez v3, :cond_42

    .line 1426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areAllSubscriptionsLoaded: slot is inactive. phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return v0

    .line 1429
    :cond_42
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v3

    if-eqz v3, :cond_71

    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v3

    if-nez v3, :cond_71

    .line 1430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wait for port corresponding to phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to be active, portIndex is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromPhoneId(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1430
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return v0

    .line 1435
    :cond_71
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aget v2, v2, v1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_92

    .line 1437
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    .line 1438
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v2

    if-nez v2, :cond_92

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->areUiccAppsEnabledOnCard(I)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 1439
    const-string v1, "areAllSubscriptionsLoaded: NOT_READY is not a final state."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return v0

    .line 1444
    :cond_92
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aget v2, v2, v1

    if-nez v2, :cond_b2

    .line 1445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areAllSubscriptionsLoaded: SIM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state is still unknown."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return v0

    :cond_b2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_b6
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist broadcastSubId(Ljava/lang/String;I)V
    .registers 6

    .line 3363
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    .line 3364
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3365
    invoke-static {v0, p2}, Landroid/telephony/SubscriptionManager;->putSubscriptionIdExtra(Landroid/content/Intent;I)V

    .line 3366
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastSubId action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " subId= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z
    .registers 4

    .line 4973
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4974
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 4975
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 4974
    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/SubscriptionManager;->canManageSubscriptionAsUser(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    .line 4977
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist canPackageManageGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_66

    .line 695
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda21;-><init>(Landroid/os/ParcelUuid;)V

    .line 703
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 704
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 705
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 709
    invoke-static {p1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    return v1

    :cond_36
    const/4 v0, 0x0

    .line 715
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    return v1

    .line 718
    :cond_48
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda1;-><init>()V

    .line 719
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    .line 718
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkCarrierPrivilegeOnSubList([ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 696
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty callingPackage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 692
    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid groupUuid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist cancelEsimBootstrapTimer()V
    .registers 2

    .line 1670
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->bootstrapProvisioningTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_f

    .line 1671
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 1672
    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->bootstrapProvisioningTimer:Landroid/os/CountDownTimer;

    .line 1673
    const-string v0, "bootstrapProvisioningTimer timer cancelled."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private blacklist checkAndGetSubId(I)I
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    goto :goto_14

    :cond_4
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_e

    .line 3888
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result p0

    return p0

    .line 3889
    :cond_e
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-eqz p0, :cond_15

    :goto_14
    return p1

    .line 3890
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid SubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkCarrierPrivilegeOnSubList([ILjava/lang/String;)Z
    .registers 9

    .line 736
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_6e

    aget v3, p1, v2

    .line 737
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 738
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v4

    if-nez v4, :cond_29

    .line 740
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkCarrierPrivilegeOnSubList: subId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exist."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return v1

    .line 744
    :cond_29
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 745
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 746
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkCarrierPrivilegeOnSubList: Does not have carrier privilege on sub "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return v1

    .line 751
    :cond_4c
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 753
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkCarrierPrivilegeOnSubList: cannot manage sub "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return v1

    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6e
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist checkPhoneNumberSource(I)V
    .registers 4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_21

    const/4 p0, 0x2

    if-eq p1, p0, :cond_21

    const/4 p0, 0x3

    if-ne p1, p0, :cond_a

    goto :goto_21

    .line 3903
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    :goto_21
    return-void
.end method

.method private blacklist conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .registers 11

    .line 849
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 850
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->hasSubscriberIdentifierAccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 852
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->hasPhoneNumberAccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p0, :cond_16

    if-eqz p2, :cond_16

    return-object p1

    .line 859
    :cond_16
    new-instance p3, Landroid/telephony/SubscriptionInfo$Builder;

    invoke-direct {p3, p1}, Landroid/telephony/SubscriptionInfo$Builder;-><init>(Landroid/telephony/SubscriptionInfo;)V

    const/4 p1, 0x0

    if-nez p0, :cond_27

    .line 861
    invoke-virtual {p3, p1}, Landroid/telephony/SubscriptionInfo$Builder;->setIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    .line 862
    invoke-virtual {p3, p1}, Landroid/telephony/SubscriptionInfo$Builder;->setCardString(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    .line 863
    invoke-virtual {p3, p1}, Landroid/telephony/SubscriptionInfo$Builder;->setGroupUuid(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    :cond_27
    if-nez p2, :cond_2c

    .line 867
    invoke-virtual {p3, p1}, Landroid/telephony/SubscriptionInfo$Builder;->setNumber(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    .line 869
    :cond_2c
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo$Builder;->build()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private blacklist enforcePermissionAccessAllUserProfiles()V
    .registers 1

    .line 0
    return-void
.end method

.method private varargs blacklist enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 4382
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->hasPermissions([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 4383
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Does not have any of the following permissions. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4385
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_40

    .line 4868
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_7

    goto :goto_40

    :cond_7
    const-wide/32 v0, 0x11c2f5c6

    .line 4873
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 4872
    invoke-static {v0, v1, p1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_40

    iget p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mVendorApiLevel:I

    const/16 v0, 0x23

    if-ge p1, v0, :cond_1b

    goto :goto_40

    .line 4881
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "android.hardware.telephony.subscription"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_40

    .line 4882
    :cond_26
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is unsupported without "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    return-void
.end method

.method private blacklist getActiveSubIdListAsUser(ZLandroid/os/UserHandle;)[I
    .registers 5

    .line 3403
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda32;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ZLandroid/os/UserHandle;)V

    .line 3404
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda33;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda33;-><init>()V

    .line 3411
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 3412
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method private blacklist getAvailableSubscriptionsInternalStream()Ljava/util/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;",
            ">;"
        }
    .end annotation

    .line 2229
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getIccIdsOfInsertedPhysicalSims()Ljava/util/List;

    move-result-object v0

    .line 2231
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda54;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda54;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/util/List;)V

    .line 2232
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCallingPackage()Ljava/lang/String;
    .registers 3

    .line 4525
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4527
    const-string p0, "com.android.phone"

    return-object p0

    .line 4530
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 4531
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 4530
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCardNumber(I)I
    .registers 4

    add-int/lit8 v0, p1, -0x1

    :goto_2
    if-lez v0, :cond_15

    .line 4963
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 4964
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isVisible()Z

    move-result v1

    if-nez v1, :cond_12

    add-int/lit8 p1, p1, -0x1

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_15
    return p1
.end method

.method private blacklist getColor()I
    .registers 3

    .line 1104
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070110

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    .line 1105
    array-length v0, p0

    if-nez v0, :cond_12

    const/4 p0, -0x1

    return p0

    .line 1106
    :cond_12
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1107
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget p0, p0, v0

    return p0
.end method

.method private blacklist getCurrentPackageName()Ljava/lang/String;
    .registers 4

    .line 4850
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 4851
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_13

    return-object v0

    .line 4853
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1e

    return-object v0

    .line 4854
    :cond_1e
    aget-object p0, p0, v1

    return-object p0
.end method

.method private blacklist getDefaultAsUser(II)I
    .registers 3

    .line 0
    return p2
.end method

.method private blacklist getIccId(I)Ljava/lang/String;
    .registers 2

    .line 1409
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    if-nez p0, :cond_b

    .line 1410
    const-string p0, ""

    return-object p0

    .line 1411
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1410
    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getIccIdsOfInsertedPhysicalSims()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 878
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_41

    .line 881
    :cond_e
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_41

    aget-object v4, p0, v3

    if-eqz v4, :cond_3e

    .line 882
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    if-eqz v5, :cond_3e

    .line 883
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 885
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId(I)Ljava/lang/String;

    move-result-object v4

    .line 886
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 887
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_41
    :goto_41
    return-object v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
    .registers 1

    .line 677
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->sInstance:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    return-object v0
.end method

.method private static blacklist getNameSourcePriority(I)I
    .registers 8

    const/4 v0, -0x1

    .line 1088
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    .line 1089
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    .line 1090
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    .line 1091
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    .line 1092
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    .line 1093
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1087
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1094
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 1095
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private blacklist getPhoneNumberFromSourceInternal(II)Ljava/lang/String;
    .registers 7

    .line 3910
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 3911
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    .line 3913
    const-string v1, ""

    const-string v2, "No SubscriptionInfo found for subId="

    if-nez v0, :cond_1f

    .line 3914
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_1f
    const/4 v3, 0x1

    if-eq p2, v3, :cond_45

    const/4 v3, 0x2

    if-eq p2, v3, :cond_40

    const/4 v3, 0x3

    if-eq p2, v3, :cond_3b

    .line 3931
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-object v1

    .line 3929
    :cond_3b
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getNumberFromIms()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3927
    :cond_40
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getNumberFromCarrier()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3920
    :cond_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_58

    .line 3922
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3924
    :cond_58
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getPortIndex(Ljava/lang/String;)I
    .registers 6

    .line 1117
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    .line 1118
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    const/4 v2, -0x1

    if-ge v1, v0, :cond_19

    aget-object v3, p0, v1

    if-eqz v3, :cond_16

    .line 1120
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromIccId(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_16

    return v3

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    return v2
.end method

.method private blacklist getSubscriptionInfoStreamAsUser(Landroid/os/UserHandle;)Ljava/util/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;",
            ">;"
        }
    .end annotation

    .line 4305
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda55;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/UserHandle;)V

    .line 4306
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private varargs blacklist hasPermissions([Ljava/lang/String;)Z
    .registers 7

    .line 4395
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p1, v2

    .line 4396
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_14
    return v1
.end method

.method private blacklist hasPhoneNumberAccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 794
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist hasSubscriberIdentifierAccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    .line 816
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist insertSubscriptionInfo(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 8

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/telephony/Phone;->convertAllowedNetworkTypeMapIndexToDbName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 1143
    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1144
    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>()V

    .line 1145
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    .line 1146
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCardString(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    .line 1147
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSimSlotIndex(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    .line 1148
    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setType(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    .line 1149
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setIconTint(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    .line 1150
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setAllowedNetworkTypesForReasons(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v0

    if-eqz p3, :cond_45

    .line 1152
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDisplayName(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1155
    :cond_45
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->insertSubscriptionInfo(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    .line 1156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertSubscriptionInfo: Inserted a new subscription. subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slotIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", iccId="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", displayName="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", type="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-static {p4}, Landroid/telephony/SubscriptionManager;->subscriptionTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1156
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    return v0
.end method

.method private blacklist isMockModemAllowed()Z
    .registers 2

    .line 4949
    const-string p0, "persist.radio.allow_mock_modem"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 4950
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_16

    const-string p0, "ro.boot.radio.allow_mock_modem"

    .line 4951
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    return v0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isSatellitePlmn(Ljava/lang/String;)Z
    .registers 5

    .line 4906
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_24

    :catch_e
    move-exception v0

    .line 4908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSatellitePlmn: id= 17040072, ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4910
    :goto_24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isMockModemAllowed()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 4911
    const-string v0, "isSatellitePlmn: Read config_satellite_sim_plmn_identifier from device config"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 4912
    const-string v0, "config_satellite_sim_plmn_identifier"

    const-string v1, ""

    const-string v2, "telephony"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4915
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSatellitePlmn: overlayMccMnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mccMnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 4916
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private blacklist isSatelliteSpn(Ljava/lang/String;)Z
    .registers 5

    .line 4930
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_24

    :catch_e
    move-exception v0

    .line 4932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSatelliteSpn: id= 17040073, ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4934
    :goto_24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isMockModemAllowed()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 4935
    const-string v0, "isSatelliteSpn: Read config_satellite_sim_spn_identifier from device config"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 4936
    const-string v0, "config_satellite_sim_spn_identifier"

    const-string v1, ""

    const-string v2, "telephony"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4939
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSatelliteSpn: overlaySpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", spn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 4941
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_68

    goto :goto_6d

    .line 4945
    :cond_68
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_6d
    :goto_6d
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSubscriptionAssociatedWithUserInternal(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isSubscriptionAssociatedWithUserNoCheck(ILandroid/os/UserHandle;)Z
    .registers 5

    .line 4184
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 4185
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 4198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4202
    :try_start_c
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoListAssociatedWithUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 4204
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    .line 4205
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2b

    if-ne p2, p1, :cond_14

    .line 4211
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_2b
    move-exception p0

    goto :goto_32

    :cond_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4212
    throw p0

    .line 4188
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[isSubscriptionAssociatedWithUser]: Subscription doesn\'t exist: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic blacklist lambda$getAccessibleSubscriptionInfoList$20(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .registers 4

    .line 2285
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2286
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$getActiveSubIdListAsUser$28(ZLandroid/os/UserHandle;Ljava/lang/Integer;)Z
    .registers 5

    .line 3405
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 3406
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p3

    if-eqz p3, :cond_20

    if-eqz p1, :cond_14

    .line 3407
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 3409
    :cond_14
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 3408
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSubscriptionAssociatedWithUserInternal(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;I)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$getActiveSubscriptionInfoList$18(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;
    .registers 5

    .line 2126
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p3

    const-string v0, "getActiveSubscriptionInfoList"

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getAllSubInfoList$16(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 5

    .line 1941
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 1942
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p3

    const-string v0, "getAllSubInfoList"

    .line 1941
    invoke-static {p0, p3, p1, p2, v0}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneStateNoThrow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$getAllSubInfoList$17(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;
    .registers 5

    .line 1947
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p3

    const-string v0, "getAllSubInfoList"

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getAvailableSubscriptionsInternalStream$19(Ljava/util/List;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 4

    .line 2232
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getIccId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    if-eqz p0, :cond_21

    .line 2233
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_21

    .line 2234
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isEmbedded()Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$getOpportunisticSubscriptions$21(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 5

    .line 2811
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 2813
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p3

    const-string v0, "getOpportunisticSubscriptions"

    .line 2812
    invoke-static {p0, p3, p1, p2, v0}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneStateNoThrow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$getOpportunisticSubscriptions$22(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;
    .registers 5

    .line 2818
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p3

    const-string v0, "getOpportunisticSubscriptions"

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getSubscriptionInfoStreamAsUser$33(Landroid/os/UserHandle;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 3

    .line 4307
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 4306
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSubscriptionAssociatedWithUserInternal(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;I)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$getSubscriptionsInGroup$24(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .registers 6

    .line 3019
    invoke-virtual {p4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 3020
    invoke-direct {p0, p4, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 3022
    invoke-virtual {p4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    const-string p4, "getSubscriptionsInGroup"

    .line 3021
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneStateNoThrow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$getSubscriptionsInGroup$25(Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .registers 5

    .line 3024
    const-string v0, "getSubscriptionsInGroup"

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$markSubscriptionsInactive$6(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 5

    .line 1067
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSimSlotIndex(II)V

    .line 1071
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v1

    .line 1072
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getIccId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPortIndex(Ljava/lang/String;)I

    move-result p0

    .line 1071
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setPortIndex(II)V

    return-void
.end method

.method private synthetic blacklist lambda$new$0(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .registers 2

    .line 635
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result p0

    .line 634
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->onDefaultDataSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$new$1(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .registers 3

    .line 633
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda56;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda56;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$new$2()V
    .registers 3

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony.euicc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 657
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    :cond_14
    return-void
.end method

.method private synthetic blacklist lambda$syncGroupedSetting$4(I)V
    .registers 4

    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 770
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncSettings: Can\'t find subscription info for sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void

    .line 776
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->syncToGroup(I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateEmbeddedSubscriptions$11(Ljava/lang/Runnable;Ljava/util/List;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1176
    iget-object v2, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    if-eqz v2, :cond_277

    invoke-virtual {v2}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_277

    iget-object v2, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    if-nez v2, :cond_14

    goto/16 :goto_277

    .line 1184
    :cond_14
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1185
    const-string v3, "updateEmbeddedSubscriptions: start to get euicc profiles."

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1187
    iget-object v3, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_27
    if-ge v6, v4, :cond_44

    aget-object v7, v3, v6

    if-eqz v7, :cond_41

    .line 1189
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 1196
    :cond_44
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v5

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1197
    iget-object v7, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    .line 1198
    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetEuiccProfileInfoList(I)Landroid/service/euicc/GetEuiccProfileInfoListResult;

    move-result-object v7

    .line 1199
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateEmbeddedSubscriptions: cardId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    if-nez v7, :cond_83

    .line 1202
    const-string v6, "Failed to get euicc profiles."

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    goto :goto_49

    .line 1206
    :cond_83
    invoke-virtual {v7}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getResult()I

    move-result v8

    if-eqz v8, :cond_a6

    .line 1207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get euicc profile info. result="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    invoke-virtual {v7}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getResult()I

    move-result v7

    invoke-static {v7}, Landroid/service/euicc/EuiccService;->resultToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1207
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    goto :goto_49

    .line 1214
    :cond_a6
    invoke-virtual {v7}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getProfiles()Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x1

    if-eqz v4, :cond_212

    invoke-virtual {v7}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b9

    goto/16 :goto_212

    .line 1219
    :cond_b9
    invoke-virtual {v7}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getIsRemovable()Z

    move-result v4

    .line 1221
    invoke-virtual {v7}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_217

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/euicc/EuiccProfileInfo;

    .line 1222
    iget-object v10, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 1223
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v10

    const/4 v11, -0x1

    if-nez v10, :cond_10b

    .line 1227
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-direct {v0, v10, v11, v12, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->insertSubscriptionInfo(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v10

    .line 1230
    iget-object v12, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iget-object v13, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1231
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCardNumber(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    const v15, 0x104034b

    invoke-virtual {v13, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1230
    invoke-virtual {v12, v10, v13}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDisplayName(ILjava/lang/String;)V

    .line 1232
    iget-object v12, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v10

    .line 1235
    :cond_10b
    invoke-virtual {v10}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayNameSource()I

    move-result v12

    .line 1236
    invoke-virtual {v10}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getCarrierId()I

    move-result v13

    .line 1238
    new-instance v14, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {v14, v10}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    .line 1241
    invoke-virtual {v14, v8}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setEmbedded(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1243
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getUiccAccessRules()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_12e

    .line 1244
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_12e

    .line 1245
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getUiccAccessRules()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setNativeAccessRules(Ljava/util/List;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1247
    :cond_12e
    invoke-virtual {v14, v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setRemovableEmbedded(Z)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1250
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getNickname()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_148

    .line 1252
    invoke-static {v12}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getNameSourcePriority(I)I

    move-result v12

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getNameSourcePriority(I)I

    move-result v11

    if-gt v12, v11, :cond_148

    .line 1254
    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDisplayName(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1255
    invoke-virtual {v14, v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDisplayNameSource(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1259
    :cond_148
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSatelliteSpn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_157

    .line 1261
    invoke-virtual {v14, v8}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setOnlyNonTerrestrialNetwork(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move v5, v8

    goto :goto_158

    :cond_157
    const/4 v5, 0x0

    .line 1264
    :goto_158
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v11

    if-eqz v11, :cond_17f

    const-string v11, "telephony.test.bootstrap_cid"

    const/4 v12, -0x2

    .line 1265
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v13, :cond_17f

    .line 1268
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Hardcording as bootstrap subscription for cid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v14, v8}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setProfileClass(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    goto :goto_186

    .line 1271
    :cond_17f
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getProfileClass()I

    move-result v11

    invoke-virtual {v14, v11}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setProfileClass(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1273
    :goto_186
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPortIndex(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v14, v11}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setPortIndex(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1275
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getCarrierIdentifier()Landroid/service/carrier/CarrierIdentifier;

    move-result-object v9

    if-eqz v9, :cond_1c9

    const/4 v11, -0x1

    if-ne v13, v11, :cond_1a3

    .line 1281
    iget-object v11, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 1282
    invoke-static {v11, v9}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierIdFromIdentifier(Landroid/content/Context;Landroid/service/carrier/CarrierIdentifier;)I

    move-result v11

    .line 1281
    invoke-virtual {v14, v11}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCarrierId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1284
    :cond_1a3
    invoke-virtual {v9}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v11

    .line 1285
    invoke-virtual {v9}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v9

    .line 1286
    invoke-virtual {v14, v11}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setMcc(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1287
    invoke-virtual {v14, v9}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setMnc(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    if-nez v5, :cond_1c9

    .line 1290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSatellitePlmn(Ljava/lang/String;)Z

    move-result v5

    .line 1289
    invoke-virtual {v14, v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setOnlyNonTerrestrialNetwork(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    :cond_1c9
    if-ltz v6, :cond_1e0

    .line 1296
    iget-object v5, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccController;->getCardIdForDefaultEuicc()I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_1e0

    .line 1298
    invoke-virtual {v14, v6}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCardId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1299
    iget-object v5, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->convertToCardString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCardString(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1303
    :cond_1e0
    invoke-virtual {v10}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getTransferStatus()I

    move-result v5

    invoke-virtual {v14, v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setTransferStatus(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1305
    invoke-virtual {v10}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1307
    invoke-virtual {v14}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v5

    .line 1308
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateEmbeddedSubscriptions: update subscription "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1309
    iget-object v9, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v9, v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->updateSubscription(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    const/4 v5, 0x0

    goto/16 :goto_c5

    .line 1215
    :cond_212
    :goto_212
    const-string v4, "No profiles returned."

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    :cond_217
    move v4, v8

    const/4 v5, 0x0

    goto/16 :goto_49

    :cond_21b
    if-eqz v4, :cond_262

    .line 1321
    iget-object v3, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda10;-><init>()V

    .line 1322
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda46;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda46;-><init>(Ljava/util/Set;)V

    .line 1323
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda47;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda47;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 1324
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1330
    iget-object v2, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda48;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda48;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 1331
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_267

    .line 1338
    const-string v2, "38fdf63c-3bd9-4fc2-ad33-a20246a32fa7"

    .line 1339
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    const-string v3, "SubscriptionManagerService: Found Invalid portIndex in active subscriptions"

    .line 1338
    invoke-static {v2, v3}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_267

    .line 1344
    :cond_262
    const-string v2, "The eSIM profiles update was not successful."

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 1346
    :cond_267
    :goto_267
    const-string v2, "updateEmbeddedSubscriptions: Finished embedded subscription update."

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1348
    iget-object v0, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda49;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda49;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1177
    :cond_277
    :goto_277
    const-string v2, "updateEmbeddedSubscriptions: eUICC not enabled"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    if-eqz v1, :cond_281

    .line 1179
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_281
    return-void
.end method

.method private synthetic blacklist lambda$updateEmbeddedSubscriptions$8(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 4

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmbeddedSubscriptions: Mark the deleted sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as non-embedded."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1327
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 1328
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p1

    const/4 v0, 0x0

    .line 1327
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setEmbedded(IZ)V

    return-void
.end method

.method private synthetic blacklist lambda$updateEmbeddedSubscriptions$9(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 4

    .line 1331
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1332
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1333
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getPortIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    .line 1335
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSimSlotIndex()I

    move-result p1

    aget p0, p0, p1

    const/16 p1, 0xa

    if-ne p0, p1, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$updateSimState$35(IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 7

    .line 4488
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aput p2, v0, p1

    .line 4489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimState: slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4490
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4489
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_3a

    :pswitch_27
    goto :goto_32

    .line 4503
    :pswitch_28
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateEmbeddedSubscriptions()V

    .line 4504
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSubscription(I)V

    goto :goto_32

    .line 4499
    :pswitch_2f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSubscription(I)V

    :goto_32
    if-eqz p3, :cond_39

    if-eqz p4, :cond_39

    .line 4513
    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_28
        :pswitch_28
        :pswitch_2f
        :pswitch_2f
        :pswitch_27
        :pswitch_2f
    .end packed-switch
.end method

.method private synthetic blacklist lambda$updateSimStateForInactivePort$34(ILjava/lang/String;)V
    .registers 7

    .line 4437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimStateForInactivePort: slotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4438
    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4437
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 4439
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 4442
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    .line 4443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 4442
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setUiccApplicationsEnabled(IZ)V

    .line 4444
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSubscription(I)V

    .line 4446
    :cond_45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b9

    .line 4449
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 4450
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 4453
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p1

    .line 4454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimStateForInactivePort: Found existing subscription. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    goto :goto_aa

    .line 4459
    :cond_70
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->insertSubscriptionInfo(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    .line 4462
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 4463
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x104034b

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4462
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDisplayName(ILjava/lang/String;)V

    .line 4464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimStateForInactivePort: Insert a new subscription for inactive SIM. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 4467
    :goto_aa
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 4468
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPortIndex(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setPortIndex(II)V

    :cond_b9
    return-void
.end method

.method private synthetic blacklist lambda$updateSubscription$13(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 4

    .line 1484
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p1

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSubscription: Re-enable Uicc application on sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setUiccApplicationsEnabled(IZ)V

    .line 1489
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setPortIndex(II)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSubscriptionByCarrierConfig$15(ILjava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Runnable;)V
    .registers 5

    .line 1759
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSubscriptionByCarrierConfigInternal(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1760
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 5039
    const-string p0, "SMSVC"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 5048
    const-string p0, "SMSVC"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 5057
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 5058
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist remapRafIfApplicable()V
    .registers 8

    .line 3234
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3236
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    .line 3237
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    new-array v2, v1, [Landroid/telephony/RadioAccessFamily;

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v1, :cond_4e

    .line 3240
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    .line 3239
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x1

    .line 3240
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3239
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3240
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v5

    if-ne v4, v5, :cond_40

    .line 3241
    invoke-virtual {v0}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v4

    goto :goto_44

    :cond_40
    invoke-virtual {v0}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v4

    .line 3242
    :goto_44
    new-instance v5, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v5, v3, v4}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 3244
    :cond_4e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    return-void
.end method

.method private blacklist slotMappingToString()Ljava/lang/String;
    .registers 3

    .line 4892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda5;-><init>()V

    .line 4893
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v1, ", "

    .line 4894
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist startEsimBootstrapTimer()V
    .registers 8

    .line 1678
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->bootstrapProvisioningTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1b

    .line 1679
    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$6;

    const-wide/32 v3, 0x124f80

    const-wide/32 v5, 0x124f80

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$6;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;JJ)V

    .line 1694
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->bootstrapProvisioningTimer:Landroid/os/CountDownTimer;

    .line 1695
    const-string p0, "bootstrapProvisioningTimer timer started."

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method private blacklist updateDefaultSubId()V
    .registers 5

    .line 3080
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3083
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubId()I

    move-result v0

    goto :goto_11

    .line 3085
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v0

    .line 3089
    :goto_11
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const/4 v0, 0x1

    .line 3090
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object v0

    .line 3091
    array-length v1, v0

    if-lez v1, :cond_3d

    const/4 v1, 0x0

    .line 3092
    aget v0, v0, v1

    .line 3093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDefaultSubId: First available active sub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    goto :goto_3e

    :cond_3d
    const/4 v0, -0x1

    .line 3099
    :cond_3e
    :goto_3e
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v1

    if-eq v1, v0, :cond_8f

    .line 3100
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v1

    .line 3101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDefaultSubId: Default sub id updated from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 3103
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->set(I)Z

    .line 3105
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x20000000

    .line 3106
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3107
    invoke-static {v2, v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 3108
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_8f
    return-void
.end method

.method private blacklist updateEmbeddedSubscriptions()V
    .registers 7

    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 1362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    array-length v2, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_39

    aget-object v4, v0, v3

    if-eqz v4, :cond_36

    .line 1364
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 1365
    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 1366
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v4

    .line 1365
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v4

    .line 1367
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1370
    :cond_39
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x0

    .line 1371
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateEmbeddedSubscriptions(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_43
    return-void
.end method

.method private blacklist updateSubscription(I)V
    .registers 12

    .line 1459
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aget v0, v0, p1

    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscription: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", simState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1460
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1462
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_2d
    if-ge v4, v2, :cond_4a

    aget-object v5, v1, v4

    if-eqz v5, :cond_47

    .line 1464
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 1468
    :cond_4a
    const-string v1, ""

    const/4 v2, 0x1

    if-ne v0, v2, :cond_97

    .line 1469
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1473
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabledOrBeingEnabled()Z

    move-result v3

    :cond_59
    if-nez v3, :cond_7a

    .line 1479
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getIccIdsOfInsertedPhysicalSims()Ljava/util/List;

    move-result-object v0

    .line 1480
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda50;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda50;-><init>(Ljava/util/List;)V

    .line 1481
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda51;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda51;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 1483
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1494
    :cond_7a
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1495
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->markSubscriptionsInactive(I)V

    .line 1500
    :cond_89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setNumberFromIms(ILjava/lang/String;)V

    goto/16 :goto_30a

    :cond_97
    const/4 v4, 0x6

    if-ne v0, v4, :cond_e4

    .line 1505
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1506
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v2

    if-eqz v2, :cond_ad

    const-string v2, "updateSubscription: iccCard has empty profile."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1507
    :cond_ad
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v0

    if-nez v0, :cond_bf

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->areUiccAppsEnabledOnCard(I)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 1508
    const-string p1, "updateSubscription: SIM_STATE_NOT_READY is not a final state. Will update subscription later."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return-void

    .line 1512
    :cond_bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscription: UICC app disabled on slot "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->markSubscriptionsInactive(I)V

    .line 1517
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setNumberFromIms(ILjava/lang/String;)V

    goto/16 :goto_30a

    .line 1521
    :cond_e4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    .line 1522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSubscription: Found iccId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " on phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1529
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v4

    .line 1530
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda52;

    invoke-direct {v5, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda52;-><init>(ILjava/lang/String;)V

    .line 1531
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 1533
    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    .line 1534
    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    if-eqz v4, :cond_150

    .line 1536
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSubscription: Found previous active sub "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " that doesn\'t match current iccid on slot "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->markSubscriptionsInactive(I)V

    .line 1541
    :cond_150
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, "updateSubscription: current mapping "

    if-nez v4, :cond_2d7

    .line 1543
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v4

    if-nez v4, :cond_183

    .line 1547
    invoke-direct {p0, v1, p1, v5, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->insertSubscriptionInfo(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v3

    .line 1549
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 1550
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1551
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCardNumber(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const v9, 0x104034b

    .line 1550
    invoke-virtual {v7, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1549
    invoke-virtual {v4, v3, v7}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDisplayName(ILjava/lang/String;)V

    goto :goto_1a3

    .line 1553
    :cond_183
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v3

    .line 1554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSubscription: Found existing subscription. subId= "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", phoneId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1558
    :goto_1a3
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v4

    if-eqz v4, :cond_1d9

    .line 1559
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result v7

    if-eqz v7, :cond_1d9

    .line 1560
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v7, v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSimSlotIndex(II)V

    .line 1563
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->slotMappingToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1567
    :cond_1d9
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    if-eqz v6, :cond_1ec

    .line 1569
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1ec

    .line 1571
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v7, v3, v6}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setCardString(ILjava/lang/String;)V

    .line 1576
    :cond_1ec
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPortIndex(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setPortIndex(II)V

    const/16 v6, 0xa

    if-ne v0, v6, :cond_2bc

    .line 1579
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 1580
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_227

    .line 1581
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result v6

    if-ne v3, v6, :cond_210

    .line 1582
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 1584
    :cond_210
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setMccMnc(ILjava/lang/String;)V

    .line 1585
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSatelliteSpn(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_223

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSatellitePlmn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 1586
    :cond_223
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setNtn(IZ)V

    goto :goto_22c

    .line 1589
    :cond_227
    const-string v0, "updateSubscription: mcc/mnc is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 1592
    :cond_22c
    :goto_22c
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 1594
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23a

    .line 1595
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setCountryIso(ILjava/lang/String;)V

    goto :goto_23f

    .line 1597
    :cond_23a
    const-string v0, "updateSubscription: sim country iso is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 1600
    :goto_23f
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1601
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_250

    .line 1602
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDisplayNumber(Ljava/lang/String;I)I

    .line 1605
    :cond_250
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1606
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_261

    .line 1608
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setImsi(ILjava/lang/String;)V

    .line 1611
    :cond_261
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    if-eqz v0, :cond_28e

    .line 1613
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_288

    .line 1615
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEhplmns()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27c

    .line 1617
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setEhplmns(I[Ljava/lang/String;)V

    .line 1619
    :cond_27c
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getPlmnsFromHplmnActRecord()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_293

    .line 1621
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setHplmns(I[Ljava/lang/String;)V

    goto :goto_293

    .line 1624
    :cond_288
    const-string v0, "updateSubscription: ICC records are not available."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    goto :goto_293

    .line 1627
    :cond_28e
    const-string v0, "updateSubscription: ICC card is not available."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 1631
    :cond_293
    :goto_293
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "restoreSimSpecificSettings"

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2bc

    .line 1635
    const-string v1, "restoreSimSpecificSettingsDatabaseUpdated"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2bc

    .line 1637
    const-string v0, "Sim specific settings changed the database."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->reloadDatabaseSync()V

    .line 1639
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1640
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->loadAllowedNetworksFromSubscriptionDatabase()V

    .line 1644
    :cond_2bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSubscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 1645
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1644
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    goto :goto_30a

    .line 1647
    :cond_2d7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSubscription: No ICCID available for phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1648
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->slotMappingToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1653
    :goto_30a
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->areAllSubscriptionsLoaded()Z

    move-result v0

    if-eqz v0, :cond_31c

    .line 1654
    const-string v0, "Notify all subscriptions loaded."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1655
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/MultiSimSettingController;->notifyAllSubscriptionLoaded()V

    .line 1658
    :cond_31c
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V

    .line 1659
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateDefaultSubId()V

    .line 1661
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_348

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    .line 1662
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isEsimBootStrapProvisioningActiveForSubId(I)Z

    move-result p1

    if-eqz p1, :cond_348

    .line 1663
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->startEsimBootstrapTimer()V

    return-void

    .line 1665
    :cond_348
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->cancelEsimBootstrapTimer()V

    return-void
.end method

.method private blacklist updateSubscriptionByCarrierConfigInternal(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 10

    .line 1766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSubscriptionByCarrierConfig: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", configPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1768
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 1769
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b7

    if-nez p3, :cond_2c

    goto/16 :goto_1b7

    .line 1776
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1777
    const-string p1, "updateSubscriptionByCarrierConfig: No subscription is active for phone being updated."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return-void

    .line 1782
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1784
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 1785
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-nez v0, :cond_6b

    .line 1787
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateSubscriptionByCarrierConfig: Couldn\'t retrieve subscription info for current subscription. subId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void

    .line 1796
    :cond_6b
    const-string v1, "carrier_certificate_string_array"

    invoke-virtual {p3, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1798
    invoke-static {v1}, Landroid/telephony/UiccAccessRule;->decodeRulesFromCarrierConfig([Ljava/lang/String;)[Landroid/telephony/UiccAccessRule;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 1801
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setCarrierConfigAccessRules(I[Landroid/telephony/UiccAccessRule;)V

    .line 1805
    :cond_7c
    const-string v1, "is_opportunistic_subscription_bool"

    .line 1807
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result v2

    .line 1805
    invoke-virtual {p3, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1808
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setOpportunistic(IZ)V

    .line 1810
    const-string v1, "subscription_group_uuid_string"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1812
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object v3

    .line 1813
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_112

    .line 1816
    :try_start_9d
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    .line 1817
    const-string v5, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 1819
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p2, p1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupUuid(ILjava/lang/String;)V

    goto :goto_f0

    .line 1820
    :cond_af
    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->canPackageManageGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 1821
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupUuid(ILjava/lang/String;)V

    .line 1822
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupOwner(ILjava/lang/String;)V

    .line 1823
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionByCarrierConfig: Group added for sub "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    goto :goto_f0

    .line 1825
    :cond_d4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSubscriptionByCarrierConfig: configPackageName "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t own groupUuid "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 1829
    :goto_f0
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_112

    .line 1830
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object p2

    .line 1831
    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/MultiSimSettingController;->notifySubscriptionGroupChanged(Landroid/os/ParcelUuid;)V
    :try_end_fd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9d .. :try_end_fd} :catch_fe

    goto :goto_112

    .line 1834
    :catch_fe
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionByCarrierConfig: Invalid Group UUID="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 1839
    :cond_112
    :goto_112
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V

    .line 1841
    const-string p2, "cellular_usage_setting_int"

    const/4 v1, -0x1

    invoke-virtual {p3, p2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 1846
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getUsageSetting()I

    move-result v1

    .line 1845
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->calculateUsageSetting(II)I

    move-result v1

    .line 1848
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getUsageSetting()I

    move-result v2

    if-eq v1, v2, :cond_163

    .line 1849
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setUsageSetting(II)V

    .line 1850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSubscriptionByCarrierConfig: UsageSetting changed, oldSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getUsageSetting()I

    move-result v3

    .line 1851
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->usageSettingToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " preferredSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->usageSettingToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " newSetting="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->usageSettingToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1850
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1858
    :cond_163
    const-string p2, "cellular_service_capabilities_int_array"

    .line 1859
    invoke-virtual {p3, p2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_16e

    move v3, p3

    goto :goto_185

    .line 1867
    :cond_16e
    array-length v1, p2

    move v2, p3

    move v3, v2

    :goto_171
    const/4 v4, 0x1

    if-ge v2, v1, :cond_184

    aget v5, p2, v2

    if-lt v5, v4, :cond_185

    const/4 v4, 0x3

    if-le v5, v4, :cond_17c

    goto :goto_185

    .line 1873
    :cond_17c
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->serviceCapabilityToBitmask(I)I

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_171

    :cond_184
    move p3, v4

    :cond_185
    :goto_185
    if-nez p3, :cond_18b

    .line 1880
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getAllServiceCapabilityBitmasks()I

    move-result v3

    .line 1883
    :cond_18b
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getServiceCapabilities()I

    move-result p2

    if-eq v3, p2, :cond_1b6

    .line 1884
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateSubscriptionByCarrierConfig: serviceCapabilities updated from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getServiceCapabilities()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1884
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1886
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setServiceCapabilities(II)V

    :cond_1b6
    return-void

    .line 1770
    :cond_1b7
    :goto_1b7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSubscriptionByCarrierConfig: Failed to update the subscription. phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " configPackageName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " config="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1d6

    .line 1772
    const-string p1, "null"

    goto :goto_1de

    :cond_1d6
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1de
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1770
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateUserIdToAvailableSubs()V
    .registers 5

    .line 2243
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAvailableSubscriptionsInternalStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda160;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda160;-><init>()V

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda59;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda59;-><init>()V

    .line 2247
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    .line 2246
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 2244
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUserIdToAvailableSubs:Ljava/util/Map;

    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUserIdToAvailableSubs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUserIdToAvailableSubs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 10

    .line 2319
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "addSubInfo"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSubInfo: iccId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", slotIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displayName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2322
    invoke-static {p4}, Landroid/telephony/SubscriptionManager;->subscriptionTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2320
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 2325
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-nez p4, :cond_78

    .line 2328
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    goto :goto_7c

    .line 2329
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid slot index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for local SIM"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_78
    const/4 p3, 0x1

    if-ne p4, p3, :cond_ff

    move p3, v0

    .line 2341
    :goto_7c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2343
    :try_start_80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 2344
    const-string p1, "addSubInfo: null or empty iccId"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_80 .. :try_end_8b} :catchall_8f

    .line 2370
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_8f
    move-exception p0

    goto :goto_fb

    .line 2348
    :cond_91
    :try_start_91
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2349
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2350
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v3

    if-nez v3, :cond_f2

    .line 2355
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 2356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Already a subscription on slot "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_91 .. :try_end_bd} :catchall_8f

    .line 2370
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 2360
    :cond_c1
    :try_start_c1
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->insertSubscriptionInfo(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    .line 2361
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V

    .line 2362
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2363
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addSubInfo: current mapping "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->slotMappingToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V
    :try_end_ed
    .catchall {:try_start_c1 .. :try_end_ed} :catchall_8f

    .line 2370
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 2366
    :cond_f2
    :try_start_f2
    const-string p1, "Subscription record already existed."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_f7
    .catchall {:try_start_f2 .. :try_end_f7} :catchall_8f

    .line 2370
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_fb
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2371
    throw p0

    .line 2337
    :cond_ff
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid subscription type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 11

    .line 2920
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2921
    array-length v0, p1

    if-eqz v0, :cond_92

    .line 2925
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2926
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2927
    const-string v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 2932
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2936
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3d

    .line 2938
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkCarrierPrivilegeOnSubList([ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2939
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->canPackageManageGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_3d

    .line 2940
    :cond_35
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires MODIFY_PHONE_STATE or carrier privilege permissions on subscriptions and the group."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2944
    :cond_3d
    :goto_3d
    const-string v1, "addSubscriptionsIntoGroup"

    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2949
    :try_start_46
    array-length v3, p1

    const/4 v4, 0x0

    :goto_48
    if-ge v4, v3, :cond_5b

    aget v5, p1, v4

    .line 2950
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v6, v5, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupUuid(ILjava/lang/String;)V

    .line 2951
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v6, v5, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupOwner(ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :catchall_59
    move-exception p0

    goto :goto_86

    .line 2954
    :cond_5b
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V

    .line 2955
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->notifySubscriptionGroupChanged(Landroid/os/ParcelUuid;)V

    .line 2956
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addSubscriptionsIntoGroup: add subs "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to the group."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_46 .. :try_end_82} :catchall_59

    .line 2959
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_86
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2960
    throw p0

    .line 2928
    :cond_8a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid groupUuid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2922
    :cond_92
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid subId list"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist areUiccAppsEnabledOnCard(I)Z
    .registers 4

    .line 1387
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1389
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p1

    if-nez p1, :cond_14

    const/4 p1, 0x0

    goto :goto_18

    .line 1390
    :cond_14
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object p1

    :goto_18
    if-nez p1, :cond_1b

    return v1

    .line 1395
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 1396
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 1397
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    return v1
.end method

.method public blacklist calculateUsageSetting(II)I
    .registers 6

    .line 1714
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1717
    array-length v1, v0
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_10} :catch_49

    const/4 v2, 0x1

    if-ge v1, v2, :cond_14

    goto :goto_48

    :cond_14
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ltz p1, :cond_1a

    if-le p1, v2, :cond_20

    .line 1728
    :cond_1a
    const-string p1, "calculateUsageSetting: Updating usage setting for current subscription"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    move p1, v1

    :cond_20
    if-ltz p2, :cond_34

    if-le p2, v2, :cond_25

    goto :goto_34

    :cond_25
    if-nez p2, :cond_28

    goto :goto_2f

    .line 1745
    :cond_28
    array-length p0, v0

    :goto_29
    if-ge v1, p0, :cond_33

    aget v2, v0, v1

    if-ne p2, v2, :cond_30

    :goto_2f
    return p2

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_33
    return p1

    .line 1735
    :cond_34
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateUsageSetting: Invalid usage setting!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    :cond_48
    :goto_48
    return p1

    .line 1720
    :catch_49
    const-string p2, "calculateUsageSetting: Failed to load usage setting resources!"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return p1
.end method

.method public blacklist canDisablePhysicalSubscription()Z
    .registers 3

    .line 3672
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "canDisablePhysicalSubscription"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3675
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3678
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3680
    :try_start_16
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 3681
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->canDisablePhysicalSubscription()Z

    move-result p0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_24

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :catchall_24
    move-exception p0

    goto :goto_2b

    :cond_26
    const/4 p0, 0x0

    .line 3683
    :goto_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3684
    throw p0
.end method

.method public blacklist createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;
    .registers 11

    .line 2659
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2661
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2662
    array-length v0, p1

    if-eqz v0, :cond_65

    .line 2668
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_28

    .line 2669
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkCarrierPrivilegeOnSubList([ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_28

    .line 2671
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "CreateSubscriptionGroup needs MODIFY_PHONE_STATE or carrier privilege permission on all specified subscriptions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2675
    :cond_28
    :goto_28
    const-string v0, "createSubscriptionGroup"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2681
    :try_start_31
    new-instance v2, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 2682
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2684
    array-length v4, p1

    const/4 v5, 0x0

    :goto_40
    if-ge v5, v4, :cond_53

    aget v6, p1, v5

    .line 2685
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v7, v6, v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupUuid(ILjava/lang/String;)V

    .line 2686
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v7, v6, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupOwner(ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    :catchall_51
    move-exception p0

    goto :goto_61

    .line 2688
    :cond_53
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V

    .line 2690
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->notifySubscriptionGroupChanged(Landroid/os/ParcelUuid;)V
    :try_end_5d
    .catchall {:try_start_31 .. :try_end_5d} :catchall_51

    .line 2693
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2694
    throw p0

    .line 2663
    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid subIdList "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist deSerializeCVToMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4988
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4990
    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_46

    .line 4993
    :cond_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4994
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 4995
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 4996
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4997
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2c} :catch_2d

    goto :goto_15

    :catch_2d
    move-exception p1

    .line 5000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deSerializeCVToMap JSON error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-object v0
.end method

.method public blacklist deSerializeCVToMapList(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 5012
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5014
    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5d

    .line 5017
    :cond_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5018
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 5019
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 5020
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5021
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 5022
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 5023
    :goto_2b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_41

    .line 5024
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :catch_3f
    move-exception p1

    goto :goto_45

    .line 5026
    :cond_41
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_44} :catch_3f

    goto :goto_15

    .line 5029
    :goto_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deSerializeCVToMapList JSON error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    return-object v0
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 5070
    const-string v0, "]"

    const-string v1, ", "

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "Requires android.Manifest.permission.DUMP"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5072
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5074
    :try_start_11
    new-instance v4, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v5, "  "

    invoke-direct {v4, p2, v5}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5075
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5076
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Active modem count="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5077
    const-string p2, "Logical SIM slot sub id mapping:"

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5078
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5079
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    new-instance v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-virtual {p2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 5081
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5082
    const-string p2, "ICCID:"

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5083
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const/4 p2, 0x0

    move v5, p2

    .line 5084
    :goto_6b
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v6

    if-ge v5, v6, :cond_9d

    .line 5085
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getIccId(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    :catchall_9a
    move-exception p0

    goto/16 :goto_2ec

    .line 5087
    :cond_9d
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5088
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 5089
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5090
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultVoiceSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5091
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultDataSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5092
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activeDataSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveDataSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5093
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultSmsSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5094
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "areAllSubscriptionsLoaded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->areAllSubscriptionsLoaded()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5095
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUserIdToAvailableSubs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUserIdToAvailableSubs:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5096
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 5097
    :goto_14c
    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    array-length v5, v5

    if-ge p2, v5, :cond_178

    .line 5098
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimState["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aget v6, v6, p2

    .line 5099
    invoke-static {v6}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5098
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_14c

    .line 5102
    :cond_178
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 5103
    const-string p2, "Active subscriptions:"

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5104
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5105
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 5106
    invoke-interface {p2, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 5107
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5109
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 5110
    const-string p2, "All subscriptions:"

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5111
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5112
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object p2

    new-instance v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 5113
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5114
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 5116
    const-string p2, "Embedded subscriptions: ["

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda10;-><init>()V

    .line 5118
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda11;-><init>()V

    .line 5119
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 5120
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5117
    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5122
    const-string p2, "Opportunistic subscriptions: ["

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda12;-><init>()V

    .line 5124
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda13;-><init>()V

    .line 5125
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 5126
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5123
    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5128
    const-string p2, "getAvailableSubscriptionInfoList: ["

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 5130
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v6

    .line 5129
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 5130
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda14;-><init>()V

    .line 5131
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 5132
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5129
    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5134
    const-string p2, "getSelectableSubscriptionInfoList: ["

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getSelectableSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda15;-><init>()V

    .line 5136
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 5137
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5135
    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5139
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    if-eqz p2, :cond_2ca

    .line 5140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Euicc enabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5142
    :cond_2ca
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 5143
    const-string p2, "Local log:"

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5144
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5145
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v4, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5146
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5147
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5148
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 5149
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1, v4, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2e8
    .catchall {:try_start_11 .. :try_end_2e8} :catchall_9a

    .line 5151
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2ec
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5152
    throw p0
.end method

.method public blacklist getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2277
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_51

    .line 2282
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2283
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoStreamAsUser(Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 2284
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda44;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V

    .line 2285
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;-><init>()V

    .line 2287
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;-><init>()V

    .line 2288
    invoke-interface {p1, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 2287
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2289
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_51
    :goto_51
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getActiveDataSubscriptionId()I
    .registers 5

    .line 3640
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3642
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 3644
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getActiveDataSubId()I

    move-result v2

    .line 3645
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_18

    if-eqz v3, :cond_1a

    .line 3653
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_18
    move-exception p0

    goto :goto_22

    .line 3651
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_18

    .line 3653
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3654
    throw p0
.end method

.method public blacklist getActiveSubIdList(Z)[I
    .registers 5

    .line 3382
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "getActiveSubIdList"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3384
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11101b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 3386
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    :cond_21
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdListAsUser(ZLandroid/os/UserHandle;)[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 10

    .line 2153
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 2154
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v5, "getAllSubInfoList"

    move-object v3, p1

    move-object v4, p2

    .line 2153
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    if-eqz p3, :cond_19

    .line 2160
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissionAccessAllUserProfiles()V

    .line 2163
    :cond_19
    const-string p1, "getActiveSubInfoCount"

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_23

    .line 2166
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    goto :goto_29

    :cond_23
    sget-object p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    :goto_29
    const/4 p2, 0x0

    .line 2165
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdListAsUser(ZLandroid/os/UserHandle;)[I

    move-result-object p0

    array-length p0, p0

    return p0

    .line 2156
    :cond_30
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getActiveSubInfoCountMax()I
    .registers 1

    .line 2183
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    return p0
.end method

.method public blacklist getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .registers 7

    .line 1974
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "getActiveSubscriptionInfo"

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1980
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11101b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1982
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 1986
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 1987
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1988
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0

    :cond_33
    const/4 p0, 0x0

    return-object p0

    .line 1976
    :cond_35
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .registers 5

    .line 2010
    const-string p3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    const-string v0, "getActiveSubscriptionInfoForIccId"

    invoke-direct {p0, v0, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2013
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 2017
    :try_start_12
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2018
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2019
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 2021
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_29

    goto :goto_2c

    :catchall_29
    move-exception p0

    goto :goto_30

    :cond_2b
    const/4 p0, 0x0

    .line 2024
    :goto_2c
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_30
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2025
    throw p0
.end method

.method public blacklist getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .registers 7

    .line 2048
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    .line 2049
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2048
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2051
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "getActiveSubscriptionInfoForSimSlotIndex"

    invoke-static {v1, v0, p2, p3, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 2059
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2066
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2067
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 2068
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2069
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0

    :cond_3f
    const/4 p0, 0x0

    return-object p0

    .line 2063
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid slot index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2054
    :cond_58
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2101
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 2102
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v5, "getActiveSubscriptionInfoList"

    move-object v3, p1

    move-object v4, p2

    .line 2101
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 2107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getActiveSubscriptionInfoList: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not have enough permission. Returning empty list here."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 2109
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 2112
    :cond_30
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11101b3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_44

    .line 2114
    const-string p1, "getActiveSubscriptionInfoList"

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    if-eqz p3, :cond_49

    .line 2118
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissionAccessAllUserProfiles()V

    :cond_49
    if-eqz p3, :cond_4e

    .line 2121
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    goto :goto_54

    :cond_4e
    sget-object p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    .line 2120
    :goto_54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoStreamAsUser(Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 2122
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda40;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda40;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;-><init>()V

    .line 2128
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;

    invoke-direct {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;-><init>()V

    .line 2129
    invoke-interface {p1, p2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 2128
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2130
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public blacklist getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1926
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 1927
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v5, "getAllSubInfoList"

    move-object v3, p1

    move-object v4, p2

    .line 1926
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 1933
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11101b3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_28

    .line 1935
    const-string p1, "getAllSubInfoList"

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    :cond_28
    sget-object p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoStreamAsUser(Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda29;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda30;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda30;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;-><init>()V

    .line 1949
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;

    invoke-direct {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;-><init>()V

    .line 1950
    invoke-interface {p1, p2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 1949
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1951
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 1929
    :cond_65
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2204
    const-string p2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "getAvailableSubscriptionInfoList"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2207
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x11101b3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 2209
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAvailableSubscriptionsInternalStream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda128;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda128;-><init>()V

    .line 2214
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda59;

    invoke-direct {p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda59;-><init>()V

    .line 2215
    invoke-interface {p1, p2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 2214
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 2216
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2217
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public blacklist getDefaultDataSubId()I
    .registers 1

    .line 3187
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultSmsSubId()I
    .registers 2

    .line 3311
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubIdAsUser(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultSmsSubIdAsUser(I)I
    .registers 3

    .line 3324
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSmsSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultAsUser(II)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultSubId()I
    .registers 2

    .line 3118
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubIdAsUser(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultSubIdAsUser(I)I
    .registers 4

    .line 3127
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDefaultVoiceSubIdAsUser"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultAsUser(II)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultVoiceSubId()I
    .registers 2

    .line 3253
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubIdAsUser(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultVoiceSubIdAsUser(I)I
    .registers 3

    .line 3262
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultVoiceSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultAsUser(II)I

    move-result p0

    return p0
.end method

.method public blacklist getEnabledSubscriptionId(I)I
    .registers 5

    .line 3570
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "getEnabledSubscriptionId"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3573
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3577
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3579
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3581
    :try_start_1c
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 3582
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda1;-><init>()V

    .line 3583
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 3584
    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    const/4 p1, -0x1

    .line 3585
    invoke-virtual {p0, p1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0
    :try_end_41
    .catchall {:try_start_1c .. :try_end_41} :catchall_45

    .line 3587
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_45
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3588
    throw p0

    .line 3574
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid slot index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2792
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 2793
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v5, "getOpportunisticSubscriptions"

    move-object v3, p1

    move-object v4, p2

    .line 2792
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 2798
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getOpportunisticSubscriptions: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not have enough permission. Returning empty list here."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 2800
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 2803
    :cond_30
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11101b3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_44

    .line 2805
    const-string p1, "getOpportunisticSubscriptions"

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    :cond_44
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2811
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;-><init>()V

    .line 2820
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;

    invoke-direct {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;-><init>()V

    .line 2821
    invoke-interface {p1, p2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 2820
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2822
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public blacklist getPhoneId(I)I
    .registers 4

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    .line 3164
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result p1

    .line 3167
    :cond_9
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 p0, -0x1

    return p0

    .line 3172
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result p0

    .line 3173
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    return p0

    :cond_1c
    return v0
.end method

.method public blacklist getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 3856
    iget-object p4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 3857
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 3856
    const-string v2, "getPhoneNumber"

    invoke-static {p4, p1, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/String;)V

    .line 3860
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkPhoneNumberSource(I)V

    .line 3863
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkAndGetSubId(I)I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_23

    .line 3864
    const-string p0, ""

    return-object p0

    .line 3866
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 3868
    :try_start_27
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneNumberFromSourceInternal(II)Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2f

    .line 3870
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3871
    throw p0
.end method

.method public blacklist getPhoneNumberFromFirstAvailableSource(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 3960
    iget-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 3961
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 3960
    const-string v2, "getPhoneNumberFromFirstAvailableSource"

    invoke-static {p3, p1, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/String;)V

    .line 3965
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3968
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkAndGetSubId(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_20

    .line 3969
    const-string p0, ""

    return-object p0

    .line 3971
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    const/4 v0, 0x2

    .line 3974
    :try_start_25
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneNumberFromSourceInternal(II)Ljava/lang/String;

    move-result-object v0

    .line 3977
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_4f

    if-nez v1, :cond_33

    .line 3989
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_33
    const/4 v0, 0x1

    .line 3979
    :try_start_34
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneNumberFromSourceInternal(II)Ljava/lang/String;

    move-result-object v0

    .line 3982
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_4f

    if-nez v1, :cond_42

    .line 3989
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_42
    const/4 v0, 0x3

    .line 3984
    :try_start_43
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneNumberFromSourceInternal(II)Ljava/lang/String;

    move-result-object p0

    .line 3987
    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4f

    .line 3989
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_4f
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3990
    throw p0
.end method

.method public blacklist getPreferredDataSubscriptionId()I
    .registers 5

    .line 2749
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPreferredDataSubscriptionId"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2751
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2754
    :try_start_f
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v2

    if-nez v2, :cond_37

    .line 2756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferredDataSubscriptionId: PhoneSwitcher not available. Return the default data sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2756
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 2758
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result p0
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_35

    .line 2763
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_35
    move-exception p0

    goto :goto_3f

    .line 2761
    :cond_37
    :try_start_37
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getAutoSelectedDataSubId()I

    move-result p0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_35

    .line 2763
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2764
    throw p0
.end method

.method public blacklist getSatelliteESOSSupported(I)Z
    .registers 3

    .line 4692
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_a

    return p1

    .line 4698
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSatelliteESOSSupported()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    return v0

    :cond_12
    return p1
.end method

.method public blacklist getSatelliteEntitlementBarredPlmnList(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4709
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    .line 4712
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda171;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda171;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda17;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda17;-><init>()V

    .line 4713
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda18;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda18;-><init>()V

    .line 4714
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4715
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementDataPlanForPlmns(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4727
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-nez p1, :cond_e

    .line 4730
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 4732
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSatelliteEntitlementDataPlanForPlmns()Ljava/lang/String;

    move-result-object p1

    .line 4733
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->deSerializeCVToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementPlmnDataServicePolicy(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4762
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-nez p1, :cond_e

    .line 4765
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 4767
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSatellitePlmnsDataServicePolicy()Ljava/lang/String;

    move-result-object p1

    .line 4768
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->deSerializeCVToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementPlmnList(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4636
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    .line 4639
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda168;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda168;-><init>()V

    .line 4640
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda37;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda37;-><init>()V

    .line 4641
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda38;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda38;-><init>()V

    .line 4642
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4643
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementPlmnServiceTypeMap(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 4744
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-nez p1, :cond_e

    .line 4747
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 4749
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSatelliteEntitlementPlmnsServiceTypes()Ljava/lang/String;

    move-result-object p1

    .line 4750
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->deSerializeCVToMapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementPlmnVoiceServicePolicy(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4780
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-nez p1, :cond_e

    .line 4783
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 4785
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSatellitePlmnsVoiceServicePolicy()Ljava/lang/String;

    move-result-object p1

    .line 4786
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->deSerializeCVToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSlotIndex(I)I
    .registers 4

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    .line 3041
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result p1

    .line 3044
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3045
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_36
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getSubId(I)I
    .registers 4

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_d

    .line 3061
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result p1

    .line 3066
    :cond_d
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_17

    if-eq p1, v1, :cond_17

    return v1

    .line 3071
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3072
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3071
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .registers 2

    .line 4425
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 4426
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    .registers 2

    .line 4413
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSubscriptionInfoListAssociatedWithUser(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 4250
    const-string v0, "android.permission.MANAGE_SUBSCRIPTION_USER_ASSOCIATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSubscriptionInfoListAssociatedWithUser"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4259
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4261
    :try_start_f
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 4262
    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v2

    .line 4263
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 4264
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_24

    .line 4292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_24
    move-exception p0

    goto :goto_87

    .line 4267
    :cond_26
    :try_start_26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4268
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4269
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    .line 4270
    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getUserId()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    if-ne v6, v7, :cond_52

    .line 4272
    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 4273
    :cond_52
    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getUserId()I

    move-result v6

    const/16 v7, -0x2710

    if-ne v6, v7, :cond_34

    .line 4275
    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 4279
    :cond_62
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_7c

    .line 4281
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0
    :try_end_76
    .catchall {:try_start_26 .. :try_end_76} :catchall_24

    if-eqz p0, :cond_7c

    .line 4292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    .line 4289
    :cond_7c
    :try_start_7c
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_24

    if-eqz p0, :cond_83

    move-object v3, v4

    .line 4292
    :cond_83
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :goto_87
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4293
    throw p0
.end method

.method public blacklist getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 3481
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3482
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "getSubscriptionProperty"

    invoke-static {v0, p1, p3, p4, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_d2

    .line 3489
    invoke-static {}, Landroid/provider/Telephony$SimInfo;->getAllColumns()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_bb

    .line 3495
    sget-object p4, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->DIRECT_ACCESS_SUBSCRIPTION_COLUMNS:Ljava/util/Set;

    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9f

    .line 3500
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3502
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 3504
    :try_start_26
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionProperty(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3506
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3a

    .line 3507
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_34} :catch_7a
    .catchall {:try_start_26 .. :try_end_34} :catchall_38

    .line 3523
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_38
    move-exception p0

    goto :goto_9b

    .line 3508
    :cond_3a
    :try_start_3a
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 3509
    check-cast v0, Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_40} :catch_7a
    .catchall {:try_start_3a .. :try_end_40} :catchall_38

    .line 3523
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 3510
    :cond_44
    :try_start_44
    instance-of v1, v0, [B

    if-eqz v1, :cond_53

    .line 3511
    check-cast v0, [B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_4f} :catch_7a
    .catchall {:try_start_44 .. :try_end_4f} :catchall_38

    .line 3523
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 3515
    :cond_53
    :try_start_53
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was returned from SubscriptionDatabaseManager for column "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53 .. :try_end_7a} :catch_7a
    .catchall {:try_start_53 .. :try_end_7a} :catchall_38

    .line 3520
    :catch_7a
    :try_start_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubscriptionProperty: Invalid subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", columnName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_7a .. :try_end_96} :catchall_38

    .line 3523
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_9b
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3524
    throw p0

    .line 3496
    :cond_9f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Column "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed be directly accessed through getSubscriptionProperty."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3490
    :cond_bb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid column name "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3485
    :cond_d2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getSubscriptionUserHandle(I)Landroid/os/UserHandle;
    .registers 6

    .line 4116
    const-string v0, "android.permission.MANAGE_SUBSCRIPTION_USER_ASSOCIATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSubscriptionUserHandle"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4118
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4120
    :try_start_f
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 4121
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_34

    const/4 p1, 0x0

    if-nez p0, :cond_1c

    .line 4132
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 4126
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getUserId()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 4127
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_34

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_30

    .line 4132
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_34
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4133
    throw p0
.end method

.method public blacklist getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 3000
    const-string v0, "213902861"

    const-wide/32 v1, 0xcbfe60d

    .line 3001
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3000
    invoke-static {v1, v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v1

    const-string v2, "getSubscriptionsInGroup"

    if-eqz v1, :cond_45

    const v1, 0x534e4554

    .line 3003
    :try_start_14
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, p3, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_45

    .line 3005
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3006
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need to have carrier privileges or access to device identifiers to call getSubscriptionsInGroup"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_34
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_34} :catch_34

    :catch_34
    move-exception p0

    .line 3010
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3011
    throw p0

    .line 3015
    :cond_45
    :goto_45
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 3018
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda42;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda43;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3024
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3026
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public blacklist isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 3610
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "isActiveSubId"

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2c

    .line 3616
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3618
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 3620
    :try_start_11
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 3621
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 3622
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result p0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_21

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :catchall_21
    move-exception p0

    goto :goto_28

    :cond_23
    const/4 p0, 0x0

    .line 3624
    :goto_24
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_28
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3625
    throw p0

    .line 3612
    :cond_2c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist isEsimBootStrapProvisioningActivated()Z
    .registers 4

    .line 4819
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 4820
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 4821
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4820
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 4823
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isEsimBootStrapProvisioningActiveForSubId(I)Z
    .registers 2

    .line 4838
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 4840
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getProfileClass()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_e

    return p1

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isSatelliteProvisionedForNonIpDatagram(I)Z
    .registers 3

    .line 4797
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_a

    return p1

    .line 4803
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getIsSatelliteProvisionedForNonIpDatagram()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    return v0

    :cond_12
    return p1
.end method

.method public blacklist isSubscriptionAssociatedWithCallingUser(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 4152
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "isSubscriptionAssociatedWithCallingUser"

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 4158
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 4159
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSubscriptionAssociatedWithUserNoCheck(ILandroid/os/UserHandle;)Z

    move-result p0

    return p0

    .line 4154
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist isSubscriptionAssociatedWithUser(ILandroid/os/UserHandle;)Z
    .registers 5

    .line 4176
    const-string v0, "android.permission.MANAGE_SUBSCRIPTION_USER_ASSOCIATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSubscriptionAssociatedWithUser"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4179
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSubscriptionAssociatedWithUserNoCheck(ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public blacklist isSubscriptionEnabled(I)Z
    .registers 4

    .line 3540
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSubscriptionEnabled"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3542
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3546
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3550
    :try_start_1c
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 3551
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 3552
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result p0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2c

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :catchall_2c
    move-exception p0

    goto :goto_33

    :cond_2e
    const/4 p0, 0x0

    .line 3554
    :goto_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3555
    throw p0

    .line 3543
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid subscription id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist markSubscriptionsInactive(I)V
    .registers 4

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markSubscriptionsInactive: slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda34;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda34;-><init>(I)V

    .line 1065
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda35;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 1066
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1074
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V

    .line 1075
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "markSubscriptionsInactive: current mapping "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->slotMappingToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .registers 2

    .line 4361
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManagerServiceCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist removeSubInfo(Ljava/lang/String;I)Z
    .registers 7

    .line 2390
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeSubInfo"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSubInfo: uniqueId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2393
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->subscriptionTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2394
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2392
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 2396
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2400
    :try_start_44
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2401
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_67

    .line 2403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find subscription with uniqueId "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_44 .. :try_end_61} :catchall_65

    .line 2414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_65
    move-exception p0

    goto :goto_91

    .line 2406
    :cond_67
    :try_start_67
    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionType()I

    move-result p1

    if-eq p1, p2, :cond_76

    .line 2407
    const-string p1, "The subscription type does not match."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_67 .. :try_end_72} :catchall_65

    .line 2414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 2410
    :cond_76
    :try_start_76
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSimSlotIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->removeSubscriptionInfo(I)V
    :try_end_8c
    .catchall {:try_start_76 .. :try_end_8c} :catchall_65

    .line 2414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :goto_91
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2415
    throw p0
.end method

.method public blacklist removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 12

    .line 2845
    const-string v0, ""

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_21

    .line 2847
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkCarrierPrivilegeOnSubList([ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2848
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->canPackageManageGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_21

    .line 2849
    :cond_19
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "removeSubscriptionsFromGroup needs MODIFY_PHONE_STATE or carrier privilege permission on all specified subscriptions."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2853
    :cond_21
    :goto_21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2854
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2856
    array-length v1, p1

    if-eqz v1, :cond_ee

    .line 2860
    const-string v1, "removeSubscriptionsFromGroup"

    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2865
    :try_start_33
    array-length v3, p1

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v3, :cond_93

    aget v5, p1, v4

    .line 2866
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2867
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v6

    if-eqz v6, :cond_77

    .line 2872
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 2873
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Subscription "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " doesn\'t belong to group "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_75
    move-exception p0

    goto :goto_ea

    .line 2869
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The provided sub id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not valid."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2879
    :cond_93
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9d
    :goto_9d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    .line 2880
    invoke-static {p1}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda41;

    invoke-direct {v6, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda41;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    invoke-interface {v5, v6}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 2882
    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupUuid(ILjava/lang/String;)V

    .line 2883
    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v5, v4, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupOwner(ILjava/lang/String;)V

    goto :goto_9d

    .line 2884
    :cond_cb
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 2887
    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2888
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v4

    .line 2887
    invoke-virtual {v5, v4, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupOwner(ILjava/lang/String;)V

    goto :goto_9d

    .line 2892
    :cond_e3
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V
    :try_end_e6
    .catchall {:try_start_33 .. :try_end_e6} :catchall_75

    .line 2894
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_ea
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2895
    throw p0

    .line 2857
    :cond_ee
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "subIdList is empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist requestEmbeddedSubscriptionInfoListRefresh(I)V
    .registers 4

    .line 2297
    const-string v0, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestEmbeddedSubscriptionInfoListRefresh"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateEmbeddedSubscriptions(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist restoreAllSimSpecificSettingsFromBackup([B)V
    .registers 8

    .line 4327
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "restoreAllSimSpecificSettingsFromBackup"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4330
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4335
    :try_start_16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4336
    const-string v4, "KEY_SIM_SPECIFIC_SETTINGS_DATA"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4337
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 4338
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "restoreSimSpecificSettings"

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 4343
    const-string v0, "restoreSimSpecificSettingsDatabaseUpdated"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 4345
    const-string p1, "Sim specific settings changed the database."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 4346
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->reloadDatabaseSync()V

    .line 4347
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda6;-><init>()V

    .line 4348
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_56
    .catchall {:try_start_16 .. :try_end_56} :catchall_57

    goto :goto_59

    :catchall_57
    move-exception p0

    goto :goto_5d

    .line 4351
    :cond_59
    :goto_59
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_5d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4352
    throw p0
.end method

.method public blacklist setCarrierId(II)V
    .registers 4

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setCarrierId(II)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 911
    :catch_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCarrierId: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setCarrierName(ILjava/lang/String;)V
    .registers 5

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCarrierName: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", carrierName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 976
    :try_start_1c
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setCarrierName(ILjava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_21} :catch_22

    return-void

    .line 978
    :catch_22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCarrierName: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setCountryIso(ILjava/lang/String;)V
    .registers 5

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCountryIso: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 958
    :try_start_1c
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setCountryIso(ILjava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_21} :catch_22

    return-void

    .line 960
    :catch_22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCountryIso: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setDataRoaming(II)I
    .registers 6

    .line 2583
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDataRoaming"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2586
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-ltz p1, :cond_1d

    .line 2592
    :try_start_11
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDataRoaming(II)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    .line 2595
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_1b
    move-exception p0

    goto :goto_34

    .line 2589
    :cond_1d
    :try_start_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid roaming value "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_1b

    .line 2595
    :goto_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2596
    throw p0
.end method

.method public blacklist setDefaultDataSubId(I)V
    .registers 6

    .line 3200
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDefaultDataSubId"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_4a

    .line 3206
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3210
    :try_start_1b
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->set(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 3211
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->remapRafIfApplicable()V

    .line 3213
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/MultiSimSettingController;->notifyDefaultDataSubChanged()V

    .line 3215
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->broadcastSubId(Ljava/lang/String;I)V

    .line 3218
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManagerServiceCallbacks:Ljava/util/Set;

    new-instance v3, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda31;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda31;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3223
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateDefaultSubId()V
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_40

    goto :goto_42

    :catchall_40
    move-exception p0

    goto :goto_46

    .line 3226
    :cond_42
    :goto_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3227
    throw p0

    .line 3203
    :cond_4a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "setDefaultDataSubId called with DEFAULT_SUBSCRIPTION_ID"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setDefaultSmsSubId(I)V
    .registers 5

    .line 3337
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDefaultSmsSubId"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_33

    .line 3343
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3347
    :try_start_1b
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSmsSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->set(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3348
    const-string v2, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->broadcastSubId(Ljava/lang/String;I)V
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_29

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_2f

    .line 3353
    :cond_2b
    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3354
    throw p0

    .line 3340
    :cond_33
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "setDefaultSmsSubId called with DEFAULT_SUB_ID"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setDefaultVoiceSubId(I)V
    .registers 6

    .line 3275
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDefaultVoiceSubId"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_50

    .line 3281
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3285
    :try_start_1b
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultVoiceSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->set(I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 3286
    const-string v2, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->broadcastSubId(Ljava/lang/String;I)V

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2d

    const/4 p1, 0x0

    goto :goto_33

    .line 3290
    :cond_2d
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 3292
    :goto_33
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    if-eqz v2, :cond_45

    .line 3294
    invoke-virtual {v2, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_45

    :catchall_43
    move-exception p0

    goto :goto_4c

    .line 3297
    :cond_45
    :goto_45
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateDefaultSubId()V
    :try_end_48
    .catchall {:try_start_1b .. :try_end_48} :catchall_43

    .line 3301
    :cond_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3302
    throw p0

    .line 3278
    :cond_50
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "setDefaultVoiceSubId called with DEFAULT_SUB_ID"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setDeviceToDeviceStatusSharing(II)I
    .registers 6

    .line 3753
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDeviceToDeviceStatusSharing"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3756
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-ltz p1, :cond_27

    const/4 v2, 0x3

    if-gt p1, v2, :cond_27

    .line 3766
    :try_start_1b
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDeviceToDeviceStatusSharingPreference(II)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_25

    .line 3769
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_25
    move-exception p0

    goto :goto_3e

    .line 3763
    :cond_27
    :try_start_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sharing "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_25

    .line 3769
    :goto_3e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3770
    throw p0
.end method

.method public blacklist setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;I)I
    .registers 5

    .line 3788
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDeviceToDeviceStatusSharingContacts"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3791
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3794
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3796
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3797
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDeviceToDeviceStatusSharingContacts(ILjava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_23

    .line 3800
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_23
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3801
    throw p0
.end method

.method public blacklist setDisplayNameUsingSrc(Ljava/lang/String;II)I
    .registers 11

    .line 2466
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDisplayNameUsingSrc"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2468
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 2469
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2471
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p3, :cond_15e

    const/4 v3, 0x4

    if-gt p3, v3, :cond_15e

    .line 2478
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2479
    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v3

    if-eqz v3, :cond_147

    .line 2486
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayNameSource()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getNameSourcePriority(I)I

    move-result v4

    .line 2487
    invoke-static {p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getNameSourcePriority(I)I

    move-result v5

    const/4 v6, 0x0

    if-gt v4, v5, :cond_10f

    .line 2488
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayNameSource()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getNameSourcePriority(I)I

    move-result v4

    .line 2489
    invoke-static {p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getNameSourcePriority(I)I

    move-result v5

    if-ne v4, v5, :cond_4f

    .line 2490
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4f

    goto/16 :goto_10f

    :catchall_4c
    move-exception p0

    goto/16 :goto_175

    .line 2500
    :cond_4f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_60

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9b

    .line 2501
    :cond_60
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object p1

    .line 2502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9b

    const/4 p1, 0x2

    if-ne p3, p1, :cond_92

    .line 2504
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 2505
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    .line 2507
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v5, 0x104034b

    .line 2506
    invoke-virtual {p1, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9b

    .line 2509
    :cond_92
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2516
    :cond_9b
    :goto_9b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisplayNameUsingSrc: subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", nameSource="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2517
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->displayNameSourceToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", calling package="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2516
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 2519
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDisplayName(ILjava/lang/String;)V

    .line 2520
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDisplayNameSource(II)V

    .line 2523
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p3

    if-eqz p3, :cond_10b

    .line 2524
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 2525
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result p3

    .line 2526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating embedded sub nickname on cardId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 2527
    iget-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x4000000

    .line 2531
    invoke-static {p0, v6, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 2527
    invoke-virtual {p3, p2, p1, p0}, Landroid/telephony/euicc/EuiccManager;->updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_10b
    .catchall {:try_start_13 .. :try_end_10b} :catchall_4c

    .line 2537
    :cond_10b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 2491
    :cond_10f
    :goto_10f
    :try_start_10f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No need to update the display name. nameSource="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2492
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->displayNameSourceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", existing name="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2493
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", source="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2495
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayNameSource()I

    move-result p2

    .line 2494
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->displayNameSourceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2491
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V
    :try_end_143
    .catchall {:try_start_10f .. :try_end_143} :catchall_4c

    .line 2537
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 2482
    :cond_147
    :try_start_147
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot find subscription info with sub id "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2475
    :cond_15e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal name source "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_175
    .catchall {:try_start_147 .. :try_end_175} :catchall_4c

    .line 2537
    :goto_175
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2538
    throw p0
.end method

.method public blacklist setDisplayNumber(Ljava/lang/String;I)I
    .registers 5

    .line 2555
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDisplayNumber"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayNumber: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 2557
    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", calling package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2558
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2556
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 2560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2562
    :try_start_3d
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setNumber(ILjava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_47

    .line 2565
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_47
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2566
    throw p0
.end method

.method public blacklist setEnabledMobileDataPolicies(ILjava/lang/String;)V
    .registers 4

    .line 1031
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setEnabledMobileDataPolicies(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 1034
    :catch_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEnabledMobileDataPolicies: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setGroupOwner(ILjava/lang/String;)V
    .registers 5

    .line 996
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setGroupOwner"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 998
    :try_start_b
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupOwner(ILjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    .line 1002
    :catch_11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setManaged: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setIconTint(II)I
    .registers 6

    .line 2433
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setIconTint"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2435
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2437
    :try_start_f
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2441
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setIconTint(II)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1f

    .line 2444
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_29

    .line 2438
    :cond_21
    :try_start_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid sub id passed as parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_1f

    .line 2444
    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2445
    throw p0
.end method

.method public blacklist setIsSatelliteProvisionedForNonIpDatagram(IZ)V
    .registers 4

    .line 4675
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setIsSatelliteProvisionedForNonIpDatagram(II)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 4678
    :catch_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIsSatelliteProvisionedForNonIpDatagram: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setLastUsedTPMessageReference(II)V
    .registers 4

    .line 1015
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setLastUsedTPMessageReference(II)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 1018
    :catch_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLastUsedTPMessageReference: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setMccMnc(ILjava/lang/String;)V
    .registers 6

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setMcc(ILjava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setMnc(ILjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    .line 927
    :catch_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMccMnc: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setNtn(IZ)V
    .registers 4

    .line 941
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setNtn(II)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 943
    :catch_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOnlyNonTerrestrialNetwork: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setNumberFromIms(ILjava/lang/String;)V
    .registers 5

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNumberFromIms: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 1046
    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1050
    :try_start_22
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setNumberFromIms(ILjava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_27} :catch_28

    return-void

    .line 1052
    :catch_28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNumberFromIms: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setOpportunistic(ZILjava/lang/String;)I
    .registers 10

    .line 2617
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 2618
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    .line 2617
    const-string v4, "setOpportunistic"

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IIZLjava/lang/String;[Ljava/lang/String;)V

    .line 2621
    const-string p2, "setOpportunistic"

    invoke-direct {p0, p3, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 2625
    :try_start_1c
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setOpportunistic(IZ)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_26

    .line 2628
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_26
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2629
    throw p0
.end method

.method public blacklist setPhoneNumber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 4010
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPhoneNumber: subId="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", number="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 4011
    invoke-static {v0, p3}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", calling package="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 4010
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 4013
    iget-object p5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static {p5, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result p5

    if-eqz p5, :cond_6a

    const/4 p5, 0x2

    if-ne p2, p5, :cond_4f

    .line 4022
    const-string p2, "setPhoneNumber"

    invoke-direct {p0, p4, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4024
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4026
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    .line 4028
    :try_start_41
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setNumberFromCarrier(ILjava/lang/String;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_4a

    .line 4030
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4a
    move-exception p0

    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4031
    throw p0

    .line 4018
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setPhoneNumber doesn\'t accept source "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4019
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->phoneNumberSourceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4014
    :cond_6a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "setPhoneNumber for CARRIER needs carrier privilege."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .registers 7

    .line 2711
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setPreferredDataSubscriptionId"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2714
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2720
    :try_start_16
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v2

    if-nez v2, :cond_43

    .line 2722
    const-string p1, "Set preferred data sub: phoneSwitcher is null."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_28

    if-eqz p3, :cond_3f

    const/4 p1, 0x4

    .line 2725
    :try_start_24
    invoke-interface {p3, p1}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback;->onComplete(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_2a
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_3f

    :catchall_28
    move-exception p0

    goto :goto_4a

    :catch_2a
    move-exception p1

    .line 2728
    :try_start_2b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_28

    .line 2736
    :cond_3f
    :goto_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2734
    :cond_43
    :try_start_43
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->trySetOpportunisticDataSubscription(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_28

    .line 2736
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2737
    throw p0
.end method

.method public blacklist setSatelliteESOSSupported(IZ)V
    .registers 4

    .line 4657
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteESOSSupported(II)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 4660
    :catch_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSatelliteESOSSupported: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementInfo(ILjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4620
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_2} :catch_d

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    :try_start_9
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementInfo(ILjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_c} :catch_e

    return-void

    :catch_d
    move v1, p1

    .line 4624
    :catch_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSatelliteEntitlementPlmnList: invalid subId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 3433
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSubscriptionProperty"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3435
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3437
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSubscriptionProperty: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", columnName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", calling package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3437
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 3440
    invoke-static {}, Landroid/provider/Telephony$SimInfo;->getAllColumns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 3446
    sget-object v2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->DIRECT_ACCESS_SUBSCRIPTION_COLUMNS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 3451
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_f .. :try_end_56} :catchall_5a

    .line 3453
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_5a
    move-exception p0

    goto :goto_8f

    .line 3447
    :cond_5c
    :try_start_5c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Column "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed be directly accessed through setSubscriptionProperty."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3441
    :cond_78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid column name "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8f
    .catchall {:try_start_5c .. :try_end_8f} :catchall_5a

    .line 3453
    :goto_8f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3454
    throw p0
.end method

.method public blacklist setSubscriptionUserHandle(Landroid/os/UserHandle;I)I
    .registers 5

    .line 4085
    const-string v0, "android.permission.MANAGE_SUBSCRIPTION_USER_ASSOCIATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSubscriptionUserHandle"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p1, :cond_13

    const/16 p1, -0x2710

    .line 4089
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 4092
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4095
    :try_start_17
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setUserId(II)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_25

    .line 4098
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_25
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4099
    throw p0
.end method

.method public blacklist setTransferStatus(II)V
    .registers 5

    .line 4576
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->setTransferStatus_enforcePermission()V

    .line 4577
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 4583
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4585
    :try_start_11
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setTransferStatus(II)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 4587
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4588
    throw p0

    .line 4580
    :cond_1f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS tosetTransferStatus"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setUiccApplicationsEnabled(ZI)V
    .registers 6

    .line 3706
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUiccApplicationsEnabled"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUiccApplicationsEnabled: subId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", calling package="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3709
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3708
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 3711
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3714
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3717
    :try_start_3e
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 3718
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 3724
    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result v2

    if-eq v2, p1, :cond_5e

    .line 3725
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setUiccApplicationsEnabled(IZ)V

    .line 3726
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManagerServiceCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda36;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda36;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V
    :try_end_5b
    .catchall {:try_start_3e .. :try_end_5b} :catchall_5c

    goto :goto_5e

    :catchall_5c
    move-exception p0

    goto :goto_79

    .line 3731
    :cond_5e
    :goto_5e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 3720
    :cond_62
    :try_start_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUiccApplicationsEnabled: Subscription doesn\'t exist. subId="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_79
    .catchall {:try_start_62 .. :try_end_79} :catchall_5c

    .line 3731
    :goto_79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3732
    throw p0
.end method

.method public blacklist setUsageSetting(IILjava/lang/String;)I
    .registers 10

    .line 4052
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 4053
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string p3, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    .line 4052
    const-string v4, "setUsageSetting"

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IIZLjava/lang/String;[Ljava/lang/String;)V

    if-ltz p1, :cond_2c

    const/4 p2, 0x2

    if-gt p1, p2, :cond_2c

    .line 4062
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 4064
    :try_start_1c
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setUsageSetting(II)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_26

    .line 4067
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_26
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4068
    throw p0

    .line 4058
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setUsageSetting: Invalid usage setting: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist syncGroupedSetting(I)V
    .registers 4

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .registers 2

    .line 4370
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManagerServiceCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist updateEmbeddedSubscriptions(Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1173
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda28;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/Runnable;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist updateGroupDisabled()V
    .registers 6

    .line 4547
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 4548
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 4549
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 4550
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 4551
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4552
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 4553
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v2

    .line 4552
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 4554
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/SubscriptionInfo;)V

    .line 4555
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    .line 4557
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 4558
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 4557
    invoke-virtual {v4, v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupDisabled(IZ)V

    goto :goto_3a

    :cond_5d
    return-void
.end method

.method public blacklist updateSimState(IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 12

    .line 4487
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist updateSimStateForInactivePort(ILjava/lang/String;)V
    .registers 5

    .line 4436
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist updateSubscriptionByCarrierConfig(ILjava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Runnable;)V
    .registers 12

    .line 1758
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ILjava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
