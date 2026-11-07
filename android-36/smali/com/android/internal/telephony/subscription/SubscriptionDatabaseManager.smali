.class public Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;
.super Landroid/os/Handler;
.source "SubscriptionDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEPRECATED_DATABASE_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist GROUP_SHARING_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SUBSCRIPTION_GET_METHOD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist SUBSCRIPTION_SET_BYTE_ARRAY_METHOD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;",
            "Ljava/lang/Integer;",
            "[B>;>;"
        }
    .end annotation
.end field

.field private static final blacklist SUBSCRIPTION_SET_INTEGER_METHOD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist SUBSCRIPTION_SET_STRING_METHOD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAllSubscriptionInfoInternalCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAsyncMode:Z

.field private final blacklist mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDatabaseInitialized:Z

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final blacklist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public static synthetic blacklist $r8$lambda$6SMw0FrEsILe8qSLbi1l_fv99kw(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$loadDatabaseInternal$8(Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9xjbwcqkE8t6EZ4Q_Vh2d8IXZLI(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$writeDatabaseAndCacheHelper$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EGcXLSTHJi4mL_8AsqP6LDJutEo(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 3

    .line 2823
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FBzoh4DIt5N1bjAxCtEq9MMpE-4(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$updateSubscription$5(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$J9DtxZxbdR6PUi7UUsn7-ukR49E(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$initializeDatabase$9()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KgSES8pz5Y6qvSemNC6VsN6y4Ug(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;ILandroid/content/ContentValues;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$updateDatabase$2(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$U2i2S50S6HdK6GMJkORMcA18h2w(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$removeSubscriptionInfo$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VVXvDmib5td0qdHpZQZEs9_nwi4(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$loadDatabaseInternal$7(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X-XowyHCSF5CToBJ4D9PLE152mM(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$setGroupDisabled$6(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_MItkPg7yoTJI8UO2V5poP-yA4o(Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .registers 2

    .line 2687
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getIccId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$cA5JcGLcEy2fDiz3abEi_suhPmw(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$insertSubscriptionInfo$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uFmcp_ZwUqTyVq6DkcHXAvJobAM(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;IZLcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;Landroid/content/ContentValues;Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 10

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$writeDatabaseAndCacheHelper$4(IZLcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;Landroid/content/ContentValues;Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 26

    const/16 v0, 0x4a

    .line 101
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda59;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda59;-><init>()V

    const-string v3, "_id"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v3, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda117;

    invoke-direct {v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda117;-><init>()V

    const-string v4, "icc_id"

    invoke-direct {v1, v4, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda128;

    invoke-direct {v4}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda128;-><init>()V

    const-string v5, "sim_id"

    invoke-direct {v1, v5, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v5, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda139;

    invoke-direct {v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda139;-><init>()V

    const-string v6, "display_name"

    invoke-direct {v1, v6, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda150;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda150;-><init>()V

    const-string v7, "carrier_name"

    invoke-direct {v1, v7, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v7, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda161;

    invoke-direct {v7}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda161;-><init>()V

    const-string v8, "name_source"

    invoke-direct {v1, v8, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x5

    aput-object v1, v0, v7

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v8, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda172;

    invoke-direct {v8}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda172;-><init>()V

    const-string v9, "color"

    invoke-direct {v1, v9, v8}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x6

    aput-object v1, v0, v8

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v9, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda183;

    invoke-direct {v9}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda183;-><init>()V

    const-string v10, "number"

    invoke-direct {v1, v10, v9}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x7

    aput-object v1, v0, v9

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v10, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda194;

    invoke-direct {v10}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda194;-><init>()V

    const-string v11, "data_roaming"

    invoke-direct {v1, v11, v10}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v10, 0x8

    aput-object v1, v0, v10

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v11, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda205;

    invoke-direct {v11}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda205;-><init>()V

    const-string v12, "mcc_string"

    invoke-direct {v1, v12, v11}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v11, 0x9

    aput-object v1, v0, v11

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v12, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda70;

    invoke-direct {v12}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda70;-><init>()V

    const-string v13, "mnc_string"

    invoke-direct {v1, v13, v12}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v12, 0xa

    aput-object v1, v0, v12

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v13, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda81;

    invoke-direct {v13}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda81;-><init>()V

    const-string v14, "ehplmns"

    invoke-direct {v1, v14, v13}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v13, 0xb

    aput-object v1, v0, v13

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v14, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda92;

    invoke-direct {v14}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda92;-><init>()V

    const-string v15, "hplmns"

    invoke-direct {v1, v15, v14}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v14, 0xc

    aput-object v1, v0, v14

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda103;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda103;-><init>()V

    move/from16 v16, v2

    const-string v2, "is_embedded"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda111;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda111;-><init>()V

    move/from16 v17, v2

    const-string v2, "card_id"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda112;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda112;-><init>()V

    move/from16 v18, v2

    const-string v2, "access_rules"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda113;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda113;-><init>()V

    move/from16 v19, v2

    const-string v2, "access_rules_from_carrier_configs"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda114;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda114;-><init>()V

    move/from16 v20, v2

    const-string v2, "is_removable"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda115;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda115;-><init>()V

    move/from16 v21, v2

    const-string v2, "enable_cmas_extreme_threat_alerts"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda116;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda116;-><init>()V

    move/from16 v22, v2

    const-string v2, "enable_cmas_severe_threat_alerts"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda118;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda118;-><init>()V

    move/from16 v23, v2

    const-string v2, "enable_cmas_amber_alerts"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda119;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda119;-><init>()V

    move/from16 v24, v2

    const-string v2, "enable_emergency_alerts"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda120;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda120;-><init>()V

    move/from16 v25, v2

    const-string v2, "alert_sound_duration"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda121;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda121;-><init>()V

    const-string v15, "alert_reminder_interval"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda122;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda122;-><init>()V

    const-string v15, "enable_alert_vibrate"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda123;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda123;-><init>()V

    const-string v15, "enable_alert_speech"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda124;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda124;-><init>()V

    const-string v15, "enable_etws_test_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda125;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda125;-><init>()V

    const-string v15, "enable_channel_50_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda126;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda126;-><init>()V

    const-string v15, "enable_cmas_test_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda127;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda127;-><init>()V

    const-string v15, "show_cmas_opt_out_dialog"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda129;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda129;-><init>()V

    const-string v15, "volte_vt_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda130;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda130;-><init>()V

    const-string v15, "vt_ims_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda131;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda131;-><init>()V

    const-string v15, "wfc_ims_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda132;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda132;-><init>()V

    const-string v15, "wfc_ims_mode"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda133;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda133;-><init>()V

    const-string v15, "wfc_ims_roaming_mode"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda134;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda134;-><init>()V

    const-string v15, "wfc_ims_roaming_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda135;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda135;-><init>()V

    const-string v15, "is_opportunistic"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda136;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda136;-><init>()V

    const-string v15, "group_uuid"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda137;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda137;-><init>()V

    const-string v15, "iso_country_code"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda138;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda138;-><init>()V

    const-string v15, "carrier_id"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda140;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda140;-><init>()V

    const-string v15, "profile_class"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda141;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda141;-><init>()V

    const-string v15, "subscription_type"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda142;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda142;-><init>()V

    const-string v15, "group_owner"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda143;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda143;-><init>()V

    const-string v15, "enabled_mobile_data_policies"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda144;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda144;-><init>()V

    const-string v15, "imsi"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda145;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda145;-><init>()V

    const-string v15, "uicc_applications_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda146;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda146;-><init>()V

    const-string v15, "ims_rcs_uce_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda147;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda147;-><init>()V

    const-string v15, "cross_sim_calling_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda148;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda148;-><init>()V

    const-string v15, "rcs_config"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda149;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda149;-><init>()V

    const-string v15, "allowed_network_types_for_reasons"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda151;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda151;-><init>()V

    const-string v15, "d2d_sharing_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda152;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda152;-><init>()V

    const-string v15, "voims_opt_in_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda153;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda153;-><init>()V

    const-string v15, "d2d_sharing_contacts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda154;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda154;-><init>()V

    const-string v15, "nr_advanced_calling_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda155;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda155;-><init>()V

    const-string v15, "phone_number_source_carrier"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda156;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda156;-><init>()V

    const-string v15, "phone_number_source_ims"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda157;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda157;-><init>()V

    const-string v15, "port_index"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda158;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda158;-><init>()V

    const-string v15, "usage_setting"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda159;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda159;-><init>()V

    const-string v15, "tp_message_ref"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda160;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda160;-><init>()V

    const-string v15, "user_handle"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda162;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda162;-><init>()V

    const-string v15, "satellite_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda163;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda163;-><init>()V

    const-string v15, "satellite_attach_enabled_for_carrier"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda164;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda164;-><init>()V

    const-string v15, "is_only_ntn"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda165;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda165;-><init>()V

    const-string v15, "service_capabilities"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda166;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda166;-><init>()V

    const-string v15, "transfer_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda167;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda167;-><init>()V

    const-string v15, "satellite_entitlement_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda168;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda168;-><init>()V

    const-string v15, "satellite_entitlement_plmns"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda169;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda169;-><init>()V

    const-string v15, "satellite_esos_supported"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda170;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda170;-><init>()V

    const-string v15, "is_satellite_provisioned_for_non_ip_datagram"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda171;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda171;-><init>()V

    const-string v15, "satellite_entitlement_barred_plmns"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda173;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda173;-><init>()V

    const-string v15, "satellite_entitlement_data_plan_plmns"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x46

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda174;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda174;-><init>()V

    const-string v15, "satellite_entitlement_service_type_map"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x47

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda175;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda175;-><init>()V

    const-string v15, "satellite_entitlement_data_service_policy"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x48

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda176;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda176;-><init>()V

    const-string v15, "satellite_entitlement_voice_service_policy"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x49

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_GET_METHOD_MAP:Ljava/util/Map;

    const/16 v0, 0x2e

    .line 331
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda177;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda177;-><init>()V

    const-string v15, "sim_id"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v16

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda178;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda178;-><init>()V

    const-string v15, "name_source"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda179;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda179;-><init>()V

    const-string v15, "color"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda180;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda180;-><init>()V

    const-string v15, "data_roaming"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda181;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda181;-><init>()V

    const-string v15, "is_embedded"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda182;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda182;-><init>()V

    const-string v15, "is_removable"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda184;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda184;-><init>()V

    const-string v15, "enable_cmas_extreme_threat_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v8

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda185;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda185;-><init>()V

    const-string v15, "enable_cmas_severe_threat_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v9

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda186;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda186;-><init>()V

    const-string v15, "enable_cmas_amber_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v10

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda187;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda187;-><init>()V

    const-string v15, "enable_emergency_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v11

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda188;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda188;-><init>()V

    const-string v15, "alert_sound_duration"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v12

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda189;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda189;-><init>()V

    const-string v15, "alert_reminder_interval"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v13

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda190;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda190;-><init>()V

    const-string v15, "enable_alert_vibrate"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v14

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda191;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda191;-><init>()V

    const-string v15, "enable_alert_speech"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v17

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda192;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda192;-><init>()V

    const-string v15, "enable_etws_test_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v18

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda193;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda193;-><init>()V

    const-string v15, "enable_channel_50_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v19

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda195;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda195;-><init>()V

    const-string v15, "enable_cmas_test_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v20

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda196;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda196;-><init>()V

    const-string v15, "show_cmas_opt_out_dialog"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v21

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda197;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda197;-><init>()V

    const-string v15, "volte_vt_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v22

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda198;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda198;-><init>()V

    const-string v15, "vt_ims_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v23

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda199;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda199;-><init>()V

    const-string v15, "wfc_ims_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v24

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda200;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda200;-><init>()V

    const-string v15, "wfc_ims_mode"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v25

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda201;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda201;-><init>()V

    const-string v15, "wfc_ims_roaming_mode"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda202;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda202;-><init>()V

    const-string v15, "wfc_ims_roaming_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda203;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda203;-><init>()V

    const-string v15, "is_opportunistic"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda204;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda204;-><init>()V

    const-string v15, "carrier_id"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda60;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda60;-><init>()V

    const-string v15, "profile_class"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda61;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda61;-><init>()V

    const-string v15, "subscription_type"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda62;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda62;-><init>()V

    const-string v15, "uicc_applications_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda63;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda63;-><init>()V

    const-string v15, "ims_rcs_uce_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda64;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda64;-><init>()V

    const-string v15, "cross_sim_calling_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda65;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda65;-><init>()V

    const-string v15, "d2d_sharing_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda66;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda66;-><init>()V

    const-string v15, "voims_opt_in_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda67;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda67;-><init>()V

    const-string v15, "nr_advanced_calling_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda68;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda68;-><init>()V

    const-string v15, "port_index"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda69;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda69;-><init>()V

    const-string v15, "usage_setting"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda71;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda71;-><init>()V

    const-string v15, "tp_message_ref"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda72;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda72;-><init>()V

    const-string v15, "user_handle"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda73;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda73;-><init>()V

    const-string v15, "satellite_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda74;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda74;-><init>()V

    const-string v15, "satellite_attach_enabled_for_carrier"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda75;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda75;-><init>()V

    const-string v15, "is_only_ntn"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda76;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda76;-><init>()V

    const-string v15, "service_capabilities"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda77;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda77;-><init>()V

    const-string v15, "transfer_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda78;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda78;-><init>()V

    const-string v15, "satellite_entitlement_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda79;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda79;-><init>()V

    const-string v15, "satellite_esos_supported"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda80;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda80;-><init>()V

    const-string v15, "is_satellite_provisioned_for_non_ip_datagram"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_SET_INTEGER_METHOD_MAP:Ljava/util/Map;

    const/16 v0, 0x18

    .line 477
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda82;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda82;-><init>()V

    const-string v15, "icc_id"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v16

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda83;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda83;-><init>()V

    const-string v15, "display_name"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda84;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda84;-><init>()V

    const-string v15, "carrier_name"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda85;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda85;-><init>()V

    const-string v15, "number"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda86;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda86;-><init>()V

    const-string v15, "mcc_string"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda87;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda87;-><init>()V

    const-string v6, "mnc_string"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda88;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda88;-><init>()V

    const-string v6, "ehplmns"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v8

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda89;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda89;-><init>()V

    const-string v6, "hplmns"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v9

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda90;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda90;-><init>()V

    const-string v6, "card_id"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v10

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda91;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda91;-><init>()V

    const-string v6, "group_uuid"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v11

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda93;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda93;-><init>()V

    const-string v6, "iso_country_code"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v12

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda94;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda94;-><init>()V

    const-string v6, "group_owner"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v13

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda95;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda95;-><init>()V

    const-string v6, "enabled_mobile_data_policies"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v14

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda96;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda96;-><init>()V

    const-string v6, "imsi"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v17

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda97;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda97;-><init>()V

    const-string v6, "allowed_network_types_for_reasons"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v18

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda98;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda98;-><init>()V

    const-string v6, "d2d_sharing_contacts"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v19

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda99;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda99;-><init>()V

    const-string v6, "phone_number_source_carrier"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v20

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda100;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda100;-><init>()V

    const-string v6, "phone_number_source_ims"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v21

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda101;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda101;-><init>()V

    const-string v6, "satellite_entitlement_plmns"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v22

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda102;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda102;-><init>()V

    const-string v6, "satellite_entitlement_barred_plmns"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v23

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda104;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda104;-><init>()V

    const-string v6, "satellite_entitlement_data_plan_plmns"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v24

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda105;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda105;-><init>()V

    const-string v6, "satellite_entitlement_service_type_map"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v25

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda106;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda106;-><init>()V

    const-string v6, "satellite_entitlement_data_service_policy"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda107;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda107;-><init>()V

    const-string v6, "satellite_entitlement_voice_service_policy"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_SET_STRING_METHOD_MAP:Ljava/util/Map;

    .line 557
    new-array v0, v5, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda108;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda108;-><init>()V

    const-string v5, "access_rules"

    invoke-direct {v1, v5, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v16

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda109;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda109;-><init>()V

    const-string v5, "access_rules_from_carrier_configs"

    invoke-direct {v1, v5, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda110;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda110;-><init>()V

    const-string v3, "rcs_config"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_SET_BYTE_ARRAY_METHOD_MAP:Ljava/util/Map;

    .line 576
    const-string v21, "satellite_enabled"

    const-string v22, "satellite_attach_enabled_for_carrier"

    const-string v1, "display_name"

    const-string v2, "name_source"

    const-string v3, "color"

    const-string v4, "data_roaming"

    const-string v5, "volte_vt_enabled"

    const-string v6, "vt_ims_enabled"

    const-string v7, "wfc_ims_enabled"

    const-string v8, "wfc_ims_mode"

    const-string v9, "wfc_ims_roaming_mode"

    const-string v10, "wfc_ims_roaming_enabled"

    const-string v11, "enabled_mobile_data_policies"

    const-string v12, "uicc_applications_enabled"

    const-string v13, "ims_rcs_uce_enabled"

    const-string v14, "cross_sim_calling_enabled"

    const-string v15, "rcs_config"

    const-string v16, "d2d_sharing_status"

    const-string v17, "voims_opt_in_status"

    const-string v18, "d2d_sharing_contacts"

    const-string v19, "nr_advanced_calling_enabled"

    const-string v20, "user_handle"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->GROUP_SHARING_COLUMNS:Ljava/util/Set;

    .line 605
    const-string v6, "data_enabled_override_rules"

    const-string v7, "allowed_network_types"

    const-string v1, "display_number_format"

    const-string v2, "mcc"

    const-string v3, "mnc"

    const-string v4, "sim_provisioning_status"

    const-string v5, "is_metered"

    invoke-static/range {v1 .. v7}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->DEPRECATED_DATABASE_COLUMNS:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;)V
    .registers 6

    .line 719
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 635
    new-instance p2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 642
    new-instance p2, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 653
    new-instance p2, Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    const/4 p2, 0x0

    .line 659
    iput-boolean p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mDatabaseInitialized:Z

    .line 720
    const-string p2, "Created SubscriptionDatabaseManager."

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->log(Ljava/lang/String;)V

    .line 721
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    .line 722
    iput-object p4, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    .line 723
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 724
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110259

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAsyncMode:Z

    .line 726
    iput-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 727
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->initializeDatabase()V

    return-void
.end method

.method private blacklist createDeltaContentValues(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/content/ContentValues;
    .registers 7

    .line 841
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 843
    invoke-static {}, Landroid/provider/Telephony$SimInfo;->getAllColumns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 844
    sget-object v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->DEPRECATED_DATABASE_COLUMNS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_d

    .line 846
    :cond_22
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_d

    .line 847
    :cond_2b
    invoke-static {p2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoFieldByColumnName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    if-eqz p1, :cond_38

    .line 851
    invoke-static {p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoFieldByColumnName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    .line 855
    :goto_39
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 856
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_43
    return-object p0
.end method

.method private blacklist createSubscriptionInfoFromCursor(Landroid/database/Cursor;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    .registers 5

    .line 2436
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>()V

    .line 2437
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2439
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "icc_id"

    .line 2440
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "sim_id"

    .line 2442
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSimSlotIndex(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "display_name"

    .line 2444
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDisplayName(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "carrier_name"

    .line 2446
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCarrierName(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "name_source"

    .line 2448
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDisplayNameSource(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "color"

    .line 2450
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setIconTint(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "number"

    .line 2452
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setNumber(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "data_roaming"

    .line 2454
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDataRoaming(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "mcc_string"

    .line 2456
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setMcc(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "mnc_string"

    .line 2458
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setMnc(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "ehplmns"

    .line 2460
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setEhplmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "hplmns"

    .line 2462
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setHplmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "is_embedded"

    .line 2464
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setEmbedded(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2467
    const-string v1, "card_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2469
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCardString(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2471
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result p0

    .line 2473
    const-string v1, "access_rules"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_10e

    .line 2475
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setNativeAccessRules([B)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2478
    :cond_10e
    const-string v1, "access_rules_from_carrier_configs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_11d

    .line 2481
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCarrierConfigAccessRules([B)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2484
    :cond_11d
    const-string v1, "rcs_config"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_12c

    .line 2486
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setRcsConfig([B)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2489
    :cond_12c
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCardId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "is_removable"

    .line 2490
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setRemovableEmbedded(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_cmas_extreme_threat_alerts"

    .line 2493
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2492
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastExtremeThreatAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_cmas_severe_threat_alerts"

    .line 2495
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2494
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastSevereThreatAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_cmas_amber_alerts"

    .line 2496
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastAmberAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_emergency_alerts"

    .line 2498
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastEmergencyAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "alert_sound_duration"

    .line 2500
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastAlertSoundDuration(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "alert_reminder_interval"

    .line 2502
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastAlertReminderInterval(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_alert_vibrate"

    .line 2504
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastAlertVibrationEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_alert_speech"

    .line 2506
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastAlertSpeechEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_etws_test_alerts"

    .line 2508
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastEtwsTestAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_channel_50_alerts"

    .line 2510
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastAreaInfoMessageEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_cmas_test_alerts"

    .line 2512
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastTestAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "show_cmas_opt_out_dialog"

    .line 2514
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastOptOutDialogEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "volte_vt_enabled"

    .line 2516
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setEnhanced4GModeEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "vt_ims_enabled"

    .line 2518
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setVideoTelephonyEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "wfc_ims_enabled"

    .line 2520
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setWifiCallingEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "wfc_ims_mode"

    .line 2522
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setWifiCallingMode(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "wfc_ims_roaming_mode"

    .line 2524
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setWifiCallingModeForRoaming(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "wfc_ims_roaming_enabled"

    .line 2526
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setWifiCallingEnabledForRoaming(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "is_opportunistic"

    .line 2528
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setOpportunistic(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "group_uuid"

    .line 2530
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setGroupUuid(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "iso_country_code"

    .line 2532
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCountryIso(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "carrier_id"

    .line 2534
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCarrierId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "profile_class"

    .line 2536
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setProfileClass(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "subscription_type"

    .line 2538
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setType(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "group_owner"

    .line 2540
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setGroupOwner(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enabled_mobile_data_policies"

    .line 2543
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2542
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setEnabledMobileDataPolicies(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "imsi"

    .line 2545
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setImsi(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "uicc_applications_enabled"

    .line 2547
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setUiccApplicationsEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "ims_rcs_uce_enabled"

    .line 2549
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setRcsUceEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "cross_sim_calling_enabled"

    .line 2551
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCrossSimCallingEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "allowed_network_types_for_reasons"

    .line 2554
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2553
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setAllowedNetworkTypesForReasons(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "d2d_sharing_status"

    .line 2557
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2556
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDeviceToDeviceStatusSharingPreference(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "voims_opt_in_status"

    .line 2559
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setVoImsOptInEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "d2d_sharing_contacts"

    .line 2562
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2561
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "nr_advanced_calling_enabled"

    .line 2564
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setNrAdvancedCallingEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "phone_number_source_carrier"

    .line 2567
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2566
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setNumberFromCarrier(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "phone_number_source_ims"

    .line 2570
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2569
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setNumberFromIms(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "port_index"

    .line 2572
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setPortIndex(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "usage_setting"

    .line 2574
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setUsageSetting(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "tp_message_ref"

    .line 2576
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setLastUsedTPMessageReference(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "user_handle"

    .line 2578
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setUserId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_enabled"

    .line 2580
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_attach_enabled_for_carrier"

    .line 2583
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2582
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteAttachEnabledForCarrier(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "service_capabilities"

    .line 2586
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2585
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setServiceCapabilities(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_status"

    .line 2589
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2588
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteEntitlementStatus(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_plmns"

    .line 2592
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2591
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteEntitlementPlmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "is_satellite_provisioned_for_non_ip_datagram"

    .line 2595
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2594
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setIsSatelliteProvisionedForNonIpDatagram(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_barred_plmns"

    .line 2598
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2597
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteEntitlementBarredPlmnsList(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_data_plan_plmns"

    .line 2601
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2600
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteEntitlementDataPlanForPlmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_service_type_map"

    .line 2604
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2603
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteEntitlementPlmnServiceTypes(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_data_service_policy"

    .line 2607
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2606
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatellitePlmnsDataServicePolicy(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_voice_service_policy"

    .line 2610
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2609
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatellitePlmnsVoiceServicePolicy(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2612
    const-string p0, "is_only_ntn"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setOnlyNonTerrestrialNetwork(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2615
    const-string p0, "transfer_status"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setTransferStatus(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2619
    const-string p0, "satellite_esos_supported"

    .line 2620
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 2619
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteESOSSupported(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2622
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSubscriptionInfoFieldByColumnName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 748
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_GET_METHOD_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 749
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 751
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid column name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist initializeDatabase()V
    .registers 3

    .line 2408
    iget-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAsyncMode:Z

    if-eqz v0, :cond_d

    .line 2410
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2419
    :cond_d
    monitor-enter p0

    .line 2420
    :try_start_e
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->loadDatabaseInternal()V

    const/4 v0, 0x1

    .line 2421
    iput-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mDatabaseInitialized:Z

    .line 2422
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 2423
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_23

    throw v0
.end method

.method private blacklist insertNewRecordIntoDatabaseSync(Landroid/content/ContentValues;)I
    .registers 6

    .line 872
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 874
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 875
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 876
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertNewRecordIntoDatabaseSync: contentValues="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logv(Ljava/lang/String;)V

    .line 878
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertNewRecordIntoDatabaseSync: Successfully added subscription. subId="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 878
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logl(Ljava/lang/String;)V

    return v1

    .line 884
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertNewRecordIntoDatabaseSync: Failed to insert subscription into database. contentValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logel(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private synthetic blacklist lambda$initializeDatabase$9()V
    .registers 3

    .line 2411
    monitor-enter p0

    .line 2412
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->loadDatabaseInternal()V

    const/4 v0, 0x1

    .line 2413
    iput-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mDatabaseInitialized:Z

    .line 2414
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 2415
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private synthetic blacklist lambda$insertSubscriptionInfo$0(I)V
    .registers 2

    .line 935
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->onSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$loadDatabaseInternal$7(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 2

    .line 2383
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    .line 2384
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p1

    .line 2383
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->onSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$loadDatabaseInternal$8(Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 4

    .line 2396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$removeSubscriptionInfo$1(I)V
    .registers 2

    .line 964
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->onSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$setGroupDisabled$6(I)V
    .registers 2

    .line 2147
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->onSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateDatabase$2(ILandroid/content/ContentValues;)V
    .registers 6

    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 991
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 990
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDatabase: async updated subscription in the database. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", contentValues= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {p2}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 992
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logv(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSubscription$5(I)V
    .registers 2

    .line 1099
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->onSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$writeDatabaseAndCacheHelper$3(I)V
    .registers 2

    .line 1065
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->onSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$writeDatabaseAndCacheHelper$4(IZLcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;Landroid/content/ContentValues;Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 11

    .line 1042
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_20

    if-eqz p2, :cond_79

    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_79

    .line 1043
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p9}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_79

    .line 1045
    :cond_20
    invoke-static {p9, p4}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoFieldByColumnName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_79

    .line 1047
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "writeDatabaseAndCacheHelper: subId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",columnName="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", newValue="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logv(Ljava/lang/String;)V

    .line 1052
    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {p2, p9}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    .line 1057
    invoke-interface {p6, p2, p5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1060
    invoke-virtual {p7, p4, p5}, Landroid/content/ContentValues;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1061
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p0, p3, p7}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->updateDatabase(ILandroid/content/ContentValues;)I

    move-result p3

    if-lez p3, :cond_79

    .line 1063
    iget-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p2

    invoke-interface {p3, p8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    new-instance p3, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda233;

    invoke-direct {p3, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda233;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    :cond_79
    return-void
.end method

.method private blacklist loadDatabaseInternal()V
    .registers 8

    .line 2370
    const-string v0, "loadDatabaseInternal"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logl(Ljava/lang/String;)V

    .line 2371
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2373
    :try_start_15
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_a1

    .line 2375
    :try_start_1e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :cond_24
    :goto_24
    if-eqz v1, :cond_5d

    .line 2378
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 2379
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->createSubscriptionInfoFromCursor(Landroid/database/Cursor;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v3

    .line 2380
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    .line 2382
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2381
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 2383
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    new-instance v4, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda43;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda43;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    goto :goto_24

    :catchall_5b
    move-exception v0

    goto :goto_a4

    :cond_5d
    if-eqz v2, :cond_92

    .line 2390
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2391
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " records from the subscription database."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logl(Ljava/lang/String;)V

    .line 2395
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda44;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_92
    .catchall {:try_start_1e .. :try_end_92} :catchall_5b

    .line 2399
    :cond_92
    :try_start_92
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_a1

    if-eqz v1, :cond_a0

    .line 2401
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a0
    return-void

    :catchall_a1
    move-exception v0

    move-object p0, v0

    goto :goto_ae

    .line 2399
    :goto_a4
    :try_start_a4
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2400
    throw v0
    :try_end_ae
    .catchall {:try_start_a4 .. :try_end_ae} :catchall_a1

    :goto_ae
    if-eqz v1, :cond_b8

    .line 2371
    :try_start_b0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b4

    goto :goto_b8

    :catchall_b4
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b8
    :goto_b8
    throw p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 2766
    const-string p0, "SDMGR"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 2775
    const-string p0, "SDMGR"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logel(Ljava/lang/String;)V
    .registers 2

    .line 2793
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->loge(Ljava/lang/String;)V

    .line 2794
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 2803
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->log(Ljava/lang/String;)V

    .line 2804
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method private blacklist updateDatabase(ILandroid/content/ContentValues;)I
    .registers 5

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDatabase: prepare to update sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logv(Ljava/lang/String;)V

    .line 979
    monitor-enter p0

    .line 980
    :try_start_15
    iget-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mDatabaseInitialized:Z

    if-nez v0, :cond_32

    .line 981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateDatabase: Database has not been initialized. Can\'t update database at this point. contentValues="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logel(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 983
    monitor-exit p0

    return p1

    :catchall_30
    move-exception p1

    goto :goto_77

    .line 985
    :cond_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_30

    .line 987
    iget-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAsyncMode:Z

    if-eqz v0, :cond_41

    .line 989
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda232;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda232;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;ILandroid/content/ContentValues;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    .line 997
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDatabase: sync updated subscription in the database. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contentValues= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {p2}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logv(Ljava/lang/String;)V

    .line 1000
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 1001
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1000
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    .line 985
    :goto_77
    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_30

    throw p1
.end method

.method private blacklist writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;",
            "TT;",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;",
            ">;)V"
        }
    .end annotation

    .line 1024
    const-string v0, ", columnName="

    const-string v1, "Subscription doesn\'t exist. subId="

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1027
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1029
    :try_start_12
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    .line 1030
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    if-eqz v6, :cond_46

    .line 1039
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->GROUP_SHARING_COLUMNS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_43

    move-object v3, p0

    move v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    :try_start_30
    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;IZLcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;Landroid/content/ContentValues;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_40

    .line 1071
    iget-object p0, v3, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_40
    move-exception v0

    :goto_41
    move-object p0, v0

    goto :goto_7c

    :catchall_43
    move-exception v0

    move-object v3, p0

    goto :goto_41

    :cond_46
    move-object v3, p0

    move v4, p1

    move-object v7, p2

    .line 1032
    :try_start_49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logel(Ljava/lang/String;)V

    .line 1033
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7c
    .catchall {:try_start_49 .. :try_end_7c} :catchall_40

    .line 1071
    :goto_7c
    iget-object p1, v3, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1072
    throw p0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 2816
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2818
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2819
    const-string v1, "All subscriptions:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2820
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2821
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2823
    :try_start_35
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda206;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda206;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_ac

    .line 2825
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2827
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2828
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 2829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAsyncMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAsyncMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2830
    monitor-enter p0

    .line 2831
    :try_start_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDatabaseInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mDatabaseInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2832
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_65 .. :try_end_7c} :catchall_a9

    .line 2833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReadWriteLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 2835
    const-string v1, "Local log:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2837
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2838
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2839
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void

    :catchall_a9
    move-exception p1

    .line 2832
    :try_start_aa
    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw p1

    :catchall_ac
    move-exception p1

    .line 2825
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2826
    throw p1
.end method

.method public blacklist getAllSubscriptions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;",
            ">;"
        }
    .end annotation

    .line 2668
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2670
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 2672
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_1e
    move-exception v0

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2673
    throw v0
.end method

.method public blacklist getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    .registers 3

    .line 2655
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2657
    :try_start_9
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1f

    .line 2659
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_1f
    move-exception p1

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2660
    throw p1
.end method

.method public blacklist getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    .registers 4

    .line 2684
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2686
    :try_start_9
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;)V

    .line 2687
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 2688
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 2689
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_31

    .line 2691
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_31
    move-exception p1

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2692
    throw p1
.end method

.method public blacklist getSubscriptionProperty(ILjava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 768
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 774
    invoke-static {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoFieldByColumnName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 770
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist insertSubscriptionInfo(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .registers 6

    .line 900
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 907
    monitor-enter p0

    .line 908
    :try_start_e
    iget-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mDatabaseInitialized:Z

    if-eqz v0, :cond_74

    .line 913
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_72

    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 922
    :try_start_1d
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->createDeltaContentValues(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->insertNewRecordIntoDatabaseSync(Landroid/content/ContentValues;)I

    move-result v0

    if-lez v0, :cond_40

    .line 924
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    .line 926
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    .line 924
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :catchall_3e
    move-exception p1

    goto :goto_68

    .line 928
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertSubscriptionInfo: Failed to insert a new subscription. subInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logel(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_1d .. :try_end_54} :catchall_3e

    .line 932
    :goto_54
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 935
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return v0

    .line 932
    :goto_68
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 933
    throw p1

    :catchall_72
    move-exception p1

    goto :goto_7c

    .line 909
    :cond_74
    :try_start_74
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Database has not been initialized. Can\'t insert new record at this point."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 913
    :goto_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_72

    throw p1

    .line 903
    :cond_7e
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertSubscriptionInfo: Not a new subscription to insert. subInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist reloadDatabaseSync()V
    .registers 2

    .line 2361
    const-string v0, "reloadDatabaseSync"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logl(Ljava/lang/String;)V

    .line 2363
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->loadDatabaseInternal()V

    return-void
.end method

.method public blacklist removeSubscriptionInfo(I)V
    .registers 6

    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 953
    :try_start_15
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    .line 955
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 953
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_39

    .line 956
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :catchall_37
    move-exception p1

    goto :goto_61

    .line 958
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove subscription with subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logel(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_15 .. :try_end_4d} :catchall_37

    .line 961
    :goto_4d
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda226;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda226;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void

    .line 961
    :goto_61
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 962
    throw p1

    .line 948
    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist serializeMapListToJsonString(Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2742
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_6e

    .line 2743
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_6e

    .line 2747
    :cond_e
    :try_start_e
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2748
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 2749
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2750
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_31

    :catch_45
    move-exception p1

    goto :goto_51

    .line 2752
    :cond_47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_50} :catch_45

    goto :goto_16

    .line 2755
    :goto_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serializeMapListToCV JSON error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->loge(Ljava/lang/String;)V

    .line 2757
    :cond_69
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2744
    :cond_6e
    :goto_6e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist serializeMapToJsonString(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2721
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_4e

    .line 2722
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4e

    .line 2726
    :cond_e
    :try_start_e
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2727
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_2f} :catch_30

    goto :goto_16

    :catch_30
    move-exception p1

    .line 2730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serializeMapToCV JSON error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->loge(Ljava/lang/String;)V

    .line 2732
    :cond_49
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2723
    :cond_4e
    :goto_4e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setAllowedNetworkTypesForReasons(ILjava/lang/String;)V
    .registers 5

    .line 1924
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1925
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "allowed_network_types_for_reasons"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCardId(II)V
    .registers 6

    .line 1364
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1366
    :try_start_9
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    if-eqz v0, :cond_39

    .line 1371
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    .line 1373
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCardId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p2

    .line 1371
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_37

    .line 1375
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_37
    move-exception p1

    goto :goto_50

    .line 1368
    :cond_39
    :try_start_39
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCardId: Subscription doesn\'t exist. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_50
    .catchall {:try_start_39 .. :try_end_50} :catchall_37

    .line 1375
    :goto_50
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1376
    throw p1
.end method

.method public blacklist setCardString(ILjava/lang/String;)V
    .registers 5

    .line 1343
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1345
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setCardId(II)V

    .line 1346
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "card_id"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCarrierConfigAccessRules(I[B)V
    .registers 5

    .line 1404
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1405
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda211;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda211;-><init>()V

    const-string v1, "access_rules_from_carrier_configs"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCarrierConfigAccessRules(I[Landroid/telephony/UiccAccessRule;)V
    .registers 5

    .line 1421
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1422
    invoke-static {p2}, Landroid/telephony/UiccAccessRule;->encodeRules([Landroid/telephony/UiccAccessRule;)[B

    move-result-object p2

    .line 1423
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda211;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda211;-><init>()V

    const-string v1, "access_rules_from_carrier_configs"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCarrierId(II)V
    .registers 5

    .line 1768
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "carrier_id"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCarrierName(ILjava/lang/String;)V
    .registers 5

    .line 1159
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1160
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda216;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda216;-><init>()V

    const-string v1, "carrier_name"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastAlertReminderInterval(II)V
    .registers 5

    .line 1529
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda23;-><init>()V

    .line 1528
    const-string v1, "alert_reminder_interval"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastAlertSoundDuration(II)V
    .registers 5

    .line 1515
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda16;-><init>()V

    .line 1514
    const-string v1, "alert_sound_duration"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastAlertSpeechEnabled(II)V
    .registers 5

    .line 1557
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda212;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda212;-><init>()V

    const-string v1, "enable_alert_speech"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastAlertVibrationEnabled(II)V
    .registers 5

    .line 1543
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda214;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda214;-><init>()V

    const-string v1, "enable_alert_vibrate"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastAmberAlertEnabled(II)V
    .registers 5

    .line 1485
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "enable_cmas_amber_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastAreaInfoMessageEnabled(II)V
    .registers 5

    .line 1587
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda36;-><init>()V

    .line 1586
    const-string v1, "enable_channel_50_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastEmergencyAlertEnabled(II)V
    .registers 5

    .line 1501
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda34;-><init>()V

    .line 1500
    const-string v1, "enable_emergency_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastEtwsTestAlertEnabled(II)V
    .registers 5

    .line 1572
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda56;-><init>()V

    .line 1571
    const-string v1, "enable_etws_test_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastExtremeThreatAlertEnabled(II)V
    .registers 5

    .line 1455
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda2;-><init>()V

    .line 1454
    const-string v1, "enable_cmas_extreme_threat_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastOptOutDialogEnabled(II)V
    .registers 5

    .line 1613
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "show_cmas_opt_out_dialog"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastSevereThreatAlertEnabled(II)V
    .registers 5

    .line 1471
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda18;-><init>()V

    .line 1470
    const-string v1, "enable_cmas_severe_threat_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastTestAlertEnabled(II)V
    .registers 5

    .line 1600
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "enable_cmas_test_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCountryIso(ILjava/lang/String;)V
    .registers 5

    .line 1752
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1753
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "iso_country_code"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCrossSimCallingEnabled(II)V
    .registers 5

    .line 1894
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda50;-><init>()V

    .line 1893
    const-string v1, "cross_sim_calling_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setDataRoaming(II)V
    .registers 5

    .line 1217
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda215;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda215;-><init>()V

    const-string v1, "data_roaming"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setDeviceToDeviceStatusSharingContacts(ILjava/lang/String;)V
    .registers 5

    .line 1969
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1970
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "d2d_sharing_contacts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setDeviceToDeviceStatusSharingPreference(II)V
    .registers 5

    .line 1941
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda10;-><init>()V

    .line 1940
    const-string v1, "d2d_sharing_status"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setDisplayName(ILjava/lang/String;)V
    .registers 5

    .line 1144
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1145
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "display_name"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setDisplayNameSource(II)V
    .registers 5

    .line 1175
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "name_source"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setEhplmns(ILjava/lang/String;)V
    .registers 5

    .line 1273
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1274
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda209;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda209;-><init>()V

    const-string v1, "ehplmns"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setEhplmns(I[Ljava/lang/String;)V
    .registers 4

    .line 1258
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1259
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda15;-><init>()V

    .line 1260
    invoke-static {v0}, Ljava/util/function/Predicate;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    const-string v0, ","

    .line 1261
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1259
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setEhplmns(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setEmbedded(II)V
    .registers 5

    .line 1316
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "is_embedded"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setEmbedded(IZ)V
    .registers 3

    .line 1329
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setEmbedded(II)V

    return-void
.end method

.method public blacklist setEnabledMobileDataPolicies(ILjava/lang/String;)V
    .registers 5

    .line 1823
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1824
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "enabled_mobile_data_policies"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setEnhanced4GModeEnabled(II)V
    .registers 5

    .line 1627
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda29;-><init>()V

    .line 1626
    const-string v1, "volte_vt_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setGroupDisabled(IZ)V
    .registers 8

    .line 2130
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2132
    :try_start_9
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    if-eqz v0, :cond_53

    .line 2137
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isGroupDisabled()Z

    move-result v1

    if-eq v1, p2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 2138
    :goto_20
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    .line 2140
    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setGroupDisabled(Z)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p2

    .line 2138
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_51

    .line 2142
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v1, :cond_50

    .line 2146
    const-string p2, "setGroupDisabled value changed, firing the callback"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->log(Ljava/lang/String;)V

    .line 2147
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda54;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda54;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    :cond_50
    return-void

    :catchall_51
    move-exception p1

    goto :goto_6a

    .line 2134
    :cond_53
    :try_start_53
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGroupDisabled: Subscription doesn\'t exist. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_51

    .line 2142
    :goto_6a
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2143
    throw p1
.end method

.method public blacklist setGroupOwner(ILjava/lang/String;)V
    .registers 5

    .line 1809
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1810
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda221;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda221;-><init>()V

    const-string v1, "group_owner"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setGroupUuid(ILjava/lang/String;)V
    .registers 5

    .line 1738
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1739
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "group_uuid"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setHplmns(ILjava/lang/String;)V
    .registers 5

    .line 1302
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1303
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "hplmns"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setHplmns(I[Ljava/lang/String;)V
    .registers 4

    .line 1287
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1288
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda15;-><init>()V

    .line 1289
    invoke-static {v0}, Ljava/util/function/Predicate;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    const-string v0, ","

    .line 1290
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1288
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setHplmns(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setIccId(ILjava/lang/String;)V
    .registers 5

    .line 1115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1116
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda228;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda228;-><init>()V

    const-string v1, "icc_id"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setIconTint(II)V
    .registers 5

    .line 1188
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "color"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setImsi(ILjava/lang/String;)V
    .registers 5

    .line 1838
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1839
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda225;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda225;-><init>()V

    const-string v1, "imsi"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setIsSatelliteProvisionedForNonIpDatagram(II)V
    .registers 5

    .line 2276
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda1;-><init>()V

    .line 2274
    const-string v1, "is_satellite_provisioned_for_non_ip_datagram"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setLastUsedTPMessageReference(II)V
    .registers 5

    .line 2053
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda48;-><init>()V

    .line 2052
    const-string v1, "tp_message_ref"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setMcc(ILjava/lang/String;)V
    .registers 5

    .line 1230
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1231
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "mcc_string"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setMnc(ILjava/lang/String;)V
    .registers 5

    .line 1244
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1245
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda227;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda227;-><init>()V

    const-string v1, "mnc_string"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setNativeAccessRules(I[B)V
    .registers 5

    .line 1389
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1390
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda224;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda224;-><init>()V

    const-string v1, "access_rules"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setNrAdvancedCallingEnabled(II)V
    .registers 5

    .line 1985
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda8;-><init>()V

    .line 1984
    const-string v1, "nr_advanced_calling_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setNtn(II)V
    .registers 5

    .line 2111
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "is_only_ntn"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setNumber(ILjava/lang/String;)V
    .registers 5

    .line 1201
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1202
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "number"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setNumberFromCarrier(ILjava/lang/String;)V
    .registers 5

    .line 1998
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1999
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda207;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda207;-><init>()V

    const-string v1, "phone_number_source_carrier"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setNumberFromIms(ILjava/lang/String;)V
    .registers 5

    .line 2012
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2013
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "phone_number_source_ims"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setOpportunistic(II)V
    .registers 5

    .line 1723
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "is_opportunistic"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setOpportunistic(IZ)V
    .registers 3

    .line 1711
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setOpportunistic(II)V

    return-void
.end method

.method public blacklist setPortIndex(II)V
    .registers 5

    .line 2026
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda229;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda229;-><init>()V

    const-string v1, "port_index"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setProfileClass(II)V
    .registers 5

    .line 1783
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda220;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda220;-><init>()V

    const-string v1, "profile_class"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setRcsConfig(I[B)V
    .registers 5

    .line 1907
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1908
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda222;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda222;-><init>()V

    const-string v1, "rcs_config"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setRcsUceEnabled(II)V
    .registers 5

    .line 1879
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "ims_rcs_uce_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setRemovableEmbedded(II)V
    .registers 5

    .line 1439
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda208;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda208;-><init>()V

    const-string v1, "is_removable"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteAttachEnabledForCarrier(II)V
    .registers 5

    .line 2097
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda219;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda219;-><init>()V

    .line 2095
    const-string v1, "satellite_attach_enabled_for_carrier"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteESOSSupported(II)V
    .registers 5

    .line 2258
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda3;-><init>()V

    .line 2257
    const-string v1, "satellite_esos_supported"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEnabled(II)V
    .registers 5

    .line 2080
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda20;-><init>()V

    .line 2079
    const-string v1, "satellite_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementBarredPlmns(ILjava/lang/String;)V
    .registers 5

    .line 2289
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda210;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda210;-><init>()V

    const-string v1, "satellite_entitlement_barred_plmns"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementDataPlanForPlmns(ILjava/lang/String;)V
    .registers 5

    .line 2304
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "satellite_entitlement_data_plan_plmns"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementInfo(ILjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 10
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

    .line 2223
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    .line 2224
    const-string v0, ","

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 2223
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2225
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementPlmns(ILjava/lang/String;)V

    .line 2227
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    .line 2228
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p3

    .line 2227
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2229
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementBarredPlmns(ILjava/lang/String;)V

    .line 2232
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->serializeMapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 2233
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementDataPlanForPlmns(ILjava/lang/String;)V

    .line 2235
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->serializeMapListToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 2236
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementPlmnServiceTypeMap(ILjava/lang/String;)V

    .line 2238
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->serializeMapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 2239
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementPlmnDataServicePolicy(ILjava/lang/String;)V

    .line 2241
    invoke-virtual {p0, p7}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->serializeMapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 2242
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementPlmnVoiceServicePolicy(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementPlmnDataServicePolicy(ILjava/lang/String;)V
    .registers 5

    .line 2334
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda217;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda217;-><init>()V

    const-string v1, "satellite_entitlement_data_service_policy"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementPlmnServiceTypeMap(ILjava/lang/String;)V
    .registers 5

    .line 2319
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda230;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda230;-><init>()V

    const-string v1, "satellite_entitlement_service_type_map"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementPlmnVoiceServicePolicy(ILjava/lang/String;)V
    .registers 5

    .line 2349
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda223;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda223;-><init>()V

    const-string v1, "satellite_entitlement_voice_service_policy"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementPlmns(ILjava/lang/String;)V
    .registers 5

    .line 2186
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "satellite_entitlement_plmns"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementStatus(II)V
    .registers 5

    .line 2173
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda7;-><init>()V

    .line 2171
    const-string v1, "satellite_entitlement_status"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setServiceCapabilities(II)V
    .registers 5

    .line 2158
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda58;-><init>()V

    .line 2157
    const-string v1, "service_capabilities"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSimSlotIndex(II)V
    .registers 5

    .line 1130
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "sim_id"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSubscriptionProperty(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .line 793
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_SET_INTEGER_METHOD_MAP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ", cannot cast "

    const-string v3, "columnName="

    if-eqz v1, :cond_57

    .line 797
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 798
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_21

    .line 799
    :cond_17
    instance-of v1, p3, Ljava/lang/Integer;

    if-eqz v1, :cond_33

    .line 800
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 805
    :goto_21
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/util/function/TriConsumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p0, p1, p3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 802
    :cond_33
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to integer."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 806
    :cond_57
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_SET_STRING_METHOD_MAP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 808
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/util/function/TriConsumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p0, p1, p3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 809
    :cond_6f
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_SET_BYTE_ARRAY_METHOD_MAP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 813
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_83

    .line 814
    check-cast p3, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    goto :goto_89

    .line 815
    :cond_83
    instance-of v1, p3, [B

    if-eqz v1, :cond_97

    .line 816
    check-cast p3, [B

    .line 821
    :goto_89
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/util/function/TriConsumer;

    .line 822
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 821
    invoke-interface {p2, p0, p1, p3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 818
    :cond_97
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to byte[]."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 824
    :cond_bb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Does not support set "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setSubscriptionType(II)V
    .registers 5

    .line 1796
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "subscription_type"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setTransferStatus(II)V
    .registers 5

    .line 2710
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda41;-><init>()V

    .line 2709
    const-string v1, "transfer_status"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setUiccApplicationsEnabled(II)V
    .registers 5

    .line 1865
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda21;-><init>()V

    .line 1864
    const-string v1, "uicc_applications_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setUiccApplicationsEnabled(IZ)V
    .registers 3

    .line 1852
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setUiccApplicationsEnabled(II)V

    return-void
.end method

.method public blacklist setUsageSetting(II)V
    .registers 5

    .line 2039
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "usage_setting"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setUserId(II)V
    .registers 5

    .line 2066
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "user_handle"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setVideoTelephonyEnabled(II)V
    .registers 5

    .line 1640
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "vt_ims_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setVoImsOptInEnabled(II)V
    .registers 5

    .line 1954
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "voims_opt_in_status"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setWifiCallingEnabled(II)V
    .registers 5

    .line 1654
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "wfc_ims_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setWifiCallingEnabledForRoaming(II)V
    .registers 5

    .line 1698
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda26;-><init>()V

    .line 1697
    const-string v1, "wfc_ims_roaming_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setWifiCallingMode(II)V
    .registers 5

    .line 1668
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda213;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda213;-><init>()V

    const-string v1, "wfc_ims_mode"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setWifiCallingModeForRoaming(II)V
    .registers 5

    .line 1683
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda218;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda218;-><init>()V

    .line 1682
    const-string v1, "wfc_ims_roaming_mode"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist syncToGroup(I)V
    .registers 5

    .line 2635
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2639
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->GROUP_SHARING_COLUMNS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2642
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionProperty(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_12

    :cond_26
    return-void

    .line 2636
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist updateSubscription(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .registers 5

    .line 1083
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1086
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1088
    :try_start_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v0

    .line 1089
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    .line 1090
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1089
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    if-eqz v1, :cond_52

    .line 1095
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->equalsDbItemsOnly(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result v2
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_50

    if-eqz v2, :cond_32

    .line 1102
    :cond_28
    :goto_28
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 1097
    :cond_32
    :try_start_32
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->createDeltaContentValues(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->updateDatabase(ILandroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_28

    .line 1098
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    goto :goto_28

    :catchall_50
    move-exception p1

    goto :goto_69

    .line 1092
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscription: subscription does not exist. subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_69
    .catchall {:try_start_32 .. :try_end_69} :catchall_50

    .line 1102
    :goto_69
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1103
    throw p1
.end method
