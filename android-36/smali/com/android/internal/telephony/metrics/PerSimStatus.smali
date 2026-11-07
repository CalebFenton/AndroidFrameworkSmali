.class public Lcom/android/internal/telephony/metrics/PerSimStatus;
.super Ljava/lang/Object;
.source "PerSimStatus.java"


# static fields
.field private static final blacklist CROSS_SIM_CALLING_STATUS_ANOMALY_UUID:Ljava/util/UUID;


# instance fields
.field public final blacklist advancedCallingSettingEnabled:Z

.field public final blacklist carrierId:I

.field public final blacklist crossSimCallingEnabled:Z

.field public final blacklist dataRoamingEnabled:Z

.field public final blacklist disabled2g:Z

.field public final blacklist minimumVoltageClass:I

.field public final blacklist phoneNumberSourceCarrier:I

.field public final blacklist phoneNumberSourceIms:I

.field public final blacklist phoneNumberSourceUicc:I

.field public final blacklist pin1Enabled:Z

.field public final blacklist preferredNetworkType:J

.field public final blacklist unmeteredNetworks:J

.field public final blacklist userModifiedApnTypes:I

.field public final blacklist voWiFiModeSetting:I

.field public final blacklist voWiFiRoamingModeSetting:I

.field public final blacklist voWiFiSettingEnabled:Z

.field public final blacklist vonrEnabled:Z

.field public final blacklist vtSettingEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    const-string v0, "377e1a33-d4ac-4039-9cc0-f0d8396757f3"

    .line 66
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/PerSimStatus;->CROSS_SIM_CALLING_STATUS_ANOMALY_UUID:Ljava/util/UUID;

    return-void
.end method

.method private constructor blacklist <init>(IIIIZZIIZZJZZIIJZZ)V
    .registers 21

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->carrierId:I

    .line 143
    iput p2, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->phoneNumberSourceUicc:I

    .line 144
    iput p3, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->phoneNumberSourceCarrier:I

    .line 145
    iput p4, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->phoneNumberSourceIms:I

    .line 146
    iput-boolean p5, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->advancedCallingSettingEnabled:Z

    .line 147
    iput-boolean p6, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->voWiFiSettingEnabled:Z

    .line 148
    iput p7, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->voWiFiModeSetting:I

    .line 149
    iput p8, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->voWiFiRoamingModeSetting:I

    .line 150
    iput-boolean p9, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->vtSettingEnabled:Z

    .line 151
    iput-boolean p10, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->dataRoamingEnabled:Z

    .line 152
    iput-wide p11, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->preferredNetworkType:J

    .line 153
    iput-boolean p13, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->disabled2g:Z

    .line 154
    iput-boolean p14, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->pin1Enabled:Z

    .line 155
    iput p15, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->minimumVoltageClass:I

    move/from16 p1, p16

    .line 156
    iput p1, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->userModifiedApnTypes:I

    move-wide/from16 p1, p17

    .line 157
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->unmeteredNetworks:J

    move/from16 p1, p19

    .line 158
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->vonrEnabled:Z

    move/from16 p1, p20

    .line 159
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/PerSimStatus;->crossSimCallingEnabled:Z

    return-void
.end method

