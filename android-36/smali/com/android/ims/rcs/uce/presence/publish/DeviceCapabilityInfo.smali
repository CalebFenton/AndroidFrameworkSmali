.class public Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
.super Ljava/lang/Object;
.source "DeviceCapabilityInfo.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mLastRegistrationFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastRegistrationOverrideFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastSuccessfulCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Landroid/util/LocalLog;

.field private blacklist mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private blacklist mMmtelAssociatedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMmtelNetworkRegType:I

.field private blacklist mMmtelRegistered:Z

.field private blacklist mMobileData:Z

.field private final blacklist mOverrideAddFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOverrideRemoveFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingPublishCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPresenceCapable:Z

.field private blacklist mRcsAssociatedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRcsNetworkRegType:I

.field private blacklist mRcsRegistered:Z

.field private blacklist mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

.field private final blacklist mSubId:I

.field private blacklist mTtyPreferredMode:I

.field private blacklist mVtSetting:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceCapabilityInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I[Ljava/lang/String;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "capToRegistrationMap"    # [Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    .line 70
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationOverrideFeatureTags:Ljava/util/Set;

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    .line 111
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    .line 116
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mSubId:I

    .line 117
    invoke-static {p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->fromCarrierConfig([Ljava/lang/String;)Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    .line 118
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->reset()V

    .line 119
    return-void
.end method

.method private blacklist addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V
    .registers 5
    .param p1, "presenceBuilder"    # Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    .param p2, "tupleBuilder"    # Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .param p3, "contactUri"    # Landroid/net/Uri;

    .line 649
    invoke-virtual {p2, p3}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setContactUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->addCapabilityTuple(Landroid/telephony/ims/RcsContactPresenceTuple;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 650
    return-void
.end method

.method private declared-synchronized blacklist deepCopyCapabilities(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 5
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    monitor-enter p0

    .line 688
    :try_start_1
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    .line 689
    .local v0, "mmTelCapabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 690
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 692
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_10
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 693
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 695
    :cond_1a
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 696
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 698
    :cond_24
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 699
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 701
    :cond_2f
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 702
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 704
    :cond_3a
    monitor-exit p0

    return-object v0

    .line 687
    .end local v0    # "mmTelCapabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .end local p1    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method private blacklist getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    .registers 5
    .param p1, "reference"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            "Ljava/util/Set<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            ">;)",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;"
        }
    .end annotation

    .line 626
    .local p2, "refSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;>;"
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 627
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 626
    return-object v0
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 3

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    return-object v0
.end method

.method private blacklist getOptionsCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 632
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mSubId:I

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getDeviceContactUri(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Z)Landroid/net/Uri;

    move-result-object v0

    .line 633
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_10

    .line 634
    const-string v1, "getOptionsCapabilities: uri is empty"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logw(Ljava/lang/String;)V

    .line 635
    const/4 v1, 0x0

    return-object v1

    .line 638
    :cond_10
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationFeatureTags()Ljava/util/Set;

    move-result-object v7

    .line 640
    .local v7, "capableFromReg":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    const/4 v1, 0x1

    invoke-direct {v2, v0, v1}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;-><init>(Landroid/net/Uri;I)V

    .line 641
    .local v2, "optionsBuilder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->setRequestResult(I)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 642
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVolteCapability()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVtCapability()Z

    move-result v4

    .line 643
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isPresenceCapable()Z

    move-result v5

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasCallComposerCapability()Z

    move-result v6

    .line 642
    invoke-static/range {v2 .. v7}, Lcom/android/ims/rcs/uce/util/FeatureTags;->addFeatureTags(Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;ZZZZLjava/util/Set;)V

    .line 644
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getPresenceCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .line 571
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mSubId:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getDeviceContactUri(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Z)Landroid/net/Uri;

    move-result-object v0

    .line 572
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_10

    .line 573
    const-string v1, "getPresenceCapabilities: uri is empty"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logw(Ljava/lang/String;)V

    .line 574
    const/4 v1, 0x0

    return-object v1

    .line 576
    :cond_10
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    .line 577
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationCapabilities()Ljava/util/Set;

    move-result-object v2

    .line 579
    .local v2, "capableFromReg":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;>;"
    new-instance v3, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v1, v4}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;-><init>(Landroid/net/Uri;II)V

    .line 583
    .local v3, "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_PRESENCE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {p0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    move-result-object v1

    .line 585
    .local v1, "presDescription":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v4

    invoke-direct {p0, v3, v4, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V

    .line 586
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 589
    sget-object v4, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_MMTEL_VOICE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {p0, v4, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    move-result-object v4

    .line 591
    .local v4, "voiceDescription":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    sget-object v5, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_MMTEL_VOICE_VIDEO:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {p0, v5, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    move-result-object v5

    .line 593
    .local v5, "vtDescription":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVolteCapability()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVtCapability()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 594
    move-object v6, v5

    goto :goto_47

    :cond_46
    move-object v6, v4

    .line 595
    .local v6, "descToUse":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    :goto_47
    new-instance v7, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    .line 596
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVolteCapability()Z

    move-result v8

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVtCapability()Z

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;-><init>(ZZ)V

    .line 597
    const-string v8, "full"

    invoke-virtual {v7, v8}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->addSupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    move-result-object v7

    .line 598
    .local v7, "servCaps":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
    invoke-virtual {v6}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v8

    .line 599
    invoke-virtual {v8, v7}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setServiceCapabilities(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v8

    .line 598
    invoke-direct {p0, v3, v8, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V

    .line 600
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 601
    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 604
    sget-object v8, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CALL_COMPOSER_MMTEL:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {p0, v8, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    move-result-object v8

    .line 606
    .local v8, "composerDescription":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasCallComposerCapability()Z

    move-result v9

    if-eqz v9, :cond_82

    .line 607
    invoke-virtual {v8}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v9

    invoke-direct {p0, v3, v9, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V

    .line 609
    :cond_82
    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 613
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_89
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 614
    .local v10, "capability":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-virtual {v10}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v11

    invoke-direct {p0, v3, v11, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V

    .line 615
    .end local v10    # "capability":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    goto :goto_89

    .line 617
    :cond_9d
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v9

    return-object v9
.end method

.method private declared-synchronized blacklist hasCallComposerCapability()Z
    .registers 4

    monitor-enter p0

    .line 666
    :try_start_1
    const-string v0, "+g.gsma.callcomposer"

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 667
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_13
    const/4 v1, 0x0

    .line 666
    :goto_14
    invoke-direct {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->overrideCapability(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return v0

    .line 665
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private declared-synchronized blacklist hasVolteCapability()Z
    .registers 4

    monitor-enter p0

    .line 654
    :try_start_1
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 655
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_12

    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_11
    const/4 v2, 0x0

    .line 654
    :goto_12
    invoke-direct {p0, v0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->overrideCapability(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return v0

    .line 653
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private declared-synchronized blacklist hasVtCapability()Z
    .registers 4

    monitor-enter p0

    .line 660
    :try_start_1
    const-string v0, "video"

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 661
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_12
    const/4 v1, 0x0

    .line 660
    :goto_13
    invoke-direct {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->overrideCapability(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return v0

    .line 659
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private blacklist isCallComposerAvailable(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .registers 3
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 544
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isViWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .registers 4
    .param p1, "networkRegType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 539
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 540
    invoke-virtual {p2, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 539
    :goto_c
    return v0
.end method

.method private blacklist isVoWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .registers 5
    .param p1, "networkRegType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 529
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 530
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 529
    :goto_c
    return v0
.end method

.method private blacklist isVolteAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .registers 5
    .param p1, "networkRegType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 524
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 525
    invoke-virtual {p2, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 524
    :goto_b
    return v0
.end method

.method private blacklist isVtAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .registers 5
    .param p1, "networkRegType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 534
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 535
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 534
    :goto_c
    return v0
.end method

.method static synthetic blacklist lambda$getCustomizedDescription$0(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)Z
    .registers 4
    .param p0, "reference"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    .param p1, "s"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 626
    iget-object v0, p1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 626
    :goto_17
    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 708
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[D] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 713
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[I] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 718
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method private declared-synchronized blacklist overrideCapability(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "originalCap"    # Z

    monitor-enter p0

    .line 676
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_19

    if-eqz v0, :cond_c

    .line 677
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 680
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_19

    if-eqz v0, :cond_17

    .line 681
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 684
    :cond_17
    monitor-exit p0

    return p2

    .line 675
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "featureTag":Ljava/lang/String;
    .end local p2    # "originalCap":Z
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private declared-synchronized blacklist updateImsRegistrationFeatureTags(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 374
    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 375
    .local v0, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 376
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 377
    monitor-exit p0

    return-object v0

    .line 373
    .end local v0    # "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private blacklist updateRegistration(Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 360
    .local p1, "baseTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsRegistrationFeatureTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 361
    .local v0, "updatedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationOverrideFeatureTags:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 362
    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationOverrideFeatureTags:Ljava/util/Set;

    .line 363
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->updateImsRegistration(Ljava/util/Set;)V

    .line 364
    const/4 v1, 0x1

    return v1

    .line 366
    :cond_15
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist addLastSuccessfulServiceDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)V
    .registers 3
    .param p1, "capability"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 508
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 509
    return-void
.end method

.method public declared-synchronized blacklist addRegistrationOverrideCapabilities(Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 332
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "override - add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 334
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 336
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    move-result v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return v0

    .line 331
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public declared-synchronized blacklist clearRegistrationOverrideCapabilities()Z
    .registers 2

    monitor-enter p0

    .line 348
    :try_start_1
    const-string v0, "override - clear"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 350
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 352
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return v0

    .line 347
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 730
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 731
    .local v0, "pw":Landroid/util/IndentingPrintWriter;
    const-string v1, "DeviceCapabilityInfo :"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 734
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->dump(Ljava/io/PrintWriter;)V

    .line 736
    const-string v1, "Log:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 738
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 739
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 741
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 742
    return-void
.end method

.method public blacklist getChangedPresenceCapability(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 464
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 465
    return-object v0

    .line 467
    :cond_4
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    .line 468
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationCapabilities()Ljava/util/Set;

    move-result-object v1

    .line 469
    .local v1, "capableFromReg":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;>;"
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isPresenceCapabilityChanged(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 470
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getPresenceCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    .line 471
    .local v0, "rcsContactUceCapability":Landroid/telephony/ims/RcsContactUceCapability;
    if-eqz v0, :cond_1e

    .line 472
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationCapabilities()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;

    .line 474
    :cond_1e
    return-object v0

    .line 476
    .end local v0    # "rcsContactUceCapability":Landroid/telephony/ims/RcsContactUceCapability;
    :cond_1f
    return-object v0
.end method

.method public declared-synchronized blacklist getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 5
    .param p1, "mechanism"    # I
    .param p2, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 553
    packed-switch p1, :pswitch_data_38

    .line 564
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 562
    .restart local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getOptionsCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_1d

    monitor-exit p0

    return-object v0

    .line 555
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :pswitch_d
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getPresenceCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    .line 556
    .local v0, "rcsContactUceCapability":Landroid/telephony/ims/RcsContactUceCapability;
    if-eqz v0, :cond_1b

    .line 557
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    .line 558
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationCapabilities()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1d

    .line 560
    :cond_1b
    monitor-exit p0

    return-object v0

    .line 552
    .end local v0    # "rcsContactUceCapability":Landroid/telephony/ims/RcsContactUceCapability;
    .end local p1    # "mechanism":I
    .end local p2    # "context":Landroid/content/Context;
    :catchall_1d
    move-exception p1

    goto :goto_36

    .line 564
    .restart local p1    # "mechanism":I
    .restart local p2    # "context":Landroid/content/Context;
    :goto_1f
    :try_start_1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceCapabilities: invalid mechanism "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logw(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_1d

    .line 565
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 552
    .end local p1    # "mechanism":I
    .end local p2    # "context":Landroid/content/Context;
    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_1d

    throw p1

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_d
        :pswitch_7
    .end packed-switch
.end method

.method public declared-synchronized blacklist getImsAssociatedUri(Z)Landroid/net/Uri;
    .registers 6
    .param p1, "preferTelUri"    # Z

    monitor-enter p0

    .line 303
    if-eqz p1, :cond_55

    .line 304
    :try_start_3
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 305
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 306
    .local v1, "rcsAssociatedUri":Landroid/net/Uri;
    const-string v2, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_7d

    if-eqz v2, :cond_2b

    .line 307
    monitor-exit p0

    return-object v1

    .line 309
    .end local v1    # "rcsAssociatedUri":Landroid/net/Uri;
    :cond_2b
    goto :goto_11

    .line 311
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 312
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 313
    .local v1, "mmtelAssociatedUri":Landroid/net/Uri;
    const-string v2, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_50
    .catchall {:try_start_2c .. :try_end_50} :catchall_7d

    if-eqz v2, :cond_54

    .line 314
    monitor-exit p0

    return-object v1

    .line 316
    .end local v1    # "mmtelAssociatedUri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_54
    goto :goto_3a

    .line 322
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_55
    :try_start_55
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_68

    .line 323
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_66
    .catchall {:try_start_55 .. :try_end_66} :catchall_7d

    monitor-exit p0

    return-object v0

    .line 324
    :cond_68
    :try_start_68
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 325
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_7d

    monitor-exit p0

    return-object v0

    .line 327
    :cond_7a
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 302
    .end local p1    # "preferTelUri":Z
    :catchall_7d
    move-exception p1

    :try_start_7e
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw p1
.end method

.method public blacklist getLastSuccessfulPresenceTuplesWithoutContactUri()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v0, "presenceTuples":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactPresenceTuple;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 497
    return-object v0

    .line 500
    :cond_e
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 501
    .local v2, "capability":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v2    # "capability":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    goto :goto_14

    .line 503
    :cond_2c
    return-object v0
.end method

.method public declared-synchronized blacklist getMmtelAssociatedUri()Landroid/net/Uri;
    .registers 3

    monitor-enter p0

    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 215
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    monitor-exit p0

    return-object v0

    .line 217
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_14
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 213
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public declared-synchronized blacklist getRcsAssociatedUri()Landroid/net/Uri;
    .registers 3

    monitor-enter p0

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 289
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    monitor-exit p0

    return-object v0

    .line 291
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_14
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 287
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public declared-synchronized blacklist isImsRegistered()Z
    .registers 2

    monitor-enter p0

    .line 155
    :try_start_1
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    .line 155
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public blacklist isPresenceCapabilityChanged(Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            ">;)Z"
        }
    .end annotation

    .line 513
    .local p1, "capableFromReg":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 514
    return v1

    .line 517
    :cond_a
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 518
    const/4 v0, 0x0

    return v0

    .line 520
    :cond_14
    return v1
.end method

.method public declared-synchronized blacklist isPresenceCapable()Z
    .registers 2

    monitor-enter p0

    .line 459
    :try_start_1
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPresenceCapable:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 459
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist removeRegistrationOverrideCapabilities(Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 340
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "override - remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 342
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 344
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    move-result v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return v0

    .line 339
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public declared-synchronized blacklist reset()V
    .registers 3

    monitor-enter p0

    .line 125
    :try_start_1
    const-string v0, "reset"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    .line 127
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    .line 128
    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    .line 129
    iput v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    .line 130
    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mTtyPreferredMode:I

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMobileData:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mVtSetting:Z

    .line 133
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 134
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    .line 135
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    .line 136
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 138
    monitor-exit p0

    return-void

    .line 124
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public blacklist resetPresenceCapability()V
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;

    .line 492
    return-void
.end method

.method public blacklist setPresencePublishResult(Z)V
    .registers 4
    .param p1, "isSuccess"    # Z

    .line 480
    if-eqz p1, :cond_12

    .line 481
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 482
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;

    if-eqz v0, :cond_12

    .line 483
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 486
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;

    .line 487
    return-void
.end method

.method public declared-synchronized blacklist updateCapabilityRegistrationTrackerMap([Ljava/lang/String;)Z
    .registers 5
    .param p1, "newMap"    # [Ljava/lang/String;

    monitor-enter p0

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationFeatureTags()Ljava/util/Set;

    move-result-object v0

    .line 147
    .local v0, "oldTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->fromCarrierConfig([Ljava/lang/String;)Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    .line 148
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationOverrideFeatureTags:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->updateImsRegistration(Ljava/util/Set;)V

    .line 149
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 150
    .local v1, "changed":Z
    if-eqz v1, :cond_27

    const-string v2, "Carrier Config Change resulted in associated FT list change"

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 151
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_27
    monitor-exit p0

    return v1

    .line 145
    .end local v0    # "oldTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "changed":Z
    .end local p1    # "newMap":[Ljava/lang/String;
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public declared-synchronized blacklist updateImsMmtelRegistered(I)V
    .registers 5
    .param p1, "type"    # I

    monitor-enter p0

    .line 162
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "IMS MMTEL registered: original state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", changes type from "

    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V

    .line 168
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    if-nez v1, :cond_35

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    .line 172
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_35
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    if-eq v1, p1, :cond_3b

    .line 173
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 175
    :cond_3b
    monitor-exit p0

    return-void

    .line 161
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local p1    # "type":I
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public declared-synchronized blacklist updateImsMmtelUnregistered()Z
    .registers 3

    monitor-enter p0

    .line 181
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS MMTEL unregistered: original state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    if-eqz v1, :cond_22

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    .line 185
    const/4 v0, 0x1

    .line 187
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_22
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    .line 188
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 190
    monitor-exit p0

    return v0

    .line 180
    .end local v0    # "changed":Z
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public declared-synchronized blacklist updateImsRcsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)Z
    .registers 6
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    monitor-enter p0

    .line 225
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "IMS RCS registered: original state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", changes type from "

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "changed":Z
    iget-boolean v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    if-nez v2, :cond_3b

    .line 233
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    .line 234
    const/4 v1, 0x1

    .line 237
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_3b
    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v3

    if-eq v2, v3, :cond_4a

    .line 238
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v2

    iput v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    .line 239
    const/4 v1, 0x1

    .line 242
    :cond_4a
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    .line 243
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    move-result v2
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_59

    or-int/2addr v1, v2

    .line 245
    monitor-exit p0

    return v1

    .line 224
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "changed":Z
    .end local p1    # "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    :catchall_59
    move-exception p1

    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public declared-synchronized blacklist updateImsRcsUnregistered()Z
    .registers 3

    monitor-enter p0

    .line 252
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS RCS unregistered: original state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    if-eqz v1, :cond_22

    .line 255
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    .line 256
    const/4 v0, 0x1

    .line 259
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_22
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    .line 260
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    .line 261
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    .line 262
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 264
    monitor-exit p0

    return v0

    .line 251
    .end local v0    # "changed":Z
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public declared-synchronized blacklist updateMmTelAssociatedUri([Landroid/net/Uri;)V
    .registers 6
    .param p1, "uris"    # [Landroid/net/Uri;

    monitor-enter p0

    .line 197
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 198
    .local v0, "originalSize":I
    if-eqz p1, :cond_23

    .line 199
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 200
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 201
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    goto :goto_28

    .line 203
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_23
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 205
    :goto_28
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 206
    .local v1, "currentSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMmTelAssociatedUri: size from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_50

    .line 207
    monitor-exit p0

    return-void

    .line 196
    .end local v0    # "originalSize":I
    .end local v1    # "currentSize":I
    .end local p1    # "uris":[Landroid/net/Uri;
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public declared-synchronized blacklist updateMmtelCapabilitiesChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .registers 15
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    monitor-enter p0

    .line 424
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 425
    monitor-exit p0

    return v0

    .line 427
    :cond_6
    :try_start_6
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVolteAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v1

    .line 428
    .local v1, "oldVolteAvailable":Z
    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVoWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v2

    .line 429
    .local v2, "oldVoWifiAvailable":Z
    iget v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    iget-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVtAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v3

    .line 430
    .local v3, "oldVtAvailable":Z
    iget v4, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v4, v5}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isViWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v4

    .line 431
    .local v4, "oldViWifiAvailable":Z
    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v5}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isCallComposerAvailable(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v5

    .line 433
    .local v5, "oldCallComposerAvailable":Z
    iget v6, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-direct {p0, v6, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVolteAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v6

    .line 434
    .local v6, "volteAvailable":Z
    iget v7, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-direct {p0, v7, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVoWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v7

    .line 435
    .local v7, "voWifiAvailable":Z
    iget v8, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-direct {p0, v8, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVtAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v8

    .line 436
    .local v8, "vtAvailable":Z
    iget v9, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-direct {p0, v9, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isViWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v9

    .line 437
    .local v9, "viWifiAvailable":Z
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isCallComposerAvailable(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v10

    .line 439
    .local v10, "callComposerAvailable":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateMmtelCapabilitiesChanged: from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 442
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->deepCopyCapabilities(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v11

    iput-object v11, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :try_end_70
    .catchall {:try_start_6 .. :try_end_70} :catchall_80

    .line 444
    if-ne v1, v6, :cond_7d

    if-ne v2, v7, :cond_7d

    if-ne v3, v8, :cond_7d

    if-ne v4, v9, :cond_7d

    if-eq v5, v10, :cond_7b

    goto :goto_7d

    .line 451
    :cond_7b
    monitor-exit p0

    return v0

    .line 449
    :cond_7d
    :goto_7d
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 423
    .end local v1    # "oldVolteAvailable":Z
    .end local v2    # "oldVoWifiAvailable":Z
    .end local v3    # "oldVtAvailable":Z
    .end local v4    # "oldViWifiAvailable":Z
    .end local v5    # "oldCallComposerAvailable":Z
    .end local v6    # "volteAvailable":Z
    .end local v7    # "voWifiAvailable":Z
    .end local v8    # "vtAvailable":Z
    .end local v9    # "viWifiAvailable":Z
    .end local v10    # "callComposerAvailable":Z
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :catchall_80
    move-exception p1

    :try_start_81
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw p1
.end method

.method public declared-synchronized blacklist updateMobileData(Z)Z
    .registers 4
    .param p1, "mobileData"    # Z

    monitor-enter p0

    .line 398
    :try_start_1
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMobileData:Z

    if-eq v0, p1, :cond_2c

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile data changes from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMobileData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 400
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMobileData:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    .line 401
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 403
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_2c
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 397
    .end local p1    # "mobileData":Z
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public declared-synchronized blacklist updatePresenceCapable(Z)V
    .registers 2
    .param p1, "isCapable"    # Z

    monitor-enter p0

    .line 455
    :try_start_1
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPresenceCapable:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 456
    monitor-exit p0

    return-void

    .line 454
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "isCapable":Z
    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized blacklist updateRcsAssociatedUri([Landroid/net/Uri;)V
    .registers 6
    .param p1, "uris"    # [Landroid/net/Uri;

    monitor-enter p0

    .line 271
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 272
    .local v0, "originalSize":I
    if-eqz p1, :cond_23

    .line 273
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 274
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 275
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    goto :goto_28

    .line 277
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_23
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 279
    :goto_28
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 280
    .local v1, "currentSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRcsAssociatedUri: size from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_50

    .line 281
    monitor-exit p0

    return-void

    .line 270
    .end local v0    # "originalSize":I
    .end local v1    # "currentSize":I
    .end local p1    # "uris":[Landroid/net/Uri;
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public declared-synchronized blacklist updateTtyPreferredMode(I)Z
    .registers 4
    .param p1, "ttyMode"    # I

    monitor-enter p0

    .line 385
    :try_start_1
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mTtyPreferredMode:I

    if-eq v0, p1, :cond_2c

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTY preferred mode changes from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mTtyPreferredMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 387
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mTtyPreferredMode:I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    .line 388
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 390
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_2c
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 384
    .end local p1    # "ttyMode":I
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public declared-synchronized blacklist updateVtSetting(Z)Z
    .registers 4
    .param p1, "vtSetting"    # Z

    monitor-enter p0

    .line 411
    :try_start_1
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mVtSetting:Z

    if-eq v0, p1, :cond_2c

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT setting changes from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mVtSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 413
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mVtSetting:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    .line 414
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 416
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_2c
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 410
    .end local p1    # "vtSetting":Z
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method
