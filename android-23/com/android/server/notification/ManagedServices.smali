.class public abstract Lcom/android/server/notification/ManagedServices;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;,
        Lcom/android/server/notification/ManagedServices$SettingsObserver;,
        Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;,
        Lcom/android/server/notification/ManagedServices$UserProfiles;,
        Lcom/android/server/notification/ManagedServices$Config;
    }
.end annotation


# static fields
.field private static final ENABLED_SERVICES_SEPARATOR:Ljava/lang/String; = ":"


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

.method static synthetic -wrap3(Lcom/android/server/notification/ManagedServices;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->rebindServices()V

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
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
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
    .line 71
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
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@1d
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    #@24
    .line 90
    new-instance v1, Landroid/util/ArraySet;

    #@26
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@29
    .line 89
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    #@2b
    .line 92
    new-instance v1, Landroid/util/ArraySet;

    #@2d
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@30
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    #@32
    .line 102
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@34
    .line 103
    iput-object p3, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@36
    .line 104
    iput-object p4, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@38
    .line 105
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    #@3b
    move-result-object v1

    #@3c
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@3e
    .line 106
    new-instance v1, Lcom/android/server/notification/ManagedServices$SettingsObserver;

    #@40
    const/4 v2, 0x0

    #@41
    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/notification/ManagedServices$SettingsObserver;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$SettingsObserver;)V

    #@44
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSettingsObserver:Lcom/android/server/notification/ManagedServices$SettingsObserver;

    #@46
    .line 108
    new-instance v1, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;

    #@48
    invoke-direct {v1, p0}, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;-><init>(Lcom/android/server/notification/ManagedServices;)V

    #@4b
    iput-object v1, p0, Lcom/android/server/notification/ManagedServices;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    #@4d
    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    #@4f
    const-string/jumbo v1, "android.os.action.SETTING_RESTORED"

    #@52
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@55
    .line 110
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    #@57
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@5a
    .line 101
    return-void
.end method

.method private checkNotNull(Landroid/os/IInterface;)V
    .locals 3
    .param p1, "service"    # Landroid/os/IInterface;

    #@0
    .prologue
    .line 570
    if-nez p1, :cond_0

    #@2
    .line 571
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
    .line 569
    :cond_0
    return-void
.end method

