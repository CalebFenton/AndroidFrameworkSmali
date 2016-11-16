.class public abstract Lcom/android/server/notification/ManagedServices;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ManagedServices$Config;,
        Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;,
        Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;,
        Lcom/android/server/notification/ManagedServices$SettingsObserver;,
        Lcom/android/server/notification/ManagedServices$UserProfiles;
    }
.end annotation


# static fields
.field protected static final ENABLED_SERVICES_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field protected final DEBUG:Z

.field protected final TAG:Ljava/lang/String;

.field private final mConfig:Lcom/android/server/notification/ManagedServices$Config;

.field protected final mContext:Landroid/content/Context;

.field private mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledServicesPackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSeenProfileIds:[I

.field protected final mMutex:Ljava/lang/Object;

.field private final mRestoreReceiver:Landroid/content/BroadcastReceiver;

.field private mRestored:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoredPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesBinding:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/server/notification/ManagedServices$SettingsObserver;

.field private mSnoozingForCurrentProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;


# direct methods
.method static synthetic -get0(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$Config;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I
    .param p4, "isSystem"    # Z
    .param p5, "connection"    # Landroid/content/ServiceConnection;
    .param p6, "targetSdkVersion"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/notification/ManagedServices;Z)V
    .locals 0
    .param p1, "forceRebind"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/notification/ManagedServices;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->rebuildRestoredPackages()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "mutex"    # Ljava/lang/Object;
    .param p4, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@d
    .line 77
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@f
    const/4 v2, 0x3

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@13
    move-result v1

    #@14
    iput-boolean v1, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@16
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@1d
    .line 92
    new-instance v1, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    #@24
    .line 96
    new-instance v1, Landroid/util/ArraySet;

    #@26
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@29
    .line 95
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    #@2b
    .line 98
    new-instance v1, Landroid/util/ArraySet;

    #@2d
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@30
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    #@32
    .line 101
    new-instance v1, Landroid/util/ArraySet;

    #@34
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@37
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mRestoredPackages:Landroid/util/ArraySet;

    #@39
    .line 103
    new-instance v1, Landroid/util/ArraySet;

    #@3b
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@3e
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    #@40
    .line 114
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@42
    .line 115
    iput-object p3, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@44
    .line 116
    iput-object p4, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@46
    .line 117
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    #@49
    move-result-object v1

    #@4a
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@4c
    .line 118
    new-instance v1, Lcom/android/server/notification/ManagedServices$SettingsObserver;

    #@4e
    const/4 v2, 0x0

    #@4f
    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/notification/ManagedServices$SettingsObserver;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$SettingsObserver;)V

    #@52
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSettingsObserver:Lcom/android/server/notification/ManagedServices$SettingsObserver;

    #@54
    .line 120
    new-instance v1, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;

    #@56
    invoke-direct {v1, p0}, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;-><init>(Lcom/android/server/notification/ManagedServices;)V

    #@59
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    #@5b
    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    #@5d
    const-string/jumbo v1, "android.os.action.SETTING_RESTORED"

    #@60
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@63
    .line 122
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    #@65
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@68
    .line 123
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->rebuildRestoredPackages()V

    #@6b
    .line 113
    return-void
.end method

.method private checkNotNull(Landroid/os/IInterface;)V
    .locals 3
    .param p1, "service"    # Landroid/os/IInterface;

    #@0
    .prologue
    .line 756
    if-nez p1, :cond_0

    #@2
    .line 757
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, " must not be null"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 755
    :cond_0
    return-void
.end method

.method private getCaption()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@2
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method private newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 8
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I
    .param p4, "isSystem"    # Z
    .param p5, "connection"    # Landroid/content/ServiceConnection;
    .param p6, "targetSdkVersion"    # I

    #@0
    .prologue
    .line 158
    new-instance v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move-object v6, p5

    #@8
    move v7, p6

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)V

    #@c
    return-object v0
.end method

