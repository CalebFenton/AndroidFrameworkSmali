.class public Lcom/android/internal/telephony/CarrierResolver;
.super Landroid/os/Handler;
.source "CarrierResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_URL_PREFER_APN:Landroid/net/Uri;

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CarrierResolver"

.field private static final blacklist VDBG:Z


# instance fields
.field private blacklist mCarrierId:I

.field private final blacklist mCarrierIdLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mCarrierIdTestReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCarrierListVersion:Ljava/lang/Integer;

.field private blacklist mCarrierMatchingRulesOnMccMnc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCarrierName:Ljava/lang/String;

.field private final blacklist mContentObserver:Landroid/database/ContentObserver;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private blacklist mMnoCarrierId:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private blacklist mPreferApn:Ljava/lang/String;

.field private blacklist mSpecificCarrierId:I

.field private blacklist mSpecificCarrierName:Ljava/lang/String;

.field private blacklist mSpn:Ljava/lang/String;

.field private final blacklist mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private blacklist mTestOverrideApn:Ljava/lang/String;

.field private blacklist mTestOverrideCarrierPriviledgeRule:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierResolver;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCarrierIdAndName(Lcom/android/internal/telephony/CarrierResolver;ILjava/lang/String;ILjava/lang/String;IZ)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/CarrierResolver;->updateCarrierIdAndName(ILjava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smequals(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CarrierResolver;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;I)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 69
    const-class v0, Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 71
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    .line 79
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "preferapn"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierResolver;->CONTENT_URL_PREFER_APN:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 7

    .line 180
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    .line 93
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    .line 97
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 120
    new-instance v0, Lcom/android/internal/telephony/CarrierResolver$1;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/telephony/CarrierResolver$1;-><init>(Lcom/android/internal/telephony/CarrierResolver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContentObserver:Landroid/database/ContentObserver;

    .line 146
    new-instance v1, Lcom/android/internal/telephony/CarrierResolver$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CarrierResolver$2;-><init>(Lcom/android/internal/telephony/CarrierResolver;)V

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdTestReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    new-instance v2, Lcom/android/internal/telephony/CarrierResolver$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CarrierResolver$3;-><init>(Lcom/android/internal/telephony/CarrierResolver;)V

    iput-object v2, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating CarrierResolver["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    .line 183
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 184
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 185
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 188
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/CarrierResolver;->CONTENT_URL_PREFER_APN:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 192
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 194
    sget-boolean p1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_93

    .line 195
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    const-string p2, "com.android.internal.telephony.ACTION_TEST_OVERRIDE_CARRIER_ID"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_93
    return-void
.end method

.method private static blacklist equals(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    if-eqz p0, :cond_16

    if-eqz p1, :cond_16

    if-eqz p2, :cond_11

    .line 1187
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist getCarrierIdFromIdentifier(Landroid/content/Context;Landroid/service/carrier/CarrierIdentifier;)I
    .registers 18

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1035
    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v6

    .line 1036
    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v7

    .line 1037
    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v4

    .line 1038
    invoke-virtual/range {p1 .. p1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v9

    .line 1039
    sget-boolean v0, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v0, :cond_65

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getCarrierIdFromIdentifier] mnnmnc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " imsi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    .line 1044
    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " spn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1040
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 1048
    :cond_65
    new-instance v2, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;I)V

    .line 1056
    iget-object v0, v2, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierMatchingRulesFromMccMnc(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1058
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    move v3, v1

    :cond_7f
    :goto_7f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    .line 1059
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->match(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V

    .line 1060
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmScore(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    if-le v5, v3, :cond_7f

    .line 1061
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmScore(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v1

    .line 1062
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v3

    move v15, v3

    move v3, v1

    move v1, v15

    goto :goto_7f

    :cond_a0
    return v1
.end method

.method public static blacklist getCarrierIdFromMccMnc(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    .line 1124
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CarrierResolver;->getCursorForMccMnc(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_43

    if-eqz p0, :cond_4e

    .line 1125
    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4e

    .line 1126
    :cond_e
    sget-boolean v1, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v1, :cond_35

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCarrierIdFromMccMnc]- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Records(s) in DB mccmnc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    goto :goto_35

    :catchall_33
    move-exception p1

    goto :goto_45

    .line 1130
    :cond_35
    :goto_35
    const-string p1, "carrier_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_33

    .line 1131
    :try_start_3f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    return p1

    :catch_43
    move-exception p0

    goto :goto_54

    .line 1124
    :goto_45
    :try_start_45
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p0

    :try_start_4a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw p1

    :cond_4e
    :goto_4e
    if-eqz p0, :cond_53

    .line 1131
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_53} :catch_43

    :cond_53
    return v0

    .line 1132
    :goto_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getCarrierIdFromMccMnc]- ex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    return v0
.end method

.method public static blacklist getCarrierIdsFromApnQuery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mccmnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1078
    const-string v0, "spn"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\'"

    if-eqz v0, :cond_36

    if-eqz p3, :cond_36

    .line 1079
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND spn=\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_34
    move-object v3, p1

    goto :goto_a2

    .line 1080
    :cond_36
    const-string v0, "imsi"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    if-eqz p3, :cond_58

    .line 1081
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND imsi_prefix_xpattern=\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_34

    .line 1082
    :cond_58
    const-string v0, "gid1"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    if-eqz p3, :cond_7a

    .line 1083
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND gid1=\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_34

    .line 1084
    :cond_7a
    const-string v0, "gid2"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9c

    if-eqz p3, :cond_9c

    .line 1085
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND gid2=\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_34

    .line 1087
    :cond_9c
    const-string p2, "mvno case empty or other invalid values"

    invoke-static {p2}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    goto :goto_34

    .line 1090
    :goto_a2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    :try_start_a7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b4} :catch_101

    if-eqz p0, :cond_104

    .line 1099
    :try_start_b6
    sget-boolean p2, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz p2, :cond_db

    .line 1100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[getCarrierIdsFromApnQuery]- "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " Records(s) in DB"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    goto :goto_db

    :catchall_d8
    move-exception v0

    move-object p2, v0

    goto :goto_fd

    .line 1103
    :cond_db
    :goto_db
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_104

    .line 1104
    const-string p2, "carrier_id"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 1105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_db

    .line 1106
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_fc
    .catchall {:try_start_b6 .. :try_end_fc} :catchall_d8

    goto :goto_db

    .line 1112
    :goto_fd
    :try_start_fd
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1114
    throw p2

    :catch_101
    move-exception v0

    move-object p0, v0

    goto :goto_10a

    :cond_104
    if-eqz p0, :cond_11e

    .line 1112
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_109} :catch_101

    goto :goto_11e

    .line 1116
    :goto_10a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[getCarrierIdsFromApnQuery]- ex: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    .line 1118
    :cond_11e
    :goto_11e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    return-object p1
.end method

.method private static blacklist getCarrierMatchingRulesFromMccMnc(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;",
            ">;"
        }
    .end annotation

    .line 397
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "mccmnc=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_56

    if-eqz p0, :cond_59

    .line 406
    :try_start_19
    sget-boolean v0, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v0, :cond_41

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadCarrierMatchingRules]- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Records(s) in DB mccmnc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    goto :goto_41

    :catchall_3e
    move-exception v0

    move-object p1, v0

    goto :goto_52

    .line 410
    :cond_41
    :goto_41
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 411
    :goto_44
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 412
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->makeCarrierMatchingRule(Landroid/database/Cursor;)Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_19 .. :try_end_51} :catchall_3e

    goto :goto_44

    .line 417
    :goto_52
    :try_start_52
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 419
    throw p1

    :catch_56
    move-exception v0

    move-object p0, v0

    goto :goto_5f

    :cond_59
    if-eqz p0, :cond_73

    .line 417
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5e} :catch_56

    return-object v1

    .line 421
    :goto_5f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[loadCarrierMatchingRules]- ex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    :cond_73
    return-object v1
.end method

.method private blacklist getCarrierNameFromId(I)Ljava/lang/String;
    .registers 8

    .line 369
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "carrier_id=?"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_6d

    if-eqz p0, :cond_67

    .line 376
    :try_start_27
    sget-boolean v0, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v0, :cond_4f

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getCarrierNameFromId]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Records(s) in DB cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    goto :goto_4f

    :catchall_4c
    move-exception v0

    move-object p1, v0

    goto :goto_63

    .line 380
    :cond_4f
    :goto_4f
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_67

    .line 381
    const-string p1, "carrier_name"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_5f
    .catchall {:try_start_27 .. :try_end_5f} :catchall_4c

    .line 386
    :try_start_5f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :goto_63
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 388
    throw p1

    :cond_67
    if-eqz p0, :cond_83

    .line 386
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6c} :catch_6d

    goto :goto_83

    :catch_6d
    move-exception v0

    move-object p0, v0

    .line 390
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getCarrierNameFromId]- ex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    :cond_83
    :goto_83
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getCarrierNameFromMccMnc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1147
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CarrierResolver;->getCursorForMccMnc(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_43

    if-eqz p0, :cond_4e

    .line 1148
    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4e

    .line 1149
    :cond_e
    sget-boolean v1, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v1, :cond_35

    .line 1150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCarrierNameFromMccMnc]- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Records(s) in DB mccmnc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    goto :goto_35

    :catchall_33
    move-exception p1

    goto :goto_45

    .line 1153
    :cond_35
    :goto_35
    const-string p1, "carrier_name"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_33

    .line 1154
    :try_start_3f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    return-object p1

    :catch_43
    move-exception p0

    goto :goto_54

    .line 1147
    :goto_45
    :try_start_45
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p0

    :try_start_4a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw p1

    :cond_4e
    :goto_4e
    if-eqz p0, :cond_53

    .line 1154
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_53} :catch_43

    :cond_53
    return-object v0

    .line 1155
    :goto_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getCarrierNameFromMccMnc]- ex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getCursorForMccMnc(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    .line 1163
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "mccmnc=? AND gid1 is NULL AND gid2 is NULL AND imsi_prefix_xpattern is NULL AND spn is NULL AND iccid_prefix is NULL AND plmn is NULL AND privilege_access_rule is NULL AND apn is NULL"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception v0

    move-object p0, v0

    .line 1179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getCursorForMccMnc]- ex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getPreferApn()Ljava/lang/String;
    .registers 9

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideApn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "[getPreferApn]- "

    if-nez v0, :cond_26

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " test override"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 430
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideApn:Ljava/lang/String;

    return-object p0

    .line 432
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferapn/subId/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 433
    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string p0, "apn"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 432
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_be

    .line 438
    :try_start_58
    sget-boolean v0, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v0, :cond_7e

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Records(s) in DB"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    goto :goto_7e

    :catchall_78
    move-exception v0

    move-object p0, v0

    goto :goto_ba

    :catch_7b
    move-exception v0

    move-object p0, v0

    goto :goto_a2

    .line 441
    :cond_7e
    :goto_7e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 442
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_9e} :catch_7b
    .catchall {:try_start_58 .. :try_end_9e} :catchall_78

    .line 452
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object p0

    .line 449
    :goto_a2
    :try_start_a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getPreferApn]- exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_a2 .. :try_end_b6} :catchall_78

    .line 452
    :goto_b6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_c1

    :goto_ba
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 454
    throw p0

    :cond_be
    if-eqz v2, :cond_c1

    goto :goto_b6

    :cond_c1
    :goto_c1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getSubscriptionMatchingRule()Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;
    .registers 16

    .line 808
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v5

    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v6

    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v7

    .line 812
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v8

    .line 814
    iget-object v9, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    .line 815
    iget-object v10, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideCarrierPriviledgeRule:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 819
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideCarrierPriviledgeRule:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_45
    move-object v11, v0

    goto :goto_58

    .line 821
    :cond_47
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 822
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCertsFromCarrierPrivilegeAccessRules()Ljava/util/List;

    move-result-object v0

    goto :goto_45

    .line 825
    :goto_58
    sget-boolean p0, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz p0, :cond_bf

    .line 826
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[matchSubscriptionCarrier] mnnmnc:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " gid1: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " gid2: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " imsi: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    .line 830
    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " iccid: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-static {v0, v5}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " plmn: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " spn: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " apn: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " accessRules: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_b4

    move-object v0, v11

    goto :goto_b5

    :cond_b4
    const/4 v0, 0x0

    .line 835
    :goto_b5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 826
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 837
    :cond_bf
    new-instance v2, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v12, -0x1

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;I)V

    return-object v2
