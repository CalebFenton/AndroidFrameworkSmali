.class public Lcom/android/server/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;,
        Lcom/android/server/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/TextServicesManagerService$Lifecycle;,
        Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;,
        Lcom/android/server/TextServicesManagerService$TextServicesMonitor;,
        Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

.field private final mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

.field private final mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/TextServicesManagerService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p1, "prefPackage"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->findAvailSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "map"    # Ljava/util/HashMap;
    .param p3, "settings"    # Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/TextServicesManagerService;->buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "sciId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 74
    const-class v0, Lcom/android/server/TextServicesManagerService;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@8
    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 149
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    #@4
    .line 80
    new-instance v4, Ljava/util/HashMap;

    #@6
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v4, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@b
    .line 81
    new-instance v4, Ljava/util/ArrayList;

    #@d
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v4, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    #@12
    .line 82
    new-instance v4, Ljava/util/HashMap;

    #@14
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@17
    iput-object v4, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@19
    .line 150
    const/4 v4, 0x0

    #@1a
    iput-boolean v4, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    #@1c
    .line 151
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@1e
    .line 153
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@20
    const-class v5, Landroid/os/UserManager;

    #@22
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Landroid/os/UserManager;

    #@28
    iput-object v4, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    #@2a
    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    #@2c
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@2f
    .line 156
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.USER_ADDED"

    #@32
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@35
    .line 157
    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    #@38
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3b
    .line 158
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@3d
    new-instance v5, Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;

    #@3f
    invoke-direct {v5, p0}, Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;-><init>(Lcom/android/server/TextServicesManagerService;)V

    #@42
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@45
    .line 160
    const/4 v3, 0x0

    #@46
    .line 162
    .local v3, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@49
    move-result-object v4

    #@4a
    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@4d
    move-result-object v4

    #@4e
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 166
    :goto_0
    new-instance v4, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    #@52
    invoke-direct {v4, p0, v6}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$TextServicesMonitor;)V

    #@55
    iput-object v4, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    #@57
    .line 167
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    #@59
    const/4 v5, 0x1

    #@5a
    invoke-virtual {v4, p1, v6, v5}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    #@5d
    .line 169
    iget-boolean v4, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    #@5f
    if-eqz v4, :cond_0

    #@61
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    #@63
    invoke-virtual {v4, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@66
    move-result v4

    #@67
    if-eqz v4, :cond_0

    #@69
    const/4 v2, 0x0

    #@6a
    .line 170
    .local v2, "useCopyOnWriteSettings":Z
    :goto_1
    new-instance v4, Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@6c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6f
    move-result-object v5

    #@70
    invoke-direct {v4, v5, v3, v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;-><init>(Landroid/content/ContentResolver;IZ)V

    #@73
    iput-object v4, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@75
    .line 174
    invoke-direct {p0, v3}, Lcom/android/server/TextServicesManagerService;->resetInternalState(I)V

    #@78
    .line 149
    return-void

    #@79
    .line 163
    .end local v2    # "useCopyOnWriteSettings":Z
    :catch_0
    move-exception v1

    #@7a
    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@7c
    const-string/jumbo v5, "Couldn\'t get current user ID; guessing it\'s 0"

    #@7f
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@82
    goto :goto_0

    #@83
    .line 169
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x1

    #@84
    .restart local v2    # "useCopyOnWriteSettings":Z
    goto :goto_1
.end method

.method private bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 359
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 360
    :cond_0
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "--- bind failed: service = "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ", conn = "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 361
    const/4 v0, 0x0

    #@29
    return v0

    #@2a
    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@2c
    .line 364
    new-instance v1, Landroid/os/UserHandle;

    #@2e
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@30
    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    #@33
    move-result v2

    #@34
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    #@37
    .line 363
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@3a
    move-result v0

    #@3b
    return v0
.end method

.method private static buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;",
            "Lcom/android/server/TextServicesManagerService$TextServicesSettings;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 255
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    #@3
    .line 256
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    #@6
    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v5

    #@a
    .line 262
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    #@c
    const-string/jumbo v11, "android.service.textservice.SpellCheckerService"

    #@f
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@12
    .line 263
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    #@15
    move-result v11

    #@16
    .line 262
    const/16 v12, 0x80

    #@18
    .line 261
    invoke-virtual {v5, v10, v12, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@1b
    move-result-object v8

    #@1c
    .line 264
    .local v8, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@1f
    move-result v0

    #@20
    .line 265
    .local v0, "N":I
    const/4 v4, 0x0

    #@21
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    #@23
    .line 266
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v6

    #@27
    check-cast v6, Landroid/content/pm/ResolveInfo;

    #@29
    .line 267
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2b
    .line 268
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    #@2d
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@2f
    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@31
    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 269
    .local v1, "compName":Landroid/content/ComponentName;
    const-string/jumbo v10, "android.permission.BIND_TEXT_SERVICE"

    #@37
    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@39
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v10

    #@3d
    if-nez v10, :cond_0

    #@3f
    .line 270
    sget-object v10, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@41
    new-instance v11, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v12, "Skipping text service "

    #@49
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v11

    #@4d
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v11

    #@51
    .line 271
    const-string/jumbo v12, ": it does not require the permission "

    #@54
    .line 270
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v11

    #@58
    .line 272
    const-string/jumbo v12, "android.permission.BIND_TEXT_SERVICE"

    #@5b
    .line 270
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v11

    #@5f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v11

    #@63
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 265
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@68
    goto :goto_0

    #@69
    .line 277
    :cond_0
    :try_start_0
    new-instance v7, Landroid/view/textservice/SpellCheckerInfo;

    #@6b
    invoke-direct {v7, p0, v6}, Landroid/view/textservice/SpellCheckerInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    #@6e
    .line 278
    .local v7, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    #@71
    move-result v10

    #@72
    if-gtz v10, :cond_1

    #@74
    .line 279
    sget-object v10, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@76
    new-instance v11, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v12, "Skipping text service "

    #@7e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v11

    #@82
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v11

    #@86
    .line 280
    const-string/jumbo v12, ": it does not contain subtypes."

    #@89
    .line 279
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v11

    #@8d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v11

    #@91
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@94
    goto :goto_1

    #@95
    .line 285
    .end local v7    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catch_0
    move-exception v3

    #@96
    .line 286
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v10, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@98
    new-instance v11, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v12, "Unable to load the spell checker "

    #@a0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v11

    #@a4
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v11

    #@a8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v11

    #@ac
    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@af
    goto :goto_1

    #@b0
    .line 283
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    :try_start_1
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b3
    .line 284
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    #@b6
    move-result-object v10

    #@b7
    invoke-virtual {p2, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@ba
    goto :goto_1

    #@bb
    .line 287
    .end local v7    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catch_1
    move-exception v2

    #@bc
    .line 288
    .local v2, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@be
    new-instance v11, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v12, "Unable to load the spell checker "

    #@c6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v11

    #@ca
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v11

    #@ce
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v11

    #@d2
    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d5
    goto :goto_1

    #@d6
    .line 254
    .end local v1    # "compName":Landroid/content/ComponentName;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :cond_2
    return-void
.end method

.method private calledFromValidUser()Z
    .locals 9

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v4

    #@6
    .line 302
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    #@9
    move-result v5

    #@a
    .line 319
    .local v5, "userId":I
    const/16 v8, 0x3e8

    #@c
    if-eq v4, v8, :cond_0

    #@e
    iget-object v8, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@10
    invoke-virtual {v8}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    #@13
    move-result v8

    #@14
    if-ne v5, v8, :cond_1

    #@16
    .line 320
    :cond_0
    return v6

    #@17
    .line 327
    :cond_1
    iget-object v8, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@19
    invoke-virtual {v8, v5}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isCurrentProfile(I)Z

    #@1c
    move-result v0

    #@1d
    .line 331
    .local v0, "isCurrentProfile":Z
    iget-object v8, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@1f
    invoke-virtual {v8, v5}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isCurrentProfile(I)Z

    #@22
    move-result v8

    #@23
    if-eqz v8, :cond_3

    #@25
    .line 332
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;

    #@28
    move-result-object v3

    #@29
    .line 333
    .local v3, "spellCheckerInfo":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v3, :cond_3

    #@2b
    .line 334
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@2e
    move-result-object v2

    #@2f
    .line 336
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@31
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    #@33
    and-int/lit8 v8, v8, 0x1

    #@35
    if-eqz v8, :cond_2

    #@37
    move v1, v6

    #@38
    .line 341
    .local v1, "isSystemSpellChecker":Z
    :goto_0
    if-eqz v1, :cond_3

    #@3a
    .line 342
    return v6

    #@3b
    .end local v1    # "isSystemSpellChecker":Z
    :cond_2
    move v1, v7

    #@3c
    .line 336
    goto :goto_0

    #@3d
    .line 354
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v3    # "spellCheckerInfo":Landroid/view/textservice/SpellCheckerInfo;
    :cond_3
    return v7
.end method

.method private findAvailSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 17
    .param p1, "prefPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 375
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v7

    #@8
    .line 376
    .local v7, "spellCheckersCount":I
    if-nez v7, :cond_0

    #@a
    .line 377
    sget-object v15, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v16, "no available spell checker services found"

    #@f
    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 378
    const/4 v15, 0x0

    #@13
    return-object v15

    #@14
    .line 380
    :cond_0
    if-eqz p1, :cond_2

    #@16
    .line 381
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_2

    #@19
    .line 382
    move-object/from16 v0, p0

    #@1b
    iget-object v15, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v6

    #@21
    check-cast v6, Landroid/view/textservice/SpellCheckerInfo;

    #@23
    .line 383
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    #@26
    move-result-object v15

    #@27
    move-object/from16 v0, p1

    #@29
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v15

    #@2d
    if-eqz v15, :cond_1

    #@2f
    .line 387
    return-object v6

    #@30
    .line 381
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 395
    .end local v1    # "i":I
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_2
    move-object/from16 v0, p0

    #@35
    iget-object v15, v0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@37
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3a
    move-result-object v15

    #@3b
    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@3e
    move-result-object v15

    #@3f
    iget-object v14, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@41
    .line 397
    .local v14, "systemLocal":Ljava/util/Locale;
    invoke-static {v14}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    #@44
    move-result-object v13

    #@45
    .line 402
    .local v13, "suitableLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v4

    #@49
    .line 403
    .local v4, "localeCount":I
    const/4 v5, 0x0

    #@4a
    .local v5, "localeIndex":I
    :goto_1
    if-ge v5, v4, :cond_6

    #@4c
    .line 404
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v3

    #@50
    check-cast v3, Ljava/util/Locale;

    #@52
    .line 405
    .local v3, "locale":Ljava/util/Locale;
    const/4 v8, 0x0

    #@53
    .local v8, "spellCheckersIndex":I
    :goto_2
    if-ge v8, v7, :cond_5

    #@55
    .line 407
    move-object/from16 v0, p0

    #@57
    iget-object v15, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    #@59
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object v2

    #@5d
    check-cast v2, Landroid/view/textservice/SpellCheckerInfo;

    #@5f
    .line 408
    .local v2, "info":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    #@62
    move-result v10

    #@63
    .line 409
    .local v10, "subtypeCount":I
    const/4 v11, 0x0

    #@64
    .local v11, "subtypeIndex":I
    :goto_3
    if-ge v11, v10, :cond_4

    #@66
    .line 410
    invoke-virtual {v2, v11}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    #@69
    move-result-object v9

    #@6a
    .line 412
    .local v9, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@6d
    move-result-object v15

    #@6e
    .line 411
    invoke-static {v15}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    #@71
    move-result-object v12

    #@72
    .line 413
    .local v12, "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v3, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v15

    #@76
    if-eqz v15, :cond_3

    #@78
    .line 417
    return-object v2

    #@79
    .line 409
    :cond_3
    add-int/lit8 v11, v11, 0x1

    #@7b
    goto :goto_3

    #@7c
    .line 406
    .end local v9    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v12    # "subtypeLocale":Ljava/util/Locale;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@7e
    goto :goto_2

    #@7f
    .line 403
    .end local v2    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v10    # "subtypeCount":I
    .end local v11    # "subtypeIndex":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    #@81
    goto :goto_1

    #@82
    .line 423
    .end local v3    # "locale":Ljava/util/Locale;
    .end local v8    # "spellCheckersIndex":I
    :cond_6
    const/4 v15, 0x1

    #@83
    if-le v7, v15, :cond_7

    #@85
    .line 424
    sget-object v15, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@87
    const-string/jumbo v16, "more than one spell checker service found, picking first"

    #@8a
    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 426
    :cond_7
    move-object/from16 v0, p0

    #@8f
    iget-object v15, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    #@91
    const/16 v16, 0x0

    #@93
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@96
    move-result-object v15

    #@97
    check-cast v15, Landroid/view/textservice/SpellCheckerInfo;

    #@99
    return-object v15
.end method

.method private getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;
    .locals 3

    #@0
    .prologue
    .line 441
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@5
    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getSelectedSpellChecker()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 446
    .local v0, "curSpellCheckerId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 447
    const/4 v1, 0x0

    #@10
    monitor-exit v2

    #@11
    return-object v1

    #@12
    .line 449
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@14
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    return-object v1

    #@1c
    .line 441
    .end local v0    # "curSpellCheckerId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method private static getStackTrace()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 1188
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1190
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/lang/RuntimeException;

    #@7
    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    #@a
    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1191
    :catch_0
    move-exception v0

    #@c
    .line 1192
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@f
    move-result-object v1

    #@10
    .line 1194
    .local v1, "frames":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    #@11
    .local v2, "j":I
    :goto_0
    array-length v4, v1

    #@12
    if-ge v2, v4, :cond_0

    #@14
    .line 1195
    aget-object v4, v1, v2

    #@16
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, "\n"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 1194
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1198
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    return-object v4
.end method

.method private isSpellCheckerEnabledLocked()Z
    .locals 4

    #@0
    .prologue
    .line 774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 776
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@6
    invoke-virtual {v3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isSpellCheckerEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v2

    #@a
    .line 782
    .local v2, "retval":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 780
    return v2

    #@e
    .line 781
    .end local v2    # "retval":Z
    :catchall_0
    move-exception v3

    #@f
    .line 782
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 781
    throw v3
.end method

.method private resetInternalState(I)V
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 179
    iget-boolean v2, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    #@3
    if-eqz v2, :cond_1

    #@5
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    #@7
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    const/4 v1, 0x0

    #@e
    .line 180
    .local v1, "useCopyOnWriteSettings":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@10
    invoke-virtual {v2, p1, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->switchCurrentUser(IZ)V

    #@13
    .line 181
    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService;->updateCurrentProfileIds()V

    #@16
    .line 182
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->unbindServiceLocked()V

    #@19
    .line 183
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@1b
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    #@1d
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@1f
    iget-object v5, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@21
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/TextServicesManagerService;->buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    #@24
    .line 184
    invoke-virtual {p0, v6}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    #@27
    move-result-object v0

    #@28
    .line 185
    .local v0, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v0, :cond_0

    #@2a
    .line 186
    invoke-direct {p0, v6}, Lcom/android/server/TextServicesManagerService;->findAvailSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    #@2d
    move-result-object v0

    #@2e
    .line 187
    if-eqz v0, :cond_0

    #@30
    .line 191
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-direct {p0, v2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    #@37
    .line 177
    :cond_0
    return-void

    #@38
    .line 179
    .end local v0    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v1    # "useCopyOnWriteSettings":Z
    :cond_1
    const/4 v1, 0x1

    #@39
    .restart local v1    # "useCopyOnWriteSettings":Z
    goto :goto_0
.end method

.method private setCurrentSpellCheckerLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "sciId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 726
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@9
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 727
    invoke-virtual {p0, v4}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    #@12
    move-result-object v0

    #@13
    .line 728
    .local v0, "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v0, :cond_1

    #@15
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 730
    return-void

    #@20
    .line 726
    .end local v0    # "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_0
    return-void

    #@21
    .line 732
    .restart local v0    # "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@24
    move-result-wide v2

    #@25
    .line 734
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@27
    invoke-virtual {v1, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putSelectedSpellChecker(Ljava/lang/String;)V

    #@2a
    .line 735
    const/4 v1, 0x0

    #@2b
    invoke-direct {p0, v1}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerSubtypeLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 737
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 722
    return-void

    #@32
    .line 736
    :catchall_0
    move-exception v1

    #@33
    .line 737
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 736
    throw v1
.end method

.method private setCurrentSpellCheckerSubtypeLocked(I)V
    .locals 6
    .param p1, "hashCode"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 745
    invoke-virtual {p0, v5}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    #@4
    move-result-object v1

    #@5
    .line 746
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    const/4 v4, 0x0

    #@6
    .line 747
    .local v4, "tempHashCode":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-eqz v1, :cond_0

    #@9
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    #@c
    move-result v5

    #@d
    if-ge v0, v5, :cond_0

    #@f
    .line 748
    invoke-virtual {v1, v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    #@16
    move-result v5

    #@17
    if-ne v5, p1, :cond_1

    #@19
    .line 749
    move v4, p1

    #@1a
    .line 753
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v2

    #@1e
    .line 755
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@20
    invoke-virtual {v5, v4}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putSelectedSpellCheckerSubtype(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 757
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 741
    return-void

    #@27
    .line 747
    .end local v2    # "ident":J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 756
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v5

    #@2b
    .line 757
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 756
    throw v5
.end method

.method private setSpellCheckerEnabledLocked(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 765
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 767
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@6
    invoke-virtual {v2, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setSpellCheckerEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 769
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 761
    return-void

    #@d
    .line 768
    :catchall_0
    move-exception v2

    #@e
    .line 769
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 768
    throw v2
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    .locals 11
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p5, "uid"    # I
    .param p6, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 616
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    #@3
    move-result-object v9

    #@4
    .line 617
    .local v9, "sciId":Ljava/lang/String;
    new-instance v3, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    #@6
    move-object/from16 v0, p6

    #@8
    invoke-direct {v3, p0, v9, p2, v0}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 619
    .local v3, "connection":Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    new-instance v10, Landroid/content/Intent;

    #@d
    const-string/jumbo v2, "android.service.textservice.SpellCheckerService"

    #@10
    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@13
    .line 620
    .local v10, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1a
    .line 625
    const v2, 0x2000001

    #@1d
    .line 624
    invoke-direct {p0, v10, v3, v2}, Lcom/android/server/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_0

    #@23
    .line 626
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@25
    const-string/jumbo v4, "Failed to get a spell checker service."

    #@28
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 627
    return-void

    #@2c
    .line 629
    :cond_0
    new-instance v1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@2e
    move-object v2, p0

    #@2f
    move-object v4, p3

    #@30
    move-object v5, p2

    #@31
    move-object v6, p4

    #@32
    move/from16 v7, p5

    #@34
    move-object/from16 v8, p6

    #@36
    invoke-direct/range {v1 .. v8}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V

    #@39
    .line 631
    .local v1, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@3b
    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 612
    return-void
.end method

.method private unbindServiceLocked()V
    .locals 3

    #@0
    .prologue
    .line 368
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "scbg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@16
    .line 369
    .local v0, "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    #@19
    goto :goto_0

    #@1a
    .line 371
    .end local v0    # "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    :cond_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@1c
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@1f
    .line 367
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 788
    iget-object v9, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v10, "android.permission.DUMP"

    #@5
    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v9

    #@9
    if-eqz v9, :cond_0

    #@b
    .line 791
    new-instance v9, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v10, "Permission Denial: can\'t dump TextServicesManagerService from from pid="

    #@13
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v9

    #@17
    .line 792
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v10

    #@1b
    .line 791
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v9

    #@1f
    .line 793
    const-string/jumbo v10, ", uid="

    #@22
    .line 791
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v9

    #@26
    .line 793
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v10

    #@2a
    .line 791
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v9

    #@2e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v9

    #@32
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 794
    return-void

    #@36
    .line 797
    :cond_0
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@38
    monitor-enter v10

    #@39
    .line 798
    :try_start_0
    const-string/jumbo v9, "Current Text Services Manager state:"

    #@3c
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    .line 799
    const-string/jumbo v9, "  Spell Checkers:"

    #@42
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 800
    const/4 v8, 0x0

    #@46
    .line 801
    .local v8, "spellCheckerIndex":I
    iget-object v9, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@48
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@4b
    move-result-object v9

    #@4c
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4f
    move-result-object v6

    #@50
    .local v6, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@53
    move-result v9

    #@54
    if-eqz v9, :cond_1

    #@56
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@59
    move-result-object v5

    #@5a
    check-cast v5, Landroid/view/textservice/SpellCheckerInfo;

    #@5c
    .line 802
    .local v5, "info":Landroid/view/textservice/SpellCheckerInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v11, "  Spell Checker #"

    #@64
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v9

    #@6c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73
    .line 803
    const-string/jumbo v9, "    "

    #@76
    invoke-virtual {v5, p2, v9}, Landroid/view/textservice/SpellCheckerInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@79
    .line 804
    add-int/lit8 v8, v8, 0x1

    #@7b
    goto :goto_0

    #@7c
    .line 806
    .end local v5    # "info":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    const-string/jumbo v9, ""

    #@7f
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@82
    .line 807
    const-string/jumbo v9, "  Spell Checker Bind Groups:"

    #@85
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@88
    .line 809
    iget-object v9, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@8a
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@8d
    move-result-object v9

    #@8e
    .line 808
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@91
    move-result-object v2

    #@92
    .local v2, "ent$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@95
    move-result v9

    #@96
    if-eqz v9, :cond_3

    #@98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9b
    move-result-object v1

    #@9c
    check-cast v1, Ljava/util/Map$Entry;

    #@9e
    .line 810
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@a1
    move-result-object v3

    #@a2
    check-cast v3, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@a4
    .line 811
    .local v3, "grp":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    new-instance v9, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v11, "    "

    #@ac
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v11

    #@b0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@b3
    move-result-object v9

    #@b4
    check-cast v9, Ljava/lang/String;

    #@b6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v9

    #@ba
    const-string/jumbo v11, " "

    #@bd
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v9

    #@c1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v9

    #@c5
    const-string/jumbo v11, ":"

    #@c8
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v9

    #@cc
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v9

    #@d0
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d3
    .line 812
    new-instance v9, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v11, "      mInternalConnection="

    #@db
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v9

    #@df
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get0(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    #@e2
    move-result-object v11

    #@e3
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v9

    #@e7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v9

    #@eb
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ee
    .line 813
    new-instance v9, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v11, "      mSpellChecker="

    #@f6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v9

    #@fa
    iget-object v11, v3, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    #@fc
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v9

    #@100
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v9

    #@104
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@107
    .line 814
    new-instance v9, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string/jumbo v11, "      mBound="

    #@10f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v9

    #@113
    iget-boolean v11, v3, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    #@115
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@118
    move-result-object v9

    #@119
    const-string/jumbo v11, " mConnected="

    #@11c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v9

    #@120
    iget-boolean v11, v3, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    #@122
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@125
    move-result-object v9

    #@126
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v9

    #@12a
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12d
    .line 815
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get1(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    #@130
    move-result-object v9

    #@131
    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@134
    move-result v0

    #@135
    .line 816
    .local v0, "N":I
    const/4 v4, 0x0

    #@136
    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    #@138
    .line 817
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get1(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    #@13b
    move-result-object v9

    #@13c
    invoke-virtual {v9, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@13f
    move-result-object v7

    #@140
    check-cast v7, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    #@142
    .line 818
    .local v7, "listener":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    new-instance v9, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v11, "      Listener #"

    #@14a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v9

    #@14e
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@151
    move-result-object v9

    #@152
    const-string/jumbo v11, ":"

    #@155
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v9

    #@159
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15c
    move-result-object v9

    #@15d
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@160
    .line 819
    new-instance v9, Ljava/lang/StringBuilder;

    #@162
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v11, "        mTsListener="

    #@168
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v9

    #@16c
    iget-object v11, v7, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    #@16e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v9

    #@172
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v9

    #@176
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@179
    .line 820
    new-instance v9, Ljava/lang/StringBuilder;

    #@17b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@17e
    const-string/jumbo v11, "        mScListener="

    #@181
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v9

    #@185
    iget-object v11, v7, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@187
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v9

    #@18b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18e
    move-result-object v9

    #@18f
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@192
    .line 821
    new-instance v9, Ljava/lang/StringBuilder;

    #@194
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@197
    const-string/jumbo v11, "        mGroup="

    #@19a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v9

    #@19e
    invoke-static {v7}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->-get0(Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@1a1
    move-result-object v11

    #@1a2
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v9

    #@1a6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v9

    #@1aa
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ad
    .line 822
    new-instance v9, Ljava/lang/StringBuilder;

    #@1af
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1b2
    const-string/jumbo v11, "        mScLocale="

    #@1b5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v9

    #@1b9
    iget-object v11, v7, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    #@1bb
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v9

    #@1bf
    .line 823
    const-string/jumbo v11, " mUid="

    #@1c2
    .line 822
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v9

    #@1c6
    .line 823
    iget v11, v7, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mUid:I

    #@1c8
    .line 822
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v9

    #@1cc
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cf
    move-result-object v9

    #@1d0
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d3
    .line 816
    add-int/lit8 v4, v4, 0x1

    #@1d5
    goto/16 :goto_1

    #@1d7
    .line 826
    .end local v0    # "N":I
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v3    # "grp":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v4    # "i":I
    .end local v7    # "listener":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_3
    const-string/jumbo v9, ""

    #@1da
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1dd
    .line 827
    const-string/jumbo v9, "  mSettings:"

    #@1e0
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e3
    .line 828
    iget-object v9, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@1e5
    const-string/jumbo v11, "    "

    #@1e8
    invoke-virtual {v9, p2, v11}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1eb
    monitor-exit v10

    #@1ec
    .line 787
    return-void

    #@1ed
    .line 797
    .end local v2    # "ent$iterator":Ljava/util/Iterator;
    .end local v6    # "info$iterator":Ljava/util/Iterator;
    .end local v8    # "spellCheckerIndex":I
    :catchall_0
    move-exception v9

    #@1ee
    monitor-exit v10

    #@1ef
    throw v9
.end method

.method public finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@0
    .prologue
    .line 651
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    .line 652
    return-void

    #@7
    .line 657
    :cond_0
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@9
    monitor-enter v6

    #@a
    .line 658
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 659
    .local v3, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    iget-object v5, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@11
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@14
    move-result-object v5

    #@15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "group$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_2

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@25
    .line 660
    .local v0, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v0, :cond_1

    #@27
    .line 662
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 657
    .end local v0    # "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v1    # "group$iterator":Ljava/util/Iterator;
    .end local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    :catchall_0
    move-exception v5

    #@2c
    monitor-exit v6

    #@2d
    throw v5

    #@2e
    .line 664
    .restart local v1    # "group$iterator":Ljava/util/Iterator;
    .restart local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v4

    #@32
    .line 665
    .local v4, "removeSize":I
    const/4 v2, 0x0

    #@33
    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    #@35
    .line 666
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v5

    #@39
    check-cast v5, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@3b
    invoke-virtual {v5, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 665
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_1

    #@41
    :cond_3
    monitor-exit v6

    #@42
    .line 650
    return-void
.end method

.method public getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 434
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 435
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 437
    :cond_0
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 13
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "allowImplicitlySelectedSubtype"    # Z

    #@0
    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v10

    #@4
    if-nez v10, :cond_0

    #@6
    .line 460
    const/4 v10, 0x0

    #@7
    return-object v10

    #@8
    .line 462
    :cond_0
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@a
    monitor-enter v11

    #@b
    .line 464
    :try_start_0
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@d
    const/4 v12, 0x0

    #@e
    invoke-virtual {v10, v12}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getSelectedSpellCheckerSubtype(I)I

    #@11
    move-result v9

    #@12
    .line 468
    .local v9, "subtypeHashCode":I
    const/4 v10, 0x0

    #@13
    invoke-virtual {p0, v10}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    #@16
    move-result-object v6

    #@17
    .line 469
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v6, :cond_1

    #@19
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v10

    #@1d
    if-nez v10, :cond_2

    #@1f
    .line 473
    :cond_1
    const/4 v10, 0x0

    #@20
    monitor-exit v11

    #@21
    return-object v10

    #@22
    .line 475
    :cond_2
    if-nez v9, :cond_3

    #@24
    .line 476
    if-eqz p2, :cond_6

    #@26
    .line 479
    :cond_3
    const/4 v1, 0x0

    #@27
    .line 480
    .local v1, "candidateLocale":Ljava/lang/String;
    if-nez v9, :cond_5

    #@29
    .line 482
    :try_start_1
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@2b
    const-class v12, Landroid/view/inputmethod/InputMethodManager;

    #@2d
    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    #@33
    .line 483
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v4, :cond_4

    #@35
    .line 485
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    #@38
    move-result-object v2

    #@39
    .line 486
    .local v2, "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v2, :cond_4

    #@3b
    .line 487
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 488
    .local v5, "localeString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@42
    move-result v10

    #@43
    if-nez v10, :cond_4

    #@45
    .line 490
    move-object v1, v5

    #@46
    .line 494
    .end local v1    # "candidateLocale":Ljava/lang/String;
    .end local v2    # "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5    # "localeString":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    #@48
    .line 496
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@4a
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4d
    move-result-object v10

    #@4e
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@51
    move-result-object v10

    #@52
    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@54
    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    .line 499
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    const/4 v0, 0x0

    #@59
    .line 500
    .local v0, "candidate":Landroid/view/textservice/SpellCheckerSubtype;
    const/4 v3, 0x0

    #@5a
    .end local v0    # "candidate":Landroid/view/textservice/SpellCheckerSubtype;
    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    #@5d
    move-result v10

    #@5e
    if-ge v3, v10, :cond_a

    #@60
    .line 501
    invoke-virtual {v6, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    #@63
    move-result-object v7

    #@64
    .line 502
    .local v7, "scs":Landroid/view/textservice/SpellCheckerSubtype;
    if-nez v9, :cond_9

    #@66
    .line 503
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@69
    move-result-object v8

    #@6a
    .line 504
    .local v8, "scsLocale":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d
    move-result v10

    #@6e
    if-eqz v10, :cond_7

    #@70
    monitor-exit v11

    #@71
    .line 505
    return-object v7

    #@72
    .line 477
    .end local v3    # "i":I
    .end local v7    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v8    # "scsLocale":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    #@73
    monitor-exit v11

    #@74
    return-object v10

    #@75
    .line 506
    .restart local v3    # "i":I
    .restart local v7    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    .restart local v8    # "scsLocale":Ljava/lang/String;
    :cond_7
    if-nez v0, :cond_8

    #@77
    .line 507
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7a
    move-result v10

    #@7b
    const/4 v12, 0x2

    #@7c
    if-lt v10, v12, :cond_8

    #@7e
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@81
    move-result v10

    #@82
    const/4 v12, 0x2

    #@83
    if-lt v10, v12, :cond_8

    #@85
    .line 508
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@88
    move-result v10

    #@89
    .line 507
    if-eqz v10, :cond_8

    #@8b
    .line 510
    move-object v0, v7

    #@8c
    .line 500
    .end local v8    # "scsLocale":Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@8e
    goto :goto_0

    #@8f
    .line 513
    :cond_9
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@92
    move-result v10

    #@93
    if-ne v10, v9, :cond_8

    #@95
    monitor-exit v11

    #@96
    .line 519
    return-object v7

    #@97
    .end local v7    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_a
    monitor-exit v11

    #@98
    .line 525
    return-object v0

    #@99
    .line 462
    .end local v3    # "i":I
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v9    # "subtypeHashCode":I
    :catchall_0
    move-exception v10

    #@9a
    monitor-exit v11

    #@9b
    throw v10
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 2

    #@0
    .prologue
    .line 637
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 638
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    #@a
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v1

    #@10
    new-array v1, v1, [Landroid/view/textservice/SpellCheckerInfo;

    #@12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, [Landroid/view/textservice/SpellCheckerInfo;

    #@18
    return-object v0
.end method

.method public getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .locals 21
    .param p1, "sciId"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p5, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 533
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 534
    return-void

    #@7
    .line 536
    :cond_0
    move-object/from16 v0, p0

    #@9
    iget-boolean v2, v0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    #@b
    if-nez v2, :cond_1

    #@d
    .line 537
    return-void

    #@e
    .line 539
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_2

    #@14
    if-nez p3, :cond_3

    #@16
    .line 540
    :cond_2
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@18
    const-string/jumbo v3, "getSpellCheckerService: Invalid input."

    #@1b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 541
    return-void

    #@1f
    .line 539
    :cond_3
    if-eqz p4, :cond_2

    #@21
    .line 543
    move-object/from16 v0, p0

    #@23
    iget-object v0, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@25
    move-object/from16 v20, v0

    #@27
    monitor-enter v20

    #@28
    .line 544
    :try_start_0
    move-object/from16 v0, p0

    #@2a
    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    move-result v2

    #@32
    if-nez v2, :cond_4

    #@34
    monitor-exit v20

    #@35
    .line 545
    return-void

    #@36
    .line 547
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@3a
    move-object/from16 v0, p1

    #@3c
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v8

    #@40
    check-cast v8, Landroid/view/textservice/SpellCheckerInfo;

    #@42
    .line 548
    .local v8, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@45
    move-result v6

    #@46
    .line 549
    .local v6, "uid":I
    move-object/from16 v0, p0

    #@48
    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@4a
    move-object/from16 v0, p1

    #@4c
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_6

    #@52
    .line 550
    move-object/from16 v0, p0

    #@54
    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@56
    move-object/from16 v0, p1

    #@58
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    move-result-object v14

    #@5c
    check-cast v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@5e
    .line 551
    .local v14, "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v14, :cond_6

    #@60
    .line 553
    move-object/from16 v0, p0

    #@62
    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@64
    move-object/from16 v0, p1

    #@66
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    move-result-object v2

    #@6a
    check-cast v2, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@6c
    move-object/from16 v3, p3

    #@6e
    move-object/from16 v4, p2

    #@70
    move-object/from16 v5, p4

    #@72
    move-object/from16 v7, p5

    #@74
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->addListener(Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    move-result-object v18

    #@78
    .line 555
    .local v18, "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    if-nez v18, :cond_5

    #@7a
    monitor-exit v20

    #@7b
    .line 559
    return-void

    #@7c
    .line 561
    :cond_5
    :try_start_2
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    #@7e
    if-nez v2, :cond_7

    #@80
    const/4 v2, 0x1

    #@81
    :goto_0
    iget-boolean v3, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    #@83
    and-int/2addr v2, v3

    #@84
    if-eqz v2, :cond_8

    #@86
    .line 562
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@88
    const-string/jumbo v3, "The state of the spell checker bind group is illegal."

    #@8b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 563
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    #@91
    .line 589
    .end local v14    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v18    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@94
    move-result-wide v16

    #@95
    .local v16, "ident":J
    move-object/from16 v7, p0

    #@97
    move-object/from16 v9, p2

    #@99
    move-object/from16 v10, p3

    #@9b
    move-object/from16 v11, p4

    #@9d
    move v12, v6

    #@9e
    move-object/from16 v13, p5

    #@a0
    .line 591
    :try_start_3
    invoke-direct/range {v7 .. v13}, Lcom/android/server/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@a3
    .line 594
    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a6
    monitor-exit v20

    #@a7
    .line 597
    return-void

    #@a8
    .line 561
    .end local v16    # "ident":J
    .restart local v14    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .restart local v18    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_7
    const/4 v2, 0x0

    #@a9
    goto :goto_0

    #@aa
    .line 564
    :cond_8
    :try_start_5
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@ac
    if-eqz v2, :cond_6

    #@ae
    .line 571
    :try_start_6
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    #@b0
    .line 572
    move-object/from16 v0, v18

    #@b2
    iget-object v3, v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    #@b4
    move-object/from16 v0, v18

    #@b6
    iget-object v4, v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@b8
    .line 571
    move-object/from16 v0, p5

    #@ba
    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)Lcom/android/internal/textservice/ISpellCheckerSession;

    #@bd
    move-result-object v19

    #@be
    .line 573
    .local v19, "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    if-eqz v19, :cond_9

    #@c0
    .line 574
    move-object/from16 v0, p3

    #@c2
    move-object/from16 v1, v19

    #@c4
    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c7
    monitor-exit v20

    #@c8
    .line 575
    return-void

    #@c9
    .line 580
    :cond_9
    :try_start_7
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@cc
    goto :goto_1

    #@cd
    .line 582
    .end local v19    # "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    :catch_0
    move-exception v15

    #@ce
    .line 583
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_8
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@d0
    new-instance v3, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v4, "Exception in getting spell checker session: "

    #@d8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v3

    #@dc
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v3

    #@e0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v3

    #@e4
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e7
    .line 584
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@ea
    goto :goto_1

    #@eb
    .line 543
    .end local v6    # "uid":I
    .end local v8    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v14    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v18    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :catchall_0
    move-exception v2

    #@ec
    monitor-exit v20

    #@ed
    throw v2

    #@ee
    .line 593
    .restart local v6    # "uid":I
    .restart local v8    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .restart local v16    # "ident":J
    :catchall_1
    move-exception v2

    #@ef
    .line 594
    :try_start_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f2
    .line 593
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public isSpellCheckerEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 602
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 603
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@a
    monitor-enter v0

    #@b
    .line 606
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->isSpellCheckerEnabledLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v1

    #@f
    monitor-exit v0

    #@10
    return v1

    #@11
    .line 605
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v0

    #@13
    throw v1
.end method

.method onSwitchUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 135
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->resetInternalState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 133
    return-void

    #@8
    .line 134
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method onUnlockUser(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@5
    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 142
    .local v0, "currentUserId":I
    if-eq p1, v0, :cond_0

    #@b
    monitor-exit v2

    #@c
    .line 143
    return-void

    #@d
    .line 145
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->resetInternalState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 139
    return-void

    #@12
    .line 140
    .end local v0    # "currentUserId":I
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public setCurrentSpellChecker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "sciId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 673
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 674
    return-void

    #@7
    .line 676
    :cond_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@c
    .line 678
    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    #@f
    .line 677
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 680
    new-instance v0, Ljava/lang/SecurityException;

    #@17
    .line 681
    const-string/jumbo v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    #@1a
    .line 680
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 676
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0

    #@21
    .line 684
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v1

    #@25
    .line 672
    return-void
.end method

.method public setCurrentSpellCheckerSubtype(Ljava/lang/String;I)V
    .locals 3
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    #@0
    .prologue
    .line 690
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 691
    return-void

    #@7
    .line 693
    :cond_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@c
    .line 695
    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    #@f
    .line 694
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 697
    new-instance v0, Ljava/lang/SecurityException;

    #@17
    .line 698
    const-string/jumbo v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    #@1a
    .line 697
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 693
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0

    #@21
    .line 701
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerSubtypeLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v1

    #@25
    .line 689
    return-void
.end method

.method public setSpellCheckerEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 707
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 708
    return-void

    #@7
    .line 710
    :cond_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@c
    .line 712
    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    #@f
    .line 711
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 714
    new-instance v0, Ljava/lang/SecurityException;

    #@17
    .line 715
    const-string/jumbo v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    #@1a
    .line 714
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 710
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0

    #@21
    .line 718
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->setSpellCheckerEnabledLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v1

    #@25
    .line 706
    return-void
.end method

.method systemRunning()V
    .locals 2

    #@0
    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 126
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 127
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    #@a
    .line 128
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@c
    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    #@f
    move-result v0

    #@10
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->resetInternalState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 124
    return-void

    #@15
    .line 125
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method updateCurrentProfileIds()V
    .locals 3

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@2
    .line 198
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    #@4
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@6
    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    #@9
    move-result v2

    #@a
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    #@d
    move-result-object v1

    #@e
    .line 197
    invoke-virtual {v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setCurrentProfileIds([I)V

    #@11
    .line 196
    return-void
.end method