.method public static blacklist getCurrentState(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/metrics/PerSimStatus;
    .registers 25

    .line 91
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/metrics/PerSimStatus;->getNumberIds(Lcom/android/internal/telephony/Phone;)[I

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v2

    .line 94
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/metrics/PerSimStatus;->getImsMmTelManager(Lcom/android/internal/telephony/Phone;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 97
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v4

    move-object v5, v1

    .line 98
    new-instance v1, Lcom/android/internal/telephony/metrics/PerSimStatus;

    const/4 v6, 0x0

    move-object v7, v3

    aget v3, v0, v6

    const/4 v8, 0x1

    aget v8, v0, v8

    const/4 v9, 0x2

    aget v0, v0, v9

    if-nez v5, :cond_2d

    move v9, v6

    goto :goto_31

    .line 103
    :cond_2d
    invoke-virtual {v5}, Landroid/telephony/ims/ImsMmTelManager;->isAdvancedCallingSettingEnabled()Z

    move-result v9

    :goto_31
    if-nez v5, :cond_35

    move v10, v6

    goto :goto_39

    .line 104
    :cond_35
    invoke-virtual {v5}, Landroid/telephony/ims/ImsMmTelManager;->isVoWiFiSettingEnabled()Z

    move-result v10

    :goto_39
    if-nez v5, :cond_3d

    move v11, v6

    goto :goto_45

    .line 107
    :cond_3d
    invoke-virtual {v5}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v11

    invoke-static {v11}, Lcom/android/internal/telephony/metrics/PerSimStatus;->wifiCallingModeToProtoEnum(I)I

    move-result v11

    :goto_45
    if-nez v5, :cond_49

    move v12, v6

    goto :goto_51

    .line 110
    :cond_49
    invoke-virtual {v5}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/metrics/PerSimStatus;->wifiCallingModeToProtoEnum(I)I

    move-result v12

    :goto_51
    if-nez v5, :cond_57

    move v13, v6

    :goto_54
    move v14, v8

    move v8, v11

    goto :goto_5c

    .line 111
    :cond_57
    invoke-virtual {v5}, Landroid/telephony/ims/ImsMmTelManager;->isVtSettingEnabled()Z

    move-result v13

    goto :goto_54

    .line 112
    :goto_5c
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result v11

    move-object/from16 v15, p0

    move-object/from16 v17, v7

    move/from16 v16, v9

    move v7, v10

    move v9, v12

    move v10, v13

    .line 113
    invoke-virtual {v15, v6}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v12

    move/from16 v18, v14

    .line 114
    invoke-static {v15}, Lcom/android/internal/telephony/metrics/PerSimStatus;->is2gDisabled(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-nez v17, :cond_78

    :goto_75
    move/from16 v17, v16

    goto :goto_7d

    .line 115
    :cond_78
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v6

    goto :goto_75

    .line 116
    :goto_7d
    invoke-static {v15}, Lcom/android/internal/telephony/metrics/PerSimStatus;->getMinimumVoltageClass(Lcom/android/internal/telephony/Phone;)I

    move-result v16

    move v15, v6

    move/from16 v6, v17

    .line 117
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/metrics/PerSimStatus;->getUserModifiedApnTypes(Lcom/android/internal/telephony/Phone;)I

    move-result v17

    move/from16 v19, v0

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {v4, v0, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getUnmeteredNetworks(II)J

    move-result-wide v20

    .line 119
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/metrics/PerSimStatus;->isVonrEnabled(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    .line 120
    invoke-static {v5}, Lcom/android/internal/telephony/metrics/PerSimStatus;->isCrossSimCallingEnabled(Landroid/telephony/ims/ImsMmTelManager;)Z

    move-result v4

    move/from16 v5, v19

    move-wide/from16 v22, v20

    move/from16 v20, v0

    move/from16 v21, v4

    move/from16 v4, v18

    move-wide/from16 v18, v22

    invoke-direct/range {v1 .. v21}, Lcom/android/internal/telephony/metrics/PerSimStatus;-><init>(IIIIZZIIZZJZZIIJZZ)V

    return-object v1
.end method

.method private static blacklist getImsMmTelManager(Lcom/android/internal/telephony/Phone;)Landroid/telephony/ims/ImsMmTelManager;
    .registers 3

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsManager;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    .line 180
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    return-object v1
.end method

.method private static blacklist getMinimumVoltageClass(Lcom/android/internal/telephony/Phone;)I
    .registers 3

    .line 267
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return v0

    .line 271
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getMinimumVoltageClass()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1e

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1e

    return v0

    :cond_1e
    return v1
.end method

.method private static blacklist getNumberIds(Lcom/android/internal/telephony/Phone;)[I
    .registers 10

    .line 203
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 204
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 207
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 206
    :cond_1b
    const-string v0, ""

    .line 210
    :goto_1d
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6, v1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    const/4 v6, 0x3

    invoke-virtual {v5, p0, v6, v1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, v3, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 218
    new-array v1, v6, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_4c
    if-ge v3, v6, :cond_7f

    .line 220
    aget-object v5, p0, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_57

    goto :goto_7c

    :cond_57
    move v5, v2

    :goto_58
    if-ge v5, v3, :cond_73

    .line 227
    aget-object v7, p0, v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_70

    aget-object v7, p0, v3

    aget-object v8, p0, v5

    .line 228
    invoke-static {v7, v8, v0}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 230
    aget v7, v1, v5

    aput v7, v1, v3

    :cond_70
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 234
    :cond_73
    aget v5, v1, v3

    if-nez v5, :cond_7c

    add-int/lit8 v5, v4, 0x1

    .line 235
    aput v4, v1, v3

    move v4, v5

    :cond_7c
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_7f
    return-object v1
.end method

.method private static blacklist getUserModifiedApnTypes(Lcom/android/internal/telephony/Phone;)I
    .registers 8

    .line 285
    const-string v0, "type"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subId/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    .line 291
    const-string v4, "edited=?"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_3b
    if-eqz p0, :cond_59

    .line 298
    :try_start_3d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 299
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v2
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_4d

    or-int/2addr v1, v2

    goto :goto_3b

    :catchall_4d
    move-exception v0

    move-object v1, v0

    .line 288
    :try_start_4f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_58

    :catchall_53
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_58
    throw v1

    :cond_59
    if-eqz p0, :cond_5e

    .line 302
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5e
    return v1
.end method

.method private static blacklist is2gDisabled(Lcom/android/internal/telephony/Phone;)Z
    .registers 5

    const/4 v0, 0x3

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v0

    const-wide/32 v2, 0x804b

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isCrossSimCallingEnabled(Landroid/telephony/ims/ImsMmTelManager;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    .line 164
    :try_start_3
    invoke-virtual {p0}, Landroid/telephony/ims/ImsMmTelManager;->isCrossSimCallingEnabled()Z

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_b

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :catch_b
    move-exception p0

    .line 166
    sget-object v1, Lcom/android/internal/telephony/metrics/PerSimStatus;->CROSS_SIM_CALLING_STATUS_ANOMALY_UUID:Ljava/util/UUID;

    const-string v2, "Failed to query ImsMmTelManager for cross-SIM calling status!"

    invoke-static {v1, v2}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 168
    const-string v1, "PerSimStatus"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return v0
.end method

.method static blacklist isVonrEnabled(Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 309
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 313
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 314
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoNrEnabled()Z

    move-result p0

    return p0
.end method

.method private static blacklist wifiCallingModeToProtoEnum(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v0, :cond_c

    if-eq p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x3

    return p0

    :cond_c
    return v1

    :cond_d
    return v0
.end method
