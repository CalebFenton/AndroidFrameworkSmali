.class public Lcom/android/server/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TextServicesManagerService$TextServicesMonitor;,
        Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;,
        Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;,
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

.method static synthetic -wrap3(Lcom/android/server/TextServicesManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->switchUserLocked(I)V

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
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 93
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    #@4
    .line 81
    new-instance v3, Ljava/util/HashMap;

    #@6
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@9
    .line 80
    iput-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@b
    .line 82
    new-instance v3, Ljava/util/ArrayList;

    #@d
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    #@12
    .line 84
    new-instance v3, Ljava/util/HashMap;

    #@14
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@17
    .line 83
    iput-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@19
    .line 94
    const/4 v3, 0x0

    #@1a
    iput-boolean v3, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    #@1c
    .line 95
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@1e
    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    #@20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@23
    .line 98
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_ADDED"

    #@26
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@29
    .line 99
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    #@2c
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2f
    .line 100
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@31
    new-instance v4, Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;

    #@33
    invoke-direct {v4, p0}, Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;-><init>(Lcom/android/server/TextServicesManagerService;)V

    #@36
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@39
    .line 102
    const/4 v2, 0x0

    #@3a
    .line 104
    .local v2, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3d
    move-result-object v3

    #@3e
    .line 105
    new-instance v4, Lcom/android/server/TextServicesManagerService$1;

    #@40
    invoke-direct {v4, p0}, Lcom/android/server/TextServicesManagerService$1;-><init>(Lcom/android/server/TextServicesManagerService;)V

    #@43
    .line 104
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    #@46
    .line 128
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@49
    move-result-object v3

    #@4a
    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@4d
    move-result-object v3

    #@4e
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 132
    :goto_0
    new-instance v3, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    #@52
    invoke-direct {v3, p0, v5}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$TextServicesMonitor;)V

    #@55
    iput-object v3, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    #@57
    .line 133
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    #@59
    const/4 v4, 0x1

    #@5a
    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    #@5d
    .line 134
    new-instance v3, Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@5f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@62
    move-result-object v4

    #@63
    invoke-direct {v3, v4, v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;-><init>(Landroid/content/ContentResolver;I)V

    #@66
    iput-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@68
    .line 137
    invoke-direct {p0, v2}, Lcom/android/server/TextServicesManagerService;->switchUserLocked(I)V

    #@6b
    .line 93
    return-void

    #@6c
    .line 129
    :catch_0
    move-exception v1

    #@6d
    .line 130
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@6f
    const-string/jumbo v4, "Couldn\'t get current user ID; guessing it\'s 0"

    #@72
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@75
    goto :goto_0
.end method

.method private bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 322
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 323
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
    .line 324
    const/4 v0, 0x0

    #@29
    return v0

    #@2a
    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@2c
    .line 327
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
    .line 326
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
    .line 221
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    #@3
    .line 222
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    #@6
    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v5

    #@a
    .line 225
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    #@c
    const-string/jumbo v11, "android.service.textservice.SpellCheckerService"

    #@f
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@12
    .line 226
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    #@15
    move-result v11

    #@16
    .line 225
    const/16 v12, 0x80

    #@18
    .line 224
    invoke-virtual {v5, v10, v12, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@1b
    move-result-object v8

    #@1c
    .line 227
    .local v8, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@1f
    move-result v0

    #@20
    .line 228
    .local v0, "N":I
    const/4 v4, 0x0

    #@21
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    #@23
    .line 229
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v6

    #@27
    check-cast v6, Landroid/content/pm/ResolveInfo;

    #@29
    .line 230
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2b
    .line 231
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    #@2d
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@2f
    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@31
    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 232
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
    .line 233
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
    .line 234
    const-string/jumbo v12, ": it does not require the permission "

    #@54
    .line 233
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v11

    #@58
    .line 235
    const-string/jumbo v12, "android.permission.BIND_TEXT_SERVICE"

    #@5b
    .line 233
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
    .line 228
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@68
    goto :goto_0

    #@69
    .line 240
    :cond_0
    :try_start_0
    new-instance v7, Landroid/view/textservice/SpellCheckerInfo;

    #@6b
    invoke-direct {v7, p0, v6}, Landroid/view/textservice/SpellCheckerInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    #@6e
    .line 241
    .local v7, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    #@71
    move-result v10

    #@72
    if-gtz v10, :cond_1

    #@74
    .line 242
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
    .line 243
    const-string/jumbo v12, ": it does not contain subtypes."

    #@89
    .line 242
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
    .line 248
    .end local v7    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catch_0
    move-exception v3

    #@96
    .line 249
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
    .line 246
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    :try_start_1
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b3
    .line 247
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
    .line 250
    .end local v7    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catch_1
    move-exception v2

    #@bc
    .line 251
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
    .line 220
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
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v4

    #@6
    .line 265
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    #@9
    move-result v5

    #@a
    .line 282
    .local v5, "userId":I
    const/16 v6, 0x3e8

    #@c
    if-eq v4, v6, :cond_0

    #@e
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@10
    invoke-virtual {v6}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    #@13
    move-result v6

    #@14
    if-ne v5, v6, :cond_1

    #@16
    .line 283
    :cond_0
    return v8

    #@17
    .line 290
    :cond_1
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@19
    invoke-virtual {v6, v5}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isCurrentProfile(I)Z

    #@1c
    move-result v0

    #@1d
    .line 294
    .local v0, "isCurrentProfile":Z
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@1f
    invoke-virtual {v6, v5}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isCurrentProfile(I)Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_3

    #@25
    .line 295
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;

    #@28
    move-result-object v3

    #@29
    .line 296
    .local v3, "spellCheckerInfo":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v3, :cond_3

    #@2b
    .line 297
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@2e
    move-result-object v2

    #@2f
    .line 299
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@31
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    #@33
    and-int/lit8 v6, v6, 0x1

    #@35
    if-eqz v6, :cond_2

    #@37
    const/4 v1, 0x1

    #@38
    .line 304
    .local v1, "isSystemSpellChecker":Z
    :goto_0
    if-eqz v1, :cond_3

    #@3a
    .line 305
    return v8

    #@3b
    .line 299
    .end local v1    # "isSystemSpellChecker":Z
    :cond_2
    const/4 v1, 0x0

    #@3c
    .restart local v1    # "isSystemSpellChecker":Z
    goto :goto_0

    #@3d
    .line 317
    .end local v1    # "isSystemSpellChecker":Z
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
    .line 338
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v7

    #@8
    .line 339
    .local v7, "spellCheckersCount":I
    if-nez v7, :cond_0

    #@a
    .line 340
    sget-object v15, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v16, "no available spell checker services found"

    #@f
    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 341
    const/4 v15, 0x0

    #@13
    return-object v15

    #@14
    .line 343
    :cond_0
    if-eqz p1, :cond_2

    #@16
    .line 344
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_2

    #@19
    .line 345
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
    .line 346
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
    .line 350
    return-object v6

    #@30
    .line 344
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 358
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
    .line 360
    .local v14, "systemLocal":Ljava/util/Locale;
    invoke-static {v14}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    #@44
    move-result-object v13

    #@45
    .line 365
    .local v13, "suitableLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v4

    #@49
    .line 366
    .local v4, "localeCount":I
    const/4 v5, 0x0

    #@4a
    .local v5, "localeIndex":I
    :goto_1
    if-ge v5, v4, :cond_6

    #@4c
    .line 367
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v3

    #@50
    check-cast v3, Ljava/util/Locale;

    #@52
    .line 368
    .local v3, "locale":Ljava/util/Locale;
    const/4 v8, 0x0

    #@53
    .local v8, "spellCheckersIndex":I
    :goto_2
    if-ge v8, v7, :cond_5

    #@55
    .line 370
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
    .line 371
    .local v2, "info":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    #@62
    move-result v10

    #@63
    .line 372
    .local v10, "subtypeCount":I
    const/4 v11, 0x0

    #@64
    .local v11, "subtypeIndex":I
    :goto_3
    if-ge v11, v10, :cond_4

    #@66
    .line 373
    invoke-virtual {v2, v11}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    #@69
    move-result-object v9

    #@6a
    .line 375
    .local v9, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@6d
    move-result-object v15

    #@6e
    .line 374
    invoke-static {v15}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    #@71
    move-result-object v12

    #@72
    .line 376
    .local v12, "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v3, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v15

    #@76
    if-eqz v15, :cond_3

    #@78
    .line 380
    return-object v2

    #@79
    .line 372
    :cond_3
    add-int/lit8 v11, v11, 0x1

    #@7b
    goto :goto_3

    #@7c
    .line 369
    .end local v9    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v12    # "subtypeLocale":Ljava/util/Locale;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@7e
    goto :goto_2

    #@7f
    .line 366
    .end local v2    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v10    # "subtypeCount":I
    .end local v11    # "subtypeIndex":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    #@81
    goto :goto_1

    #@82
    .line 386
    .end local v3    # "locale":Ljava/util/Locale;
    .end local v8    # "spellCheckersIndex":I
    :cond_6
    const/4 v15, 0x1

    #@83
    if-le v7, v15, :cond_7

    #@85
    .line 387
    sget-object v15, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@87
    const-string/jumbo v16, "more than one spell checker service found, picking first"

    #@8a
    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 389
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
    .line 404
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@5
    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getSelectedSpellChecker()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 409
    .local v0, "curSpellCheckerId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 410
    const/4 v1, 0x0

    #@10
    monitor-exit v2

    #@11
    return-object v1

    #@12
    .line 412
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
    .line 404
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
    .line 1100
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1102
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
    .line 1103
    :catch_0
    move-exception v0

    #@c
    .line 1104
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@f
    move-result-object v1

    #@10
    .line 1106
    .local v1, "frames":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    #@11
    .local v2, "j":I
    :goto_0
    array-length v4, v1

    #@12
    if-ge v2, v4, :cond_0

    #@14
    .line 1107
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
    .line 1106
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1110
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
    .line 743
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 745
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
    .line 751
    .local v2, "retval":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 749
    return v2

    #@e
    .line 750
    .end local v2    # "retval":Z
    :catchall_0
    move-exception v3

    #@f
    .line 751
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 750
    throw v3
.end method

.method private setCurrentSpellCheckerLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "sciId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 695
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
    .line 696
    invoke-virtual {p0, v4}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    #@12
    move-result-object v0

    #@13
    .line 697
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
    .line 699
    return-void

    #@20
    .line 695
    .end local v0    # "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_0
    return-void

    #@21
    .line 701
    .restart local v0    # "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@24
    move-result-wide v2

    #@25
    .line 703
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@27
    invoke-virtual {v1, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putSelectedSpellChecker(Ljava/lang/String;)V

    #@2a
    .line 704
    const/4 v1, 0x0

    #@2b
    invoke-direct {p0, v1}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerSubtypeLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 706
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 691
    return-void

    #@32
    .line 705
    :catchall_0
    move-exception v1

    #@33
    .line 706
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 705
    throw v1
.end method

.method private setCurrentSpellCheckerSubtypeLocked(I)V
    .locals 6
    .param p1, "hashCode"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 714
    invoke-virtual {p0, v5}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    #@4
    move-result-object v1

    #@5
    .line 715
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    const/4 v4, 0x0

    #@6
    .line 716
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
    .line 717
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
    .line 718
    move v4, p1

    #@1a
    .line 722
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v2

    #@1e
    .line 724
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@20
    invoke-virtual {v5, v4}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putSelectedSpellCheckerSubtype(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 726
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 710
    return-void

    #@27
    .line 716
    .end local v2    # "ident":J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 725
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v5

    #@2b
    .line 726
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 725
    throw v5
.end method

.method private setSpellCheckerEnabledLocked(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 736
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@6
    invoke-virtual {v2, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setSpellCheckerEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 738
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 730
    return-void

    #@d
    .line 737
    :catchall_0
    move-exception v2

    #@e
    .line 738
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 737
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
    .line 584
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    #@3
    move-result-object v9

    #@4
    .line 585
    .local v9, "sciId":Ljava/lang/String;
    new-instance v3, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    #@6
    move-object/from16 v0, p6

    #@8
    invoke-direct {v3, p0, v9, p2, v0}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 587
    .local v3, "connection":Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    new-instance v10, Landroid/content/Intent;

    #@d
    const-string/jumbo v2, "android.service.textservice.SpellCheckerService"

    #@10
    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@13
    .line 588
    .local v10, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1a
    .line 593
    const v2, 0x2000001

    #@1d
    .line 592
    invoke-direct {p0, v10, v3, v2}, Lcom/android/server/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_0

    #@23
    .line 594
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@25
    const-string/jumbo v4, "Failed to get a spell checker service."

    #@28
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 595
    return-void

    #@2c
    .line 597
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
    .line 599
    .local v1, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@3b
    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 580
    return-void
.end method

.method private switchUserLocked(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 141
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setCurrentUserId(I)V

    #@6
    .line 142
    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService;->updateCurrentProfileIds()V

    #@9
    .line 143
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->unbindServiceLocked()V

    #@c
    .line 144
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@e
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    #@10
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@12
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@14
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/TextServicesManagerService;->buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    #@17
    .line 145
    invoke-virtual {p0, v5}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    #@1a
    move-result-object v0

    #@1b
    .line 146
    .local v0, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v0, :cond_0

    #@1d
    .line 147
    invoke-direct {p0, v5}, Lcom/android/server/TextServicesManagerService;->findAvailSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    #@20
    move-result-object v0

    #@21
    .line 148
    if-eqz v0, :cond_0

    #@23
    .line 152
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {p0, v1}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    #@2a
    .line 140
    :cond_0
    return-void
.end method

.method private unbindServiceLocked()V
    .locals 3

    #@0
    .prologue
    .line 331
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
    .line 332
    .local v0, "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    #@19
    goto :goto_0

    #@1a
    .line 334
    .end local v0    # "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    :cond_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@1c
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@1f
    .line 330
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
    .line 757
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v11, "android.permission.DUMP"

    #@5
    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v10

    #@9
    if-eqz v10, :cond_0

    #@b
    .line 760
    new-instance v10, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v11, "Permission Denial: can\'t dump TextServicesManagerService from from pid="

    #@13
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v10

    #@17
    .line 761
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v11

    #@1b
    .line 760
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v10

    #@1f
    .line 762
    const-string/jumbo v11, ", uid="

    #@22
    .line 760
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v10

    #@26
    .line 762
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v11

    #@2a
    .line 760
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v10

    #@2e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v10

    #@32
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 763
    return-void

    #@36
    .line 766
    :cond_0
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@38
    monitor-enter v11

    #@39
    .line 767
    :try_start_0
    const-string/jumbo v10, "Current Text Services Manager state:"

    #@3c
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    .line 768
    const-string/jumbo v10, "  Spell Checker Map:"

    #@42
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 769
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@47
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@4a
    move-result-object v10

    #@4b
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v4

    #@4f
    .local v4, "ent$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v10

    #@53
    if-eqz v10, :cond_2

    #@55
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v2

    #@59
    check-cast v2, Ljava/util/Map$Entry;

    #@5b
    .line 770
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    const-string/jumbo v10, "    "

    #@5e
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@64
    move-result-object v10

    #@65
    check-cast v10, Ljava/lang/String;

    #@67
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a
    const-string/jumbo v10, ":"

    #@6d
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 771
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@73
    move-result-object v7

    #@74
    check-cast v7, Landroid/view/textservice/SpellCheckerInfo;

    #@76
    .line 772
    .local v7, "info":Landroid/view/textservice/SpellCheckerInfo;
    const-string/jumbo v10, "      "

    #@79
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    const-string/jumbo v10, "id="

    #@7f
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@82
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    #@85
    move-result-object v10

    #@86
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@89
    .line 773
    const-string/jumbo v10, "      "

    #@8c
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8f
    const-string/jumbo v10, "comp="

    #@92
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@95
    .line 774
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    #@98
    move-result-object v10

    #@99
    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@9c
    move-result-object v10

    #@9d
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a0
    .line 775
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    #@a3
    move-result v1

    #@a4
    .line 776
    .local v1, "NS":I
    const/4 v6, 0x0

    #@a5
    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_1

    #@a7
    .line 777
    invoke-virtual {v7, v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    #@aa
    move-result-object v9

    #@ab
    .line 778
    .local v9, "st":Landroid/view/textservice/SpellCheckerSubtype;
    const-string/jumbo v10, "      "

    #@ae
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b1
    const-string/jumbo v10, "Subtype #"

    #@b4
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b7
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    #@ba
    const-string/jumbo v10, ":"

    #@bd
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c0
    .line 779
    const-string/jumbo v10, "        "

    #@c3
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c6
    const-string/jumbo v10, "locale="

    #@c9
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cc
    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@cf
    move-result-object v10

    #@d0
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d3
    .line 780
    const-string/jumbo v10, "        "

    #@d6
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d9
    const-string/jumbo v10, "extraValue="

    #@dc
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@df
    .line 781
    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    #@e2
    move-result-object v10

    #@e3
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e6
    .line 776
    add-int/lit8 v6, v6, 0x1

    #@e8
    goto :goto_0

    #@e9
    .line 784
    .end local v1    # "NS":I
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    .end local v6    # "i":I
    .end local v7    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v9    # "st":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_2
    const-string/jumbo v10, ""

    #@ec
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ef
    .line 785
    const-string/jumbo v10, "  Spell Checker Bind Groups:"

    #@f2
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f5
    .line 787
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    #@f7
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@fa
    move-result-object v10

    #@fb
    .line 786
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@fe
    move-result-object v4

    #@ff
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@102
    move-result v10

    #@103
    if-eqz v10, :cond_4

    #@105
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@108
    move-result-object v3

    #@109
    check-cast v3, Ljava/util/Map$Entry;

    #@10b
    .line 788
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@10e
    move-result-object v5

    #@10f
    check-cast v5, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@111
    .line 789
    .local v5, "grp":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    const-string/jumbo v10, "    "

    #@114
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@117
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@11a
    move-result-object v10

    #@11b
    check-cast v10, Ljava/lang/String;

    #@11d
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@120
    const-string/jumbo v10, " "

    #@123
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@126
    .line 790
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@129
    const-string/jumbo v10, ":"

    #@12c
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12f
    .line 791
    const-string/jumbo v10, "      "

    #@132
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@135
    const-string/jumbo v10, "mInternalConnection="

    #@138
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13b
    .line 792
    invoke-static {v5}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get0(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    #@13e
    move-result-object v10

    #@13f
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@142
    .line 793
    const-string/jumbo v10, "      "

    #@145
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@148
    const-string/jumbo v10, "mSpellChecker="

    #@14b
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14e
    .line 794
    iget-object v10, v5, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    #@150
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@153
    .line 795
    const-string/jumbo v10, "      "

    #@156
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@159
    const-string/jumbo v10, "mBound="

    #@15c
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15f
    iget-boolean v10, v5, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    #@161
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Z)V

    #@164
    .line 796
    const-string/jumbo v10, " mConnected="

    #@167
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16a
    iget-boolean v10, v5, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    #@16c
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Z)V

    #@16f
    .line 797
    invoke-static {v5}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get1(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    #@172
    move-result-object v10

    #@173
    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@176
    move-result v0

    #@177
    .line 798
    .local v0, "NL":I
    const/4 v6, 0x0

    #@178
    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v0, :cond_3

    #@17a
    .line 799
    invoke-static {v5}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get1(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    #@17d
    move-result-object v10

    #@17e
    invoke-virtual {v10, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@181
    move-result-object v8

    #@182
    check-cast v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    #@184
    .line 800
    .local v8, "listener":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    const-string/jumbo v10, "      "

    #@187
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18a
    const-string/jumbo v10, "Listener #"

    #@18d
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@190
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    #@193
    const-string/jumbo v10, ":"

    #@196
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@199
    .line 801
    const-string/jumbo v10, "        "

    #@19c
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19f
    const-string/jumbo v10, "mTsListener="

    #@1a2
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a5
    .line 802
    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    #@1a7
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1aa
    .line 803
    const-string/jumbo v10, "        "

    #@1ad
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b0
    const-string/jumbo v10, "mScListener="

    #@1b3
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b6
    .line 804
    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@1b8
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1bb
    .line 805
    const-string/jumbo v10, "        "

    #@1be
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c1
    const-string/jumbo v10, "mGroup="

    #@1c4
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c7
    .line 806
    invoke-static {v8}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->-get0(Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@1ca
    move-result-object v10

    #@1cb
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1ce
    .line 807
    const-string/jumbo v10, "        "

    #@1d1
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d4
    const-string/jumbo v10, "mScLocale="

    #@1d7
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1da
    .line 808
    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    #@1dc
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1df
    .line 809
    const-string/jumbo v10, " mUid="

    #@1e2
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e5
    iget v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mUid:I

    #@1e7
    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1ea
    .line 798
    add-int/lit8 v6, v6, 0x1

    #@1ec
    goto :goto_1

    #@1ed
    .end local v0    # "NL":I
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v5    # "grp":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v6    # "i":I
    .end local v8    # "listener":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_4
    monitor-exit v11

    #@1ee
    .line 756
    return-void

    #@1ef
    .line 766
    .end local v4    # "ent$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    #@1f0
    monitor-exit v11

    #@1f1
    throw v10
.end method

.method public finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@0
    .prologue
    .line 619
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    .line 620
    return-void

    #@7
    .line 625
    :cond_0
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@9
    monitor-enter v6

    #@a
    .line 627
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 628
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
    .line 629
    .local v0, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v0, :cond_1

    #@27
    .line 631
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 625
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
    .line 633
    .restart local v1    # "group$iterator":Ljava/util/Iterator;
    .restart local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v4

    #@32
    .line 634
    .local v4, "removeSize":I
    const/4 v2, 0x0

    #@33
    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    #@35
    .line 635
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
    .line 634
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_1

    #@41
    :cond_3
    monitor-exit v6

    #@42
    .line 618
    return-void
.end method

.method public getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 397
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 398
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 14
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "allowImplicitlySelectedSubtype"    # Z

    #@0
    .prologue
    .line 422
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v11

    #@4
    if-nez v11, :cond_0

    #@6
    .line 423
    const/4 v11, 0x0

    #@7
    return-object v11

    #@8
    .line 425
    :cond_0
    iget-object v12, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@a
    monitor-enter v12

    #@b
    .line 426
    :try_start_0
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@d
    invoke-virtual {v11}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getSelectedSpellCheckerSubtype()Ljava/lang/String;

    #@10
    move-result-object v10

    #@11
    .line 430
    .local v10, "subtypeHashCodeStr":Ljava/lang/String;
    const/4 v11, 0x0

    #@12
    invoke-virtual {p0, v11}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    #@15
    move-result-object v7

    #@16
    .line 431
    .local v7, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v7, :cond_1

    #@18
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v11

    #@1c
    if-nez v11, :cond_2

    #@1e
    .line 435
    :cond_1
    const/4 v11, 0x0

    #@1f
    monitor-exit v12

    #@20
    return-object v11

    #@21
    .line 438
    :cond_2
    :try_start_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@24
    move-result v11

    #@25
    if-nez v11, :cond_6

    #@27
    .line 439
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@2a
    move-result-object v11

    #@2b
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@2e
    move-result v3

    #@2f
    .line 443
    .local v3, "hashCode":I
    :goto_0
    if-nez v3, :cond_3

    #@31
    if-eqz p2, :cond_7

    #@33
    .line 446
    :cond_3
    const/4 v1, 0x0

    #@34
    .line 447
    .local v1, "candidateLocale":Ljava/lang/String;
    if-nez v3, :cond_5

    #@36
    .line 450
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@38
    const-string/jumbo v13, "input_method"

    #@3b
    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3e
    move-result-object v5

    #@3f
    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    #@41
    .line 451
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_4

    #@43
    .line 453
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    #@46
    move-result-object v2

    #@47
    .line 454
    .local v2, "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v2, :cond_4

    #@49
    .line 455
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    .line 456
    .local v6, "localeString":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@50
    move-result v11

    #@51
    if-nez v11, :cond_4

    #@53
    .line 458
    move-object v1, v6

    #@54
    .line 462
    .end local v1    # "candidateLocale":Ljava/lang/String;
    .end local v2    # "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "localeString":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    #@56
    .line 464
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@58
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5b
    move-result-object v11

    #@5c
    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@5f
    move-result-object v11

    #@60
    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@62
    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    .line 467
    .end local v5    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    const/4 v0, 0x0

    #@67
    .line 468
    .local v0, "candidate":Landroid/view/textservice/SpellCheckerSubtype;
    const/4 v4, 0x0

    #@68
    .end local v0    # "candidate":Landroid/view/textservice/SpellCheckerSubtype;
    .local v4, "i":I
    :goto_1
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    #@6b
    move-result v11

    #@6c
    if-ge v4, v11, :cond_b

    #@6e
    .line 469
    invoke-virtual {v7, v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    #@71
    move-result-object v8

    #@72
    .line 470
    .local v8, "scs":Landroid/view/textservice/SpellCheckerSubtype;
    if-nez v3, :cond_a

    #@74
    .line 471
    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@77
    move-result-object v9

    #@78
    .line 472
    .local v9, "scsLocale":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7b
    move-result v11

    #@7c
    if-eqz v11, :cond_8

    #@7e
    monitor-exit v12

    #@7f
    .line 473
    return-object v8

    #@80
    .line 441
    .end local v3    # "hashCode":I
    .end local v4    # "i":I
    .end local v8    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v9    # "scsLocale":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    #@81
    .restart local v3    # "hashCode":I
    goto :goto_0

    #@82
    .line 444
    :cond_7
    const/4 v11, 0x0

    #@83
    monitor-exit v12

    #@84
    return-object v11

    #@85
    .line 474
    .restart local v4    # "i":I
    .restart local v8    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    .restart local v9    # "scsLocale":Ljava/lang/String;
    :cond_8
    if-nez v0, :cond_9

    #@87
    .line 475
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@8a
    move-result v11

    #@8b
    const/4 v13, 0x2

    #@8c
    if-lt v11, v13, :cond_9

    #@8e
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@91
    move-result v11

    #@92
    const/4 v13, 0x2

    #@93
    if-lt v11, v13, :cond_9

    #@95
    .line 476
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@98
    move-result v11

    #@99
    .line 475
    if-eqz v11, :cond_9

    #@9b
    .line 478
    move-object v0, v8

    #@9c
    .line 468
    .end local v9    # "scsLocale":Ljava/lang/String;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    #@9e
    goto :goto_1

    #@9f
    .line 481
    :cond_a
    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a2
    move-result v11

    #@a3
    if-ne v11, v3, :cond_9

    #@a5
    monitor-exit v12

    #@a6
    .line 487
    return-object v8

    #@a7
    .end local v8    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_b
    monitor-exit v12

    #@a8
    .line 493
    return-object v0

    #@a9
    .line 425
    .end local v3    # "hashCode":I
    .end local v4    # "i":I
    .end local v7    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v10    # "subtypeHashCodeStr":Ljava/lang/String;
    :catchall_0
    move-exception v11

    #@aa
    monitor-exit v12

    #@ab
    throw v11
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 2

    #@0
    .prologue
    .line 605
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 606
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 614
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
    .line 501
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 502
    return-void

    #@7
    .line 504
    :cond_0
    move-object/from16 v0, p0

    #@9
    iget-boolean v2, v0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    #@b
    if-nez v2, :cond_1

    #@d
    .line 505
    return-void

    #@e
    .line 507
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_2

    #@14
    if-nez p3, :cond_3

    #@16
    .line 508
    :cond_2
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@18
    const-string/jumbo v3, "getSpellCheckerService: Invalid input."

    #@1b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 509
    return-void

    #@1f
    .line 507
    :cond_3
    if-eqz p4, :cond_2

    #@21
    .line 511
    move-object/from16 v0, p0

    #@23
    iget-object v0, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@25
    move-object/from16 v20, v0

    #@27
    monitor-enter v20

    #@28
    .line 512
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
    .line 513
    return-void

    #@36
    .line 515
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
    .line 516
    .local v8, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@45
    move-result v6

    #@46
    .line 517
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
    .line 518
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
    .line 519
    .local v14, "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v14, :cond_6

    #@60
    .line 521
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
    .line 523
    .local v18, "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    if-nez v18, :cond_5

    #@7a
    monitor-exit v20

    #@7b
    .line 527
    return-void

    #@7c
    .line 529
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
    .line 530
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    #@88
    const-string/jumbo v3, "The state of the spell checker bind group is illegal."

    #@8b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 531
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    #@91
    .line 557
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
    .line 559
    :try_start_3
    invoke-direct/range {v7 .. v13}, Lcom/android/server/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@a3
    .line 562
    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a6
    monitor-exit v20

    #@a7
    .line 565
    return-void

    #@a8
    .line 529
    .end local v16    # "ident":J
    .restart local v14    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .restart local v18    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_7
    const/4 v2, 0x0

    #@a9
    goto :goto_0

    #@aa
    .line 532
    :cond_8
    :try_start_5
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@ac
    if-eqz v2, :cond_6

    #@ae
    .line 539
    :try_start_6
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    #@b0
    .line 540
    move-object/from16 v0, v18

    #@b2
    iget-object v3, v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    #@b4
    move-object/from16 v0, v18

    #@b6
    iget-object v4, v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@b8
    .line 539
    move-object/from16 v0, p5

    #@ba
    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)Lcom/android/internal/textservice/ISpellCheckerSession;

    #@bd
    move-result-object v19

    #@be
    .line 541
    .local v19, "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    if-eqz v19, :cond_9

    #@c0
    .line 542
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
    .line 543
    return-void

    #@c9
    .line 548
    :cond_9
    :try_start_7
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@cc
    goto :goto_1

    #@cd
    .line 550
    .end local v19    # "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    :catch_0
    move-exception v15

    #@ce
    .line 551
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
    .line 552
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@ea
    goto :goto_1

    #@eb
    .line 511
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
    .line 561
    .restart local v6    # "uid":I
    .restart local v8    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .restart local v16    # "ident":J
    :catchall_1
    move-exception v2

    #@ef
    .line 562
    :try_start_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f2
    .line 561
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public isSpellCheckerEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 571
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@a
    monitor-enter v0

    #@b
    .line 574
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
    .line 573
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v0

    #@13
    throw v1
.end method

.method public setCurrentSpellChecker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "sciId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 642
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 643
    return-void

    #@7
    .line 645
    :cond_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@c
    .line 647
    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    #@f
    .line 646
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 649
    new-instance v0, Ljava/lang/SecurityException;

    #@17
    .line 650
    const-string/jumbo v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    #@1a
    .line 649
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 645
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0

    #@21
    .line 653
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v1

    #@25
    .line 641
    return-void
.end method

.method public setCurrentSpellCheckerSubtype(Ljava/lang/String;I)V
    .locals 3
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    #@0
    .prologue
    .line 659
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 660
    return-void

    #@7
    .line 662
    :cond_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@c
    .line 664
    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    #@f
    .line 663
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 666
    new-instance v0, Ljava/lang/SecurityException;

    #@17
    .line 667
    const-string/jumbo v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    #@1a
    .line 666
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 662
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0

    #@21
    .line 670
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerSubtypeLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v1

    #@25
    .line 658
    return-void
.end method

.method public setSpellCheckerEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 676
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 677
    return-void

    #@7
    .line 679
    :cond_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    #@9
    monitor-enter v1

    #@a
    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@c
    .line 681
    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    #@f
    .line 680
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 683
    new-instance v0, Ljava/lang/SecurityException;

    #@17
    .line 684
    const-string/jumbo v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    #@1a
    .line 683
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 679
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0

    #@21
    .line 687
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->setSpellCheckerEnabledLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v1

    #@25
    .line 675
    return-void
.end method

.method public systemRunning()V
    .locals 1

    #@0
    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 89
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    #@7
    .line 87
    :cond_0
    return-void
.end method

.method updateCurrentProfileIds()V
    .locals 5

    #@0
    .prologue
    .line 159
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v3

    #@6
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@8
    invoke-virtual {v4}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    #@b
    move-result v4

    #@c
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@f
    move-result-object v2

    #@10
    .line 160
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@13
    move-result v3

    #@14
    new-array v0, v3, [I

    #@16
    .line 161
    .local v0, "currentProfileIds":[I
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@18
    if-ge v1, v3, :cond_0

    #@1a
    .line 162
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Landroid/content/pm/UserInfo;

    #@20
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    #@22
    aput v3, v0, v1

    #@24
    .line 161
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 164
    :cond_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    #@29
    invoke-virtual {v3, v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setCurrentProfileIds([I)V

    #@2c
    .line 157
    return-void
.end method
