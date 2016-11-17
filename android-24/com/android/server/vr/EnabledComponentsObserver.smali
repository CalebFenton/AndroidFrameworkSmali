.class public Lcom/android/server/vr/EnabledComponentsObserver;
.super Ljava/lang/Object;
.source "EnabledComponentsObserver.java"

# interfaces
.implements Lcom/android/server/vr/SettingsObserver$SettingChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;
    }
.end annotation


# static fields
.field public static final DISABLED:I = -0x1

.field private static final ENABLED_SERVICES_SEPARATOR:Ljava/lang/String; = ":"

.field public static final NOT_INSTALLED:I = -0x2

.field public static final NO_ERROR:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEnabledComponentListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInstalledSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mServiceName:Ljava/lang/String;

.field private final mServicePermission:Ljava/lang/String;

.field private final mSettingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    const-class v0, Lcom/android/server/vr/EnabledComponentsObserver;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/vr/EnabledComponentsObserver;->TAG:Ljava/lang/String;

    #@8
    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "servicePermission"    # Ljava/lang/String;
    .param p4, "serviceName"    # Ljava/lang/String;
    .param p5, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 79
    .local p6, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    #@a
    .line 65
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    #@11
    .line 66
    new-instance v0, Landroid/util/ArraySet;

    #@13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledComponentListeners:Ljava/util/Set;

    #@18
    .line 82
    iput-object p5, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    #@1a
    .line 83
    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    #@1c
    .line 84
    iput-object p2, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mSettingName:Ljava/lang/String;

    #@1e
    .line 85
    iput-object p4, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServiceName:Ljava/lang/String;

    #@20
    .line 86
    iput-object p3, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServicePermission:Ljava/lang/String;

    #@22
    .line 87
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledComponentListeners:Ljava/util/Set;

    #@24
    invoke-interface {v0, p6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@27
    .line 81
    return-void
.end method

.method public static build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)Lcom/android/server/vr/EnabledComponentsObserver;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "servicePermission"    # Ljava/lang/String;
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Landroid/os/Looper;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;",
            ">;)",
            "Lcom/android/server/vr/EnabledComponentsObserver;"
        }
    .end annotation

    #@0
    .prologue
    .line 108
    .local p7, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    invoke-static {p0, p1, p2}, Lcom/android/server/vr/SettingsObserver;->build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)Lcom/android/server/vr/SettingsObserver;

    #@3
    move-result-object v8

    #@4
    .line 110
    .local v8, "s":Lcom/android/server/vr/SettingsObserver;
    new-instance v0, Lcom/android/server/vr/EnabledComponentsObserver;

    #@6
    move-object v1, p0

    #@7
    move-object v2, p2

    #@8
    move-object v3, p4

    #@9
    move-object v4, p5

    #@a
    move-object v5, p6

    #@b
    move-object/from16 v6, p7

    #@d
    invoke-direct/range {v0 .. v6}, Lcom/android/server/vr/EnabledComponentsObserver;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)V

    #@10
    .line 113
    .local v0, "o":Lcom/android/server/vr/EnabledComponentsObserver;
    new-instance v7, Lcom/android/server/vr/EnabledComponentsObserver$1;

    #@12
    invoke-direct {v7, v0}, Lcom/android/server/vr/EnabledComponentsObserver$1;-><init>(Lcom/android/server/vr/EnabledComponentsObserver;)V

    #@15
    .line 141
    .local v7, "packageMonitor":Lcom/android/internal/content/PackageMonitor;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@17
    const/4 v2, 0x1

    #@18
    invoke-virtual {v7, p0, p3, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@1b
    .line 143
    invoke-virtual {v8, v0}, Lcom/android/server/vr/SettingsObserver;->addListener(Lcom/android/server/vr/SettingsObserver$SettingChangeListener;)V

    #@1e
    .line 145
    return-object v0
.end method

.method private getCurrentProfileIds()[I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 235
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "user"

    #@6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/os/UserManager;

    #@c
    .line 236
    .local v0, "userManager":Landroid/os/UserManager;
    if-nez v0, :cond_0

    #@e
    .line 237
    return-object v3

    #@f
    .line 239
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@12
    move-result v1

    #@13
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public static loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 11
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    new-instance v4, Landroid/util/ArraySet;

    #@2
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 246
    .local v4, "installed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v6, Landroid/content/Intent;

    #@7
    invoke-direct {v6, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a
    .line 249
    .local v6, "queryIntent":Landroid/content/Intent;
    const/16 v8, 0x84

    #@c
    .line 247
    invoke-virtual {p0, v6, v8, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@f
    move-result-object v5

    #@10
    .line 251
    .local v5, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_1

    #@12
    .line 252
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@16
    move-result v1

    #@17
    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@19
    .line 253
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v7

    #@1d
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@1f
    .line 254
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@21
    .line 256
    .local v3, "info":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    #@23
    iget-object v8, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@25
    iget-object v9, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@27
    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    .line 257
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v8, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@2c
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v8

    #@30
    if-nez v8, :cond_0

    #@32
    .line 258
    sget-object v8, Lcom/android/server/vr/EnabledComponentsObserver;->TAG:Ljava/lang/String;

    #@34
    new-instance v9, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v10, "Skipping service "

    #@3c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v9

    #@40
    iget-object v10, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@42
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v9

    #@46
    const-string/jumbo v10, "/"

    #@49
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v9

    #@4d
    iget-object v10, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@4f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v9

    #@53
    .line 259
    const-string/jumbo v10, ": it does not require the permission "

    #@56
    .line 258
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v9

    #@5e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v9

    #@62
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 252
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@67
    goto :goto_0

    #@68
    .line 263
    :cond_0
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@6b
    goto :goto_1

    #@6c
    .line 266
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v4
.end method

.method private loadComponentNamesForUser(I)Landroid/util/ArraySet;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServiceName:Ljava/lang/String;

    #@8
    .line 271
    iget-object v2, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServicePermission:Ljava/lang/String;

    #@a
    .line 270
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;
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
    .line 276
    iget-object v6, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 277
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 281
    .local v4, "settingValue":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 282
    new-instance v6, Landroid/util/ArraySet;

    #@12
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    #@15
    return-object v6

    #@16
    .line 283
    :cond_0
    const-string/jumbo v6, ":"

    #@19
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 284
    .local v2, "restored":[Ljava/lang/String;
    new-instance v3, Landroid/util/ArraySet;

    #@1f
    array-length v6, v2

    #@20
    invoke-direct {v3, v6}, Landroid/util/ArraySet;-><init>(I)V

    #@23
    .line 285
    .local v3, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    #@24
    .local v1, "i":I
    :goto_0
    array-length v6, v2

    #@25
    if-ge v1, v6, :cond_2

    #@27
    .line 286
    aget-object v6, v2, v1

    #@29
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@2c
    move-result-object v5

    #@2d
    .line 287
    .local v5, "value":Landroid/content/ComponentName;
    if-eqz v5, :cond_1

    #@2f
    .line 288
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@32
    .line 285
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 291
    .end local v5    # "value":Landroid/content/ComponentName;
    :cond_2
    return-object v3
.end method

.method private sendSettingChanged()V
    .locals 3

    #@0
    .prologue
    .line 295
    iget-object v2, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledComponentListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;

    #@12
    .line 296
    .local v0, "l":Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;
    invoke-interface {v0}, Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;->onEnabledComponentChanged()V

    #@15
    goto :goto_0

    #@16
    .line 294
    .end local v0    # "l":Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public getEnabled(I)Landroid/util/ArraySet;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    .line 229
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public getInstalled(I)Landroid/util/ArraySet;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    .line 217
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public isValid(Landroid/content/ComponentName;I)I
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 197
    iget-object v3, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/util/ArraySet;

    #@b
    .line 199
    .local v0, "installedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    #@d
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 202
    iget-object v2, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/util/ArraySet;

    #@1b
    .line 203
    .local v1, "validComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_1

    #@1d
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 206
    const/4 v2, 0x0

    #@24
    monitor-exit v3

    #@25
    return v2

    #@26
    .line 200
    .end local v1    # "validComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_0
    const/4 v2, -0x2

    #@27
    monitor-exit v3

    #@28
    return v2

    #@29
    .line 204
    .restart local v1    # "validComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_1
    const/4 v2, -0x1

    #@2a
    monitor-exit v3

    #@2b
    return v2

    #@2c
    .line 197
    .end local v0    # "installedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v1    # "validComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit v3

    #@2e
    throw v2
.end method

.method public onPackagesChanged()V
    .locals 0

    #@0
    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    #@3
    .line 149
    return-void
.end method

.method public onSettingChanged()V
    .locals 0

    #@0
    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    #@3
    .line 154
    return-void
.end method

.method public onSettingRestored(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "prevValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    #@3
    .line 159
    return-void
.end method

.method public onUsersChanged()V
    .locals 0

    #@0
    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    #@3
    .line 163
    return-void
.end method

.method public rebuildAll()V
    .locals 8

    #@0
    .prologue
    .line 171
    iget-object v5, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 172
    :try_start_0
    iget-object v4, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    #@8
    .line 173
    iget-object v4, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    #@d
    .line 174
    invoke-direct {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->getCurrentProfileIds()[I

    #@10
    move-result-object v3

    #@11
    .line 175
    .local v3, "userIds":[I
    const/4 v4, 0x0

    #@12
    array-length v6, v3

    #@13
    :goto_0
    if-ge v4, v6, :cond_0

    #@15
    aget v0, v3, v4

    #@17
    .line 176
    .local v0, "i":I
    invoke-direct {p0, v0}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNamesForUser(I)Landroid/util/ArraySet;

    #@1a
    move-result-object v1

    #@1b
    .line 178
    .local v1, "implementingPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v7, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mSettingName:Ljava/lang/String;

    #@1d
    invoke-direct {p0, v7, v0}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;

    #@20
    move-result-object v2

    #@21
    .line 179
    .local v2, "packagesFromSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    #@24
    .line 181
    iget-object v7, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v7, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@29
    .line 182
    iget-object v7, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v7, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 175
    add-int/lit8 v4, v4, 0x1

    #@30
    goto :goto_0

    #@31
    .end local v0    # "i":I
    .end local v1    # "implementingPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v2    # "packagesFromSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_0
    monitor-exit v5

    #@32
    .line 186
    invoke-direct {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->sendSettingChanged()V

    #@35
    .line 170
    return-void

    #@36
    .line 171
    .end local v3    # "userIds":[I
    :catchall_0
    move-exception v4

    #@37
    monitor-exit v5

    #@38
    throw v4
.end method
