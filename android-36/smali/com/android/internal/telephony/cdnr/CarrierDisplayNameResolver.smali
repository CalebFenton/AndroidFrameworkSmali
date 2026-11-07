.class public Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;
.super Ljava/lang/Object;
.source "CarrierDisplayNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;,
        Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$WfcCarrierNameFormatter;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_CARRIER_DISPLAY_NAME_RULE:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;

.field private static final blacklist EF_SOURCE_PRIORITY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCCManager:Landroid/telephony/CarrierConfigManager;

.field private blacklist mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEf:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/cdnr/EfData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 74
    new-instance v0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->DEFAULT_CARRIER_DISPLAY_NAME_RULE:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;

    const/4 v0, 0x2

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0xa

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x3

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x4

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v0, 0x5

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v0, 0x6

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v0, 0x7

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0x8

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x9

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Integer;

    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->EF_SOURCE_PRIORITY:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .registers 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 104
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mContext:Landroid/content/Context;

    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 106
    const-string p1, "carrier_config"

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mCCManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method

.method private blacklist getCarrierConfig()Landroid/os/PersistableBundle;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mCCManager:Landroid/telephony/CarrierConfigManager;

    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_12

    .line 237
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    :cond_12
    return-object p0
.end method

.method private blacklist getCarrierDisplayNameFromCrossSimCallingOverride(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;
    .registers 7

    .line 392
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 393
    const-string v1, "cross_sim_spn_format_int"

    .line 394
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 395
    const-string v2, "wfc_spn_use_root_locale"

    .line 396
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 398
    iget-object v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 399
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 400
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 398
    invoke-static {v2, v3, v0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10700ea

    .line 401
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-ltz v1, :cond_2d

    .line 403
    array-length v3, v0

    if-lt v1, v3, :cond_44

    .line 404
    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpnDisplay: KEY_CROSS_SIM_SPN_FORMAT_INT out of bounds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CDNR"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 408
    :cond_44
    aget-object v0, v0, v1

    .line 410
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getEfPnn()Ljava/util/List;

    move-result-object p0

    .line 411
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_53

    const-string p0, ""

    goto :goto_5d

    :cond_53
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    invoke-static {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getPlmnNetworkName(Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;)Ljava/lang/String;

    move-result-object p0

    .line 413
    :goto_5d
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object v2

    goto :goto_6d

    :cond_6c
    move-object v2, p0

    .line 415
    :goto_6d
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 416
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 417
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 418
    new-instance p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;-><init>()V

    .line 419
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 420
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setDataSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 421
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowSpn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->build()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object p0

    return-object p0

    .line 423
    :cond_a0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_be

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_be

    .line 424
    new-instance p1, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;-><init>()V

    .line 425
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setPlmn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 426
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowPlmn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 427
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->build()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object p0

    return-object p0

    :cond_be
    return-object p1
.end method

.method private blacklist getCarrierDisplayNameFromEf()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;
    .registers 8

    .line 304
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getDisplayRule()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;

    move-result-object v0

    .line 306
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getEfSpn()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getEfOpl()Ljava/util/List;

    move-result-object v4

    .line 313
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getEfPnn()Ljava/util/List;

    move-result-object v5

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->isRoaming()Z

    move-result p0

    const/4 v6, 0x0

    if-eqz p0, :cond_29

    move-object p0, v1

    goto :goto_44

    .line 319
    :cond_29
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_43

    .line 323
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_38

    const-string p0, ""

    goto :goto_44

    :cond_38
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    invoke-static {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getPlmnNetworkName(Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;)Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    :cond_43
    const/4 p0, 0x0

    .line 333
    :goto_44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 334
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_51

    move-object v1, v2

    :cond_51
    move-object p0, v1

    .line 338
    :cond_52
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;->shouldShowSpn(Ljava/lang/String;)Z

    move-result v1

    .line 339
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;->shouldShowPlmn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_62
    const/4 v6, 0x1

    .line 341
    :cond_63
    new-instance v0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;-><init>()V

    .line 342
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setDataSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowSpn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v0

    .line 345
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setPlmn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 346
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowPlmn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->build()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCarrierDisplayNameFromWifiCallingOverride(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;
    .registers 9

    .line 352
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 353
    const-string v1, "wfc_spn_use_root_locale"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 354
    iget-object v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_21

    .line 356
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 357
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 359
    iget-object v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    .line 361
    :cond_21
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070123

    .line 362
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 363
    new-instance v2, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$WfcCarrierNameFormatter;

    .line 364
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_3d

    move v3, v6

    goto :goto_3e

    :cond_3d
    move v3, v5

    :goto_3e
    invoke-direct {v2, v0, v1, v3}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$WfcCarrierNameFormatter;-><init>(Landroid/os/PersistableBundle;[Ljava/lang/String;Z)V

    .line 367
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$WfcCarrierNameFormatter;->formatVoiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$WfcCarrierNameFormatter;->formatDataName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getEfPnn()Ljava/util/List;

    move-result-object p0

    .line 370
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5e

    const-string p0, ""

    goto :goto_68

    :cond_5e
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    invoke-static {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getPlmnNetworkName(Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;)Ljava/lang/String;

    move-result-object p0

    .line 372
    :goto_68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object p0

    .line 371
    :cond_72
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$WfcCarrierNameFormatter;->formatVoiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_98

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 376
    new-instance p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;-><init>()V

    .line 377
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 378
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setDataSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 379
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowSpn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->build()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object p0

    return-object p0

    .line 381
    :cond_98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 382
    new-instance p1, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;-><init>()V

    .line 383
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setPlmn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 384
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowPlmn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->build()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object p0

    return-object p0

    :cond_b0
    return-object p1
.end method

.method private blacklist getDisplayRule()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;
    .registers 5

    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->isRoaming()Z

    move-result v0

    const/4 v1, 0x0

    .line 244
    :goto_5
    iget-object v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 245
    iget-object v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdnr/EfData;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/cdnr/EfData;->getServiceProviderNameDisplayCondition(Z)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    .line 247
    new-instance v2, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;

    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    .line 248
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cdnr/EfData;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/cdnr/EfData;->getServiceProviderNameDisplayCondition(Z)I

    move-result p0

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;-><init>(I)V

    return-object v2

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 251
    :cond_31
    sget-object p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->DEFAULT_CARRIER_DISPLAY_NAME_RULE:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;

    return-object p0
.end method

.method private blacklist getEfOpl()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 276
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 277
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdnr/EfData;

    invoke-interface {v1}, Lcom/android/internal/telephony/cdnr/EfData;->getOperatorPlmnList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 278
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cdnr/EfData;

    invoke-interface {p0}, Lcom/android/internal/telephony/cdnr/EfData;->getOperatorPlmnList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 281
    :cond_27
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private blacklist getEfPnn()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 286
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 287
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdnr/EfData;

    invoke-interface {v1}, Lcom/android/internal/telephony/cdnr/EfData;->getPlmnNetworkNameList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 288
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cdnr/EfData;

    invoke-interface {p0}, Lcom/android/internal/telephony/cdnr/EfData;->getPlmnNetworkNameList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_27
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private blacklist getEfSpdi()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 256
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdnr/EfData;

    invoke-interface {v1}, Lcom/android/internal/telephony/cdnr/EfData;->getServiceProviderDisplayInformation()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 258
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cdnr/EfData;

    invoke-interface {p0}, Lcom/android/internal/telephony/cdnr/EfData;->getServiceProviderDisplayInformation()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    :cond_27
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private blacklist getEfSpn()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 266
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 267
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdnr/EfData;

    invoke-interface {v1}, Lcom/android/internal/telephony/cdnr/EfData;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 268
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cdnr/EfData;

    invoke-interface {p0}, Lcom/android/internal/telephony/cdnr/EfData;->getServiceProviderName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_2b
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getOutOfServiceDisplayName(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;
    .registers 7

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 452
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v3, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v1

    .line 453
    :goto_1b
    iget-object v3, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 454
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->shouldForceDisplayNoService()Z

    move-result v3

    if-eqz v3, :cond_2b

    if-nez v0, :cond_2b

    move v0, v2

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 455
    :goto_2c
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 457
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-static {}, Lcom/android/internal/telephony/Phone;->isEmergencyCallOnly()Z

    move-result v4

    if-eqz v4, :cond_3d

    :cond_3c
    move v1, v2

    .line 458
    :cond_3d
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4a

    if-nez v0, :cond_4a

    if-nez v1, :cond_4a

    const/4 p0, 0x0

    goto :goto_6a

    :cond_4a
    if-nez v0, :cond_5d

    if-nez v1, :cond_4f

    goto :goto_5d

    .line 465
    :cond_4f
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10403a5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6a

    .line 462
    :cond_5d
    :goto_5d
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10405a4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 468
    :goto_6a
    new-instance v0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;-><init>()V

    .line 469
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v0

    .line 470
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getDataSpn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setDataSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v0

    .line 471
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowSpn()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowSpn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p1

    .line 472
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setPlmn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 473
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowPlmn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 474
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->build()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getPlmnNetworkName(Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;)Ljava/lang/String;
    .registers 3

    .line 519
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 520
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->fullName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->fullName:Ljava/lang/String;

    return-object p0

    .line 521
    :cond_10
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->shortName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->shortName:Ljava/lang/String;

    return-object p0

    :cond_1b
    return-object v0
.end method

.method private blacklist getServiceState()Landroid/telephony/ServiceState;
    .registers 1

    .line 573
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSourcePriority(I)I
    .registers 2

    .line 532
    sget-object v0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->EF_SOURCE_PRIORITY:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_10

    const p0, 0x7fffffff

    :cond_10
    return p0
.end method

.method private blacklist isRoaming()Z
    .registers 2

    .line 299
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 300
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getEfSpdi()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist resolveCarrierDisplayName()V
    .registers 5

    .line 478
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getCarrierDisplayNameFromEf()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object v0

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarrierName from EF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDNR"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_51

    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 482
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 483
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getCarrierDisplayNameFromCrossSimCallingOverride(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object v0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarrierName override by Cross-SIM Calling "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c6

    .line 487
    :cond_51
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getCombinedRegState(Landroid/telephony/ServiceState;)I

    move-result v1

    if-nez v1, :cond_ae

    .line 489
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 490
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getCarrierDisplayNameFromWifiCallingOverride(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object v0

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarrierName override by wifi-calling "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 494
    :cond_8a
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_c6

    .line 496
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getOutOfServiceDisplayName(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object v0

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of service carrierName (APM) "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 500
    :cond_ae
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getOutOfServiceDisplayName(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object v0

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of service carrierName "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_c6
    :goto_c6
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    .line 505
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ResolveCarrierDisplayName: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 508
    :cond_e1
    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    return-void
.end method


# virtual methods
.method public blacklist dump(Lcom/android/internal/telephony/IndentingPrintWriter;)V
    .registers 4

    .line 222
    const-string v0, "CDNR:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fields = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carrierDisplayNameData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 228
    const-string v0, "CDNR local log:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 230
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 231
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public blacklist getCarrierDisplayNameData()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;
    .registers 1

    .line 194
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->resolveCarrierDisplayName()V

    .line 195
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 201
    :goto_6
    iget-object v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    .line 202
    iget-object v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdnr/EfData;

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{spnDisplayCondition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->isRoaming()Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/cdnr/EfData;->getServiceProviderNameDisplayCondition(Z)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-interface {v2}, Lcom/android/internal/telephony/cdnr/EfData;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", spdiList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-interface {v2}, Lcom/android/internal/telephony/cdnr/EfData;->getServiceProviderDisplayInformation()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", pnnList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-interface {v2}, Lcom/android/internal/telephony/cdnr/EfData;->getPlmnNetworkNameList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", oplList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-interface {v2}, Lcom/android/internal/telephony/cdnr/EfData;->getOperatorPlmnList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", ehplmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-interface {v2}, Lcom/android/internal/telephony/cdnr/EfData;->getEhplmnList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "}, "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 212
    :cond_76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", roamingFromSS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", registeredPLMN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateEfForBrandOverride(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x2

    .line 183
    invoke-static {v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getSourcePriority(I)I

    move-result v0

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 185
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 187
    :cond_11
    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/internal/telephony/cdnr/BrandOverrideEfData;

    .line 188
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p1, p0}, Lcom/android/internal/telephony/cdnr/BrandOverrideEfData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist updateEfForEri(Ljava/lang/String;)V
    .registers 5

    .line 166
    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const/16 v1, 0xa

    .line 167
    invoke-static {v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getSourcePriority(I)I

    move-result v1

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_20
    const-string v2, "allow_cdma_eri_bool"

    .line 169
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 170
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/telephony/cdnr/EriEfData;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdnr/EriEfData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 172
    :cond_33
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public blacklist updateEfFromCarrierConfig(Landroid/os/PersistableBundle;)V
    .registers 4

    const/4 v0, 0x1

    .line 147
    invoke-static {v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getSourcePriority(I)I

    move-result v0

    if-nez p1, :cond_d

    .line 149
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 151
    :cond_d
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist updateEfFromRuim(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .registers 4

    const/4 v0, 0x6

    .line 117
    invoke-static {v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getSourcePriority(I)I

    move-result v0

    if-nez p1, :cond_d

    .line 119
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 121
    :cond_d
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/telephony/cdnr/RuimEfData;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/cdnr/RuimEfData;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist updateEfFromUsim(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .registers 4

    const/4 v0, 0x3

    .line 132
    invoke-static {v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getSourcePriority(I)I

    move-result v0

    if-nez p1, :cond_d

    .line 134
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 136
    :cond_d
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->mEf:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/telephony/cdnr/UsimEfData;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/cdnr/UsimEfData;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
