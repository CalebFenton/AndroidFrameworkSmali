.class public Landroid/permission/PermissionUsageHelper;
.super Ljava/lang/Object;
.source "PermissionUsageHelper.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/app/AppOpsManager$OnOpStartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionUsageHelper$AccessChainLink;,
        Landroid/permission/PermissionUsageHelper$OpUsage;
    }
.end annotation


# static fields
.field private static final blacklist CAMERA_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_RECENT_TIME_MS:J = 0x3a98L

.field private static final blacklist DEFAULT_RUNNING_TIME_MS:J = 0x1388L

.field private static final blacklist LOCATION_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist MIC_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PROPERTY_CAMERA_MIC_ICONS_ENABLED:Ljava/lang/String; = "camera_mic_icons_enabled"

.field private static final blacklist PROPERTY_LOCATION_INDICATORS_ENABLED:Ljava/lang/String; = "location_indicators_enabled"

.field private static final blacklist RECENT_ACCESS_TIME_MS:Ljava/lang/String; = "recent_access_time_ms"

.field private static final blacklist RUNNING_ACCESS_TIME_MS:Ljava/lang/String; = "running_access_time_ms"

.field private static final blacklist SYSTEM_PKG:Ljava/lang/String; = "android"


# instance fields
.field private blacklist mAppOpsManager:Landroid/app/AppOpsManager;

.field private final blacklist mAttributionChains:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionUsageHelper$AccessChainLink;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPkgManager:Landroid/content/pm/PackageManager;

