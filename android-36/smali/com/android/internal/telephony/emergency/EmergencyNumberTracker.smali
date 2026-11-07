.class public Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
.super Landroid/os/Handler;
.source "EmergencyNumberTracker.java"


# static fields
.field public static final blacklist ADD_EMERGENCY_NUMBER_TEST_MODE:I = 0x1

.field public static blacklist DBG:Z = false

.field public static final blacklist EVENT_OVERRIDE_OTA_EMERGENCY_NUMBER_DB_FILE_PATH:I = 0x6

.field public static final blacklist EVENT_UPDATE_OTA_EMERGENCY_NUMBER_DB:I = 0x5

.field public static final blacklist REMOVE_EMERGENCY_NUMBER_TEST_MODE:I = 0x2

.field public static final blacklist RESET_EMERGENCY_NUMBER_TEST_MODE:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "EmergencyNumberTracker"


# instance fields
.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mCountryIso:Ljava/lang/String;

.field private blacklist mCurrentDatabaseVersion:I

.field private blacklist mCurrentOtaDatabaseVersion:I

.field private blacklist mEmergencyNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEmergencyNumberListDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mEmergencyNumberListFromDatabase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEmergencyNumberListFromRadio:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEmergencyNumberListFromTestMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mEmergencyNumberListPrefixLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mEmergencyNumberListRadioLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mEmergencyNumberListTestModeLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mEmergencyNumberListWithPrefix:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEmergencyNumberPrefix:[Ljava/lang/String;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public blacklist mIsCountrySetByAnotherSub:Z

.field private blacklist mLastKnownEmergencyCountryIso:Ljava/lang/String;

.field private blacklist mNormalRoutedNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mOverridedOtaDbParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneId:I

.field private blacklist mResources:Landroid/content/res/Resources;


# direct methods
.method public static synthetic blacklist $r8$lambda$p94Tq2xusj6tobRu6IwS3zrU4ao(Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;)Z
    .registers 2

    .line 969
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$vPH2JwRfhDnWiVQq-BvbF9wWsXQ(Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->lambda$new$0(IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 9

    .line 182
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mOverridedOtaDbParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 112
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mLastKnownEmergencyCountryIso:Ljava/lang/String;

    const/4 v1, -0x1

    .line 113
    iput v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentDatabaseVersion:I

    .line 114
    iput v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentOtaDatabaseVersion:I

    .line 115
    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mResources:Landroid/content/res/Resources;

    .line 120
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mNormalRoutedNumbers:Ljava/util/Map;

    const/4 v1, 0x0

    .line 126
    iput-boolean v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIsCountrySetByAnotherSub:Z

    .line 127
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    .line 137
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 138
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListRadioLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 139
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListPrefixLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 140
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListTestModeLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 141
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 161
    new-instance v1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$1;-><init>(Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 185
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 186
    iput-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 187
    iput-object p3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 188
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mResources:Landroid/content/res/Resources;

    .line 190
    invoke-static {p3}, Lcom/android/internal/telephony/TelephonyCapabilities;->minimalTelephonyCdmCheck(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Z

    move-result p3

    if-eqz p3, :cond_a5

    .line 191
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v2, "android.hardware.telephony.calling"

    invoke-virtual {p3, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_a5

    .line 192
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v1, "android.hardware.telephony.messaging"

    .line 193
    invoke-virtual {p3, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9d

    goto :goto_a5

    .line 194
    :cond_9d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "EmergencyNumberTracker requires telephony calling or messaging feature to be enabled"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 201
    :cond_a5
    :goto_a5
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

    .line 203
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "carrier_config"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/CarrierConfigManager;

    if-eqz p3, :cond_f5

    .line 206
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 207
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    const-string v3, "emergency_number_prefix_string_array"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-static {v1, v2, v4}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d7

    .line 210
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    .line 215
    :cond_d7
    new-instance v1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;)V

    new-instance v2, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;)V

    invoke-virtual {p3, v1, v2}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 220
    new-instance p3, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-direct {p3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_fa

    .line 225
    :cond_f5
    const-string p1, "CarrierConfigManager is null."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    .line 231
    :goto_fa
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->initializeDatabaseEmergencyNumberList()V

    const/4 p1, 0x1

    .line 232
    invoke-interface {p2, p0, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForEmergencyNumberList(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist addPrefixToEmergencyNumber(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
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

    .line 893
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 894
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_28

    aget-object v3, p0, v2

    .line 895
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 896
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_28
    return-object v0
.end method

.method private blacklist adjustRoutingForEmergencyNumbers(Ljava/util/List;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 845
    iget-object v1, v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCurrentCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    if-eqz v1, :cond_bf

    .line 847
    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v1

    .line 848
    iget-object v2, v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mNormalRoutedNumbers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 849
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    if-eqz v2, :cond_43

    .line 851
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_43

    .line 852
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 853
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->addPrefixToEmergencyNumber(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_27

    .line 854
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_27

    .line 855
    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_27

    .line 859
    :cond_43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 862
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_be

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/emergency/EmergencyNumber;

    .line 863
    invoke-virtual {v6}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v7

    .line 864
    invoke-virtual {v6}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    .line 865
    invoke-virtual {v6, v9}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v9

    if-eqz v9, :cond_9e

    if-eqz v2, :cond_74

    .line 867
    invoke-virtual {v6}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7e

    .line 868
    :cond_74
    invoke-virtual {v6}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9b

    .line 871
    :cond_7e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustRoutingForEmergencyNumbers for number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    const/4 v7, 0x2

    move-object v12, v1

    move/from16 v16, v7

    goto :goto_a1

    :cond_9b
    if-nez v7, :cond_9e

    const/4 v7, 0x1

    :cond_9e
    move/from16 v16, v7

    move-object v12, v8

    .line 876
    :goto_a1
    new-instance v9, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v6}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v10

    .line 877
    invoke-virtual {v6}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v11

    .line 878
    invoke-virtual {v6}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v13

    .line 879
    invoke-virtual {v6}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v6}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v15

    invoke-direct/range {v9 .. v16}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 876
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_be
    return-object v4

    :cond_bf
    return-object p1
.end method

.method private blacklist cacheEmergencyDatabaseByCountry(Ljava/lang/String;)V
    .registers 16

    .line 549
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 554
    :try_start_a
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 555
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "eccdata"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1f} :catch_fe

    .line 556
    :try_start_1f
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_100

    .line 558
    :try_start_24
    invoke-static {v3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->readInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 557
    invoke-static {v4}, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->parseFrom([B)Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;

    move-result-object v4

    .line 559
    iget v5, v4, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->revision:I

    .line 560
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " asset emergency database is loaded. Ver: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Phone Id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 561
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " countryIso: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 560
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 562
    iget-object v4, v4, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    array-length v6, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_60
    if-ge v8, v6, :cond_96

    aget-object v9, v4, v8

    .line 563
    iget-object v10, v9, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->isoCode:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_93

    .line 564
    iget-object v9, v9, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->eccs:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    array-length v10, v9

    move v11, v7

    :goto_76
    if-ge v11, v10, :cond_93

    aget-object v12, v9, v11

    .line 566
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->shouldEmergencyNumberRoutingFromDbBeIgnored()Z

    move-result v13

    if-nez v13, :cond_88

    .line 567
    invoke-direct {p0, v12, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getRoutingInfoFromDB(Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;Ljava/util/Map;)I

    move-result v13

    goto :goto_89

    :catchall_85
    move-exception p1

    goto/16 :goto_102

    :cond_88
    move v13, v7

    .line 570
    :goto_89
    invoke-direct {p0, v12, p1, v13}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->convertEmergencyNumberFromEccInfo(Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;Ljava/lang/String;I)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_76

    :cond_93
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    .line 575
    :cond_96
    invoke-static {v1}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V
    :try_end_99
    .catchall {:try_start_24 .. :try_end_99} :catchall_85

    .line 576
    :try_start_99
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_100

    :try_start_9c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_fe

    .line 582
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->cacheOtaEmergencyNumberDatabase()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentOtaDatabaseVersion:I

    const/4 v2, -0x1

    if-ne p1, v2, :cond_c5

    if-ne v5, v2, :cond_c5

    .line 587
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No database available. Phone Id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void

    :cond_c5
    if-le v5, p1, :cond_e7

    .line 589
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using Asset Emergency database. Version: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 590
    iput v5, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentDatabaseVersion:I

    .line 591
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    .line 592
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mNormalRoutedNumbers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 593
    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mNormalRoutedNumbers:Ljava/util/Map;

    return-void

    .line 595
    :cond_e7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Using Ota Emergency database. Version: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentOtaDatabaseVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void

    :catch_fe
    move-exception p1

    goto :goto_114

    :catchall_100
    move-exception p1

    goto :goto_10b

    .line 554
    :goto_102
    :try_start_102
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_106

    goto :goto_10a

    :catchall_106
    move-exception v0

    :try_start_107
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10a
    throw p1
    :try_end_10b
    .catchall {:try_start_107 .. :try_end_10b} :catchall_100

    :goto_10b
    :try_start_10b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_10f

    goto :goto_113

    :catchall_10f
    move-exception v0

    :try_start_110
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_113
    throw p1
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_114} :catch_fe

    .line 577
    :goto_114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache asset emergency database failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist cacheOtaEmergencyNumberDatabase()I
    .registers 20

    move-object/from16 v1, p0

    .line 602
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 605
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 609
    iget-object v3, v1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mOverridedOtaDbParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const-string v4, "Cache ota emergency database IOException: "

    const/4 v5, -0x1

    if-nez v3, :cond_1f

    .line 610
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "misc/emergencynumberdb/emergency_number_db"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2b

    .line 614
    :cond_1f
    :try_start_1f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 613
    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->getFile(Ljava/io/FileDescriptor;)Ljava/io/File;

    move-result-object v3

    .line 614
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2b} :catch_10f

    .line 622
    :goto_2b
    :try_start_2b
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_d3

    .line 623
    :try_start_30
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_d5

    .line 624
    :try_start_35
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_e4

    .line 626
    :try_start_3a
    invoke-static {v7}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->readInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v8

    .line 625
    invoke-static {v8}, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->parseFrom([B)Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;

    move-result-object v8

    .line 627
    invoke-virtual {v1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object v9

    .line 628
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ota emergency database is loaded. Ver: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 629
    iget v10, v8, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->revision:I

    .line 630
    iget-object v8, v8, Lcom/android/phone/ecc/nano/ProtobufEccData$AllInfo;->countries:[Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;

    array-length v11, v8

    const/4 v13, 0x0

    :goto_63
    if-ge v13, v11, :cond_b2

    aget-object v14, v8, v13

    .line 631
    iget-object v15, v14, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->isoCode:Ljava/lang/String;

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_aa

    .line 632
    iget-object v12, v14, Lcom/android/phone/ecc/nano/ProtobufEccData$CountryInfo;->eccs:[Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;

    array-length v14, v12

    const/4 v15, 0x0

    :goto_79
    if-ge v15, v14, :cond_aa

    aget-object v5, v12, v15

    .line 634
    invoke-virtual {v1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->shouldEmergencyNumberRoutingFromDbBeIgnored()Z

    move-result v17
    :try_end_81
    .catchall {:try_start_3a .. :try_end_81} :catchall_a6

    if-nez v17, :cond_93

    .line 635
    :try_start_83
    invoke-direct {v1, v5, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getRoutingInfoFromDB(Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;Ljava/util/Map;)I

    move-result v17
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_8e

    move/from16 v18, v17

    move-object/from16 v17, v3

    move/from16 v3, v18

    goto :goto_96

    :catchall_8e
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v3

    goto :goto_db

    :cond_93
    move-object/from16 v17, v3

    const/4 v3, 0x0

    .line 638
    :goto_96
    :try_start_96
    invoke-direct {v1, v5, v9, v3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->convertEmergencyNumberFromEccInfo(Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;Ljava/lang/String;I)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v17

    const/4 v5, -0x1

    goto :goto_79

    :catchall_a3
    move-exception v0

    :goto_a4
    move-object v2, v0

    goto :goto_db

    :catchall_a6
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_a4

    :cond_aa
    move-object/from16 v17, v3

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v17

    const/4 v5, -0x1

    goto :goto_63

    :cond_b2
    move-object/from16 v17, v3

    .line 643
    invoke-static {v2}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V
    :try_end_b7
    .catchall {:try_start_96 .. :try_end_b7} :catchall_a3

    .line 644
    :try_start_b7
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_d8

    :try_start_ba
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->close()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_d5

    :try_start_bd
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_d3

    const/4 v3, -0x1

    if-eq v10, v3, :cond_d2

    .line 650
    iget v3, v1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentDatabaseVersion:I

    if-ge v3, v10, :cond_d2

    .line 652
    iput v10, v1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentDatabaseVersion:I

    .line 653
    iput-object v2, v1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    .line 654
    iget-object v2, v1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mNormalRoutedNumbers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 655
    iput-object v0, v1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mNormalRoutedNumbers:Ljava/util/Map;

    :cond_d2
    return v10

    :catch_d3
    move-exception v0

    goto :goto_fa

    :catchall_d5
    move-exception v0

    move-object v2, v0

    goto :goto_f1

    :catchall_d8
    move-exception v0

    :goto_d9
    move-object v2, v0

    goto :goto_e8

    .line 622
    :goto_db
    :try_start_db
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_df

    goto :goto_e3

    :catchall_df
    move-exception v0

    :try_start_e0
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e3
    throw v2
    :try_end_e4
    .catchall {:try_start_e0 .. :try_end_e4} :catchall_d8

    :catchall_e4
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_d9

    :goto_e8
    :try_start_e8
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->close()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ec

    goto :goto_f0

    :catchall_ec
    move-exception v0

    :try_start_ed
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f0
    throw v2
    :try_end_f1
    .catchall {:try_start_ed .. :try_end_f1} :catchall_d5

    :goto_f1
    :try_start_f1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_f5

    goto :goto_f9

    :catchall_f5
    move-exception v0

    :try_start_f6
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f9
    throw v2
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_fa} :catch_d3

    .line 645
    :goto_fa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :goto_10c
    const/16 v16, -0x1

    return v16

    :catch_10f
    move-exception v0

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    goto :goto_10c
.end method

.method private blacklist convertEmergencyNumberFromEccInfo(Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;Ljava/lang/String;I)Landroid/telephony/emergency/EmergencyNumber;
    .registers 13

    .line 451
    iget-object v0, p1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 453
    const-string p1, "EccInfo has empty phone number."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 457
    :cond_13
    iget-object p0, p1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->types:[I

    array-length p1, p0

    const/4 v0, 0x0

    move v5, v0

    :goto_18
    if-ge v0, p1, :cond_39

    aget v1, p0, v0

    packed-switch v1, :pswitch_data_4a

    goto :goto_36

    :pswitch_20
    or-int/lit8 v1, v5, 0x40

    :goto_22
    move v5, v1

    goto :goto_36

    :pswitch_24
    or-int/lit8 v1, v5, 0x20

    goto :goto_22

    :pswitch_27
    or-int/lit8 v1, v5, 0x10

    goto :goto_22

    :pswitch_2a
    or-int/lit8 v1, v5, 0x8

    goto :goto_22

    :pswitch_2d
    or-int/lit8 v1, v5, 0x4

    goto :goto_22

    :pswitch_30
    or-int/lit8 v1, v5, 0x2

    goto :goto_22

    :pswitch_33
    or-int/lit8 v1, v5, 0x1

    goto :goto_22

    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 491
    :cond_39
    new-instance v1, Landroid/telephony/emergency/EmergencyNumber;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0x10

    const-string v4, ""

    move-object v3, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object v1

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_20
    .end packed-switch
.end method

.method private blacklist getCountryIsoForCachingDatabase()Ljava/lang/String;
    .registers 1

    .line 1023
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 1025
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 1027
    invoke-virtual {p0}, Lcom/android/internal/telephony/LocaleTracker;->getLastKnownCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1030
    :cond_13
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getEmergencyNumberListFromEccList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 1055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isSimAbsent()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "112,911,000,08,110,118,119,999"

    goto :goto_10

    :cond_e
    const-string v1, "112,911"

    .line 1058
    :goto_10
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 1059
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLabeledEmergencyNumberForEcclist(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1061
    :cond_26
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_32

    .line 1062
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1064
    :cond_32
    invoke-static {v0}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    return-object v0
.end method

.method private blacklist getEmergencyNumberListFromEccListDatabaseAndTest()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 1243
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListFromEccList()Ljava/util/List;

    move-result-object v0

    .line 1244
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1245
    const-string v1, "getEmergencyNumberListFromEccListDatabaseAndTest: radio indication is unavailable in 1.4 HAL."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    .line 1247
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1248
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1251
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListTestMode()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1253
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->shouldDeterminingOfUrnsAndCategoriesWhileMergingIgnored()Z

    move-result p0

    if-eqz p0, :cond_30

    .line 1254
    invoke-static {v0}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    return-object v0

    :cond_30
    const/4 p0, 0x1

    .line 1256
    invoke-static {v0, p0}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;Z)V

    return-object v0
.end method

.method private blacklist getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_59

    .line 1072
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    .line 1073
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->addPrefixToEmergencyNumber(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1074
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1075
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 1076
    new-instance v4, Landroid/telephony/emergency/EmergencyNumber;

    .line 1077
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v6

    .line 1078
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v8

    .line 1079
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v10

    .line 1080
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v11

    invoke-direct/range {v4 .. v11}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 1076
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_59
    return-object v0
.end method

.method private blacklist getInitialCountryIso()Ljava/lang/String;
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_15

    .line 394
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCurrentCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 402
    :cond_15
    const-string v0, "getInitialCountryIso mPhone is null."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    .line 405
    :cond_1a
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getLabeledEmergencyNumberForEcclist(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;
    .registers 10

    .line 1119
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1120
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 1121
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v2, v0

    .line 1122
    new-instance v0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1123
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x10

    .line 1125
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v7

    const-string v3, ""

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object v0

    .line 1128
    :cond_43
    new-instance v0, Landroid/telephony/emergency/EmergencyNumber;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object v0
.end method

.method private blacklist getRoutingInfoFromDB(Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;Ljava/util/Map;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .line 503
    iget v0, p1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->routing:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_c

    if-eq v0, v3, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    .line 514
    :cond_c
    :goto_c
    iget-object v0, p1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 516
    const-string p1, "EccInfo has empty phone number."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return v1

    .line 520
    :cond_1e
    iget v4, p1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->routing:I

    if-ne v4, v3, :cond_71

    .line 523
    iget-object v1, p1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->normalRoutingMncs:[Ljava/lang/String;

    array-length v4, v1

    if-eqz v4, :cond_70

    aget-object v1, v1, v2

    .line 524
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_70

    .line 527
    iget-object p1, p1, Lcom/android/phone/ecc/nano/ProtobufEccData$EccInfo;->normalRoutingMncs:[Ljava/lang/String;

    array-length v1, p1

    move v3, v2

    :goto_33
    if-ge v3, v1, :cond_5b

    aget-object v4, p1, v3

    .line 528
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 531
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 532
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 535
    :cond_49
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 536
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 537
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_58
    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 541
    :cond_5b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Normal routed mncs with phoneNumbers:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return v2

    :cond_70
    return v3

    :cond_71
    return v1
.end method

.method private blacklist initializeDatabaseEmergencyNumberList()V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 326
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getInitialCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyCountryIso(Ljava/lang/String;)V

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 330
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isAirplaneModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 331
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getCountryIsoForCachingDatabase()Ljava/lang/String;

    move-result-object v0

    .line 333
    :cond_21
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->cacheEmergencyDatabaseByCountry(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private blacklist isAirplaneModeEnabled()Z
    .registers 2

    .line 295
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isEmergencyNumberForTest(Ljava/lang/String;)Z
    .registers 3

    .line 1089
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1090
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 1091
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isEmergencyNumberFromDatabase(Ljava/lang/String;)Z
    .registers 6

    .line 1099
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 1102
    :cond_a
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/emergency/EmergencyNumber;

    .line 1104
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    return v3

    .line 1108
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    .line 1109
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 1110
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 1111
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    return v3

    :cond_4d
    return v1
.end method

.method private blacklist isEmergencyNumberFromEccList(Ljava/lang/String;)Z
    .registers 14

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1162
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "country:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 1165
    const-string v2, "System property doesn\'t provide any emergency numbers. Use embedded logic for determining ones."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isSimAbsent()Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "112,911,000,08,110,118,119,999"

    goto :goto_2c

    :cond_2a
    const-string v2, "112,911"

    .line 1172
    :goto_2c
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_34
    const/4 v5, 0x1

    if-ge v4, v3, :cond_64

    aget-object v6, v2, v4

    .line 1173
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    return v5

    .line 1176
    :cond_40
    iget-object v7, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v8, v7

    move v9, v0

    :goto_44
    if-ge v9, v8, :cond_61

    aget-object v10, v7, v9

    .line 1177
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5e

    return v5

    :cond_5e
    add-int/lit8 v9, v9, 0x1

    goto :goto_44

    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 1184
    :cond_64
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isSimAbsent()Z

    move-result v2

    if-eqz v2, :cond_a4

    if-eqz v1, :cond_a4

    .line 1187
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getInstance()Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;

    move-result-object v2

    .line 1188
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    return v5

    .line 1191
    :cond_7d
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v3, p0

    move v4, v0

    :goto_81
    if-ge v4, v3, :cond_a4

    aget-object v6, p0, v4

    .line 1192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1193
    invoke-virtual {v1, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 1192
    invoke-virtual {v2, v6, v7}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a1

    return v5

    :cond_a1
    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    :cond_a4
    return v0
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 5

    .line 217
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->onCarrierConfigUpdated(I)V

    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 5

    .line 1274
    sget-object v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 5

    .line 1282
    sget-object v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 5

    .line 1278
    sget-object v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifyEmergencyNumberList()V
    .registers 4

    .line 766
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyEmergencyNumberList()V

    .line 768
    const-string v0, "notifyEmergencyNumberList(): notified"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyEmergencyNumberList(): failure: Phone already destroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private blacklist onCarrierConfigUpdated(I)V
    .registers 5

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_3c

    .line 371
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_b

    goto :goto_3b

    .line 373
    :cond_b
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 375
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 376
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const-string v1, "emergency_number_prefix_string_array"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-static {p1, v0, v2}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 380
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x4

    .line 383
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 384
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3b
    :goto_3b
    return-void

    .line 388
    :cond_3c
    const-string p1, "onCarrierConfigurationChanged mPhone is null."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist overrideOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overrideOtaEmergencyNumberDbFilePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 729
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mOverridedOtaDbParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private static blacklist readInputStreamToByteArray(Ljava/io/InputStream;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    .line 667
    new-array v2, v1, [B

    :goto_9
    const/4 v3, 0x0

    .line 668
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    .line 669
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 671
    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 672
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private blacklist shouldAdjustForRouting()Z
    .registers 2

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->shouldEmergencyNumberRoutingFromDbBeIgnored()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mNormalRoutedNumbers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized blacklist updateEmergencyCountryIso(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 1042
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    .line 1043
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 1044
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mLastKnownEmergencyCountryIso:Ljava/lang/String;

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_15

    :cond_10
    :goto_10
    const/4 p1, -0x1

    .line 1046
    iput p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentDatabaseVersion:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_e

    .line 1047
    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_e

    throw p1
.end method

.method private blacklist updateEmergencyNumberList()V
    .registers 5

    .line 780
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 782
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 788
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 789
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_2c

    .line 790
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 792
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 795
    :cond_2c
    sget-boolean v1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez v1, :cond_48

    .line 796
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListPrefixLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEmergencyNumberList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 799
    :cond_48
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 800
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 801
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->shouldDeterminingOfUrnsAndCategoriesWhileMergingIgnored()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 802
    invoke-static {v0}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    goto :goto_60

    :cond_5c
    const/4 v1, 0x1

    .line 804
    invoke-static {v0, v1}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;Z)V

    .line 806
    :goto_60
    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    return-void
.end method

.method private blacklist updateEmergencyNumberListDatabaseAndNotify(Ljava/lang/String;)V
    .registers 5

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmergencyNumberListDatabaseAndNotify(): receiving countryIso: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 704
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyCountryIso(Ljava/lang/String;)V

    .line 706
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 707
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getCountryIsoForCachingDatabase()Ljava/lang/String;

    move-result-object p1

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmergencyNumberListDatabaseAndNotify(): using cached APM country "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 711
    :cond_3b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->cacheEmergencyDatabaseByCountry(Ljava/lang/String;)V

    .line 712
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->writeUpdatedEmergencyNumberListMetrics(Ljava/util/List;)V

    .line 713
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    const-string v0, "updateEmergencyNumberListDatabaseAndNotify:"

    if-nez p1, :cond_5f

    .line 714
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 718
    :cond_5f
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 719
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez p1, :cond_7c

    .line 720
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 723
    :cond_7c
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V

    return-void
.end method

.method private blacklist updateEmergencyNumberListTestModeAndNotify(ILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 1217
    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 1218
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_13
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1c

    .line 1221
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_24

    :cond_1c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_61

    .line 1223
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1228
    :cond_24
    :goto_24
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    const-string p2, "updateEmergencyNumberListTestModeAndNotify:"

    if-nez p1, :cond_40

    .line 1229
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListTestModeLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1233
    :cond_40
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 1234
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez p1, :cond_5d

    .line 1235
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1239
    :cond_5d
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V

    return-void

    .line 1225
    :cond_61
    const-string p1, "updateEmergencyNumberListTestModeAndNotify: Unexpected action in test mode."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateEmergencyNumberPrefixAndNotify([Ljava/lang/String;)V
    .registers 4

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmergencyNumberPrefixAndNotify(): receiving emergencyNumberPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 755
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    .line 756
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 757
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez p1, :cond_39

    .line 758
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmergencyNumberPrefixAndNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 761
    :cond_39
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V

    return-void
.end method

.method private blacklist updateOtaEmergencyNumberListDatabaseAndNotify()V
    .registers 5

    .line 733
    const-string v0, "updateOtaEmergencyNumberListDatabaseAndNotify(): receiving Emegency Number database OTA update"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 735
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->cacheOtaEmergencyNumberDatabase()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentOtaDatabaseVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4f

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->writeUpdatedEmergencyNumberListMetrics(Ljava/util/List;)V

    .line 738
    sget-boolean v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    const-string v1, "updateOtaEmergencyNumberListDatabaseAndNotify:"

    if-nez v0, :cond_2f

    .line 739
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 743
    :cond_2f
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 744
    sget-boolean v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez v0, :cond_4c

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 748
    :cond_4c
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V

    :cond_4f
    return-void
.end method

.method private blacklist updateRadioEmergencyNumberListAndNotify(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 677
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRadioEmergencyNumberListAndNotify(): receiving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 681
    :try_start_1f
    invoke-static {p1}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    .line 682
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->writeUpdatedEmergencyNumberListMetrics(Ljava/util/List;)V

    .line 683
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    .line 684
    sget-boolean v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez v0, :cond_44

    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListRadioLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRadioEmergencyNumberList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_44

    :catch_42
    move-exception p1

    goto :goto_67

    .line 688
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 689
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez p1, :cond_63

    .line 690
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRadioEmergencyNumberListAndNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 693
    :cond_63
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V
    :try_end_66
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_66} :catch_42

    return-void

    .line 695
    :goto_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRadioEmergencyNumberListAndNotify() Phone already destroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " EmergencyNumberList not notified"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :cond_80
    return-void
.end method

.method private blacklist writeUpdatedEmergencyNumberListMetrics(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_25

    .line 1290
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 1291
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1292
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberDbVersion()I

    move-result v3

    .line 1291
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeEmergencyNumberUpdateEvent(ILandroid/telephony/emergency/EmergencyNumber;I)V

    goto :goto_7

    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 1354
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Country Iso:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    const-string v1, " ========================================= "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Database Version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberDbVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    const-string v2, "mEmergencyNumberListDatabaseLocalLog:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1363
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListDatabaseLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1365
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    const-string v2, "mEmergencyNumberListRadioLocalLog:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1369
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListRadioLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1370
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1371
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    const-string v2, "mEmergencyNumberListPrefixLocalLog:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1375
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListPrefixLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1376
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1377
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    const-string v2, "mEmergencyNumberListTestModeLocalLog:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1381
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListTestModeLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1382
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1383
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    const-string v2, "mEmergencyNumberListLocalLog (valid >= 1.4 HAL):"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1387
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1388
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1389
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Emergency Number List for Phone("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1393
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1394
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1395
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist executeEmergencyNumberTestModeCommand(ILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1209
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist getEmergencyCallRouting(Ljava/lang/String;)I
    .registers 4

    .line 1003
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1004
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 1005
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x10

    .line 1006
    invoke-virtual {v0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1007
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result p0

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getEmergencyCountryIso()Ljava/lang/String;
    .registers 1

    .line 1015
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getEmergencyNumber(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;
    .registers 4

    .line 947
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 948
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 949
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getEmergencyNumberDbVersion()I
    .registers 1

    .line 1034
    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentDatabaseVersion:I

    return p0
.end method

.method public blacklist getEmergencyNumberList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_13

    .line 820
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListFromEccListDatabaseAndTest()Ljava/util/List;

    move-result-object v0

    .line 822
    :goto_13
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->shouldAdjustForRouting()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 823
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->adjustRoutingForEmergencyNumbers(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1e
    return-object v0
.end method

.method public blacklist getEmergencyNumberListTestMode()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 1265
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEmergencyNumberOtaDbVersion()I
    .registers 1

    .line 1038
    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCurrentOtaDatabaseVersion:I

    return p0
.end method

.method public blacklist getEmergencyNumbers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 967
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 968
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 969
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 970
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEmergencyNumbersProtoArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
    .registers 7

    .line 1336
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberOtaDbVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1337
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberDbVersion()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1338
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->shouldEmergencyNumberRoutingFromDbBeIgnored()Z

    move-result v2

    .line 1339
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v3

    .line 1340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "log emergency number list="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for otaVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", assetVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isDbRoutingIgnored="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 1342
    invoke-static {}, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->getInstance()Lcom/android/internal/telephony/metrics/EmergencyNumberStats;

    move-result-object p0

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->convertEmergencyNumbersListToProto(Ljava/util/List;IIZ)[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEmergencyServiceCategories(Ljava/lang/String;)I
    .registers 4

    .line 983
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 984
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 985
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    .line 986
    invoke-virtual {v0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v1, 0x2

    .line 987
    invoke-virtual {v0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 988
    :cond_30
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result p0

    return p0

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getLastKnownEmergencyCountryIso()Ljava/lang/String;
    .registers 1

    .line 1019
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mLastKnownEmergencyCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRadioEmergencyNumberList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 1270
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 244
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_82

    return-void

    .line 285
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_f

    const/4 p1, 0x0

    .line 286
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->overrideOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V

    return-void

    .line 288
    :cond_f
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->overrideOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V

    return-void

    .line 282
    :pswitch_15
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateOtaEmergencyNumberListDatabaseAndNotify()V

    return-void

    .line 274
    :pswitch_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_23

    .line 275
    const-string p1, "EVENT_UPDATE_EMERGENCY_NUMBER_PREFIX: Result from onCarrierConfigChanged is null."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 278
    :cond_23
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberPrefixAndNotify([Ljava/lang/String;)V

    return-void

    .line 265
    :pswitch_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_38

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_38

    .line 266
    const-string p1, "EVENT_UPDATE_EMERGENCY_NUMBER_TEST_MODE: Result from executeEmergencyNumberTestModeCommand is null."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 269
    :cond_38
    iget p1, p1, Landroid/os/Message;->arg1:I

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberListTestModeAndNotify(ILandroid/telephony/emergency/EmergencyNumber;)V

    return-void

    .line 257
    :pswitch_40
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_4a

    .line 258
    const-string p1, "EVENT_UPDATE_DB_COUNTRY_ISO_CHANGED: Result from UpdateCountryIso is null."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 261
    :cond_4a
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberListDatabaseAndNotify(Ljava/lang/String;)V

    return-void

    .line 246
    :pswitch_50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 247
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_5e

    .line 248
    const-string p1, "EVENT_UNSOL_EMERGENCY_NUMBER_LIST: Result from RIL is null."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void

    :cond_5e
    if-eqz v0, :cond_6a

    .line 249
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6a

    .line 250
    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateRadioEmergencyNumberListAndNotify(Ljava/util/List;)V

    return-void

    .line 252
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_UNSOL_EMERGENCY_NUMBER_LIST: Exception from RIL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_50
        :pswitch_40
        :pswitch_29
        :pswitch_19
        :pswitch_15
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist isEmergencyNumber(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 913
    :cond_4
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    .line 919
    :cond_b
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 921
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3b

    .line 922
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 923
    invoke-virtual {v3}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 924
    const-string p1, "Found in mEmergencyNumberList"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return v2

    :cond_3a
    return v0

    .line 930
    :cond_3b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumberFromEccList(Ljava/lang/String;)Z

    move-result v1

    .line 931
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumberFromDatabase(Ljava/lang/String;)Z

    move-result v3

    .line 932
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumberForTest(Ljava/lang/String;)Z

    move-result p1

    .line 933
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Search results - inRilEccList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " inEmergencyNumberDb:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " inEmergencyNumberTestList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    if-nez v1, :cond_73

    if-nez v3, :cond_73

    if-eqz p1, :cond_72

    goto :goto_73

    :cond_72
    return v0

    :cond_73
    :goto_73
    return v2
.end method

.method public blacklist isSimAbsent()Z
    .registers 8

    .line 310
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_3e

    aget-object v4, v0, v3

    .line 311
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3b

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found sim in slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return v2

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_3e
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist resetOtaEmergencyNumberDbFilePath()V
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 445
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 446
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist shouldDeterminingOfUrnsAndCategoriesWhileMergingIgnored()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist shouldEmergencyNumberRoutingFromDbBeIgnored()Z
    .registers 2

    .line 1314
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mResources:Landroid/content/res/Resources;

    const v0, 0x11102be

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist shouldModemConfigEmergencyNumbersBeIgnored()Z
    .registers 2

    .line 1302
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mResources:Landroid/content/res/Resources;

    const v0, 0x11102bf

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist updateEmergencyCountryIsoAllPhones(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIsCountrySetByAnotherSub:Z

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberDatabaseCountryChange(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    array-length v2, v1

    :goto_b
    if-ge v0, v2, :cond_43

    aget-object v3, v1, v0

    .line 350
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-ne v4, v5, :cond_1c

    goto :goto_40

    .line 354
    :cond_1c
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 355
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v3

    .line 357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 358
    invoke-virtual {v3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    iget-boolean v4, v3, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIsCountrySetByAnotherSub:Z

    if-eqz v4, :cond_40

    :cond_3a
    const/4 v4, 0x1

    .line 360
    iput-boolean v4, v3, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIsCountrySetByAnotherSub:Z

    .line 361
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberDatabaseCountryChange(Ljava/lang/String;)V

    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_43
    return-void
.end method

.method public blacklist updateEmergencyNumberDatabaseCountryChange(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    .line 416
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist updateOtaEmergencyNumberDatabase()V
    .registers 2

    const/4 v0, 0x5

    .line 425
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    const/4 v0, 0x6

    .line 434
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 436
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