.method private rebindServices(Z)V
    .locals 23
    .param p1, "forceRebind"    # Z

    #@0
    .prologue
    .line 507
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@4
    move/from16 v20, v0

    #@6
    if-eqz v20, :cond_0

    #@8
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@c
    move-object/from16 v20, v0

    #@e
    const-string/jumbo v21, "rebindServices"

    #@11
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 508
    :cond_0
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@18
    move-object/from16 v20, v0

    #@1a
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    #@1d
    move-result-object v19

    #@1e
    .line 509
    .local v19, "userIds":[I
    move-object/from16 v0, v19

    #@20
    array-length v12, v0

    #@21
    .line 511
    .local v12, "nUserIds":I
    new-instance v7, Landroid/util/SparseArray;

    #@23
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    #@26
    .line 513
    .local v7, "componentsByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Landroid/content/ComponentName;>;>;"
    const/4 v8, 0x0

    #@27
    .local v8, "i":I
    :goto_0
    if-ge v8, v12, :cond_2

    #@29
    .line 514
    aget v20, v19, v8

    #@2b
    .line 515
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@2f
    move-object/from16 v21, v0

    #@31
    move-object/from16 v0, v21

    #@33
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@35
    move-object/from16 v21, v0

    #@37
    aget v22, v19, v8

    #@39
    move-object/from16 v0, p0

    #@3b
    move-object/from16 v1, v21

    #@3d
    move/from16 v2, v22

    #@3f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ManagedServices;->loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;

    #@42
    move-result-object v21

    #@43
    .line 514
    move/from16 v0, v20

    #@45
    move-object/from16 v1, v21

    #@47
    invoke-virtual {v7, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4a
    .line 516
    move-object/from16 v0, p0

    #@4c
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@4e
    move-object/from16 v20, v0

    #@50
    move-object/from16 v0, v20

    #@52
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    #@54
    move-object/from16 v20, v0

    #@56
    if-eqz v20, :cond_1

    #@58
    .line 517
    aget v20, v19, v8

    #@5a
    move/from16 v0, v20

    #@5c
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v20

    #@60
    check-cast v20, Landroid/util/ArraySet;

    #@62
    .line 518
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@66
    move-object/from16 v21, v0

    #@68
    move-object/from16 v0, v21

    #@6a
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    #@6c
    move-object/from16 v21, v0

    #@6e
    aget v22, v19, v8

    #@70
    move-object/from16 v0, p0

    #@72
    move-object/from16 v1, v21

    #@74
    move/from16 v2, v22

    #@76
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ManagedServices;->loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;

    #@79
    move-result-object v21

    #@7a
    .line 517
    invoke-virtual/range {v20 .. v21}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    #@7d
    .line 513
    :cond_1
    add-int/lit8 v8, v8, 0x1

    #@7f
    goto :goto_0

    #@80
    .line 522
    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    #@82
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@85
    .line 523
    .local v14, "removableBoundServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    new-instance v17, Landroid/util/SparseArray;

    #@87
    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    #@8a
    .line 525
    .local v17, "toAdd":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@8e
    move-object/from16 v21, v0

    #@90
    monitor-enter v21

    #@91
    .line 527
    :try_start_0
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@95
    move-object/from16 v20, v0

    #@97
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9a
    move-result-object v16

    #@9b
    .local v16, "service$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@9e
    move-result v20

    #@9f
    if-eqz v20, :cond_4

    #@a1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a4
    move-result-object v15

    #@a5
    check-cast v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@a7
    .line 528
    .local v15, "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-boolean v0, v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    #@a9
    move/from16 v20, v0

    #@ab
    if-nez v20, :cond_3

    #@ad
    move-object/from16 v0, p0

    #@af
    invoke-virtual {v15, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    #@b2
    move-result v20

    #@b3
    if-nez v20, :cond_3

    #@b5
    .line 529
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b8
    goto :goto_1

    #@b9
    .line 525
    .end local v15    # "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v16    # "service$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v20

    #@ba
    monitor-exit v21

    #@bb
    throw v20

    #@bc
    .line 533
    .restart local v16    # "service$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    #@c0
    move-object/from16 v20, v0

    #@c2
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->clear()V

    #@c5
    .line 534
    move-object/from16 v0, p0

    #@c7
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    #@c9
    move-object/from16 v20, v0

    #@cb
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->clear()V

    #@ce
    .line 536
    const/4 v8, 0x0

    #@cf
    :goto_2
    if-ge v8, v12, :cond_7

    #@d1
    .line 538
    aget v20, v19, v8

    #@d3
    move/from16 v0, v20

    #@d5
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d8
    move-result-object v18

    #@d9
    check-cast v18, Landroid/util/ArraySet;

    #@db
    .line 539
    .local v18, "userComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-nez v18, :cond_6

    #@dd
    .line 540
    aget v20, v19, v8

    #@df
    new-instance v22, Landroid/util/ArraySet;

    #@e1
    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    #@e4
    move-object/from16 v0, v17

    #@e6
    move/from16 v1, v20

    #@e8
    move-object/from16 v2, v22

    #@ea
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@ed
    .line 536
    :cond_5
    add-int/lit8 v8, v8, 0x1

    #@ef
    goto :goto_2

    #@f0
    .line 544
    :cond_6
    new-instance v3, Ljava/util/HashSet;

    #@f2
    move-object/from16 v0, v18

    #@f4
    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@f7
    .line 545
    .local v3, "add":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    #@f9
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    #@fb
    move-object/from16 v20, v0

    #@fd
    move-object/from16 v0, v20

    #@ff
    invoke-interface {v3, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@102
    .line 547
    aget v20, v19, v8

    #@104
    move-object/from16 v0, v17

    #@106
    move/from16 v1, v20

    #@108
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@10b
    .line 549
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    #@10f
    move-object/from16 v20, v0

    #@111
    move-object/from16 v0, v20

    #@113
    move-object/from16 v1, v18

    #@115
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    #@118
    .line 551
    const/4 v11, 0x0

    #@119
    .local v11, "j":I
    :goto_3
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->size()I

    #@11c
    move-result v20

    #@11d
    move/from16 v0, v20

    #@11f
    if-ge v11, v0, :cond_5

    #@121
    .line 552
    move-object/from16 v0, v18

    #@123
    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@126
    move-result-object v5

    #@127
    check-cast v5, Landroid/content/ComponentName;

    #@129
    .line 553
    .local v5, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    #@12d
    move-object/from16 v20, v0

    #@12f
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@132
    move-result-object v22

    #@133
    move-object/from16 v0, v20

    #@135
    move-object/from16 v1, v22

    #@137
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13a
    .line 551
    add-int/lit8 v11, v11, 0x1

    #@13c
    goto :goto_3

    #@13d
    .end local v3    # "add":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v11    # "j":I
    .end local v18    # "userComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_7
    monitor-exit v21

    #@13e
    .line 558
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@141
    move-result-object v10

    #@142
    .local v10, "info$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@145
    move-result v20

    #@146
    if-eqz v20, :cond_b

    #@148
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14b
    move-result-object v9

    #@14c
    check-cast v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@14e
    .line 559
    .local v9, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@150
    .line 560
    .restart local v5    # "component":Landroid/content/ComponentName;
    iget v13, v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@152
    .line 561
    .local v13, "oldUser":I
    iget v0, v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@154
    move/from16 v20, v0

    #@156
    move-object/from16 v0, v17

    #@158
    move/from16 v1, v20

    #@15a
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15d
    move-result-object v4

    #@15e
    check-cast v4, Ljava/util/Set;

    #@160
    .line 562
    .local v4, "allowedComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    if-eqz v4, :cond_8

    #@162
    .line 563
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@165
    move-result v20

    #@166
    if-eqz v20, :cond_9

    #@168
    if-eqz p1, :cond_a

    #@16a
    .line 568
    :cond_9
    move-object/from16 v0, p0

    #@16c
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@16e
    move-object/from16 v20, v0

    #@170
    new-instance v21, Ljava/lang/StringBuilder;

    #@172
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@175
    const-string/jumbo v22, "disabling "

    #@178
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v21

    #@17c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@17f
    move-result-object v22

    #@180
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v21

    #@184
    const-string/jumbo v22, " for user "

    #@187
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v21

    #@18b
    move-object/from16 v0, v21

    #@18d
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@190
    move-result-object v21

    #@191
    .line 569
    const-string/jumbo v22, ": "

    #@194
    .line 568
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v21

    #@198
    move-object/from16 v0, v21

    #@19a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v21

    #@19e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a1
    move-result-object v21

    #@1a2
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1a5
    .line 570
    move-object/from16 v0, p0

    #@1a7
    invoke-direct {v0, v5, v13}, Lcom/android/server/notification/ManagedServices;->unregisterService(Landroid/content/ComponentName;I)V

    #@1aa
    goto :goto_4

    #@1ab
    .line 565
    :cond_a
    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@1ae
    goto :goto_4

    #@1af
    .line 575
    .end local v4    # "allowedComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v9    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v13    # "oldUser":I
    :cond_b
    const/4 v8, 0x0

    #@1b0
    :goto_5
    if-ge v8, v12, :cond_d

    #@1b2
    .line 576
    aget v20, v19, v8

    #@1b4
    move-object/from16 v0, v17

    #@1b6
    move/from16 v1, v20

    #@1b8
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1bb
    move-result-object v3

    #@1bc
    check-cast v3, Ljava/util/Set;

    #@1be
    .line 577
    .restart local v3    # "add":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c1
    move-result-object v6

    #@1c2
    .local v6, "component$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1c5
    move-result v20

    #@1c6
    if-eqz v20, :cond_c

    #@1c8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1cb
    move-result-object v5

    #@1cc
    check-cast v5, Landroid/content/ComponentName;

    #@1ce
    .line 578
    .restart local v5    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@1d2
    move-object/from16 v20, v0

    #@1d4
    new-instance v21, Ljava/lang/StringBuilder;

    #@1d6
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1d9
    const-string/jumbo v22, "enabling "

    #@1dc
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v21

    #@1e0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@1e3
    move-result-object v22

    #@1e4
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v21

    #@1e8
    const-string/jumbo v22, " for "

    #@1eb
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v21

    #@1ef
    aget v22, v19, v8

    #@1f1
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v21

    #@1f5
    const-string/jumbo v22, ": "

    #@1f8
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v21

    #@1fc
    move-object/from16 v0, v21

    #@1fe
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v21

    #@202
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@205
    move-result-object v21

    #@206
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@209
    .line 579
    aget v20, v19, v8

    #@20b
    move-object/from16 v0, p0

    #@20d
    move/from16 v1, v20

    #@20f
    invoke-direct {v0, v5, v1}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V

    #@212
    goto :goto_6

    #@213
    .line 575
    .end local v5    # "component":Landroid/content/ComponentName;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    #@215
    goto :goto_5

    #@216
    .line 583
    .end local v3    # "add":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v6    # "component$iterator":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, v19

    #@218
    move-object/from16 v1, p0

    #@21a
    iput-object v0, v1, Lcom/android/server/notification/ManagedServices;->mLastSeenProfileIds:[I

    #@21c
    .line 506
    return-void
.end method

.method private rebuildRestoredPackages()V
    .locals 10

    #@0
    .prologue
    .line 347
    iget-object v8, p0, Lcom/android/server/notification/ManagedServices;->mRestoredPackages:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v8}, Landroid/util/ArraySet;->clear()V

    #@5
    .line 348
    iget-object v8, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    #@7
    invoke-virtual {v8}, Landroid/util/ArraySet;->clear()V

    #@a
    .line 349
    iget-object v8, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@c
    iget-object v8, v8, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@e
    invoke-static {v8}, Lcom/android/server/notification/ManagedServices;->restoredSettingName(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    .line 350
    .local v6, "secureSettingName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@14
    iget-object v8, v8, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    #@16
    if-nez v8, :cond_1

    #@18
    .line 351
    const/4 v5, 0x0

    #@19
    .line 352
    :goto_0
    iget-object v8, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@1b
    invoke-virtual {v8}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    #@1e
    move-result-object v7

    #@1f
    .line 353
    .local v7, "userIds":[I
    array-length v0, v7

    #@20
    .line 354
    .local v0, "N":I
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    #@23
    .line 356
    aget v8, v7, v1

    #@25
    invoke-virtual {p0, v6, v8}, Lcom/android/server/notification/ManagedServices;->loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;

    #@28
    move-result-object v4

    #@29
    .line 357
    .local v4, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v5, :cond_0

    #@2b
    .line 358
    aget v8, v7, v1

    #@2d
    invoke-virtual {p0, v5, v8}, Lcom/android/server/notification/ManagedServices;->loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    #@34
    .line 360
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v3

    #@38
    .local v3, "name$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v8

    #@3c
    if-eqz v8, :cond_2

    #@3e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Landroid/content/ComponentName;

    #@44
    .line 361
    .local v2, "name":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/server/notification/ManagedServices;->mRestoredPackages:Landroid/util/ArraySet;

    #@46
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@4d
    goto :goto_2

    #@4e
    .line 351
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "name":Landroid/content/ComponentName;
    .end local v3    # "name$iterator":Ljava/util/Iterator;
    .end local v4    # "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v7    # "userIds":[I
    :cond_1
    iget-object v8, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@50
    iget-object v8, v8, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    #@52
    invoke-static {v8}, Lcom/android/server/notification/ManagedServices;->restoredSettingName(Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    .local v5, "secondarySettingName":Ljava/lang/String;
    goto :goto_0

    #@57
    .line 354
    .end local v5    # "secondarySettingName":Ljava/lang/String;
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "name$iterator":Ljava/util/Iterator;
    .restart local v4    # "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .restart local v7    # "userIds":[I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 346
    .end local v3    # "name$iterator":Ljava/util/Iterator;
    .end local v4    # "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_3
    return-void
.end method

.method private registerService(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 591
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 589
    return-void

    #@8
    .line 590
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 8
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    #@0
    .prologue
    .line 764
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/16 v6, 0x15

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move v3, p3

    #@8
    .line 763
    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@b
    move-result-object v7

    #@c
    .line 765
    .local v7, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-direct {p0, v7}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method private registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 4
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 769
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 771
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@5
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v1

    #@9
    const/4 v3, 0x0

    #@a
    invoke-interface {v1, p1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@d
    .line 772
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 773
    return-object p1

    #@14
    .line 774
    :catch_0
    move-exception v0

    #@15
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v2

    #@16
    .line 778
    const/4 v1, 0x0

    #@17
    return-object v1

    #@18
    .line 769
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method private registerServiceLocked(Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 605
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;IZ)V

    #@4
    .line 604
    return-void
.end method

.method private registerServiceLocked(Landroid/content/ComponentName;IZ)V
    .locals 16
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I
    .param p3, "isSystem"    # Z

    #@0
    .prologue
    .line 610
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "registerService: "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    move-object/from16 v0, p1

    #@18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, " u="

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    move/from16 v0, p2

    #@25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 612
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    const-string/jumbo v4, "/"

    #@40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    move/from16 v0, p2

    #@46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    .line 613
    .local v3, "servicesBindingTag":Ljava/lang/String;
    move-object/from16 v0, p0

    #@50
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_1

    #@58
    .line 615
    return-void

    #@59
    .line 617
    :cond_1
    move-object/from16 v0, p0

    #@5b
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    #@5d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@60
    .line 619
    move-object/from16 v0, p0

    #@62
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@67
    move-result v7

    #@68
    .line 620
    .local v7, "N":I
    add-int/lit8 v11, v7, -0x1

    #@6a
    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_4

    #@6c
    .line 621
    move-object/from16 v0, p0

    #@6e
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@70
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@73
    move-result-object v12

    #@74
    check-cast v12, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@76
    .line 622
    .local v12, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, v12, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@78
    move-object/from16 v0, p1

    #@7a
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v2

    #@7e
    if-eqz v2, :cond_3

    #@80
    .line 623
    iget v2, v12, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@82
    move/from16 v0, p2

    #@84
    if-ne v2, v0, :cond_3

    #@86
    .line 625
    move-object/from16 v0, p0

    #@88
    iget-boolean v2, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@8a
    if-eqz v2, :cond_2

    #@8c
    move-object/from16 v0, p0

    #@8e
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@90
    new-instance v4, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v5, "    disconnecting old "

    #@98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v4

    #@9c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v4

    #@a4
    const-string/jumbo v5, ": "

    #@a7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    .line 626
    iget-object v5, v12, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@ad
    .line 625
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v4

    #@b5
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    .line 627
    :cond_2
    move-object/from16 v0, p0

    #@ba
    invoke-direct {v0, v11}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@bd
    .line 628
    iget-object v2, v12, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@bf
    if-eqz v2, :cond_3

    #@c1
    .line 629
    move-object/from16 v0, p0

    #@c3
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@c5
    iget-object v4, v12, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@c7
    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@ca
    .line 620
    :cond_3
    add-int/lit8 v11, v11, -0x1

    #@cc
    goto :goto_0

    #@cd
    .line 634
    .end local v12    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_4
    new-instance v13, Landroid/content/Intent;

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@d3
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    #@d5
    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d8
    .line 635
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    #@da
    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@dd
    .line 637
    const-string/jumbo v2, "android.intent.extra.client_label"

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@e4
    iget v4, v4, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    #@e6
    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@e9
    .line 640
    move-object/from16 v0, p0

    #@eb
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@ed
    new-instance v4, Landroid/content/Intent;

    #@ef
    move-object/from16 v0, p0

    #@f1
    iget-object v5, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@f3
    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    #@f5
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f8
    const/4 v5, 0x0

    #@f9
    const/4 v15, 0x0

    #@fa
    .line 639
    invoke-static {v2, v5, v4, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@fd
    move-result-object v14

    #@fe
    .line 641
    .local v14, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v2, "android.intent.extra.client_intent"

    #@101
    invoke-virtual {v13, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@104
    .line 643
    const/4 v8, 0x0

    #@105
    .line 645
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    #@107
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@109
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@10c
    move-result-object v2

    #@10d
    .line 646
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@110
    move-result-object v4

    #@111
    const/4 v5, 0x0

    #@112
    .line 645
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@115
    move-result-object v8

    #@116
    .line 651
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v8, :cond_6

    #@118
    iget v6, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@11a
    .line 654
    .local v6, "targetSdkVersion":I
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    #@11c
    iget-boolean v2, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@11e
    if-eqz v2, :cond_5

    #@120
    move-object/from16 v0, p0

    #@122
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@124
    new-instance v4, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v5, "binding: "

    #@12c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v4

    #@130
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v4

    #@134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v4

    #@138
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13b
    .line 655
    :cond_5
    new-instance v1, Lcom/android/server/notification/ManagedServices$1;

    #@13d
    move-object/from16 v2, p0

    #@13f
    move/from16 v4, p2

    #@141
    move/from16 v5, p3

    #@143
    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/ManagedServices$1;-><init>(Lcom/android/server/notification/ManagedServices;Ljava/lang/String;IZI)V

    #@146
    .line 684
    .local v1, "serviceConnection":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    #@148
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@14a
    .line 687
    new-instance v4, Landroid/os/UserHandle;

    #@14c
    move/from16 v0, p2

    #@14e
    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@151
    .line 686
    const v5, 0x5000001

    #@154
    .line 684
    invoke-virtual {v2, v13, v1, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@157
    move-result v2

    #@158
    if-nez v2, :cond_7

    #@15a
    .line 688
    move-object/from16 v0, p0

    #@15c
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    #@15e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@161
    .line 689
    move-object/from16 v0, p0

    #@163
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@165
    new-instance v4, Ljava/lang/StringBuilder;

    #@167
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16a
    const-string/jumbo v5, "Unable to bind "

    #@16d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v4

    #@171
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@174
    move-result-object v5

    #@175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v4

    #@179
    const-string/jumbo v5, " service: "

    #@17c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v4

    #@180
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v4

    #@184
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@187
    move-result-object v4

    #@188
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@18b
    .line 690
    return-void

    #@18c
    .line 651
    .end local v1    # "serviceConnection":Landroid/content/ServiceConnection;
    .end local v6    # "targetSdkVersion":I
    :cond_6
    const/4 v6, 0x1

    #@18d
    .restart local v6    # "targetSdkVersion":I
    goto :goto_2

    #@18e
    .line 692
    :catch_0
    move-exception v10

    #@18f
    .line 693
    .local v10, "ex":Ljava/lang/SecurityException;
    move-object/from16 v0, p0

    #@191
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@193
    new-instance v4, Ljava/lang/StringBuilder;

    #@195
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@198
    const-string/jumbo v5, "Unable to bind "

    #@19b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v4

    #@19f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@1a2
    move-result-object v5

    #@1a3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v4

    #@1a7
    const-string/jumbo v5, " service: "

    #@1aa
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v4

    #@1ae
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v4

    #@1b2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b5
    move-result-object v4

    #@1b6
    invoke-static {v2, v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b9
    .line 694
    return-void

    #@1ba
    .line 609
    .end local v10    # "ex":Ljava/lang/SecurityException;
    .restart local v1    # "serviceConnection":Landroid/content/ServiceConnection;
    :cond_7
    return-void

    #@1bb
    .line 647
    .end local v1    # "serviceConnection":Landroid/content/ServiceConnection;
    .end local v6    # "targetSdkVersion":I
    .restart local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v9

    #@1bc
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1
.end method

.method private removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 8
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 733
    iget-boolean v4, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@6
    new-instance v5, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v6, "removeServiceImpl service="

    #@e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    const-string/jumbo v6, " u="

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 734
    :cond_0
    const/4 v3, 0x0

    #@29
    .line 735
    .local v3, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@2b
    monitor-enter v5

    #@2c
    .line 736
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v0

    #@32
    .line 737
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@34
    .end local v3    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@36
    .line 738
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@3e
    .line 739
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@40
    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@43
    move-result-object v4

    #@44
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@47
    move-result-object v6

    #@48
    if-ne v4, v6, :cond_2

    #@4a
    .line 740
    iget v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@4c
    if-ne v4, p2, :cond_2

    #@4e
    .line 741
    iget-boolean v4, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@50
    if-eqz v4, :cond_1

    #@52
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@54
    new-instance v6, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v7, "Removing active service "

    #@5c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    iget-object v7, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 742
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    move-result-object v3

    #@71
    .line 737
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@73
    goto :goto_0

    #@74
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_3
    monitor-exit v5

    #@75
    .line 746
    return-object v3

    #@76
    .line 735
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    #@77
    monitor-exit v5

    #@78
    throw v4
.end method

.method private removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@8
    .line 751
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    #@b
    .line 752
    return-object v0
.end method

.method public static restoredSettingName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "setting"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ":restored"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method private storeComponentsToSetting(Ljava/util/Set;Ljava/lang/String;I)V
    .locals 8
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 390
    .local p1, "components":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    #@1
    .line 391
    .local v2, "componentNames":[Ljava/lang/String;
    if-eqz p1, :cond_0

    #@3
    .line 392
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@6
    move-result v7

    #@7
    new-array v2, v7, [Ljava/lang/String;

    #@9
    .line 393
    .local v2, "componentNames":[Ljava/lang/String;
    const/4 v4, 0x0

    #@a
    .line 394
    .local v4, "index":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/content/ComponentName;

    #@1a
    .line 395
    .local v0, "c":Landroid/content/ComponentName;
    add-int/lit8 v5, v4, 0x1

    #@1c
    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    aput-object v7, v2, v4

    #@22
    move v4, v5

    #@23
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    #@24
    .line 398
    .end local v0    # "c":Landroid/content/ComponentName;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v2    # "componentNames":[Ljava/lang/String;
    .end local v4    # "index":I
    :cond_0
    if-nez v2, :cond_1

    #@26
    const-string/jumbo v6, ""

    #@29
    .line 400
    .local v6, "value":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@2b
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2e
    move-result-object v3

    #@2f
    .line 401
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-static {v3, p2, v6, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@32
    .line 389
    return-void

    #@33
    .line 399
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, ":"

    #@36
    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method private unregisterService(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 703
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterServiceLocked(Landroid/content/ComponentName;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 701
    return-void

    #@8
    .line 702
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private unregisterServiceImpl(Landroid/os/IInterface;I)V
    .locals 3
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 785
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@3
    move-result-object v0

    #@4
    .line 786
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_0

    #@6
    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-virtual {v0, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 784
    :cond_0
    :goto_0
    return-void

    #@11
    .line 787
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@13
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@15
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@18
    goto :goto_0
.end method

.method private unregisterServiceLocked(Landroid/content/ComponentName;I)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 708
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 709
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@a
    .line 710
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@12
    .line 711
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@14
    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 712
    iget v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@1c
    if-ne v4, p2, :cond_0

    #@1e
    .line 713
    invoke-direct {p0, v2}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@21
    .line 714
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@23
    if-eqz v4, :cond_0

    #@25
    .line 716
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@27
    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@29
    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 709
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 717
    :catch_0
    move-exception v1

    #@30
    .line 720
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@32
    new-instance v5, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    const-string/jumbo v6, " "

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    const-string/jumbo v6, " could not be unbound: "

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    goto :goto_1

    #@5d
    .line 707
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_1
    return-void
.end method

.method private updateSettingsAccordingToInstalledServices()V
    .locals 5

    #@0
    .prologue
    .line 412
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@2
    invoke-virtual {v3}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    #@5
    move-result-object v2

    #@6
    .line 413
    .local v2, "userIds":[I
    array-length v0, v2

    #@7
    .line 414
    .local v0, "N":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 415
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@c
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@e
    aget v4, v2, v1

    #@10
    invoke-direct {p0, v3, v4}, Lcom/android/server/notification/ManagedServices;->updateSettingsAccordingToInstalledServices(Ljava/lang/String;I)V

    #@13
    .line 416
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@15
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 418
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@1b
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    #@1d
    aget v4, v2, v1

    #@1f
    .line 417
    invoke-direct {p0, v3, v4}, Lcom/android/server/notification/ManagedServices;->updateSettingsAccordingToInstalledServices(Ljava/lang/String;I)V

    #@22
    .line 414
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 421
    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->rebuildRestoredPackages()V

    #@28
    .line 411
    return-void
.end method

.method private updateSettingsAccordingToInstalledServices(Ljava/lang/String;I)V
    .locals 13
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v11, 0x0

    #@2
    .line 457
    const/4 v6, 0x0

    #@3
    .line 458
    .local v6, "restoredChanged":Z
    const/4 v3, 0x0

    #@4
    .line 460
    .local v3, "currentChanged":Z
    invoke-static {p1}, Lcom/android/server/notification/ManagedServices;->restoredSettingName(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v9

    #@8
    invoke-virtual {p0, v9, p2}, Lcom/android/server/notification/ManagedServices;->loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;

    #@b
    move-result-object v5

    #@c
    .line 462
    .local v5, "restored":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;

    #@f
    move-result-object v2

    #@10
    .line 464
    .local v2, "current":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual {p0, v11, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    #@13
    move-result-object v4

    #@14
    .line 466
    .local v4, "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v7, Landroid/util/ArraySet;

    #@16
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    #@19
    .line 468
    .local v7, "retained":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "component$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v9

    #@21
    if-eqz v9, :cond_3

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/content/ComponentName;

    #@29
    .line 469
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v5, :cond_2

    #@2b
    .line 470
    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@2e
    move-result v8

    #@2f
    .line 471
    .local v8, "wasRestored":Z
    if-eqz v8, :cond_2

    #@31
    .line 473
    iget-boolean v9, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@33
    if-eqz v9, :cond_1

    #@35
    .line 474
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@37
    new-instance v11, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v12, "Restoring "

    #@3f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v11

    #@43
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v11

    #@47
    const-string/jumbo v12, " for user "

    #@4a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v11

    #@4e
    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v11

    #@52
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v11

    #@56
    invoke-static {v9, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 475
    :cond_1
    const/4 v6, 0x1

    #@5a
    .line 476
    const/4 v3, 0x1

    #@5b
    .line 477
    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@5e
    goto :goto_0

    #@5f
    .line 482
    .end local v8    # "wasRestored":Z
    :cond_2
    if-eqz v2, :cond_0

    #@61
    .line 483
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@64
    move-result v9

    #@65
    if-eqz v9, :cond_0

    #@67
    .line 484
    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@6a
    goto :goto_0

    #@6b
    .line 488
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_3
    if-nez v2, :cond_9

    #@6d
    move v9, v10

    #@6e
    :goto_1
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    #@71
    move-result v11

    #@72
    if-eq v9, v11, :cond_4

    #@74
    const/4 v10, 0x1

    #@75
    :cond_4
    or-int/2addr v3, v10

    #@76
    .line 490
    .local v3, "currentChanged":Z
    if-eqz v3, :cond_6

    #@78
    .line 491
    iget-boolean v9, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@7a
    if-eqz v9, :cond_5

    #@7c
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@7e
    new-instance v10, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v11, "List of  "

    #@86
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v10

    #@8a
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@8d
    move-result-object v11

    #@8e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v10

    #@92
    const-string/jumbo v11, " services was updated "

    #@95
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v10

    #@99
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v10

    #@9d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v10

    #@a1
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a4
    .line 492
    :cond_5
    invoke-direct {p0, v7, p1, p2}, Lcom/android/server/notification/ManagedServices;->storeComponentsToSetting(Ljava/util/Set;Ljava/lang/String;I)V

    #@a7
    .line 495
    :cond_6
    if-eqz v6, :cond_8

    #@a9
    .line 496
    iget-boolean v9, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@ab
    if-eqz v9, :cond_7

    #@ad
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@af
    .line 497
    new-instance v10, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v11, "List of  "

    #@b7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v10

    #@bb
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@be
    move-result-object v11

    #@bf
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v10

    #@c3
    const-string/jumbo v11, " restored services was updated "

    #@c6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v10

    #@ca
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v10

    #@ce
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v10

    #@d2
    .line 496
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    .line 498
    :cond_7
    invoke-static {p1}, Lcom/android/server/notification/ManagedServices;->restoredSettingName(Ljava/lang/String;)Ljava/lang/String;

    #@d8
    move-result-object v9

    #@d9
    invoke-direct {p0, v5, v9, p2}, Lcom/android/server/notification/ManagedServices;->storeComponentsToSetting(Ljava/util/Set;Ljava/lang/String;I)V

    #@dc
    .line 456
    :cond_8
    return-void

    #@dd
    .line 488
    .local v3, "currentChanged":Z
    :cond_9
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@e0
    move-result v9

    #@e1
    goto :goto_1
.end method


# virtual methods
.method protected abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 4
    .param p1, "service"    # Landroid/os/IInterface;

    #@0
    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    #@3
    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@6
    move-result-object v0

    #@7
    .line 278
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_0

    #@9
    .line 279
    return-object v0

    #@a
    .line 281
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Disallowed call from unknown "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, ": "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1
.end method

.method protected abstract checkType(Landroid/os/IInterface;)Z
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v7, "    All "

    #@8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v6

    #@c
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v6

    #@14
    const-string/jumbo v7, "s ("

    #@17
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v6

    #@1b
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    #@1d
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    #@20
    move-result v7

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    .line 168
    const-string/jumbo v7, ") enabled for current profiles:"

    #@28
    .line 167
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33
    .line 169
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    #@35
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v1

    #@39
    .local v1, "cmpt$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_2

    #@3f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/content/ComponentName;

    #@45
    .line 170
    .local v0, "cmpt":Landroid/content/ComponentName;
    if-eqz p2, :cond_1

    #@47
    invoke-virtual {p2, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_0

    #@4d
    .line 171
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v7, "      "

    #@55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    goto :goto_0

    #@65
    .line 174
    .end local v0    # "cmpt":Landroid/content/ComponentName;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v7, "    Live "

    #@6d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v6

    #@79
    const-string/jumbo v7, "s ("

    #@7c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@85
    move-result v7

    #@86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v6

    #@8a
    const-string/jumbo v7, "):"

    #@8d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v6

    #@91
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v6

    #@95
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@98
    .line 175
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@9a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9d
    move-result-object v3

    #@9e
    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@a1
    move-result v6

    #@a2
    if-eqz v6, :cond_7

    #@a4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a7
    move-result-object v2

    #@a8
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@aa
    .line 176
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_4

    #@ac
    iget-object v6, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@ae
    invoke-virtual {p2, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    #@b1
    move-result v6

    #@b2
    if-eqz v6, :cond_3

    #@b4
    .line 177
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v7, "      "

    #@bc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v6

    #@c0
    iget-object v7, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@c2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v6

    #@c6
    .line 178
    const-string/jumbo v7, " (user "

    #@c9
    .line 177
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v6

    #@cd
    .line 178
    iget v7, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@cf
    .line 177
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v6

    #@d3
    .line 178
    const-string/jumbo v7, "): "

    #@d6
    .line 177
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v6

    #@da
    .line 178
    iget-object v7, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@dc
    .line 177
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v7

    #@e0
    .line 179
    iget-boolean v6, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    #@e2
    if-eqz v6, :cond_5

    #@e4
    const-string/jumbo v6, " SYSTEM"

    #@e7
    .line 177
    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v7

    #@eb
    .line 180
    invoke-virtual {v2, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    #@ee
    move-result v6

    #@ef
    if-eqz v6, :cond_6

    #@f1
    const-string/jumbo v6, " GUEST"

    #@f4
    .line 177
    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v6

    #@f8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v6

    #@fc
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ff
    goto :goto_1

    #@100
    .line 179
    :cond_5
    const-string/jumbo v6, ""

    #@103
    goto :goto_2

    #@104
    .line 180
    :cond_6
    const-string/jumbo v6, ""

    #@107
    goto :goto_3

    #@108
    .line 183
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    const-string/jumbo v7, "    Snoozed "

    #@110
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v6

    #@114
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@117
    move-result-object v7

    #@118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v6

    #@11c
    const-string/jumbo v7, "s ("

    #@11f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v6

    #@123
    .line 184
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    #@125
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    #@128
    move-result v7

    #@129
    .line 183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v6

    #@12d
    .line 184
    const-string/jumbo v7, "):"

    #@130
    .line 183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v6

    #@134
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v6

    #@138
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13b
    .line 185
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    #@13d
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@140
    move-result-object v5

    #@141
    .local v5, "name$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@144
    move-result v6

    #@145
    if-eqz v6, :cond_8

    #@147
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14a
    move-result-object v4

    #@14b
    check-cast v4, Landroid/content/ComponentName;

    #@14d
    .line 186
    .local v4, "name":Landroid/content/ComponentName;
    new-instance v6, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v7, "      "

    #@155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v6

    #@159
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@15c
    move-result-object v7

    #@15d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v6

    #@161
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v6

    #@165
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@168
    goto :goto_4

    #@169
    .line 166
    .end local v4    # "name":Landroid/content/ComponentName;
    :cond_8
    return-void
.end method

.method protected abstract getConfig()Lcom/android/server/notification/ManagedServices$Config;
.end method

.method public getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 6
    .param p1, "service"    # Landroid/os/IInterface;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 263
    if-nez p1, :cond_0

    #@3
    .line 264
    return-object v5

    #@4
    .line 266
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    .line 267
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v0

    #@e
    .line 268
    .local v0, "N":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@11
    .line 269
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@19
    .line 270
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@1b
    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v4

    #@1f
    if-ne v4, v3, :cond_1

    #@21
    return-object v2

    #@22
    .line 268
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 272
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_2
    return-object v5
.end method

.method public isComponentEnabledForCurrentProfiles(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isComponentEnabledForPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 7
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 369
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 370
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 374
    .local v4, "settingValue":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 375
    new-instance v6, Landroid/util/ArraySet;

    #@12
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    #@15
    return-object v6

    #@16
    .line 376
    :cond_0
    const-string/jumbo v6, ":"

    #@19
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 377
    .local v2, "restored":[Ljava/lang/String;
    new-instance v3, Landroid/util/ArraySet;

    #@1f
    array-length v6, v2

    #@20
    invoke-direct {v3, v6}, Landroid/util/ArraySet;-><init>(I)V

    #@23
    .line 378
    .local v3, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    #@24
    .local v1, "i":I
    :goto_0
    array-length v6, v2

    #@25
    if-ge v1, v6, :cond_2

    #@27
    .line 379
    aget-object v6, v2, v1

    #@29
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@2c
    move-result-object v5

    #@2d
    .line 380
    .local v5, "value":Landroid/content/ComponentName;
    if-eqz v5, :cond_1

    #@2f
    .line 381
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@32
    .line 378
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 384
    .end local v5    # "value":Landroid/content/ComponentName;
    :cond_2
    return-object v3
.end method

.method public onBootPhaseAppsCanStart()V
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSettingsObserver:Lcom/android/server/notification/ManagedServices$SettingsObserver;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices$SettingsObserver;->-wrap0(Lcom/android/server/notification/ManagedServices$SettingsObserver;)V

    #@5
    .line 162
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;)V
    .locals 7
    .param p1, "removingPackage"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 221
    iget-boolean v4, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@8
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "onPackagesChanged removingPackage="

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    .line 222
    const-string/jumbo v6, " pkgList="

    #@1b
    .line 221
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    .line 222
    if-nez p2, :cond_3

    #@21
    .line 221
    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 223
    const-string/jumbo v5, " mEnabledServicesPackageNames="

    #@28
    .line 221
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 223
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    #@2e
    .line 221
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 224
    :cond_0
    const/4 v0, 0x0

    #@3a
    .line 226
    .local v0, "anyServicesInvolved":Z
    if-eqz p2, :cond_4

    #@3c
    array-length v2, p2

    #@3d
    if-lez v2, :cond_4

    #@3f
    .line 227
    array-length v4, p2

    #@40
    move v2, v3

    #@41
    :goto_1
    if-ge v2, v4, :cond_4

    #@43
    aget-object v1, p2, v2

    #@45
    .line 228
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    #@47
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@4a
    move-result v5

    #@4b
    if-nez v5, :cond_1

    #@4d
    .line 229
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mRestoredPackages:Landroid/util/ArraySet;

    #@4f
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@52
    move-result v5

    #@53
    .line 228
    if-eqz v5, :cond_2

    #@55
    .line 230
    :cond_1
    const/4 v0, 0x1

    #@56
    .line 227
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@58
    goto :goto_1

    #@59
    .line 222
    .end local v0    # "anyServicesInvolved":Z
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_3
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5c
    move-result-object v2

    #@5d
    goto :goto_0

    #@5e
    .line 235
    .restart local v0    # "anyServicesInvolved":Z
    :cond_4
    if-eqz v0, :cond_6

    #@60
    .line 237
    if-eqz p1, :cond_5

    #@62
    .line 238
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->updateSettingsAccordingToInstalledServices()V

    #@65
    .line 239
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->rebuildRestoredPackages()V

    #@68
    .line 242
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/notification/ManagedServices;->rebindServices(Z)V

    #@6b
    .line 220
    :cond_6
    return-void
.end method

.method protected abstract onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 0
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 153
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 3
    .param p1, "user"    # I

    #@0
    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "onUserSwitched u="

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->rebuildRestoredPackages()V

    #@20
    .line 249
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mLastSeenProfileIds:[I

    #@22
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@24
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 250
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@30
    if-eqz v0, :cond_1

    #@32
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@34
    const-string/jumbo v1, "Current profile IDs didn\'t change, skipping rebindServices()."

    #@37
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 251
    :cond_1
    return-void

    #@3b
    .line 253
    :cond_2
    const/4 v0, 0x1

    #@3c
    invoke-direct {p0, v0}, Lcom/android/server/notification/ManagedServices;->rebindServices(Z)V

    #@3f
    .line 246
    return-void
.end method

.method public onUserUnlocked(I)V
    .locals 3
    .param p1, "user"    # I

    #@0
    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "onUserUnlocked u="

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->rebuildRestoredPackages()V

    #@20
    .line 259
    const/4 v0, 0x0

    #@21
    invoke-direct {p0, v0}, Lcom/android/server/notification/ManagedServices;->rebindServices(Z)V

    #@24
    .line 256
    return-void
.end method

.method protected queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 425
    new-instance v4, Landroid/util/ArraySet;

    #@2
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 426
    .local v4, "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a
    move-result-object v6

    #@b
    .line 427
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    #@d
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@f
    iget-object v9, v9, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    #@11
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@14
    .line 428
    .local v7, "queryIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@17
    move-result v9

    #@18
    if-nez v9, :cond_0

    #@1a
    .line 429
    invoke-virtual {v7, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@1d
    .line 433
    :cond_0
    const/16 v9, 0x84

    #@1f
    .line 431
    invoke-virtual {v6, v7, v9, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@22
    move-result-object v5

    #@23
    .line 435
    .local v5, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-boolean v9, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@25
    if-eqz v9, :cond_1

    #@27
    .line 436
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@29
    new-instance v10, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    iget-object v11, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@30
    iget-object v11, v11, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    #@32
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v10

    #@36
    const-string/jumbo v11, " services: "

    #@39
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v10

    #@3d
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v10

    #@41
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v10

    #@45
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 437
    :cond_1
    if-eqz v5, :cond_3

    #@4a
    .line 438
    const/4 v2, 0x0

    #@4b
    .local v2, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@4e
    move-result v1

    #@4f
    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_3

    #@51
    .line 439
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v8

    #@55
    check-cast v8, Landroid/content/pm/ResolveInfo;

    #@57
    .line 440
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@59
    .line 442
    .local v3, "info":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    #@5b
    iget-object v9, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@5d
    iget-object v10, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@5f
    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@62
    .line 443
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@64
    iget-object v9, v9, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    #@66
    iget-object v10, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@68
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v9

    #@6c
    if-nez v9, :cond_2

    #@6e
    .line 444
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@70
    new-instance v10, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v11, "Skipping "

    #@78
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v10

    #@7c
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@7f
    move-result-object v11

    #@80
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v10

    #@84
    const-string/jumbo v11, " service "

    #@87
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v10

    #@8b
    .line 445
    iget-object v11, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8d
    .line 444
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v10

    #@91
    .line 445
    const-string/jumbo v11, "/"

    #@94
    .line 444
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v10

    #@98
    .line 445
    iget-object v11, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@9a
    .line 444
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v10

    #@9e
    .line 446
    const-string/jumbo v11, ": it does not require the permission "

    #@a1
    .line 444
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v10

    #@a5
    .line 447
    iget-object v11, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@a7
    iget-object v11, v11, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    #@a9
    .line 444
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v10

    #@ad
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v10

    #@b1
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b4
    .line 438
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@b6
    goto :goto_0

    #@b7
    .line 450
    :cond_2
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ba
    goto :goto_1

    #@bb
    .line 453
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v4
.end method

.method public registerGuestService(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 1
    .param p1, "guest"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 305
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    #@5
    .line 306
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->checkType(Landroid/os/IInterface;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@12
    throw v0

    #@13
    .line 309
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 310
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    #@1c
    .line 304
    :cond_1
    return-void
.end method

.method public registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    #@0
    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    #@3
    .line 294
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@6
    move-result-object v0

    #@7
    .line 295
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_0

    #@9
    .line 296
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    #@c
    .line 292
    :cond_0
    return-void
.end method

.method public registerSystemService(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 600
    const/4 v1, 0x1

    #@4
    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v0

    #@8
    .line 598
    return-void

    #@9
    .line 599
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public setComponentState(Landroid/content/ComponentName;Z)V
    .locals 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 315
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    #@3
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    move v0, v4

    #@a
    .line 316
    .local v0, "previous":Z
    :goto_0
    if-ne v0, p2, :cond_1

    #@c
    .line 317
    return-void

    #@d
    .line 315
    .end local v0    # "previous":Z
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 320
    .restart local v0    # "previous":Z
    :cond_1
    if-eqz p2, :cond_3

    #@11
    .line 321
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    #@13
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@16
    .line 327
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@18
    if-eqz v3, :cond_2

    #@1a
    .line 328
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@1c
    new-instance v6, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    if-eqz p2, :cond_4

    #@23
    const-string/jumbo v3, "Enabling "

    #@26
    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    const-string/jumbo v6, "component "

    #@2d
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    .line 329
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    .line 328
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 333
    :cond_2
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@42
    monitor-enter v5

    #@43
    .line 334
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@45
    invoke-virtual {v3}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    #@48
    move-result-object v2

    #@49
    .line 336
    .local v2, "userIds":[I
    array-length v6, v2

    #@4a
    move v3, v4

    #@4b
    :goto_3
    if-ge v3, v6, :cond_6

    #@4d
    aget v1, v2, v3

    #@4f
    .line 337
    .local v1, "userId":I
    if-eqz p2, :cond_5

    #@51
    .line 338
    invoke-direct {p0, p1, v1}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    .line 336
    :goto_4
    add-int/lit8 v3, v3, 0x1

    #@56
    goto :goto_3

    #@57
    .line 323
    .end local v1    # "userId":I
    .end local v2    # "userIds":[I
    :cond_3
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    #@59
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@5c
    goto :goto_1

    #@5d
    .line 328
    :cond_4
    const-string/jumbo v3, "Disabling "

    #@60
    goto :goto_2

    #@61
    .line 340
    .restart local v1    # "userId":I
    .restart local v2    # "userIds":[I
    :cond_5
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/android/server/notification/ManagedServices;->unregisterServiceLocked(Landroid/content/ComponentName;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    goto :goto_4

    #@65
    .line 333
    .end local v1    # "userId":I
    .end local v2    # "userIds":[I
    :catchall_0
    move-exception v3

    #@66
    monitor-exit v5

    #@67
    throw v3

    #@68
    .restart local v2    # "userIds":[I
    :cond_6
    monitor-exit v5

    #@69
    .line 314
    return-void
.end method

.method public settingRestored(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;
    .param p4, "userid"    # I

    #@0
    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Restored managed service setting: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 202
    const-string/jumbo v2, " ovalue="

    #@19
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 202
    const-string/jumbo v2, " nvalue="

    #@24
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@35
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-nez v0, :cond_1

    #@3d
    .line 204
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@3f
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    #@41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v0

    #@45
    .line 203
    if-eqz v0, :cond_2

    #@47
    .line 205
    :cond_1
    if-eqz p1, :cond_2

    #@49
    .line 206
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@4b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4e
    move-result-object v0

    #@4f
    .line 207
    invoke-static {p1}, Lcom/android/server/notification/ManagedServices;->restoredSettingName(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    .line 206
    invoke-static {v0, v1, p3, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@56
    .line 210
    invoke-direct {p0, p1, p4}, Lcom/android/server/notification/ManagedServices;->updateSettingsAccordingToInstalledServices(Ljava/lang/String;I)V

    #@59
    .line 211
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->rebuildRestoredPackages()V

    #@5c
    .line 200
    :cond_2
    return-void
.end method

.method public unregisterService(Landroid/os/IInterface;I)V
    .locals 0
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    #@3
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterServiceImpl(Landroid/os/IInterface;I)V

    #@6
    .line 285
    return-void
.end method