.method private disableNonexistentServices()V
    .locals 4

    #@0
    .prologue
    .line 259
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@2
    invoke-virtual {v3}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    #@5
    move-result-object v2

    #@6
    .line 260
    .local v2, "userIds":[I
    array-length v0, v2

    #@7
    .line 261
    .local v0, "N":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@a
    .line 262
    aget v3, v2, v1

    #@c
    invoke-direct {p0, v3}, Lcom/android/server/notification/ManagedServices;->disableNonexistentServices(I)V

    #@f
    .line 261
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 258
    :cond_0
    return-void
.end method

.method private disableNonexistentServices(I)V
    .locals 24
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 267
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v21, v0

    #@6
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v5

    #@a
    .line 268
    .local v5, "cr":Landroid/content/ContentResolver;
    const/16 v19, 0x0

    #@c
    .line 269
    .local v19, "restoredChanged":Z
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mRestored:Landroid/util/ArraySet;

    #@10
    move-object/from16 v21, v0

    #@12
    if-nez v21, :cond_1

    #@14
    .line 272
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@18
    move-object/from16 v21, v0

    #@1a
    invoke-static/range {v21 .. v21}, Lcom/android/server/notification/ManagedServices;->restoredSettingName(Lcom/android/server/notification/ManagedServices$Config;)Ljava/lang/String;

    #@1d
    move-result-object v21

    #@1e
    .line 270
    move-object/from16 v0, v21

    #@20
    move/from16 v1, p1

    #@22
    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@25
    move-result-object v20

    #@26
    .line 274
    .local v20, "restoredSetting":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@29
    move-result v21

    #@2a
    if-nez v21, :cond_4

    #@2c
    .line 275
    move-object/from16 v0, p0

    #@2e
    iget-boolean v0, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@30
    move/from16 v21, v0

    #@32
    if-eqz v21, :cond_0

    #@34
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@38
    move-object/from16 v21, v0

    #@3a
    new-instance v22, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v23, "restored: "

    #@42
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v22

    #@46
    move-object/from16 v0, v22

    #@48
    move-object/from16 v1, v20

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v22

    #@4e
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v22

    #@52
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 276
    :cond_0
    const-string/jumbo v21, ":"

    #@58
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@5b
    move-result-object v18

    #@5c
    .line 277
    .local v18, "restored":[Ljava/lang/String;
    new-instance v21, Landroid/util/ArraySet;

    #@5e
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@61
    move-result-object v22

    #@62
    invoke-direct/range {v21 .. v22}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    #@65
    move-object/from16 v0, v21

    #@67
    move-object/from16 v1, p0

    #@69
    iput-object v0, v1, Lcom/android/server/notification/ManagedServices;->mRestored:Landroid/util/ArraySet;

    #@6b
    .line 284
    .end local v18    # "restored":[Ljava/lang/String;
    .end local v20    # "restoredSetting":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@6d
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@6f
    move-object/from16 v21, v0

    #@71
    move-object/from16 v0, v21

    #@73
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@75
    move-object/from16 v21, v0

    #@77
    .line 282
    move-object/from16 v0, v21

    #@79
    move/from16 v1, p1

    #@7b
    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@7e
    move-result-object v8

    #@7f
    .line 286
    .local v8, "flatIn":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@82
    move-result v21

    #@83
    if-nez v21, :cond_d

    #@85
    .line 287
    move-object/from16 v0, p0

    #@87
    iget-boolean v0, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@89
    move/from16 v21, v0

    #@8b
    if-eqz v21, :cond_2

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@91
    move-object/from16 v21, v0

    #@93
    new-instance v22, Ljava/lang/StringBuilder;

    #@95
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v23, "flat before: "

    #@9b
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v22

    #@9f
    move-object/from16 v0, v22

    #@a1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v22

    #@a5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v22

    #@a9
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    .line 288
    :cond_2
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@b0
    move-object/from16 v21, v0

    #@b2
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b5
    move-result-object v15

    #@b6
    .line 290
    .local v15, "pm":Landroid/content/pm/PackageManager;
    new-instance v21, Landroid/content/Intent;

    #@b8
    move-object/from16 v0, p0

    #@ba
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@bc
    move-object/from16 v22, v0

    #@be
    move-object/from16 v0, v22

    #@c0
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    #@c2
    move-object/from16 v22, v0

    #@c4
    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c7
    .line 291
    const/16 v22, 0x84

    #@c9
    .line 289
    move-object/from16 v0, v21

    #@cb
    move/from16 v1, v22

    #@cd
    move/from16 v2, p1

    #@cf
    invoke-virtual {v15, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@d2
    move-result-object v14

    #@d3
    .line 293
    .local v14, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    #@d5
    iget-boolean v0, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@d7
    move/from16 v21, v0

    #@d9
    if-eqz v21, :cond_3

    #@db
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@df
    move-object/from16 v21, v0

    #@e1
    new-instance v22, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@ea
    move-object/from16 v23, v0

    #@ec
    move-object/from16 v0, v23

    #@ee
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    #@f0
    move-object/from16 v23, v0

    #@f2
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v22

    #@f6
    const-string/jumbo v23, " services: "

    #@f9
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v22

    #@fd
    move-object/from16 v0, v22

    #@ff
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v22

    #@103
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v22

    #@107
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@10a
    .line 294
    :cond_3
    new-instance v13, Landroid/util/ArraySet;

    #@10c
    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    #@10f
    .line 295
    .local v13, "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const/4 v11, 0x0

    #@110
    .local v11, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@113
    move-result v4

    #@114
    .end local v19    # "restoredChanged":Z
    .local v4, "count":I
    :goto_1
    if-ge v11, v4, :cond_6

    #@116
    .line 296
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@119
    move-result-object v17

    #@11a
    check-cast v17, Landroid/content/pm/ResolveInfo;

    #@11c
    .line 297
    .local v17, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    #@11e
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@120
    .line 299
    .local v12, "info":Landroid/content/pm/ServiceInfo;
    new-instance v3, Landroid/content/ComponentName;

    #@122
    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@124
    move-object/from16 v21, v0

    #@126
    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@128
    move-object/from16 v22, v0

    #@12a
    move-object/from16 v0, v21

    #@12c
    move-object/from16 v1, v22

    #@12e
    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@131
    .line 300
    .local v3, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@135
    move-object/from16 v21, v0

    #@137
    move-object/from16 v0, v21

    #@139
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    #@13b
    move-object/from16 v21, v0

    #@13d
    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@13f
    move-object/from16 v22, v0

    #@141
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@144
    move-result v21

    #@145
    if-nez v21, :cond_5

    #@147
    .line 301
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@14b
    move-object/from16 v21, v0

    #@14d
    new-instance v22, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v23, "Skipping "

    #@155
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v22

    #@159
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@15c
    move-result-object v23

    #@15d
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v22

    #@161
    const-string/jumbo v23, " service "

    #@164
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v22

    #@168
    .line 302
    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@16a
    move-object/from16 v23, v0

    #@16c
    .line 301
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v22

    #@170
    .line 302
    const-string/jumbo v23, "/"

    #@173
    .line 301
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v22

    #@177
    .line 302
    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@179
    move-object/from16 v23, v0

    #@17b
    .line 301
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v22

    #@17f
    .line 303
    const-string/jumbo v23, ": it does not require the permission "

    #@182
    .line 301
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v22

    #@186
    .line 304
    move-object/from16 v0, p0

    #@188
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@18a
    move-object/from16 v23, v0

    #@18c
    move-object/from16 v0, v23

    #@18e
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    #@190
    move-object/from16 v23, v0

    #@192
    .line 301
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v22

    #@196
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v22

    #@19a
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19d
    .line 305
    move-object/from16 v0, p0

    #@19f
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mRestored:Landroid/util/ArraySet;

    #@1a1
    move-object/from16 v21, v0

    #@1a3
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@1a6
    move-result-object v22

    #@1a7
    invoke-virtual/range {v21 .. v22}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@1aa
    move-result v21

    #@1ab
    or-int v19, v19, v21

    #@1ad
    .line 295
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@1af
    goto/16 :goto_1

    #@1b1
    .line 279
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "count":I
    .end local v8    # "flatIn":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "info":Landroid/content/pm/ServiceInfo;
    .end local v13    # "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v14    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "restoredChanged":Z
    .restart local v20    # "restoredSetting":Ljava/lang/String;
    :cond_4
    new-instance v21, Landroid/util/ArraySet;

    #@1b3
    invoke-direct/range {v21 .. v21}, Landroid/util/ArraySet;-><init>()V

    #@1b6
    move-object/from16 v0, v21

    #@1b8
    move-object/from16 v1, p0

    #@1ba
    iput-object v0, v1, Lcom/android/server/notification/ManagedServices;->mRestored:Landroid/util/ArraySet;

    #@1bc
    goto/16 :goto_0

    #@1be
    .line 308
    .end local v19    # "restoredChanged":Z
    .end local v20    # "restoredSetting":Ljava/lang/String;
    .restart local v3    # "component":Landroid/content/ComponentName;
    .restart local v4    # "count":I
    .restart local v8    # "flatIn":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "info":Landroid/content/pm/ServiceInfo;
    .restart local v13    # "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v14    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1c1
    goto :goto_2

    #@1c2
    .line 311
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v12    # "info":Landroid/content/pm/ServiceInfo;
    .end local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    const-string/jumbo v9, ""

    #@1c5
    .line 312
    .local v9, "flatOut":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    #@1c8
    move-result v21

    #@1c9
    if-nez v21, :cond_9

    #@1cb
    .line 313
    const-string/jumbo v21, ":"

    #@1ce
    move-object/from16 v0, v21

    #@1d0
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1d3
    move-result-object v6

    #@1d4
    .line 314
    .local v6, "enabled":[Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    #@1d6
    array-length v0, v6

    #@1d7
    move/from16 v21, v0

    #@1d9
    move-object/from16 v0, v16

    #@1db
    move/from16 v1, v21

    #@1dd
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1e0
    .line 315
    .local v16, "remaining":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    #@1e1
    :goto_3
    array-length v0, v6

    #@1e2
    move/from16 v21, v0

    #@1e4
    move/from16 v0, v21

    #@1e6
    if-ge v11, v0, :cond_8

    #@1e8
    .line 316
    aget-object v21, v6, v11

    #@1ea
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@1ed
    move-result-object v7

    #@1ee
    .line 317
    .local v7, "enabledComponent":Landroid/content/ComponentName;
    invoke-interface {v13, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1f1
    move-result v21

    #@1f2
    if-eqz v21, :cond_7

    #@1f4
    .line 318
    aget-object v21, v6, v11

    #@1f6
    move-object/from16 v0, v16

    #@1f8
    move-object/from16 v1, v21

    #@1fa
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1fd
    .line 319
    move-object/from16 v0, p0

    #@1ff
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mRestored:Landroid/util/ArraySet;

    #@201
    move-object/from16 v21, v0

    #@203
    aget-object v22, v6, v11

    #@205
    invoke-virtual/range {v21 .. v22}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@208
    move-result v21

    #@209
    or-int v19, v19, v21

    #@20b
    .line 315
    :cond_7
    add-int/lit8 v11, v11, 0x1

    #@20d
    goto :goto_3

    #@20e
    .line 322
    .end local v7    # "enabledComponent":Landroid/content/ComponentName;
    :cond_8
    move-object/from16 v0, p0

    #@210
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mRestored:Landroid/util/ArraySet;

    #@212
    move-object/from16 v21, v0

    #@214
    move-object/from16 v0, v16

    #@216
    move-object/from16 v1, v21

    #@218
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@21b
    .line 323
    const-string/jumbo v21, ":"

    #@21e
    move-object/from16 v0, v21

    #@220
    move-object/from16 v1, v16

    #@222
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@225
    move-result-object v9

    #@226
    .line 325
    .end local v6    # "enabled":[Ljava/lang/String;
    .end local v16    # "remaining":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, p0

    #@228
    iget-boolean v0, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@22a
    move/from16 v21, v0

    #@22c
    if-eqz v21, :cond_a

    #@22e
    move-object/from16 v0, p0

    #@230
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@232
    move-object/from16 v21, v0

    #@234
    new-instance v22, Ljava/lang/StringBuilder;

    #@236
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@239
    const-string/jumbo v23, "flat after: "

    #@23c
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v22

    #@240
    move-object/from16 v0, v22

    #@242
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@245
    move-result-object v22

    #@246
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@249
    move-result-object v22

    #@24a
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@24d
    .line 326
    :cond_a
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@250
    move-result v21

    #@251
    if-nez v21, :cond_b

    #@253
    .line 328
    move-object/from16 v0, p0

    #@255
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@257
    move-object/from16 v21, v0

    #@259
    move-object/from16 v0, v21

    #@25b
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@25d
    move-object/from16 v21, v0

    #@25f
    .line 327
    move-object/from16 v0, v21

    #@261
    move/from16 v1, p1

    #@263
    invoke-static {v5, v0, v9, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@266
    .line 331
    :cond_b
    if-eqz v19, :cond_d

    #@268
    .line 332
    move-object/from16 v0, p0

    #@26a
    iget-boolean v0, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@26c
    move/from16 v21, v0

    #@26e
    if-eqz v21, :cond_c

    #@270
    move-object/from16 v0, p0

    #@272
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@274
    move-object/from16 v21, v0

    #@276
    const-string/jumbo v22, "restored changed; rewriting"

    #@279
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27c
    .line 333
    :cond_c
    const-string/jumbo v21, ":"

    #@27f
    .line 334
    move-object/from16 v0, p0

    #@281
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mRestored:Landroid/util/ArraySet;

    #@283
    move-object/from16 v22, v0

    #@285
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    #@288
    move-result-object v22

    #@289
    .line 333
    invoke-static/range {v21 .. v22}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@28c
    move-result-object v10

    #@28d
    .line 336
    .local v10, "flatRestored":Ljava/lang/String;
    move-object/from16 v0, p0

    #@28f
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@291
    move-object/from16 v21, v0

    #@293
    invoke-static/range {v21 .. v21}, Lcom/android/server/notification/ManagedServices;->restoredSettingName(Lcom/android/server/notification/ManagedServices$Config;)Ljava/lang/String;

    #@296
    move-result-object v21

    #@297
    .line 335
    move-object/from16 v0, v21

    #@299
    move/from16 v1, p1

    #@29b
    invoke-static {v5, v0, v10, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@29e
    .line 266
    .end local v4    # "count":I
    .end local v9    # "flatOut":Ljava/lang/String;
    .end local v10    # "flatRestored":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v13    # "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v14    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    return-void
.end method

.method private getCaption()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 130
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
    .line 142
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

.method private rebindServices()V
    .locals 25

    #@0
    .prologue
    .line 348
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@4
    move/from16 v21, v0

    #@6
    if-eqz v21, :cond_0

    #@8
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@c
    move-object/from16 v21, v0

    #@e
    const-string/jumbo v22, "rebindServices"

    #@11
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 349
    :cond_0
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@18
    move-object/from16 v21, v0

    #@1a
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    #@1d
    move-result-object v20

    #@1e
    .line 350
    .local v20, "userIds":[I
    move-object/from16 v0, v20

    #@20
    array-length v11, v0

    #@21
    .line 352
    .local v11, "nUserIds":I
    new-instance v6, Landroid/util/SparseArray;

    #@23
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    #@26
    .line 354
    .local v6, "flat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v7, 0x0

    #@27
    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_1

    #@29
    .line 355
    aget v21, v20, v7

    #@2b
    .line 356
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@2f
    move-object/from16 v22, v0

    #@31
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@34
    move-result-object v22

    #@35
    .line 357
    move-object/from16 v0, p0

    #@37
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@39
    move-object/from16 v23, v0

    #@3b
    move-object/from16 v0, v23

    #@3d
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@3f
    move-object/from16 v23, v0

    #@41
    .line 358
    aget v24, v20, v7

    #@43
    .line 355
    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@46
    move-result-object v22

    #@47
    move/from16 v0, v21

    #@49
    move-object/from16 v1, v22

    #@4b
    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4e
    .line 354
    add-int/lit8 v7, v7, 0x1

    #@50
    goto :goto_0

    #@51
    .line 361
    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    #@53
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@56
    .line 363
    .local v19, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    new-instance v17, Landroid/util/SparseArray;

    #@58
    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    #@5b
    .line 365
    .local v17, "toAdd":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Landroid/content/ComponentName;>;>;"
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@5f
    move-object/from16 v22, v0

    #@61
    monitor-enter v22

    #@62
    .line 367
    :try_start_0
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@66
    move-object/from16 v21, v0

    #@68
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object v16

    #@6c
    .local v16, "service$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v21

    #@70
    if-eqz v21, :cond_3

    #@72
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v15

    #@76
    check-cast v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@78
    .line 368
    .local v15, "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-boolean v0, v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    #@7a
    move/from16 v21, v0

    #@7c
    if-nez v21, :cond_2

    #@7e
    .line 369
    move-object/from16 v0, v19

    #@80
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    goto :goto_1

    #@84
    .line 365
    .end local v15    # "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v16    # "service$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v21

    #@85
    monitor-exit v22

    #@86
    throw v21

    #@87
    .line 373
    .restart local v16    # "service$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    new-instance v12, Landroid/util/ArraySet;

    #@89
    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    #@8c
    .line 374
    .local v12, "newEnabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v13, Landroid/util/ArraySet;

    #@8e
    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    #@91
    .line 376
    .local v13, "newPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    #@92
    :goto_2
    if-ge v7, v11, :cond_6

    #@94
    .line 377
    new-instance v3, Ljava/util/ArrayList;

    #@96
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@99
    .line 378
    .local v3, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    aget v21, v20, v7

    #@9b
    move-object/from16 v0, v17

    #@9d
    move/from16 v1, v21

    #@9f
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@a2
    .line 381
    aget v21, v20, v7

    #@a4
    move/from16 v0, v21

    #@a6
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a9
    move-result-object v18

    #@aa
    check-cast v18, Ljava/lang/String;

    #@ac
    .line 382
    .local v18, "toDecode":Ljava/lang/String;
    if-eqz v18, :cond_5

    #@ae
    .line 383
    const-string/jumbo v21, ":"

    #@b1
    move-object/from16 v0, v18

    #@b3
    move-object/from16 v1, v21

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@b8
    move-result-object v5

    #@b9
    .line 384
    .local v5, "components":[Ljava/lang/String;
    const/4 v10, 0x0

    #@ba
    .local v10, "j":I
    :goto_3
    array-length v0, v5

    #@bb
    move/from16 v21, v0

    #@bd
    move/from16 v0, v21

    #@bf
    if-ge v10, v0, :cond_5

    #@c1
    .line 386
    aget-object v21, v5, v10

    #@c3
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@c6
    move-result-object v4

    #@c7
    .line 387
    .local v4, "component":Landroid/content/ComponentName;
    if-eqz v4, :cond_4

    #@c9
    .line 388
    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@cc
    .line 389
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cf
    .line 390
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@d2
    move-result-object v21

    #@d3
    move-object/from16 v0, v21

    #@d5
    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@d8
    .line 384
    :cond_4
    add-int/lit8 v10, v10, 0x1

    #@da
    goto :goto_3

    #@db
    .line 376
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "components":[Ljava/lang/String;
    .end local v10    # "j":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    #@dd
    goto :goto_2

    #@de
    .line 396
    .end local v3    # "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v18    # "toDecode":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    #@e0
    iput-object v12, v0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    #@e2
    .line 397
    move-object/from16 v0, p0

    #@e4
    iput-object v13, v0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e6
    monitor-exit v22

    #@e7
    .line 400
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ea
    move-result-object v9

    #@eb
    .local v9, "info$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@ee
    move-result v21

    #@ef
    if-eqz v21, :cond_7

    #@f1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f4
    move-result-object v8

    #@f5
    check-cast v8, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@f7
    .line 401
    .local v8, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v8, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@f9
    .line 402
    .restart local v4    # "component":Landroid/content/ComponentName;
    iget v14, v8, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@fb
    .line 403
    .local v14, "oldUser":I
    move-object/from16 v0, p0

    #@fd
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@ff
    move-object/from16 v21, v0

    #@101
    new-instance v22, Ljava/lang/StringBuilder;

    #@103
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v23, "disabling "

    #@109
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v22

    #@10d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@110
    move-result-object v23

    #@111
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v22

    #@115
    const-string/jumbo v23, " for user "

    #@118
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v22

    #@11c
    move-object/from16 v0, v22

    #@11e
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@121
    move-result-object v22

    #@122
    .line 404
    const-string/jumbo v23, ": "

    #@125
    .line 403
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v22

    #@129
    move-object/from16 v0, v22

    #@12b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v22

    #@12f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@132
    move-result-object v22

    #@133
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@136
    .line 405
    iget v0, v8, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@138
    move/from16 v21, v0

    #@13a
    move-object/from16 v0, p0

    #@13c
    move/from16 v1, v21

    #@13e
    invoke-direct {v0, v4, v1}, Lcom/android/server/notification/ManagedServices;->unregisterService(Landroid/content/ComponentName;I)V

    #@141
    goto :goto_4

    #@142
    .line 408
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v8    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v14    # "oldUser":I
    :cond_7
    const/4 v7, 0x0

    #@143
    :goto_5
    if-ge v7, v11, :cond_9

    #@145
    .line 409
    aget v21, v20, v7

    #@147
    move-object/from16 v0, v17

    #@149
    move/from16 v1, v21

    #@14b
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14e
    move-result-object v3

    #@14f
    check-cast v3, Ljava/util/ArrayList;

    #@151
    .line 410
    .restart local v3    # "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@154
    move-result v2

    #@155
    .line 411
    .local v2, "N":I
    const/4 v10, 0x0

    #@156
    .restart local v10    # "j":I
    :goto_6
    if-ge v10, v2, :cond_8

    #@158
    .line 412
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15b
    move-result-object v4

    #@15c
    check-cast v4, Landroid/content/ComponentName;

    #@15e
    .line 413
    .restart local v4    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@160
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@162
    move-object/from16 v21, v0

    #@164
    new-instance v22, Ljava/lang/StringBuilder;

    #@166
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@169
    const-string/jumbo v23, "enabling "

    #@16c
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v22

    #@170
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@173
    move-result-object v23

    #@174
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v22

    #@178
    const-string/jumbo v23, " for user "

    #@17b
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v22

    #@17f
    aget v23, v20, v7

    #@181
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@184
    move-result-object v22

    #@185
    const-string/jumbo v23, ": "

    #@188
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v22

    #@18c
    move-object/from16 v0, v22

    #@18e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v22

    #@192
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@195
    move-result-object v22

    #@196
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@199
    .line 415
    aget v21, v20, v7

    #@19b
    move-object/from16 v0, p0

    #@19d
    move/from16 v1, v21

    #@19f
    invoke-direct {v0, v4, v1}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V

    #@1a2
    .line 411
    add-int/lit8 v10, v10, 0x1

    #@1a4
    goto :goto_6

    #@1a5
    .line 408
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    #@1a7
    goto :goto_5

    #@1a8
    .line 419
    .end local v2    # "N":I
    .end local v3    # "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v10    # "j":I
    :cond_9
    move-object/from16 v0, p0

    #@1aa
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@1ac
    move-object/from16 v21, v0

    #@1ae
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    #@1b1
    move-result-object v21

    #@1b2
    move-object/from16 v0, v21

    #@1b4
    move-object/from16 v1, p0

    #@1b6
    iput-object v0, v1, Lcom/android/server/notification/ManagedServices;->mLastSeenProfileIds:[I

    #@1b8
    .line 347
    return-void
.end method

.method private registerService(Landroid/content/ComponentName;I)V
    .locals 17
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 426
    move-object/from16 v0, p0

    #@2
    iget-boolean v12, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@4
    if-eqz v12, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@a
    new-instance v13, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v14, "registerService: "

    #@12
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v13

    #@16
    move-object/from16 v0, p1

    #@18
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v13

    #@1c
    const-string/jumbo v14, " u="

    #@1f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v13

    #@23
    move/from16 v0, p2

    #@25
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v13

    #@29
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v13

    #@2d
    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 428
    :cond_0
    move-object/from16 v0, p0

    #@32
    iget-object v13, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@34
    monitor-enter v13

    #@35
    .line 429
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    #@3d
    move-result-object v14

    #@3e
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v12

    #@42
    const-string/jumbo v14, "/"

    #@45
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v12

    #@49
    move/from16 v0, p2

    #@4b
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v12

    #@4f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v10

    #@53
    .line 430
    .local v10, "servicesBindingTag":Ljava/lang/String;
    move-object/from16 v0, p0

    #@55
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    #@57
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    move-result v12

    #@5b
    if-eqz v12, :cond_1

    #@5d
    monitor-exit v13

    #@5e
    .line 432
    return-void

    #@5f
    .line 434
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@61
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@66
    .line 436
    move-object/from16 v0, p0

    #@68
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@6a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@6d
    move-result v2

    #@6e
    .line 437
    .local v2, "N":I
    add-int/lit8 v6, v2, -0x1

    #@70
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_4

    #@72
    .line 438
    move-object/from16 v0, p0

    #@74
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@76
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@79
    move-result-object v7

    #@7a
    check-cast v7, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@7c
    .line 439
    .local v7, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v12, v7, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@7e
    move-object/from16 v0, p1

    #@80
    invoke-virtual {v0, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v12

    #@84
    if-eqz v12, :cond_3

    #@86
    .line 440
    iget v12, v7, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@88
    move/from16 v0, p2

    #@8a
    if-ne v12, v0, :cond_3

    #@8c
    .line 442
    move-object/from16 v0, p0

    #@8e
    iget-boolean v12, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@90
    if-eqz v12, :cond_2

    #@92
    move-object/from16 v0, p0

    #@94
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@96
    new-instance v14, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v15, "    disconnecting old "

    #@9e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v14

    #@a2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@a5
    move-result-object v15

    #@a6
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v14

    #@aa
    const-string/jumbo v15, ": "

    #@ad
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v14

    #@b1
    .line 443
    iget-object v15, v7, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@b3
    .line 442
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v14

    #@b7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v14

    #@bb
    invoke-static {v12, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@be
    .line 444
    :cond_2
    move-object/from16 v0, p0

    #@c0
    invoke-direct {v0, v6}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@c3
    .line 445
    iget-object v12, v7, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@c5
    if-eqz v12, :cond_3

    #@c7
    .line 446
    move-object/from16 v0, p0

    #@c9
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@cb
    iget-object v14, v7, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@cd
    invoke-virtual {v12, v14}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@d0
    .line 437
    :cond_3
    add-int/lit8 v6, v6, -0x1

    #@d2
    goto :goto_0

    #@d3
    .line 451
    .end local v7    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_4
    new-instance v8, Landroid/content/Intent;

    #@d5
    move-object/from16 v0, p0

    #@d7
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@d9
    iget-object v12, v12, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    #@db
    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@de
    .line 452
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    #@e0
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@e3
    .line 454
    const-string/jumbo v12, "android.intent.extra.client_label"

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget-object v14, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@ea
    iget v14, v14, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    #@ec
    invoke-virtual {v8, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@ef
    .line 457
    move-object/from16 v0, p0

    #@f1
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@f3
    new-instance v14, Landroid/content/Intent;

    #@f5
    move-object/from16 v0, p0

    #@f7
    iget-object v15, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@f9
    iget-object v15, v15, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    #@fb
    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@fe
    const/4 v15, 0x0

    #@ff
    const/16 v16, 0x0

    #@101
    .line 456
    move/from16 v0, v16

    #@103
    invoke-static {v12, v15, v14, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@106
    move-result-object v9

    #@107
    .line 458
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v12, "android.intent.extra.client_intent"

    #@10a
    invoke-virtual {v8, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10d
    .line 460
    const/4 v3, 0x0

    #@10e
    .line 462
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    move-object/from16 v0, p0

    #@110
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@112
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@115
    move-result-object v12

    #@116
    .line 463
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@119
    move-result-object v14

    #@11a
    const/4 v15, 0x0

    #@11b
    .line 462
    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@11e
    move-result-object v3

    #@11f
    .line 468
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v3, :cond_6

    #@121
    :try_start_3
    iget v11, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@123
    .line 471
    .local v11, "targetSdkVersion":I
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    #@125
    iget-boolean v12, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@127
    if-eqz v12, :cond_5

    #@129
    move-object/from16 v0, p0

    #@12b
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@12d
    new-instance v14, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    const-string/jumbo v15, "binding: "

    #@135
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v14

    #@139
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v14

    #@13d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@140
    move-result-object v14

    #@141
    invoke-static {v12, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@144
    .line 472
    :cond_5
    move-object/from16 v0, p0

    #@146
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@148
    .line 473
    new-instance v14, Lcom/android/server/notification/ManagedServices$1;

    #@14a
    move-object/from16 v0, p0

    #@14c
    move/from16 v1, p2

    #@14e
    invoke-direct {v14, v0, v10, v1, v11}, Lcom/android/server/notification/ManagedServices$1;-><init>(Lcom/android/server/notification/ManagedServices;Ljava/lang/String;II)V

    #@151
    .line 503
    new-instance v15, Landroid/os/UserHandle;

    #@153
    move/from16 v0, p2

    #@155
    invoke-direct {v15, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@158
    .line 502
    const v16, 0x4000001

    #@15b
    .line 472
    move/from16 v0, v16

    #@15d
    invoke-virtual {v12, v8, v14, v0, v15}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@160
    move-result v12

    #@161
    if-nez v12, :cond_7

    #@163
    .line 505
    move-object/from16 v0, p0

    #@165
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    #@167
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@16a
    .line 506
    move-object/from16 v0, p0

    #@16c
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@16e
    new-instance v14, Ljava/lang/StringBuilder;

    #@170
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@173
    const-string/jumbo v15, "Unable to bind "

    #@176
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v14

    #@17a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@17d
    move-result-object v15

    #@17e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v14

    #@182
    const-string/jumbo v15, " service: "

    #@185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v14

    #@189
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v14

    #@18d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object v14

    #@191
    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@194
    monitor-exit v13

    #@195
    .line 507
    return-void

    #@196
    .line 468
    .end local v11    # "targetSdkVersion":I
    :cond_6
    const/4 v11, 0x1

    #@197
    .restart local v11    # "targetSdkVersion":I
    goto :goto_2

    #@198
    .line 509
    :catch_0
    move-exception v5

    #@199
    .line 510
    .local v5, "ex":Ljava/lang/SecurityException;
    :try_start_5
    move-object/from16 v0, p0

    #@19b
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@19d
    new-instance v14, Ljava/lang/StringBuilder;

    #@19f
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1a2
    const-string/jumbo v15, "Unable to bind "

    #@1a5
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v14

    #@1a9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@1ac
    move-result-object v15

    #@1ad
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v14

    #@1b1
    const-string/jumbo v15, " service: "

    #@1b4
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v14

    #@1b8
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v14

    #@1bc
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bf
    move-result-object v14

    #@1c0
    invoke-static {v12, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1c3
    monitor-exit v13

    #@1c4
    .line 511
    return-void

    #@1c5
    .end local v5    # "ex":Ljava/lang/SecurityException;
    :cond_7
    monitor-exit v13

    #@1c6
    .line 425
    return-void

    #@1c7
    .line 428
    .end local v2    # "N":I
    .end local v6    # "i":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v10    # "servicesBindingTag":Ljava/lang/String;
    .end local v11    # "targetSdkVersion":I
    :catchall_0
    move-exception v12

    #@1c8
    monitor-exit v13

    #@1c9
    throw v12

    #@1ca
    .line 464
    .restart local v2    # "N":I
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "i":I
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v10    # "servicesBindingTag":Ljava/lang/String;
    :catch_1
    move-exception v4

    #@1cb
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1
.end method

.method private registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 11
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 577
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@3
    monitor-enter v9

    #@4
    .line 580
    const/4 v4, 0x1

    #@5
    const/4 v5, 0x0

    #@6
    const/16 v6, 0x15

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move v3, p3

    #@c
    .line 579
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@f
    move-result-object v8

    #@10
    .line 581
    .local v8, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v0

    #@14
    const/4 v1, 0x0

    #@15
    invoke-interface {v0, v8, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@18
    .line 582
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v9

    #@1e
    .line 583
    return-object v8

    #@1f
    .line 584
    .end local v8    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catch_0
    move-exception v7

    #@20
    .local v7, "e":Landroid/os/RemoteException;
    monitor-exit v9

    #@21
    .line 588
    return-object v10

    #@22
    .line 577
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v9

    #@24
    throw v0
.end method

.method private removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 8
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 547
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
    .line 548
    :cond_0
    const/4 v3, 0x0

    #@29
    .line 549
    .local v3, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@2b
    monitor-enter v5

    #@2c
    .line 550
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v0

    #@32
    .line 551
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@34
    .end local v3    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@36
    .line 552
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@3e
    .line 553
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
    .line 554
    iget v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@4c
    if-ne v4, p2, :cond_2

    #@4e
    .line 555
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
    .line 556
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    move-result-object v3

    #@71
    .line 551
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@73
    goto :goto_0

    #@74
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_3
    monitor-exit v5

    #@75
    .line 560
    return-object v3

    #@76
    .line 549
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
    .line 564
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@8
    .line 565
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    #@b
    .line 566
    return-object v0
.end method

.method public static final restoredSettingName(Lcom/android/server/notification/ManagedServices$Config;)Ljava/lang/String;
    .locals 2
    .param p0, "config"    # Lcom/android/server/notification/ManagedServices$Config;

    #@0
    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ":restored"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method private unregisterService(Landroid/content/ComponentName;I)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 520
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 521
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 522
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    #@b
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@d
    .line 523
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@15
    .line 524
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@17
    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    .line 525
    iget v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@1f
    if-ne v4, p2, :cond_0

    #@21
    .line 526
    invoke-direct {p0, v2}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@24
    .line 527
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 529
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@2a
    iget-object v6, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@2c
    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    .line 522
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@31
    goto :goto_0

    #@32
    .line 530
    :catch_0
    move-exception v1

    #@33
    .line 533
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@35
    new-instance v6, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    const-string/jumbo v7, " "

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    const-string/jumbo v7, " could not be unbound: "

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    goto :goto_1

    #@60
    .line 520
    .end local v0    # "N":I
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v4

    #@61
    monitor-exit v5

    #@62
    throw v4

    #@63
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    monitor-exit v5

    #@64
    .line 519
    return-void
.end method

.method private unregisterServiceImpl(Landroid/os/IInterface;I)V
    .locals 3
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 595
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@3
    move-result-object v0

    #@4
    .line 596
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_0

    #@6
    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 597
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@c
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@e
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@11
    .line 594
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 7
    .param p1, "service"    # Landroid/os/IInterface;

    #@0
    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    #@3
    .line 230
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    .line 231
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    .line 232
    .local v0, "N":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@10
    .line 233
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@18
    .line 234
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@1a
    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v4

    #@1e
    if-ne v4, v3, :cond_0

    #@20
    return-object v2

    #@21
    .line 232
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 236
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    #@26
    new-instance v5, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v6, "Disallowed call from unknown "

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    const-string/jumbo v6, ": "

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v4
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "    All "

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    const-string/jumbo v5, "s ("

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    #@1d
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    #@20
    move-result v5

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 152
    const-string/jumbo v5, ") enabled for current profiles:"

    #@28
    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33
    .line 153
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    #@35
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v1

    #@39
    .local v1, "cmpt$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_2

    #@3f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/content/ComponentName;

    #@45
    .line 154
    .local v0, "cmpt":Landroid/content/ComponentName;
    if-eqz p2, :cond_1

    #@47
    invoke-virtual {p2, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_0

    #@4d
    .line 155
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v5, "      "

    #@55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    goto :goto_0

    #@65
    .line 158
    .end local v0    # "cmpt":Landroid/content/ComponentName;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v5, "    Live "

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    const-string/jumbo v5, "s ("

    #@7c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@85
    move-result v5

    #@86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    const-string/jumbo v5, "):"

    #@8d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@98
    .line 159
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@9a
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9d
    move-result-object v3

    #@9e
    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@a1
    move-result v4

    #@a2
    if-eqz v4, :cond_6

    #@a4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a7
    move-result-object v2

    #@a8
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@aa
    .line 160
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_4

    #@ac
    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@ae
    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    #@b1
    move-result v4

    #@b2
    if-eqz v4, :cond_3

    #@b4
    .line 161
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v5, "      "

    #@bc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v4

    #@c0
    iget-object v5, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@c2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v4

    #@c6
    .line 162
    const-string/jumbo v5, " (user "

    #@c9
    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v4

    #@cd
    .line 162
    iget v5, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@cf
    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v4

    #@d3
    .line 162
    const-string/jumbo v5, "): "

    #@d6
    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v4

    #@da
    .line 162
    iget-object v5, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@dc
    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v5

    #@e0
    .line 163
    iget-boolean v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    #@e2
    if-eqz v4, :cond_5

    #@e4
    const-string/jumbo v4, " SYSTEM"

    #@e7
    .line 161
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v4

    #@eb
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v4

    #@ef
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f2
    goto :goto_1

    #@f3
    .line 163
    :cond_5
    const-string/jumbo v4, ""

    #@f6
    goto :goto_2

    #@f7
    .line 150
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_6
    return-void
.end method

.method protected abstract getConfig()Lcom/android/server/notification/ManagedServices$Config;
.end method

.method public isComponentEnabledForPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onBootPhaseAppsCanStart()V
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSettingsObserver:Lcom/android/server/notification/ManagedServices$SettingsObserver;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices$SettingsObserver;->-wrap0(Lcom/android/server/notification/ManagedServices$SettingsObserver;)V

    #@5
    .line 146
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;)V
    .locals 7
    .param p1, "queryReplace"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 197
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
    const-string/jumbo v6, "onPackagesChanged queryReplace="

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    .line 198
    const-string/jumbo v6, " pkgList="

    #@1b
    .line 197
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    .line 198
    if-nez p2, :cond_2

    #@21
    .line 197
    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 199
    const-string/jumbo v5, " mEnabledServicesPackageNames="

    #@28
    .line 197
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 199
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    #@2e
    .line 197
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
    .line 200
    :cond_0
    const/4 v0, 0x0

    #@3a
    .line 201
    .local v0, "anyServicesInvolved":Z
    if-eqz p2, :cond_3

    #@3c
    array-length v2, p2

    #@3d
    if-lez v2, :cond_3

    #@3f
    .line 202
    array-length v4, p2

    #@40
    move v2, v3

    #@41
    :goto_1
    if-ge v2, v4, :cond_3

    #@43
    aget-object v1, p2, v2

    #@45
    .line 203
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    #@47
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_1

    #@4d
    .line 204
    const/4 v0, 0x1

    #@4e
    .line 202
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_1

    #@51
    .line 198
    .end local v0    # "anyServicesInvolved":Z
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@54
    move-result-object v2

    #@55
    goto :goto_0

    #@56
    .line 209
    .restart local v0    # "anyServicesInvolved":Z
    :cond_3
    if-eqz v0, :cond_5

    #@58
    .line 211
    if-nez p1, :cond_4

    #@5a
    .line 212
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->disableNonexistentServices()V

    #@5d
    .line 215
    :cond_4
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->rebindServices()V

    #@60
    .line 196
    :cond_5
    return-void
.end method

.method protected abstract onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 0
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 137
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 3
    .param p1, "user"    # I

    #@0
    .prologue
    .line 220
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
    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mLastSeenProfileIds:[I

    #@1f
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@21
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 222
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@2d
    if-eqz v0, :cond_1

    #@2f
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@31
    const-string/jumbo v1, "Current profile IDs didn\'t change, skipping rebindServices()."

    #@34
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 223
    :cond_1
    return-void

    #@38
    .line 225
    :cond_2
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->rebindServices()V

    #@3b
    .line 219
    return-void
.end method

.method public registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    #@0
    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    #@3
    .line 249
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@6
    move-result-object v0

    #@7
    .line 250
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_0

    #@9
    .line 251
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    #@c
    .line 247
    :cond_0
    return-void
.end method

.method public settingRestored(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;
    .param p4, "userid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 178
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Restored managed service setting: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 179
    const-string/jumbo v2, " ovalue="

    #@1a
    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 179
    const-string/jumbo v2, " nvalue="

    #@25
    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@36
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_1

    #@3e
    .line 181
    if-eqz p1, :cond_1

    #@40
    .line 182
    iput-object v3, p0, Lcom/android/server/notification/ManagedServices;->mRestored:Landroid/util/ArraySet;

    #@42
    .line 183
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    #@44
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@47
    move-result-object v0

    #@48
    .line 184
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@4a
    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->restoredSettingName(Lcom/android/server/notification/ManagedServices$Config;)Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    .line 183
    invoke-static {v0, v1, p3, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@51
    .line 187
    invoke-direct {p0, p4}, Lcom/android/server/notification/ManagedServices;->disableNonexistentServices(I)V

    #@54
    .line 177
    :cond_1
    return-void
.end method

.method public unregisterService(Landroid/os/IInterface;I)V
    .locals 0
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    #@3
    .line 244
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterServiceImpl(Landroid/os/IInterface;I)V

    #@6
    .line 240
    return-void
.end method