.end method

.method private blacklist handleSimAbsent()V
    .registers 9

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    .line 252
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    .line 253
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/CarrierResolver;->updateCarrierIdAndName(ILjava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method private blacklist handleSimLoaded(Z)V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_16

    .line 238
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    goto :goto_13

    .line 239
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    :goto_13
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    goto :goto_1b

    .line 241
    :cond_16
    const-string v0, "mIccRecords is null on SIM_LOAD_EVENT, could not get SPN"

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    .line 243
    :goto_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->getPreferApn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/CarrierResolver;->loadCarrierMatchingRulesOnMccMnc(ZZ)V

    return-void
.end method

.method private blacklist isPreferApnUserEdited(Ljava/lang/String;)Z
    .registers 11

    .line 459
    const-string v0, "edited"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preferapn/subId/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 460
    invoke-static {v2, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 459
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_4e

    if-eqz p0, :cond_5d

    .line 465
    :try_start_37
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 466
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_51

    const/4 v0, 0x1

    if-ne p1, v0, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v1

    .line 469
    :goto_4a
    :try_start_4a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    return v0

    :catch_4e
    move-exception v0

    move-object p0, v0

    goto :goto_63

    :catchall_51
    move-exception v0

    move-object p1, v0

    .line 459
    :try_start_53
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5c

    :catchall_57
    move-exception v0

    move-object p0, v0

    :try_start_59
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5c
    throw p1

    :cond_5d
    if-eqz p0, :cond_77

    .line 469
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_62} :catch_4e

    goto :goto_77

    .line 470
    :goto_63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[isPreferApnUserEdited]- exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    :cond_77
    :goto_77
    return v1
.end method

.method private blacklist loadCarrierMatchingRulesOnMccMnc(ZZ)V
    .registers 11

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "mccmnc=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_74

    if-eqz v1, :cond_6e

    .line 344
    :try_start_22
    sget-boolean v2, Lcom/android/internal/telephony/CarrierResolver;->VDBG:Z

    if-eqz v2, :cond_4a

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadCarrierMatchingRules]- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Records(s) in DB mccmnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    goto :goto_4a

    :catchall_47
    move-exception v0

    move-object p0, v0

    goto :goto_6a

    .line 348
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    :goto_4f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver;->makeCarrierMatchingRule(Landroid/database/Cursor;)Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 352
    :cond_5f
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CarrierResolver;->matchSubscriptionCarrier(ZZ)V

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierListVersion()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/CarrierIdMatchStats;->sendCarrierIdTableVersion(I)V
    :try_end_69
    .catchall {:try_start_22 .. :try_end_69} :catchall_47

    goto :goto_6e

    .line 359
    :goto_6a
    :try_start_6a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 361
    throw p0

    :cond_6e
    :goto_6e
    if-eqz v1, :cond_8a

    .line 359
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_73} :catch_74

    return-void

    :catch_74
    move-exception v0

    move-object p0, v0

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[loadCarrierMatchingRules]- ex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    :cond_8a
    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 1193
    sget-object v0, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;I)V
    .registers 4

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1196
    sget-object v0, Lcom/android/internal/telephony/CarrierResolver;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist makeCarrierMatchingRule(Landroid/database/Cursor;)Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;
    .registers 15

    .line 571
    const-string v0, "privilege_access_rule"

    .line 572
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 571
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 573
    new-instance v1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    const-string v2, "mccmnc"

    .line 574
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imsi_prefix_xpattern"

    .line 575
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iccid_prefix"

    .line 577
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gid1"

    .line 579
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "gid2"

    .line 580
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "plmn"

    .line 581
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "spn"

    .line 582
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "apn"

    .line 583
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 584
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_65

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_72

    :cond_65
    new-instance v10, Ljava/util/ArrayList;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_72
    const-string v0, "carrier_id"

    .line 585
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v0, "carrier_name"

    .line 586
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v0, "parent_carrier_id"

    .line 587
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-direct/range {v1 .. v13}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;I)V

    return-object v1
