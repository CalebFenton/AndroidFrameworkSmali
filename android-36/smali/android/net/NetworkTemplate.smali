.class public final Landroid/net/NetworkTemplate;
.super Ljava/lang/Object;
.source "NetworkTemplate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkTemplate$Builder;,
        Landroid/net/NetworkTemplate$OemManaged;,
        Landroid/net/NetworkTemplate$TemplateMatchRule;
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o MATCH_BLUETOOTH:I = 0x8

.field public static final blacklist MATCH_CARRIER:I = 0xa

.field public static final greylist-max-o MATCH_ETHERNET:I = 0x5

.field public static final greylist-max-o MATCH_MOBILE:I = 0x1

.field public static final greylist-max-o MATCH_PROXY:I = 0x9

.field public static final blacklist MATCH_TEST:I = 0xb

.field public static final greylist-max-o MATCH_WIFI:I = 0x4

.field public static final blacklist NETWORK_TYPE_ALL:I = -0x1

.field public static final blacklist OEM_MANAGED_ALL:I = -0x1

.field public static final blacklist OEM_MANAGED_NO:I = 0x0

.field public static final blacklist OEM_MANAGED_PAID:I = 0x1

.field public static final blacklist OEM_MANAGED_PRIVATE:I = 0x2

.field public static final blacklist OEM_MANAGED_YES:I = -0x2

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field public static final blacklist WIFI_NETWORKID_ALL:Ljava/lang/String;

.field public static final blacklist WIFI_NETWORK_KEY_ALL:Ljava/lang/String;


# instance fields
.field private final greylist-max-o mDefaultNetwork:I

.field private final greylist-max-o mMatchRule:I