.field private blacklist mUserContexts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 82
    const-class v0, Landroid/permission/PermissionUsageHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->LOG_TAG:Ljava/lang/String;

    .line 130
    const-string v0, "android:coarse_location"

    const-string v1, "android:fine_location"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->LOCATION_OPS:Ljava/util/List;

    .line 135
    const-string v0, "android:receive_ambient_trigger_audio"

    const-string v1, "android:record_audio"

    const-string v2, "android:phone_call_microphone"

    invoke-static {v2, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->MIC_OPS:Ljava/util/List;

    .line 141
    const-string v0, "android:phone_call_camera"

    const-string v1, "android:camera"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->CAMERA_OPS:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    .line 179
    iput-object p1, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mPkgManager:Landroid/content/pm/PackageManager;

    .line 181
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 182
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 183
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    .line 184
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "android:camera"

    const-string v1, "android:record_audio"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "opStrs":[Ljava/lang/String;
    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 188
    const/16 v1, 0x1a

    const/16 v2, 0x1b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 189
    .local v1, "ops":[I
    iget-object v2, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v1, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 190
    return-void
.end method

.method private blacklist addLinkToChainIfNotPresentLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .registers 14
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "attributionFlags"    # I
    .param p6, "attributionChainId"    # I

    .line 268
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    .line 269
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/permission/PermissionUsageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/permission/PermissionUsageHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 270
    .local v0, "currentChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    new-instance v1, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v4, p4

    move v6, p5

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "uid":I
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "attributionFlags":I
    .local v2, "op":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v5, "uid":I
    .local v6, "attributionFlags":I
    invoke-direct/range {v1 .. v6}, Landroid/permission/PermissionUsageHelper$AccessChainLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 273
    .local v1, "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 274
    return-void

    .line 277
    :cond_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 278
    .local p1, "currSize":I
    if-eqz p1, :cond_60

    invoke-virtual {v1}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result p2

    if-nez p2, :cond_60

    add-int/lit8 p2, p1, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {p2}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result p2

    if-nez p2, :cond_3d

    goto :goto_60

    .line 282
    :cond_3d
    invoke-virtual {v1}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isStart()Z

    move-result p2

    if-eqz p2, :cond_48

    .line 283
    const/4 p2, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_63

    .line 284
    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {p2}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result p2

    if-eqz p2, :cond_63

    .line 286
    add-int/lit8 p2, p1, -0x1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_63

    .line 281
    :cond_60
    :goto_60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_63
    :goto_63
    return-void
.end method

.method private blacklist formatLabelList(Ljava/util/List;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 586
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getGroupForOp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "op"    # Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_76

    :cond_7
    goto :goto_4e

    :sswitch_8
    const-string v0, "android:camera"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_4f

    :sswitch_12
    const-string v0, "android:phone_call_camera"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_4f

    :sswitch_1c
    const-string v0, "android:record_audio"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4f

    :sswitch_26
    const-string v0, "android:receive_ambient_trigger_audio"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_4f

    :sswitch_30
    const-string v0, "android:phone_call_microphone"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_4f

    :sswitch_3a
    const-string v0, "android:fine_location"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_4f

    :sswitch_44
    const-string v0, "android:coarse_location"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_4f

    :goto_4e
    const/4 v0, -0x1

    :goto_4f
    packed-switch v0, :pswitch_data_94

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown app op: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :pswitch_6b
    const-string v0, "android.permission-group.LOCATION"

    return-object v0

    .line 155
    :pswitch_6e
    return-object p0

    .line 152
    :pswitch_6f
    const-string v0, "android.permission-group.CAMERA"

    return-object v0

    .line 150
    :pswitch_72
    const-string v0, "android.permission-group.MICROPHONE"

    return-object v0

    nop

    :sswitch_data_76
    .sparse-switch
        -0x639fe5c6 -> :sswitch_44
        -0xc86dd31 -> :sswitch_3a
        0x8da560f -> :sswitch_30
        0x268c0901 -> :sswitch_26
        0x47019993 -> :sswitch_1c
        0x52e1ba8a -> :sswitch_12
        0x5b14ae90 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_72
        :pswitch_72
        :pswitch_6f
        :pswitch_6e
        :pswitch_6e
        :pswitch_6b
        :pswitch_6b
    .end packed-switch
.end method

.method private blacklist getOpUsagesByDevice(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .registers 43
    .param p2, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;>;"
        }
    .end annotation

    .line 490
    .local p1, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :try_start_6
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 491
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/app/AppOpsManager;->getPackagesForOps([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_45

    .line 493
    .end local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_1f
    const-string v0, "default:0"

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 495
    sget-object v0, Landroid/permission/PermissionUsageHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "device_aware_permission_apis_enabled flag not enabled when deviceId is not default"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 500
    :cond_33
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AppOpsManager;->getPackagesForOps([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_45} :catch_1f6

    .line 505
    .restart local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_45
    nop

    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 508
    .local v4, "now":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Landroid/permission/PermissionUsageHelper;->getRecentThreshold(Ljava/lang/Long;)J

    move-result-wide v6

    .line 509
    .local v6, "recentThreshold":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Landroid/permission/PermissionUsageHelper;->getRunningThreshold(Ljava/lang/Long;)J

    move-result-wide v8

    .line 510
    .local v8, "runningThreshold":J
    const/16 v10, 0xd

    .line 511
    .local v10, "opFlags":I
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 513
    .local v11, "usages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    .line 514
    .local v12, "numPkgOps":I
    const/4 v13, 0x0

    .local v13, "pkgOpNum":I
    :goto_66
    if-ge v13, v12, :cond_1c1

    .line 515
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$PackageOps;

    .line 516
    .local v14, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v19

    .line 517
    .local v19, "uid":I
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v24

    .line 518
    .local v24, "user":Landroid/os/UserHandle;
    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 520
    .local v16, "packageName":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    .line 521
    .local v15, "numOpEntries":I
    const/16 v17, 0x0

    move-object/from16 v25, v0

    move/from16 v0, v17

    .local v0, "opEntryNum":I
    .local v25, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_88
    if-ge v0, v15, :cond_1af

    .line 522
    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    .line 523
    .local v1, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getOpStr()Ljava/lang/String;

    move-result-object v29

    .line 524
    .local v29, "op":Ljava/lang/String;
    move/from16 v35, v0

    .end local v0    # "opEntryNum":I
    .local v35, "opEntryNum":I
    new-instance v0, Ljava/util/ArrayList;

    .line 525
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v17

    move-object/from16 v36, v1

    .end local v1    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .local v36, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 528
    .local v0, "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v36 .. v36}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 529
    .local v1, "numAttrEntries":I
    const/16 v17, 0x0

    move/from16 v2, v17

    .local v2, "attrOpEntryNum":I
    :goto_b5
    if-ge v2, v1, :cond_19b

    .line 530
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v37, v0

    .end local v0    # "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v37, "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    .line 531
    .local v0, "attributionTag":Ljava/lang/String;
    nop

    .line 532
    move/from16 v38, v1

    .end local v1    # "numAttrEntries":I
    .local v38, "numAttrEntries":I
    invoke-virtual/range {v36 .. v36}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 534
    .local v1, "attrOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v1, v10}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v17

    .line 535
    .local v17, "lastAccessTime":J
    invoke-virtual {v1}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v20

    if-eqz v20, :cond_dd

    .line 536
    move-wide/from16 v17, v4

    move-wide/from16 v31, v17

    goto :goto_df

    .line 535
    :cond_dd
    move-wide/from16 v31, v17

    .line 539
    .end local v17    # "lastAccessTime":J
    .local v31, "lastAccessTime":J
    :goto_df
    cmp-long v17, v31, v6

    if-gez v17, :cond_f1

    invoke-virtual {v1}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v17

    if-nez v17, :cond_f1

    .line 540
    move/from16 v18, v2

    move-wide/from16 v21, v4

    move/from16 v26, v15

    goto/16 :goto_18d

    .line 543
    :cond_f1
    invoke-virtual {v1}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v17

    if-nez v17, :cond_ff

    cmp-long v17, v31, v8

    if-ltz v17, :cond_fc

    goto :goto_ff

    :cond_fc
    const/16 v17, 0x0

    goto :goto_101

    :cond_ff
    :goto_ff
    const/16 v17, 0x1

    :goto_101
    move/from16 v33, v17

    .line 546
    .local v33, "isRunning":Z
    const/16 v17, 0x0

    .line 547
    .local v17, "proxyUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v1, v10}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v39

    .line 548
    .local v39, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-eqz v39, :cond_129

    invoke-virtual/range {v39 .. v39}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_129

    .line 549
    new-instance v26, Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual/range {v39 .. v39}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v39 .. v39}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v28

    .line 550
    invoke-virtual/range {v39 .. v39}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v30

    const/16 v34, 0x0

    invoke-direct/range {v26 .. v34}, Landroid/permission/PermissionUsageHelper$OpUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V

    move-object/from16 v17, v26

    move-object/from16 v23, v17

    goto :goto_12b

    .line 553
    :cond_129
    move-object/from16 v23, v17

    .end local v17    # "proxyUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .local v23, "proxyUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    :goto_12b
    move-object/from16 v17, v0

    .end local v0    # "attributionTag":Ljava/lang/String;
    .local v17, "attributionTag":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/permission/PermissionUsageHelper;->getGroupForOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "permGroupName":Ljava/lang/String;
    move/from16 v18, v15

    .end local v15    # "numOpEntries":I
    .local v18, "numOpEntries":I
    new-instance v15, Landroid/permission/PermissionUsageHelper$OpUsage;

    move/from16 v26, v18

    move-object/from16 v18, v29

    move-wide/from16 v20, v31

    move/from16 v22, v33

    .end local v29    # "op":Ljava/lang/String;
    .end local v31    # "lastAccessTime":J
    .end local v33    # "isRunning":Z
    .local v18, "op":Ljava/lang/String;
    .local v20, "lastAccessTime":J
    .local v22, "isRunning":Z
    .local v26, "numOpEntries":I
    invoke-direct/range {v15 .. v23}, Landroid/permission/PermissionUsageHelper$OpUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V

    .line 557
    .end local v18    # "op":Ljava/lang/String;
    .end local v20    # "lastAccessTime":J
    .end local v22    # "isRunning":Z
    .local v15, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .restart local v29    # "op":Ljava/lang/String;
    .restart local v31    # "lastAccessTime":J
    .restart local v33    # "isRunning":Z
    invoke-virtual {v15}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v18

    move-object/from16 v20, v1

    .end local v1    # "attrOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .local v20, "attrOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 558
    .local v1, "packageAttr":Ljava/lang/Integer;
    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_164

    .line 559
    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v21, v18

    .line 560
    .local v21, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    move/from16 v18, v2

    move-object/from16 v2, v21

    .end local v21    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .local v18, "attrOpEntryNum":I
    invoke-virtual {v2, v1, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    invoke-interface {v11, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    move-wide/from16 v21, v4

    goto :goto_18d

    .line 563
    .end local v18    # "attrOpEntryNum":I
    .local v2, "attrOpEntryNum":I
    :cond_164
    move/from16 v18, v2

    .line 564
    .end local v2    # "attrOpEntryNum":I
    .restart local v18    # "attrOpEntryNum":I
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 565
    .local v2, "permGroupUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_178

    .line 566
    invoke-interface {v2, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v21, v4

    goto :goto_18d

    .line 567
    :cond_178
    move-wide/from16 v21, v4

    .end local v4    # "now":J
    .local v21, "now":J
    iget-wide v3, v15, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    .line 568
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/permission/PermissionUsageHelper$OpUsage;

    move-wide/from16 v27, v3

    iget-wide v3, v5, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v3, v27, v3

    if-lez v3, :cond_18d

    .line 569
    invoke-interface {v2, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .end local v0    # "permGroupName":Ljava/lang/String;
    .end local v1    # "packageAttr":Ljava/lang/Integer;
    .end local v2    # "permGroupUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v15    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v17    # "attributionTag":Ljava/lang/String;
    .end local v20    # "attrOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v23    # "proxyUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v31    # "lastAccessTime":J
    .end local v33    # "isRunning":Z
    .end local v39    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :cond_18d
    :goto_18d
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v3, p2

    move-wide/from16 v4, v21

    move/from16 v15, v26

    move-object/from16 v0, v37

    move/from16 v1, v38

    .end local v18    # "attrOpEntryNum":I
    .local v2, "attrOpEntryNum":I
    goto/16 :goto_b5

    .end local v21    # "now":J
    .end local v26    # "numOpEntries":I
    .end local v37    # "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v38    # "numAttrEntries":I
    .local v0, "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "numAttrEntries":I
    .restart local v4    # "now":J
    .local v15, "numOpEntries":I
    :cond_19b
    move-object/from16 v37, v0

    move/from16 v38, v1

    move/from16 v18, v2

    move-wide/from16 v21, v4

    move/from16 v26, v15

    .line 521
    .end local v0    # "attributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "numAttrEntries":I
    .end local v2    # "attrOpEntryNum":I
    .end local v4    # "now":J
    .end local v15    # "numOpEntries":I
    .end local v29    # "op":Ljava/lang/String;
    .end local v36    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .restart local v21    # "now":J
    .restart local v26    # "numOpEntries":I
    add-int/lit8 v0, v35, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .end local v35    # "opEntryNum":I
    .local v0, "opEntryNum":I
    goto/16 :goto_88

    .end local v21    # "now":J
    .end local v26    # "numOpEntries":I
    .restart local v4    # "now":J
    .restart local v15    # "numOpEntries":I
    :cond_1af
    move/from16 v35, v0

    move-wide/from16 v21, v4

    move/from16 v26, v15

    .line 514
    .end local v0    # "opEntryNum":I
    .end local v4    # "now":J
    .end local v14    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v15    # "numOpEntries":I
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v19    # "uid":I
    .end local v24    # "user":Landroid/os/UserHandle;
    .restart local v21    # "now":J
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, v25

    goto/16 :goto_66

    .end local v21    # "now":J
    .end local v25    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "now":J
    :cond_1c1
    move-object/from16 v25, v0

    move-wide/from16 v21, v4

    .line 576
    .end local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v4    # "now":J
    .end local v13    # "pkgOpNum":I
    .restart local v21    # "now":J
    .restart local v25    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 577
    .local v0, "flattenedUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 578
    .local v1, "permGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f5

    .line 579
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 580
    .local v3, "permGroupName":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .end local v3    # "permGroupName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d4

    .line 582
    .end local v2    # "i":I
    :cond_1f5
    return-object v0

    .line 502
    .end local v0    # "flattenedUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .end local v1    # "permGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "recentThreshold":J
    .end local v8    # "runningThreshold":J
    .end local v10    # "opFlags":I
    .end local v11    # "usages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    .end local v12    # "numPkgOps":I
    .end local v21    # "now":J
    .end local v25    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_1f6
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getRecentThreshold(Ljava/lang/Long;)J
    .registers 7
    .param p0, "now"    # Ljava/lang/Long;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "recent_access_time_ms"

    const-wide/16 v3, 0x3a98

    const-string/jumbo v5, "privacy"

    invoke-static {v5, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist getRunningThreshold(Ljava/lang/Long;)J
    .registers 7
    .param p0, "now"    # Ljava/lang/Long;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "running_access_time_ms"

    const-wide/16 v3, 0x1388

    const-string/jumbo v5, "privacy"

    invoke-static {v5, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getSubattributionLabelsForPackage(Ljava/lang/String;I)Landroid/util/ArrayMap;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 420
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 421
    .local v0, "attributionLabelMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 423
    .local v1, "user":Landroid/os/UserHandle;
    :try_start_9
    invoke-direct {p0, p1, p2}, Landroid/permission/PermissionUsageHelper;->isSubattributionSupported(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 424
    return-object v0

    .line 426
    :cond_10
    invoke-direct {p0, v1}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 427
    .local v2, "userContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 429
    const-wide v4, 0x80001000L    # 1.060999919E-314

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v4

    .line 427
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 431
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 432
    .local v4, "pkgContext":Landroid/content/Context;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    array-length v7, v6

    :goto_2f
    if-ge v5, v7, :cond_48

    aget-object v8, v6, v5
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_33} :catch_49

    .line 434
    .local v8, "attribution":Landroid/content/pm/Attribution;
    :try_start_33
    invoke-virtual {v8}, Landroid/content/pm/Attribution;->getLabel()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 435
    .local v9, "resourceForLabel":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/pm/Attribution;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_42} :catch_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_42} :catch_49

    .line 438
    nop

    .end local v9    # "resourceForLabel":Ljava/lang/String;
    goto :goto_45

    .line 436
    :catch_44
    move-exception v9

    .line 432
    .end local v8    # "attribution":Landroid/content/pm/Attribution;
    :goto_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 442
    .end local v2    # "userContext":Landroid/content/Context;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "pkgContext":Landroid/content/Context;
    :cond_48
    goto :goto_4a

    .line 440
    :catch_49
    move-exception v2

    .line 443
    :goto_4a
    return-object v0
.end method

.method private blacklist getUniqueUsagesWithLabels(Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 22
    .param p1, "permGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 591
    .local p2, "usages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v4, v0

    .line 593
    .local v4, "usagesAndLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    if-eqz v3, :cond_2f7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_2f7

    .line 597
    :cond_16
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v0

    .line 599
    .local v5, "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v6, v0

    .line 601
    .local v6, "mostRecentUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v0

    .line 603
    .local v7, "proxyPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v0

    .line 605
    .local v8, "proxyLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v0

    .line 607
    .local v9, "proxies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_60

    .line 608
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 609
    .local v10, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v11, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v11, :cond_5d

    .line 611
    iget-object v11, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .end local v10    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 616
    .end local v0    # "i":I
    :cond_60
    const/4 v0, 0x0

    .local v0, "usageNum":I
    :goto_61
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_d5

    .line 617
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 618
    .restart local v10    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    if-nez v10, :cond_70

    .line 619
    goto :goto_d2

    .line 622
    :cond_70
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    .line 625
    .local v11, "usageAttr":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9d

    iget-object v12, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v12, :cond_9d

    const-string v12, "android.permission-group.MICROPHONE"

    .line 626
    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9d

    .line 627
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_9d
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    .line 633
    .local v12, "usageId":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 634
    .local v13, "lastMostRecent":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v14, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v14}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_ce

    if-eqz v13, :cond_c2

    iget-wide v14, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    move/from16 v16, v11

    move/from16 v17, v12

    .end local v11    # "usageAttr":I
    .end local v12    # "usageId":I
    .local v16, "usageAttr":I
    .local v17, "usageId":I
    iget-wide v11, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v11, v14, v11

    if-lez v11, :cond_d2

    goto :goto_c6

    .end local v16    # "usageAttr":I
    .end local v17    # "usageId":I
    .restart local v11    # "usageAttr":I
    .restart local v12    # "usageId":I
    :cond_c2
    move/from16 v16, v11

    move/from16 v17, v12

    .line 636
    .end local v11    # "usageAttr":I
    .end local v12    # "usageId":I
    .restart local v16    # "usageAttr":I
    .restart local v17    # "usageId":I
    :goto_c6
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d2

    .line 634
    .end local v16    # "usageAttr":I
    .end local v17    # "usageId":I
    .restart local v11    # "usageAttr":I
    .restart local v12    # "usageId":I
    :cond_ce
    move/from16 v16, v11

    move/from16 v17, v12

    .line 616
    .end local v10    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v11    # "usageAttr":I
    .end local v12    # "usageId":I
    .end local v13    # "lastMostRecent":Landroid/permission/PermissionUsageHelper$OpUsage;
    :cond_d2
    :goto_d2
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 641
    .end local v0    # "usageNum":I
    :cond_d5
    const/4 v0, 0x0

    move v10, v0

    .local v10, "numStart":I
    :goto_d7
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v10, v0, :cond_1d6

    .line 642
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 644
    .local v13, "start":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v13}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 646
    .local v0, "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 647
    .local v14, "proxyLabelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_1cc

    if-nez v14, :cond_103

    .line 648
    move-object/from16 v18, v5

    goto/16 :goto_1ce

    .line 650
    :cond_103
    const/4 v15, 0x0

    .line 651
    .local v15, "iterNum":I
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v16

    .line 652
    .local v16, "maxUsages":I
    :goto_108
    iget-object v11, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v11, :cond_1b1

    .line 654
    iget-object v11, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_131

    .line 655
    iget-object v11, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    move-object v11, v0

    move/from16 v12, v16

    goto :goto_140

    .line 659
    :cond_131
    iget-object v11, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 660
    .local v11, "proxy":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v12, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v12}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1ae

    .line 661
    move-object v0, v11

    .line 663
    add-int/lit8 v16, v16, 0x1

    move/from16 v12, v16

    .line 669
    .end local v0    # "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v16    # "maxUsages":I
    .local v11, "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .local v12, "maxUsages":I
    :goto_140
    if-eqz v11, :cond_1a8

    if-eq v15, v12, :cond_1a8

    .line 670
    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-virtual {v13}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v3

    if-ne v0, v3, :cond_151

    .line 672
    move-object/from16 v18, v5

    goto :goto_1aa

    .line 675
    :cond_151
    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v0, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v3, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19b

    iget-object v0, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    .line 678
    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_198

    .line 680
    nop

    .line 681
    :try_start_16f
    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 682
    .local v0, "userPkgManager":Landroid/content/pm/PackageManager;
    iget-object v3, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;
    :try_end_17d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16f .. :try_end_17d} :catch_194

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .end local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .local v18, "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    :try_start_180
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 684
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 686
    .local v5, "appLabel":Ljava/lang/CharSequence;
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_191

    .line 687
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_191
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_180 .. :try_end_191} :catch_192

    .line 691
    .end local v0    # "userPkgManager":Landroid/content/pm/PackageManager;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "appLabel":Ljava/lang/CharSequence;
    :cond_191
    goto :goto_19d

    .line 689
    :catch_192
    move-exception v0

    goto :goto_19d

    .end local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .local v5, "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    :catch_194
    move-exception v0

    move-object/from16 v18, v5

    .end local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .restart local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    goto :goto_19d

    .line 678
    .end local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .restart local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    :cond_198
    move-object/from16 v18, v5

    .end local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .restart local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    goto :goto_19d

    .line 677
    .end local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .restart local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    :cond_19b
    move-object/from16 v18, v5

    .line 693
    .end local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .restart local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    :goto_19d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p2

    move-object v0, v11

    move/from16 v16, v12

    move-object/from16 v5, v18

    goto/16 :goto_108

    .line 669
    .end local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .restart local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    :cond_1a8
    move-object/from16 v18, v5

    .line 698
    .end local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .restart local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    :goto_1aa
    move-object v0, v11

    move/from16 v16, v12

    goto :goto_1b3

    .line 660
    .end local v12    # "maxUsages":I
    .end local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .local v0, "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .restart local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .local v11, "proxy":Landroid/permission/PermissionUsageHelper$OpUsage;
    .restart local v16    # "maxUsages":I
    :cond_1ae
    move-object/from16 v18, v5

    .end local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .restart local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    goto :goto_1b3

    .line 652
    .end local v11    # "proxy":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .restart local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    :cond_1b1
    move-object/from16 v18, v5

    .line 698
    .end local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .restart local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    :goto_1b3
    const-string v3, "android.permission-group.MICROPHONE"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ce

    .line 699
    nop

    .line 700
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c4

    const/4 v11, 0x0

    goto :goto_1c8

    :cond_1c4
    invoke-direct {v1, v14}, Landroid/permission/PermissionUsageHelper;->formatLabelList(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 699
    :goto_1c8
    invoke-virtual {v4, v13, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ce

    .line 647
    .end local v15    # "iterNum":I
    .end local v16    # "maxUsages":I
    .end local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .restart local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    :cond_1cc
    move-object/from16 v18, v5

    .line 641
    .end local v0    # "currentUsage":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v13    # "start":Landroid/permission/PermissionUsageHelper$OpUsage;
    .end local v14    # "proxyLabelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    :cond_1ce
    :goto_1ce
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p2

    move-object/from16 v5, v18

    goto/16 :goto_d7

    .end local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .restart local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    :cond_1d6
    move-object/from16 v18, v5

    .line 704
    .end local v5    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v10    # "numStart":I
    .restart local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    iget-object v3, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 705
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_1dd
    :try_start_1dd
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v5, v0, :cond_2bf

    .line 706
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    .line 707
    .local v10, "usageList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 710
    .local v0, "lastVisible":I
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2b8

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v11

    if-eqz v11, :cond_2b8

    .line 711
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v12}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isStart()Z

    move-result v11

    if-eqz v11, :cond_2b6

    .line 712
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    iget-object v11, v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v11, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    invoke-static {v11}, Landroid/permission/PermissionUsageHelper;->getGroupForOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b4

    const-string v11, "android.permission-group.MICROPHONE"

    .line 713
    invoke-virtual {v11, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_233

    .line 714
    const/4 v1, 0x0

    goto/16 :goto_2b9

    .line 718
    :cond_233
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_237
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_252

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    .line 719
    .local v12, "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    iget-object v13, v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v13}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 720
    nop

    .end local v12    # "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    goto :goto_237

    .line 722
    :cond_252
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    .line 723
    .local v12, "start":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v13, v11

    move v11, v0

    .line 724
    .end local v0    # "lastVisible":I
    .local v11, "lastVisible":I
    .local v13, "lastVisibleLink":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    :goto_261
    if-lez v11, :cond_277

    iget-object v0, v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_277

    .line 725
    add-int/lit8 v11, v11, -0x1

    .line 726
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v13, v0

    goto :goto_261

    .line 728
    :cond_277
    const/4 v14, 0x0

    .line 729
    .local v14, "proxyLabel":Ljava/lang/String;
    iget-object v0, v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v15, v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v15, v15, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_284
    .catchall {:try_start_1dd .. :try_end_284} :catchall_2f4

    if-nez v0, :cond_2ad

    .line 731
    :try_start_286
    iget-object v0, v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 732
    invoke-virtual {v0}, Landroid/permission/PermissionUsageHelper$OpUsage;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 733
    .local v0, "userPkgManager":Landroid/content/pm/PackageManager;
    iget-object v15, v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v15, v15, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;
    :try_end_298
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_286 .. :try_end_298} :catch_2aa
    .catchall {:try_start_286 .. :try_end_298} :catchall_2f4

    const/4 v1, 0x0

    :try_start_299
    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 735
    .local v15, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v15, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_2a5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_299 .. :try_end_2a5} :catch_2a8
    .catchall {:try_start_299 .. :try_end_2a5} :catchall_2f4

    move-object/from16 v14, v16

    .line 738
    .end local v0    # "userPkgManager":Landroid/content/pm/PackageManager;
    .end local v15    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_2ae

    .line 736
    :catch_2a8
    move-exception v0

    goto :goto_2ae

    :catch_2aa
    move-exception v0

    const/4 v1, 0x0

    goto :goto_2ae

    .line 729
    :cond_2ad
    const/4 v1, 0x0

    .line 740
    :goto_2ae
    :try_start_2ae
    iget-object v0, v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v4, v0, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b9

    .line 712
    .end local v11    # "lastVisible":I
    .end local v12    # "start":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    .end local v13    # "lastVisibleLink":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    .end local v14    # "proxyLabel":Ljava/lang/String;
    .local v0, "lastVisible":I
    :cond_2b4
    const/4 v1, 0x0

    goto :goto_2b9

    .line 711
    :cond_2b6
    const/4 v1, 0x0

    goto :goto_2b9

    .line 710
    :cond_2b8
    const/4 v1, 0x0

    .line 705
    .end local v0    # "lastVisible":I
    .end local v10    # "usageList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    :goto_2b9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1dd

    .line 742
    .end local v5    # "i":I
    :cond_2bf
    monitor-exit v3
    :try_end_2c0
    .catchall {:try_start_2ae .. :try_end_2c0} :catchall_2f4

    .line 744
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 745
    .local v1, "packageHash":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f1

    .line 746
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionUsageHelper$OpUsage;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f2

    .line 745
    :cond_2f1
    const/4 v5, 0x0

    .line 748
    .end local v1    # "packageHash":I
    :goto_2f2
    goto :goto_2c8

    .line 750
    :cond_2f3
    return-object v4

    .line 742
    :catchall_2f4
    move-exception v0

    :try_start_2f5
    monitor-exit v3
    :try_end_2f6
    .catchall {:try_start_2f5 .. :try_end_2f6} :catchall_2f4

    throw v0

    .line 594
    .end local v6    # "mostRecentUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v7    # "proxyPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v8    # "proxyLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    .end local v9    # "proxies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v18    # "allUsages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    :cond_2f7
    :goto_2f7
    return-object v4
.end method

.method private blacklist getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 193
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 194
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_14
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private blacklist isLocationProvider(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 473
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    .line 474
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 473
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 474
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    .line 473
    return v0
.end method

.method private blacklist isSubattributionSupported(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 451
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/permission/PermissionUsageHelper;->isLocationProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 452
    return v0

    .line 454
    :cond_8
    nop

    .line 455
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 456
    .local v1, "userPkgManager":Landroid/content/pm/PackageManager;
    nop

    .line 457
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    .line 458
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 456
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 459
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_2b

    .line 460
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->areAttributionsUserVisible()Z

    move-result v0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2c

    return v0

    .line 462
    :cond_2b
    return v0

    .line 463
    .end local v1    # "userPkgManager":Landroid/content/pm/PackageManager;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_2c
    move-exception v1

    .line 464
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method static synthetic blacklist lambda$addLinkToChainIfNotPresentLocked$0(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "k"    # Ljava/lang/Integer;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static blacklist shouldShowIndicators()Z
    .registers 3

    .line 111
    const-string v0, "camera_mic_icons_enabled"

    const/4 v1, 0x1

    const-string/jumbo v2, "privacy"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist shouldShowLocationIndicator()Z
    .registers 3

    .line 116
    const-string/jumbo v0, "location_indicators_enabled"

    const/4 v1, 0x0

    const-string/jumbo v2, "privacy"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist shouldShowPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 754
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/permission/PermissionManager;->shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist updateSubattributionLabelsMap(Ljava/util/List;Landroid/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 399
    .local p1, "usages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .local p2, "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_34

    .line 402
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 403
    .local v1, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v2, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    if-eqz v2, :cond_32

    iget-object v2, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 405
    iget-object v2, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    .line 406
    invoke-direct {p0, v3, v4}, Landroid/permission/PermissionUsageHelper;->getSubattributionLabelsForPackage(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 405
    invoke-virtual {p2, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .end local v1    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    :cond_32
    goto :goto_d

    .line 409
    :cond_33
    return-void

    .line 400
    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public blacklist getOpUsageDataByDevice(ZLjava/lang/String;)Ljava/util/List;
    .registers 29
    .param p1, "includeMicrophoneUsage"    # Z
    .param p2, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 296
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v1, "usages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionGroupUsage;>;"
    invoke-static {}, Landroid/permission/PermissionUsageHelper;->shouldShowIndicators()Z

    move-result v2

    if-nez v2, :cond_e

    .line 299
    return-object v1

    .line 302
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Landroid/permission/PermissionUsageHelper;->CAMERA_OPS:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 303
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/permission/PermissionUsageHelper;->shouldShowLocationIndicator()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 304
    sget-object v3, Landroid/permission/PermissionUsageHelper;->LOCATION_OPS:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 306
    :cond_20
    if-eqz p1, :cond_27

    .line 307
    sget-object v3, Landroid/permission/PermissionUsageHelper;->MIC_OPS:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    :cond_27
    move-object/from16 v15, p2

    invoke-direct {v0, v2, v15}, Landroid/permission/PermissionUsageHelper;->getOpUsagesByDevice(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 312
    .local v3, "rawUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 316
    .local v4, "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, v0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v6, Landroid/media/AudioManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Landroid/media/AudioManager;

    .line 317
    .local v16, "audioManager":Landroid/media/AudioManager;
    const-string v5, "android:phone_call_camera"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "android:phone_call_microphone"

    const/4 v8, 0x1

    if-nez v6, :cond_56

    .line 318
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    goto :goto_56

    :cond_54
    const/4 v6, 0x0

    goto :goto_57

    :cond_56
    :goto_56
    move v6, v8

    :goto_57
    move/from16 v17, v6

    .line 319
    .local v17, "hasPhoneCall":Z
    if-eqz v17, :cond_99

    const-string v6, "android.permission-group.MICROPHONE"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioManager;->getMode()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_99

    .line 321
    iget-object v9, v0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v10, Landroid/telephony/TelephonyManager;

    .line 322
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 323
    .local v9, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 324
    .local v6, "permUsages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    const/4 v10, 0x0

    .local v10, "usageNum":I
    :goto_7b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_99

    .line 325
    nop

    .line 326
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v11, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    .line 325
    invoke-virtual {v9, v11}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v8, :cond_96

    .line 328
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    :cond_96
    add-int/lit8 v10, v10, 0x1

    goto :goto_7b

    .line 335
    .end local v6    # "permUsages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionUsageHelper$OpUsage;>;"
    .end local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v10    # "usageNum":I
    :cond_99
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 337
    .local v6, "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .local v8, "permGroupNum":I
    :goto_9f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_160

    .line 338
    const/4 v9, 0x0

    .line 339
    .local v9, "isPhone":Z
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 341
    .local v10, "permGroup":Ljava/lang/String;
    nop

    .line 342
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-direct {v0, v10, v11}, Landroid/permission/PermissionUsageHelper;->getUniqueUsagesWithLabels(Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v11

    .line 344
    .local v11, "usagesWithLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-direct {v0, v12, v6}, Landroid/permission/PermissionUsageHelper;->updateSubattributionLabelsMap(Ljava/util/List;Landroid/util/ArrayMap;)V

    .line 346
    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ca

    .line 347
    const/4 v9, 0x1

    .line 348
    const-string v10, "android.permission-group.MICROPHONE"

    goto :goto_d3

    .line 349
    :cond_ca
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d3

    .line 350
    const/4 v9, 0x1

    .line 351
    const-string v10, "android.permission-group.CAMERA"

    .line 354
    :cond_d3
    :goto_d3
    const/4 v12, 0x0

    .local v12, "usageNum":I
    :goto_d4
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v12, v13, :cond_146

    .line 355
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 356
    .local v13, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v14, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v6, v14, v0}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v14, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    .line 357
    move-object/from16 v18, v2

    .end local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-interface {v0, v14, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    .local v0, "attributionLabel":Ljava/lang/String;
    move-object v2, v4

    .end local v4    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Landroid/permission/PermissionGroupUsage;

    move-object v14, v5

    iget-object v5, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    move-object/from16 v19, v6

    .end local v6    # "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v19, "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget v6, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    move-object/from16 v21, v7

    move/from16 v20, v8

    .end local v8    # "permGroupNum":I
    .local v20, "permGroupNum":I
    iget-wide v7, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    move/from16 v22, v9

    move-object v9, v10

    .end local v10    # "permGroup":Ljava/lang/String;
    .local v9, "permGroup":Ljava/lang/String;
    .local v22, "isPhone":Z
    iget-boolean v10, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    move-object/from16 v23, v0

    .end local v0    # "attributionLabel":Ljava/lang/String;
    .local v23, "attributionLabel":Ljava/lang/String;
    iget-object v0, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    .line 362
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/CharSequence;

    move/from16 v25, v12

    move-object v12, v0

    move-object v0, v11

    move/from16 v11, v22

    move-object/from16 v22, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v21

    move/from16 v21, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v25

    .end local v12    # "usageNum":I
    .end local v23    # "attributionLabel":Ljava/lang/String;
    .local v0, "usagesWithLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .local v11, "isPhone":Z
    .local v13, "attributionLabel":Ljava/lang/String;
    .local v21, "usageNum":I
    .local v22, "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    invoke-direct/range {v4 .. v15}, Landroid/permission/PermissionGroupUsage;-><init>(Ljava/lang/String;IJLjava/lang/String;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 358
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v13    # "attributionLabel":Ljava/lang/String;
    .end local v22    # "usage":Landroid/permission/PermissionUsageHelper$OpUsage;
    add-int/lit8 v12, v21, 0x1

    move-object/from16 v15, p2

    move-object v4, v2

    move-object v10, v9

    move v9, v11

    move-object/from16 v2, v18

    move-object/from16 v6, v19

    move/from16 v8, v20

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object v11, v0

    move-object/from16 v0, p0

    .end local v21    # "usageNum":I
    .restart local v12    # "usageNum":I
    goto :goto_d4

    .end local v0    # "usagesWithLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .end local v18    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v20    # "permGroupNum":I
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v8    # "permGroupNum":I
    .local v9, "isPhone":Z
    .restart local v10    # "permGroup":Ljava/lang/String;
    .local v11, "usagesWithLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    :cond_146
    move-object/from16 v18, v2

    move-object v2, v4

    move-object/from16 v24, v5

    move-object/from16 v19, v6

    move-object/from16 v23, v7

    move/from16 v20, v8

    move-object v0, v11

    move/from16 v21, v12

    move v11, v9

    move-object v9, v10

    .line 337
    .end local v4    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8    # "permGroupNum":I
    .end local v9    # "isPhone":Z
    .end local v10    # "permGroup":Ljava/lang/String;
    .end local v11    # "usagesWithLabels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/permission/PermissionUsageHelper$OpUsage;Ljava/lang/CharSequence;>;"
    .end local v12    # "usageNum":I
    .local v2, "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v20    # "permGroupNum":I
    add-int/lit8 v8, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move-object/from16 v2, v18

    .end local v20    # "permGroupNum":I
    .restart local v8    # "permGroupNum":I
    goto/16 :goto_9f

    .line 366
    .end local v8    # "permGroupNum":I
    .end local v18    # "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "usedPermGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "subAttributionLabelsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_160
    return-object v1
.end method

.method public blacklist getOpUsageDataForAllDevices(Z)Ljava/util/List;
    .registers 7
    .param p1, "includeMicrophoneUsage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v0, "allUsages":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionGroupUsage;>;"
    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v1, :cond_48

    .line 379
    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    move-result-object v1

    .line 380
    .local v1, "virtualDevices":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/VirtualDevice;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 382
    .local v2, "persistentDeviceIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "num":I
    :goto_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2b

    .line 383
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/VirtualDevice;

    invoke-virtual {v4}, Landroid/companion/virtual/VirtualDevice;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 385
    .end local v3    # "num":I
    :cond_2b
    const-string v3, "default:0"

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 387
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_31
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_48

    .line 388
    nop

    .line 390
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 389
    invoke-virtual {p0, p1, v4}, Landroid/permission/PermissionUsageHelper;->getOpUsageDataByDevice(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 388
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 393
    .end local v1    # "virtualDevices":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/VirtualDevice;>;"
    .end local v2    # "persistentDeviceIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "index":I
    :cond_48
    return-object v0
.end method

.method public blacklist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 20
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "active"    # Z
    .param p6, "attributionFlags"    # I
    .param p7, "attributionChainId"    # I

    .line 214
    if-eqz p5, :cond_3

    .line 216
    return-void

    .line 222
    :cond_3
    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 223
    :try_start_6
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 225
    .local v0, "numChains":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v2, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v0, :cond_58

    .line 227
    iget-object v4, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 228
    .local v4, "chainId":I
    iget-object v5, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 229
    .local v5, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 230
    .local v6, "chainSize":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_36
    if-ge v7, v6, :cond_52

    .line 231
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_63

    .line 232
    .local v8, "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    move-object v9, p3

    move-object/from16 v10, p4

    :try_start_41
    invoke-virtual {v8, p1, p3, v10, p2}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->packageAndOpEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 233
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    goto :goto_55

    .line 230
    .end local v8    # "link":Landroid/permission/PermissionUsageHelper$AccessChainLink;
    :cond_4f
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_52
    move-object v9, p3

    move-object/from16 v10, p4

    .line 226
    .end local v4    # "chainId":I
    .end local v5    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionUsageHelper$AccessChainLink;>;"
    .end local v6    # "chainSize":I
    .end local v7    # "j":I
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_58
    move-object v9, p3

    move-object/from16 v10, p4

    .line 238
    .end local v3    # "i":I
    iget-object v3, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 239
    nop

    .end local v0    # "numChains":I
    .end local v2    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-exit v1

    .line 240
    return-void

    .line 239
    :catchall_63
    move-exception v0

    move-object v9, p3

    move-object/from16 v10, p4

    :goto_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_41 .. :try_end_68} :catchall_69

    throw v0

    :catchall_69
    move-exception v0

    goto :goto_67
.end method

.method public whitelist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 208
    return-void
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I

    .line 246
    return-void
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V
    .registers 19
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I
    .param p7, "startedType"    # I
    .param p8, "attributionFlags"    # I
    .param p9, "attributionChainId"    # I

    .line 253
    if-eqz p7, :cond_23

    const/4 v0, -0x1

    move/from16 v7, p9

    if-eq v7, v0, :cond_23

    if-eqz p8, :cond_23

    and-int/lit8 v0, p8, 0x8

    if-nez v0, :cond_e

    goto :goto_23

    .line 259
    :cond_e
    iget-object v8, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 260
    :try_start_11
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v4, p2

    move-object v3, p3

    move-object v5, p4

    move/from16 v6, p8

    invoke-direct/range {v1 .. v7}, Landroid/permission/PermissionUsageHelper;->addLinkToChainIfNotPresentLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 262
    monitor-exit v8

    .line 263
    return-void

    .line 262
    :catchall_20
    move-exception v0

    monitor-exit v8
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v0

    .line 257
    :cond_23
    :goto_23
    return-void
.end method

.method public blacklist tearDown()V
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 201
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 202
    return-void
.end method