.end method

.method private blacklist matchSubscriptionCarrier(ZZ)V
    .registers 33

    move-object/from16 v0, p0

    .line 859
    iget-object v1, v0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 860
    const-string v0, "[matchSubscriptionCarrier]skip before sim records loaded"

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    return-void

    .line 875
    :cond_14
    invoke-direct {v0}, Lcom/android/internal/telephony/CarrierResolver;->getSubscriptionMatchingRule()Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    move-result-object v7

    .line 877
    iget-object v1, v0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move v10, v8

    move-object v2, v9

    move-object v3, v2

    move-object v4, v3

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    .line 878
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->match(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V

    .line 879
    invoke-static {v5}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmScore(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v6

    if-le v6, v10, :cond_40

    .line 880
    invoke-static {v5}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmScore(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v10

    move-object v2, v5

    move-object v3, v2

    goto :goto_5f

    :cond_40
    if-le v10, v8, :cond_5f

    .line 883
    invoke-static {v5}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmScore(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v6

    if-ne v6, v10, :cond_5f

    .line 886
    invoke-static {v5}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmParentCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v6

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v11

    if-ne v6, v11, :cond_54

    move-object v2, v5

    goto :goto_5f

    .line 888
    :cond_54
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmParentCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v6

    invoke-static {v5}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v11

    if-ne v6, v11, :cond_5f

    move-object v3, v5

    .line 892
    :cond_5f
    :goto_5f
    invoke-static {v5}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmScore(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v6

    const/16 v11, 0x100

    if-ne v6, v11, :cond_24

    move-object v4, v5

    goto :goto_24

    :cond_69
    if-ne v10, v8, :cond_8b

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[matchSubscriptionCarrier - no match] cid: -1 name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move/from16 v6, p2

    .line 899
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/CarrierResolver;->updateCarrierIdAndName(ILjava/lang/String;ILjava/lang/String;IZ)V

    goto/16 :goto_114

    :cond_8b
    if-ne v2, v3, :cond_aa

    .line 904
    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmParentCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v1

    if-eq v1, v8, :cond_aa

    .line 906
    new-instance v3, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    invoke-direct {v3, v2, v9}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;Lcom/android/internal/telephony/CarrierResolver-IA;)V

    .line 907
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmParentCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fputmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;I)V

    .line 908
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierNameFromId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fputmName(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;Ljava/lang/String;)V

    .line 910
    :cond_aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[matchSubscriptionCarrier] specific cid: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " specific name: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmName(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cid: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " name: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmName(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 913
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v1

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmName(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    move-object v2, v3

    invoke-static {v5}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v3

    move-object v6, v4

    invoke-static {v5}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmName(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;

    move-result-object v4

    if-nez v6, :cond_102

    .line 915
    invoke-static {v5}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    :goto_ff
    move/from16 v6, p2

    goto :goto_107

    :cond_102
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I

    move-result v5

    goto :goto_ff

    .line 913
    :goto_107
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/CarrierResolver;->updateCarrierIdAndName(ILjava/lang/String;ILjava/lang/String;IZ)V

    if-eqz p1, :cond_114

    .line 918
    const-string v1, "[matchSubscriptionCarrier] - Calling updateCarrierConfig()"

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 919
    invoke-direct {v0}, Lcom/android/internal/telephony/CarrierResolver;->updateCarrierConfig()V

    :cond_114
    :goto_114
    and-int/lit8 v1, v10, 0x20

    if-nez v1, :cond_125

    .line 933
    iget-object v2, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid1:Ljava/lang/String;

    .line 934
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_125

    iget-object v2, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid1:Ljava/lang/String;

    move-object/from16 v16, v2

    goto :goto_127

    :cond_125
    move-object/from16 v16, v9

    :goto_127
    if-eq v10, v8, :cond_12b

    if-nez v1, :cond_137

    .line 935
    :cond_12b
    iget-object v1, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    .line 937
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_137

    iget-object v1, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    move-object v15, v1

    goto :goto_138

    :cond_137
    move-object v15, v9

    .line 941
    :goto_138
    iget-object v1, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->apn:Ljava/lang/String;

    if-eqz v1, :cond_144

    .line 942
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CarrierResolver;->isPreferApnUserEdited(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_144

    .line 943
    iget-object v9, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->apn:Ljava/lang/String;

    :cond_144
    move-object/from16 v25, v9

    .line 946
    iget-object v1, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefix:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_15b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x7

    if-lt v1, v3, :cond_15b

    .line 947
    iget-object v1, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_158
    move-object/from16 v20, v1

    goto :goto_15e

    :cond_15b
    iget-object v1, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefix:Ljava/lang/String;

    goto :goto_158

    .line 950
    :goto_15e
    iget-object v1, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixPattern:Ljava/lang/String;

    if-eqz v1, :cond_173

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x8

    if-lt v1, v3, :cond_173

    .line 951
    iget-object v1, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixPattern:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_170
    move-object/from16 v19, v1

    goto :goto_176

    .line 952
    :cond_173
    iget-object v1, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixPattern:Ljava/lang/String;

    goto :goto_170

    .line 954
    :goto_176
    new-instance v17, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    iget-object v1, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mccMnc:Ljava/lang/String;

    iget-object v2, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid1:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gid2:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->plmn:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->spn:Ljava/lang/String;

    iget-object v6, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->privilegeAccessRule:Ljava/util/List;

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v27, -0x1

    move-object/from16 v18, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v6

    invoke-direct/range {v17 .. v29}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;I)V

    .line 966
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v11

    iget-object v1, v0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 967
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v12

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierListVersion()I

    move-result v13

    iget v14, v0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    .line 966
    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeCarrierIdMatchingEvent(IIILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V

    move-object/from16 v2, v16

    if-nez v15, :cond_1b4

    if-eqz v2, :cond_1b3

    goto :goto_1b4

    :cond_1b3
    return-void

    .line 973
    :cond_1b4
    :goto_1b4
    iget-object v1, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->spn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1bf

    iget-object v1, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->plmn:Ljava/lang/String;

    goto :goto_1c1

    :cond_1bf
    const-string v1, ""

    .line 974
    :goto_1c1
    iget v0, v0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    iget-object v3, v7, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->spn:Ljava/lang/String;

    invoke-static {v0, v15, v2, v3, v1}, Lcom/android/internal/telephony/metrics/CarrierIdMatchStats;->onCarrierIdMismatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateCarrierConfig()V
    .registers 4

    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 845
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eqz v0, :cond_e

    .line 847
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 849
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 850
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 851
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    .line 852
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v1

    .line 851
    invoke-virtual {v0, p0, v1}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    return-void
.end method

.method private blacklist updateCarrierIdAndName(ILjava/lang/String;ILjava/lang/String;IZ)V
    .registers 14

    .line 489
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    const-string v1, " to:"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p3, v0, :cond_28

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateSpecificCarrierId] from:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 492
    iput p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    move p3, v2

    goto :goto_29

    :cond_28
    move p3, v3

    .line 495
    :goto_29
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    if-eq p4, v0, :cond_4c

    .line 496
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[updateSpecificCarrierName] from:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 498
    iput-object p4, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    move p3, v2

    .line 501
    :cond_4c
    const-string p4, "android.telephony.extra.SUBSCRIPTION_ID"

    const-string v0, " name:"

    const/4 v4, 0x0

    if-eqz p3, :cond_c2

    .line 502
    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateSpecificCarrierIdAndName] cid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 504
    new-instance p3, Landroid/content/Intent;

    const-string v5, "android.telephony.action.SUBSCRIPTION_SPECIFIC_CARRIER_IDENTITY_CHANGED"

    invoke-direct {p3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    const-string v5, "android.telephony.extra.SPECIFIC_CARRIER_ID"

    iget v6, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    const-string v5, "android.telephony.extra.SPECIFIC_CARRIER_NAME"

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {p3, p4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, p3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 516
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 517
    iget v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "specific_carrier_id"

    invoke-virtual {p3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    const-string v5, "specific_carrier_id_name"

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    invoke-virtual {p3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 520
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-static {v6}, Landroid/provider/Telephony$CarrierId;->getSpecificCarrierIdUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v6

    .line 519
    invoke-virtual {v5, v6, p3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 525
    :cond_c2
    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-static {p2, p3, v2}, Lcom/android/internal/telephony/CarrierResolver;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_e9

    .line 526
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateCarrierName] from:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 527
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    move v3, v2

    .line 530
    :cond_e9
    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    if-eq p1, p2, :cond_10c

    .line 531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[updateCarrierId] from:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 532
    iput p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    move v3, v2

    .line 535
    :cond_10c
    iget p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    if-eq p5, p1, :cond_12f

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[updateMnoCarrierId] from:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 537
    iput p5, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    goto :goto_130

    :cond_12f
    move v2, v3

    :goto_130
    if-eqz v2, :cond_1ab

    .line 541
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[updateCarrierIdAndName] cid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " mnoCid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 543
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    const-string p2, "android.telephony.extra.CARRIER_ID"

    iget p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    const-string p2, "android.telephony.extra.CARRIER_NAME"

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 555
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 556
    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "carrier_id"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    const-string p2, "carrier_name"

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 559
    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    invoke-static {p3}, Landroid/provider/Telephony$CarrierId;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object p3

    .line 558
    invoke-virtual {p2, p3, p1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 564
    :cond_1ab
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_1c8

    if-nez p6, :cond_1c8

    .line 566
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setCarrierId(II)V

    :cond_1c8
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1204
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1205
    const-string v1, "mCarrierResolverLocalLogs:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1207
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierIdLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1208
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCarrierId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSpecificCarrierId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mMnoCarrierId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCarrierName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSpecificCarrierName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "carrier_list_version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierListVersion()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCarrierMatchingRules on mccmnc: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1218
    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1217
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1220
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierMatchingRulesOnMccMnc:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_da

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;

    .line 1221
    invoke-virtual {p2}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c6

    .line 1223
    :cond_da
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSpn: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPreferApn: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getCarrierId()I
    .registers 1

    .line 994
    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierId:I

    return p0
.end method

.method public blacklist getCarrierListVersion()I
    .registers 4

    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierListVersion:Ljava/lang/Integer;

    if-nez v0, :cond_35

    .line 983
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "get_version"

    .line 984
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 983
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 986
    :try_start_17
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    .line 987
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierListVersion:Ljava/lang/Integer;
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_29

    .line 988
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_35

    :catchall_29
    move-exception p0

    if-eqz v0, :cond_34

    .line 983
    :try_start_2c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_34
    :goto_34
    throw p0

    .line 990
    :cond_35
    :goto_35
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierListVersion:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getCarrierName()Ljava/lang/String;
    .registers 1

    .line 1016
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMnoCarrierId()I
    .registers 1

    .line 1024
    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mMnoCarrierId:I

    return p0
.end method

.method public blacklist getSpecificCarrierId()I
    .registers 1

    .line 1012
    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierId:I

    return p0
.end method

.method public blacklist getSpecificCarrierName()Ljava/lang/String;
    .registers 1

    .line 1020
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver;->mSpecificCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_73

    const/4 v3, 0x3

    if-eq v0, v3, :cond_43

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3d

    .line 327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid msg: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierResolver;->loge(Ljava/lang/String;)V

    return-void

    .line 297
    :cond_3d
    iput-object v4, p0, Lcom/android/internal/telephony/CarrierResolver;->mCarrierListVersion:Ljava/lang/Integer;

    .line 298
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/CarrierResolver;->loadCarrierMatchingRulesOnMccMnc(ZZ)V

    return-void

    .line 301
    :cond_43
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->getPreferApn()Ljava/lang/String;

    move-result-object p1

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/android/internal/telephony/CarrierResolver;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePreferApn] from:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 304
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mPreferApn:Ljava/lang/String;

    .line 305
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/CarrierResolver;->matchSubscriptionCarrier(ZZ)V

    return-void

    .line 310
    :cond_73
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 311
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 310
    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v0, p1, :cond_a1

    if-eqz v0, :cond_93

    .line 314
    const-string v0, "Removing stale icc objects."

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsOverride(Landroid/os/Handler;)V

    .line 316
    iput-object v4, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    :cond_93
    if-eqz p1, :cond_a1

    .line 319
    const-string v0, "new Icc object"

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 321
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 320
    invoke-virtual {p1, p0, v2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsOverride(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 322
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    :cond_a1
    return-void

    .line 288
    :cond_a2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_b7

    .line 291
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_b7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b7

    move v1, v2

    .line 293
    :cond_b7
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierResolver;->handleSimLoaded(Z)V

    return-void
.end method

.method public blacklist resolveSubscriptionCarrierId(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resolveSubscriptionCarrierId] simState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_4e

    goto :goto_41

    :sswitch_21
    const-string v2, "ABSENT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_41

    :cond_2a
    const/4 v1, 0x2

    goto :goto_41

    :sswitch_2c
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_41

    :cond_35
    const/4 v1, 0x1

    goto :goto_41

    :sswitch_37
    const-string v2, "LOADED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_41

    :cond_40
    move v1, v0

    :goto_41
    packed-switch v1, :pswitch_data_5c

    return-void

    .line 224
    :pswitch_45
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierResolver;->handleSimAbsent()V

    return-void

    .line 227
    :pswitch_49
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierResolver;->handleSimLoaded(Z)V

    return-void

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x79d7dbfb -> :sswitch_37
        -0x6d207e22 -> :sswitch_2c
        0x72b3d739 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_49
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method public blacklist setTestOverrideApn(Ljava/lang/String;)V
    .registers 4

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setTestOverrideApn]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 477
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideApn:Ljava/lang/String;

    return-void
.end method

.method public blacklist setTestOverrideCarrierPriviledgeRule(Ljava/lang/String;)V
    .registers 4

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setTestOverrideCarrierPriviledgeRule]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierResolver;->logd(Ljava/lang/String;)V

    .line 482
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver;->mTestOverrideCarrierPriviledgeRule:Ljava/lang/String;

    return-void
.end method