.field private final greylist-max-o mMatchSubscriberIds:[Ljava/lang/String;

.field private final blacklist mMatchWifiNetworkKeys:[Ljava/lang/String;

.field private final greylist-max-o mMetered:I

.field private final blacklist mOemManaged:I

.field private final blacklist mRatType:I

.field private final greylist-max-o mRoaming:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetMatchRuleName(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/net/NetworkTemplate;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisKnownMatchRule(I)Z
    .registers 1

    invoke-static {p0}, Landroid/net/NetworkTemplate;->isKnownMatchRule(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    const-class v0, Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkTemplate;->TAG:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    sput-object v0, Landroid/net/NetworkTemplate;->WIFI_NETWORKID_ALL:Ljava/lang/String;

    .line 131
    sget-object v0, Landroid/net/NetworkTemplate;->WIFI_NETWORKID_ALL:Ljava/lang/String;

    sput-object v0, Landroid/net/NetworkTemplate;->WIFI_NETWORK_KEY_ALL:Ljava/lang/String;

    .line 1013
    new-instance v0, Landroid/net/NetworkTemplate$1;

    invoke-direct {v0}, Landroid/net/NetworkTemplate$1;-><init>()V

    sput-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "matchRule"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "wifiNetworkKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 456
    invoke-static {p1}, Landroid/net/NetworkTemplate;->getBackwardsCompatibleMatchRule(I)I

    move-result v1

    .line 457
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_d

    new-array v3, v0, [Ljava/lang/String;

    aput-object p2, v3, v2

    goto :goto_f

    :cond_d
    new-array v3, v2, [Ljava/lang/String;

    .line 458
    :goto_f
    if-eqz p3, :cond_16

    new-array v0, v0, [Ljava/lang/String;

    aput-object p3, v0, v2

    goto :goto_18

    :cond_16
    new-array v0, v2, [Ljava/lang/String;

    .line 459
    :goto_18
    invoke-static {p1}, Landroid/net/NetworkTemplate;->getMeterednessForBackwardsCompatibility(I)I

    move-result v4

    .line 456
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v2, v3

    move-object v3, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkTemplate;-><init>(I[Ljava/lang/String;[Ljava/lang/String;IIIII)V

    .line 461
    const/4 v0, 0x6

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x7

    if-ne p1, v0, :cond_44

    .line 462
    :cond_2c
    sget-object v0, Landroid/net/NetworkTemplate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use MATCH_MOBILE with empty subscriberIds or MATCH_WIFI with empty wifiNetworkKeys instead of template with matchRule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_44
    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "matchRule"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "matchSubscriberIds"    # [Ljava/lang/String;
    .param p4, "wifiNetworkKey"    # Ljava/lang/String;

    .line 492
    invoke-static {p1}, Landroid/net/NetworkTemplate;->getBackwardsCompatibleMatchRule(I)I

    move-result v1

    .line 493
    const/4 v0, 0x0

    if-eqz p4, :cond_d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p4, v2, v0

    goto :goto_f

    :cond_d
    new-array v2, v0, [Ljava/lang/String;

    :goto_f
    move-object v3, v2

    .line 494
    invoke-static {p1}, Landroid/net/NetworkTemplate;->getMeterednessForBackwardsCompatibility(I)I

    move-result v4

    .line 492
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v0, p0

    move-object v2, p3

    .end local p3    # "matchSubscriberIds":[Ljava/lang/String;
    .local v2, "matchSubscriberIds":[Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkTemplate;-><init>(I[Ljava/lang/String;[Ljava/lang/String;IIIII)V

    .line 500
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IIIIII)V
    .registers 20
    .param p1, "matchRule"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "matchSubscriberIds"    # [Ljava/lang/String;
    .param p4, "matchWifiNetworkKeys"    # [Ljava/lang/String;
    .param p5, "metered"    # I
    .param p6, "roaming"    # I
    .param p7, "defaultNetwork"    # I
    .param p8, "ratType"    # I
    .param p9, "oemManaged"    # I
    .param p10, "subscriberIdMatchRule"    # I

    .line 511
    invoke-static {p1}, Landroid/net/NetworkTemplate;->getBackwardsCompatibleMatchRule(I)I

    move-result v1

    .line 512
    if-nez p3, :cond_b

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    move-object v2, v0

    goto :goto_c

    :cond_b
    move-object v2, p3

    .line 511
    :goto_c
    move-object v0, p0

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkTemplate;-><init>(I[Ljava/lang/String;[Ljava/lang/String;IIIII)V

    .line 514
    invoke-static {}, Landroid/net/NetworkTemplate;->throwAtLeastU()V

    .line 515
    return-void
.end method

.method public constructor blacklist <init>(I[Ljava/lang/String;[Ljava/lang/String;IIIII)V
    .registers 12
    .param p1, "matchRule"    # I
    .param p2, "matchSubscriberIds"    # [Ljava/lang/String;
    .param p3, "matchWifiNetworkKeys"    # [Ljava/lang/String;
    .param p4, "metered"    # I
    .param p5, "roaming"    # I
    .param p6, "defaultNetwork"    # I
    .param p7, "ratType"    # I
    .param p8, "oemManaged"    # I

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iput p1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 524
    iput-object p2, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    .line 525
    iput-object p3, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    .line 526
    iput p4, p0, Landroid/net/NetworkTemplate;->mMetered:I

    .line 527
    iput p5, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    .line 528
    iput p6, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    .line 529
    iput p7, p0, Landroid/net/NetworkTemplate;->mRatType:I

    .line 530
    iput p8, p0, Landroid/net/NetworkTemplate;->mOemManaged:I

    .line 531
    invoke-static {p1, p2}, Landroid/net/NetworkTemplate;->checkValidMatchSubscriberIds(I[Ljava/lang/String;)V

    .line 532
    invoke-static {p1}, Landroid/net/NetworkTemplate;->isKnownMatchRule(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 536
    return-void

    .line 533
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown network template rule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will not match any identity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mMetered:I

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mRatType:I

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mOemManaged:I

    .line 547
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/NetworkTemplate-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o buildTemplateBluetooth()Landroid/net/NetworkTemplate;
    .registers 2

    .line 283
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 3
    .param p0, "subscriberId"    # Ljava/lang/String;

    .line 309
    invoke-static {}, Landroid/net/NetworkTemplate;->throwAtLeastU()V

    .line 310
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 313
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 314
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 310
    return-object v0
.end method

.method public static greylist buildTemplateEthernet()Landroid/net/NetworkTemplate;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static greylist buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 3
    .param p0, "subscriberId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 216
    invoke-static {p0}, Landroid/net/NetworkTemplate;->setOf(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 215
    return-object v0
.end method

.method public static greylist-max-r buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist buildTemplateMobileWithRatType(Ljava/lang/String;II)Landroid/net/NetworkTemplate;
    .registers 5
    .param p0, "subscriberId"    # Ljava/lang/String;
    .param p1, "ratType"    # I
    .param p2, "metered"    # I

    .line 329
    invoke-static {}, Landroid/net/NetworkTemplate;->throwAtLeastU()V

    .line 330
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 331
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 332
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_18

    .line 333
    :cond_14
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 331
    :goto_18
    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0, p2}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0, p1}, Landroid/net/NetworkTemplate$Builder;->setRatType(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 330
    return-object v0
.end method

.method public static greylist-max-o buildTemplateProxy()Landroid/net/NetworkTemplate;
    .registers 3

    .line 298
    new-instance v0, Landroid/net/NetworkTemplate;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist buildTemplateWifi()Landroid/net/NetworkTemplate;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 3
    .param p0, "wifiNetworkKey"    # Ljava/lang/String;

    .line 353
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 356
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setWifiNetworkKeys(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 353
    return-object v0
.end method

.method public static blacklist buildTemplateWifi(Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 4
    .param p0, "wifiNetworkKey"    # Ljava/lang/String;
    .param p1, "subscriberId"    # Ljava/lang/String;

    .line 377
    invoke-static {}, Landroid/net/NetworkTemplate;->throwAtLeastU()V

    .line 378
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 379
    invoke-static {p1}, Landroid/net/NetworkTemplate;->setOf(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 380
    if-nez p0, :cond_18

    .line 381
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1c

    .line 382
    :cond_18
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 380
    :goto_1c
    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setWifiNetworkKeys(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 378
    return-object v0
.end method

.method public static greylist buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist checkValidMatchSubscriberIds(I[Ljava/lang/String;)V
    .registers 6
    .param p0, "matchRule"    # I
    .param p1, "matchSubscriberIds"    # [Ljava/lang/String;

    .line 412
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_72

    .line 437
    return-void

    .line 417
    :sswitch_5
    array-length v1, p1

    const-string v2, "matchSubscriberIds may not contain null for rule "

    if-eqz v1, :cond_2c

    .line 421
    invoke-static {p1, v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 439
    return-void

    .line 422
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 423
    invoke-static {p0}, Landroid/net/NetworkTemplate;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 419
    invoke-static {p0}, Landroid/net/NetworkTemplate;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :sswitch_47
    sget v1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 430
    .local v1, "firstSdk":I
    const/16 v2, 0x21

    if-le v1, v2, :cond_71

    .line 431
    invoke-static {p1, v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_71

    .line 432
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValidMatchSubscriberIds list of ids may not contain null for rule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 433
    invoke-static {p0}, Landroid/net/NetworkTemplate;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_71
    :goto_71
    return-void

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_47
        0xa -> :sswitch_5
    .end sparse-switch
.end method

.method private static blacklist getBackwardsCompatibleMatchRule(I)I
    .registers 2
    .param p0, "matchRule"    # I

    .line 470
    const/4 v0, 0x6

    if-ne v0, p0, :cond_5

    const/4 v0, 0x1

    return v0

    .line 472
    :cond_5
    const/4 v0, 0x7

    if-ne v0, p0, :cond_a

    const/4 v0, 0x4

    return v0

    .line 473
    :cond_a
    return p0
.end method

.method private static greylist-max-o getMatchRuleName(I)Ljava/lang/String;
    .registers 3
    .param p0, "matchRule"    # I

    .line 896
    packed-switch p0, :pswitch_data_32

    .line 912
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 910
    :pswitch_1d
    const-string v0, "TEST"

    return-object v0

    .line 908
    :pswitch_20
    const-string v0, "CARRIER"

    return-object v0

    .line 906
    :pswitch_23
    const-string v0, "PROXY"

    return-object v0

    .line 904
    :pswitch_26
    const-string v0, "BLUETOOTH"

    return-object v0

    .line 902
    :pswitch_29
    const-string v0, "ETHERNET"

    return-object v0

    .line 900
    :pswitch_2c
    const-string v0, "WIFI"

    return-object v0

    .line 898
    :pswitch_2f
    const-string v0, "MOBILE"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_3
        :pswitch_3
        :pswitch_2c
        :pswitch_29
        :pswitch_3
        :pswitch_3
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private static blacklist getMeterednessForBackwardsCompatibility(I)I
    .registers 3
    .param p0, "matchRule"    # I

    .line 477
    invoke-static {p0}, Landroid/net/NetworkTemplate;->getBackwardsCompatibleMatchRule(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/16 v0, 0xa

    if-ne p0, v0, :cond_c

    goto :goto_e

    .line 481
    :cond_c
    const/4 v0, -0x1

    return v0

    .line 479
    :cond_e
    :goto_e
    return v1
.end method

.method private static blacklist getOemManagedNames(I)Ljava/lang/String;
    .registers 2
    .param p0, "oemManaged"    # I

    .line 917
    packed-switch p0, :pswitch_data_12

    .line 925
    invoke-static {p0}, Landroid/net/NetworkIdentity;->getOemManagedNames(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 921
    :pswitch_8
    const-string v0, "OEM_MANAGED_NO"

    return-object v0

    .line 919
    :pswitch_b
    const-string v0, "OEM_MANAGED_ALL"

    return-object v0

    .line 923
    :pswitch_e
    const-string v0, "OEM_MANAGED_YES"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch -0x2
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static greylist-max-o isKnownMatchRule(I)Z
    .registers 2
    .param p0, "rule"    # I

    .line 172
    packed-switch p0, :pswitch_data_8

    .line 183
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 180
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o matchesBluetooth(Landroid/net/NetworkIdentity;)Z
    .registers 4
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 882
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 883
    const/4 v0, 0x1

    return v0

    .line 885
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist matchesCarrier(Landroid/net/NetworkIdentity;)Z
    .registers 4
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 862
    iget-object v0, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    .line 863
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    .line 864
    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 862
    :goto_19
    return v0
.end method

.method private blacklist matchesCollapsedRatType(Landroid/net/NetworkIdentity;)Z
    .registers 4
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 780
    iget v0, p0, Landroid/net/NetworkTemplate;->mRatType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Landroid/net/NetworkTemplate;->mRatType:I

    .line 781
    invoke-static {v0}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    move-result v0

    iget v1, p1, Landroid/net/NetworkIdentity;->mRatType:I

    .line 782
    invoke-static {v1}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    move-result v1

    if-ne v0, v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    .line 780
    :goto_17
    return v0
.end method

.method private greylist-max-o matchesDefaultNetwork(Landroid/net/NetworkIdentity;)Z
    .registers 5
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 767
    iget v0, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_18

    iget v0, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    if-ne v0, v2, :cond_e

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    if-nez v0, :cond_18

    :cond_e
    iget v0, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    if-nez v0, :cond_17

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    if-nez v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :cond_18
    :goto_18
    return v2
.end method

.method private greylist-max-o matchesEthernet(Landroid/net/NetworkIdentity;)Z
    .registers 4
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 852
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 853
    const/4 v0, 0x1

    return v0

    .line 855
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o matchesMetered(Landroid/net/NetworkIdentity;)Z
    .registers 5
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 755
    iget v0, p0, Landroid/net/NetworkTemplate;->mMetered:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_18

    iget v0, p0, Landroid/net/NetworkTemplate;->mMetered:I

    if-ne v0, v2, :cond_e

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mMetered:Z

    if-nez v0, :cond_18

    :cond_e
    iget v0, p0, Landroid/net/NetworkTemplate;->mMetered:I

    if-nez v0, :cond_17

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mMetered:Z

    if-nez v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :cond_18
    :goto_18
    return v2
.end method

.method private greylist-max-o matchesMobile(Landroid/net/NetworkIdentity;)Z
    .registers 5
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 823
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    .line 825
    return v2

    .line 827
    :cond_7
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    .line 828
    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_19
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    if-nez v0, :cond_24

    .line 829
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesCollapsedRatType(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 827
    :goto_25
    return v2
.end method

.method private blacklist matchesOemNetwork(Landroid/net/NetworkIdentity;)Z
    .registers 4
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 773
    iget v0, p0, Landroid/net/NetworkTemplate;->mOemManaged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    iget v0, p0, Landroid/net/NetworkTemplate;->mOemManaged:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_e

    iget v0, p1, Landroid/net/NetworkIdentity;->mOemManaged:I

    if-nez v0, :cond_17

    :cond_e
    iget v0, p0, Landroid/net/NetworkTemplate;->mOemManaged:I

    iget v1, p1, Landroid/net/NetworkIdentity;->mOemManaged:I

    if-ne v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private greylist-max-o matchesProxy(Landroid/net/NetworkIdentity;)Z
    .registers 4
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 892
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o matchesRoaming(Landroid/net/NetworkIdentity;)Z
    .registers 5
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 761
    iget v0, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_18

    iget v0, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    if-ne v0, v2, :cond_e

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-nez v0, :cond_18

    :cond_e
    iget v0, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    if-nez v0, :cond_17

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-nez v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :cond_18
    :goto_18
    return v2
.end method

.method private blacklist matchesTest(Landroid/net/NetworkIdentity;)Z
    .registers 4
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 873
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    .line 874
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mWifiNetworkKey:Ljava/lang/String;

    .line 875
    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 873
    :goto_1b
    return v0
.end method

.method private greylist-max-o matchesWifi(Landroid/net/NetworkIdentity;)Z
    .registers 4
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 837
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_22

    .line 844
    return v1

    .line 842
    :sswitch_7
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 839
    :sswitch_e
    iget-object v0, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/net/NetworkTemplate;->matchesSubscriberId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p1, Landroid/net/NetworkIdentity;->mWifiNetworkKey:Ljava/lang/String;

    .line 840
    invoke-direct {p0, v0}, Landroid/net/NetworkTemplate;->matchesWifiNetworkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    nop

    .line 839
    :goto_21
    return v1

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_e
        0xd -> :sswitch_7
    .end sparse-switch
.end method

.method private blacklist matchesWifiNetworkKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "wifiNetworkKey"    # Ljava/lang/String;

    .line 812
    if-nez p1, :cond_9

    .line 813
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 815
    :cond_9
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    .line 816
    invoke-static {v0, p1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    .line 815
    :goto_1d
    return v0
.end method

.method public static blacklist normalize(Landroid/net/NetworkTemplate;Ljava/util/List;)Landroid/net/NetworkTemplate;
    .registers 3
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkTemplate;"
        }
    .end annotation

    .line 965
    .local p1, "mergedList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-static {}, Landroid/net/NetworkTemplate;->throwAtLeastU()V

    .line 966
    invoke-static {p0, p1}, Landroid/net/NetworkTemplate;->normalizeImpl(Landroid/net/NetworkTemplate;Ljava/util/List;)Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static greylist normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 3
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "merged"    # [Ljava/lang/String;

    .line 945
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/NetworkTemplate;->normalizeImpl(Landroid/net/NetworkTemplate;Ljava/util/List;)Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist normalizeImpl(Landroid/net/NetworkTemplate;Ljava/util/List;)Landroid/net/NetworkTemplate;
    .registers 13
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkTemplate;"
        }
    .end annotation

    .line 990
    .local p1, "mergedList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 992
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    .line 993
    .local v4, "merged":[Ljava/lang/String;
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v4, v1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 996
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    .line 999
    .local v0, "matchWifiNetworkKeys":[Ljava/lang/String;
    move v1, v2

    new-instance v2, Landroid/net/NetworkTemplate;

    iget v3, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 1000
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_37

    .line 1001
    new-array v1, v1, [Ljava/lang/String;

    move-object v5, v1

    goto :goto_3d

    :cond_37
    new-array v5, v6, [Ljava/lang/String;

    aget-object v7, v0, v1

    aput-object v7, v5, v1

    .line 1002
    :goto_3d
    iget v1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    if-eq v1, v6, :cond_4a

    iget v1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    const/16 v7, 0xa

    if-ne v1, v7, :cond_48

    goto :goto_4a

    .line 1004
    :cond_48
    const/4 v6, -0x1

    goto :goto_4b

    :cond_4a
    :goto_4a
    nop

    :goto_4b
    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct/range {v2 .. v10}, Landroid/net/NetworkTemplate;-><init>(I[Ljava/lang/String;[Ljava/lang/String;IIIII)V

    .line 999
    return-object v2

    .line 1007
    .end local v0    # "matchWifiNetworkKeys":[Ljava/lang/String;
    .end local v4    # "merged":[Ljava/lang/String;
    :cond_53
    goto :goto_d

    .line 1009
    :cond_54
    return-object p0
.end method

.method private static blacklist setOf(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .param p0, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    if-nez p0, :cond_10

    .line 190
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 191
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 194
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist throwAtLeastU()V
    .registers 2

    .line 199
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-nez v0, :cond_7

    .line 202
    return-void

    .line 200
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on Android U or above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 603
    instance-of v0, p1, Landroid/net/NetworkTemplate;

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 604
    move-object v0, p1

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 605
    .local v0, "other":Landroid/net/NetworkTemplate;
    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mMatchRule:I

    if-ne v2, v3, :cond_42

    iget v2, p0, Landroid/net/NetworkTemplate;->mMetered:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mMetered:I

    if-ne v2, v3, :cond_42

    iget v2, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mRoaming:I

    if-ne v2, v3, :cond_42

    iget v2, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    if-ne v2, v3, :cond_42

    iget v2, p0, Landroid/net/NetworkTemplate;->mRatType:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mRatType:I

    if-ne v2, v3, :cond_42

    iget v2, p0, Landroid/net/NetworkTemplate;->mOemManaged:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mOemManaged:I

    if-ne v2, v3, :cond_42

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    .line 611
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    .line 612
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v1, 0x1

    goto :goto_43

    :cond_42
    nop

    .line 605
    :goto_43
    return v1

    .line 614
    .end local v0    # "other":Landroid/net/NetworkTemplate;
    :cond_44
    return v1
.end method

.method public blacklist getDefaultNetworkStatus()I
    .registers 2

    .line 700
    iget v0, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    return v0
.end method

.method public blacklist getMatchRule()I
    .registers 2

    .line 638
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    return v0
.end method

.method public blacklist getMeteredness()I
    .registers 2

    .line 684
    iget v0, p0, Landroid/net/NetworkTemplate;->mMetered:I

    return v0
.end method

.method public greylist-max-o getNetworkId()Ljava/lang/String;
    .registers 2

    .line 676
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_1a

    :cond_c
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1a
    return-object v0
.end method

.method public blacklist getOemManaged()I
    .registers 2

    .line 716
    iget v0, p0, Landroid/net/NetworkTemplate;->mOemManaged:I

    return v0
.end method

.method public blacklist getRatType()I
    .registers 2

    .line 707
    iget v0, p0, Landroid/net/NetworkTemplate;->mRatType:I

    return v0
.end method

.method public blacklist getRoaming()I
    .registers 2

    .line 692
    iget v0, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    return v0
.end method

.method public greylist getSubscriberId()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 652
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_f

    :cond_a
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_f
    return-object v0
.end method

.method public blacklist getSubscriberIds()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 660
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getWifiNetworkKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 669
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 596
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    .line 597
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/net/NetworkTemplate;->mMetered:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/net/NetworkTemplate;->mRatType:I

    .line 598
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/net/NetworkTemplate;->mOemManaged:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 596
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isMatchRuleMobile()Z
    .registers 2

    .line 624
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    sparse-switch v0, :sswitch_data_a

    .line 630
    const/4 v0, 0x0

    return v0

    .line 628
    :sswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_7
        0x6 -> :sswitch_7
    .end sparse-switch
.end method

.method public greylist-max-o matches(Landroid/net/NetworkIdentity;)Z
    .registers 4
    .param p1, "ident"    # Landroid/net/NetworkIdentity;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 726
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMetered(Landroid/net/NetworkIdentity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    .line 728
    :cond_b
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesRoaming(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 729
    :cond_12
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesDefaultNetwork(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 730
    :cond_19
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesOemNetwork(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 732
    :cond_20
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    packed-switch v0, :pswitch_data_4a

    .line 750
    :pswitch_25
    return v1

    .line 746
    :pswitch_26
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesTest(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    .line 744
    :pswitch_2b
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesCarrier(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    .line 742
    :pswitch_30
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesProxy(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    .line 740
    :pswitch_35
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesBluetooth(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    .line 738
    :pswitch_3a
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesEthernet(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    .line 736
    :pswitch_3f
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifi(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    .line 734
    :pswitch_44
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_44
        :pswitch_25
        :pswitch_25
        :pswitch_3f
        :pswitch_3a
        :pswitch_25
        :pswitch_25
        :pswitch_35
        :pswitch_30
        :pswitch_2b
        :pswitch_26
    .end packed-switch
.end method

.method public greylist-max-o matchesSubscriberId(Ljava/lang/String;)Z
    .registers 3
    .param p1, "subscriberId"    # Ljava/lang/String;

    .line 793
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    .line 794
    invoke-static {v0, p1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 793
    :goto_11
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkTemplate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "matchRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v2}, Landroid/net/NetworkTemplate;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 571
    const-string v1, ", matchSubscriberIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    .line 572
    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberIds([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_2d
    const-string v1, ", matchWifiNetworkKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget v1, p0, Landroid/net/NetworkTemplate;->mMetered:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_50

    .line 576
    const-string v1, ", metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/NetworkTemplate;->mMetered:I

    invoke-static {v3}, Landroid/net/NetworkStats;->meteredToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_50
    iget v1, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    if-eq v1, v2, :cond_63

    .line 579
    const-string v1, ", roaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    invoke-static {v3}, Landroid/net/NetworkStats;->roamingToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_63
    iget v1, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    if-eq v1, v2, :cond_76

    .line 582
    const-string v1, ", defaultNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    invoke-static {v3}, Landroid/net/NetworkStats;->defaultNetworkToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_76
    iget v1, p0, Landroid/net/NetworkTemplate;->mRatType:I

    if-eq v1, v2, :cond_85

    .line 586
    const-string v1, ", ratType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/NetworkTemplate;->mRatType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    :cond_85
    iget v1, p0, Landroid/net/NetworkTemplate;->mOemManaged:I

    if-eq v1, v2, :cond_98

    .line 589
    const-string v1, ", oemManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkTemplate;->mOemManaged:I

    invoke-static {v2}, Landroid/net/NetworkTemplate;->getOemManagedNames(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 551
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchWifiNetworkKeys:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 554
    iget v0, p0, Landroid/net/NetworkTemplate;->mMetered:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget v0, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    iget v0, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    iget v0, p0, Landroid/net/NetworkTemplate;->mRatType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget v0, p0, Landroid/net/NetworkTemplate;->mOemManaged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    return-void
.end method
