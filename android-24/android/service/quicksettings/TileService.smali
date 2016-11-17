.class public Landroid/service/quicksettings/TileService;
.super Landroid/app/Service;
.source "TileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/TileService$H;
    }
.end annotation


# static fields
.field public static final ACTION_QS_TILE:Ljava/lang/String; = "android.service.quicksettings.action.QS_TILE"

.field public static final ACTION_QS_TILE_PREFERENCES:Ljava/lang/String; = "android.service.quicksettings.action.QS_TILE_PREFERENCES"

.field public static final ACTION_REQUEST_LISTENING:Ljava/lang/String; = "android.service.quicksettings.action.REQUEST_LISTENING"

.field public static final EXTRA_COMPONENT:Ljava/lang/String; = "android.service.quicksettings.extra.COMPONENT"

.field public static final EXTRA_SERVICE:Ljava/lang/String; = "service"

.field public static final META_DATA_ACTIVE_TILE:Ljava/lang/String; = "android.service.quicksettings.ACTIVE_TILE"


# instance fields
.field private final mHandler:Landroid/service/quicksettings/TileService$H;

.field private mListening:Z

.field private mService:Landroid/service/quicksettings/IQSService;

.field private mTile:Landroid/service/quicksettings/Tile;

.field private mToken:Landroid/os/IBinder;

.field private mUnlockRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/service/quicksettings/TileService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/Tile;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mUnlockRunnable:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/service/quicksettings/TileService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/service/quicksettings/TileService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/service/quicksettings/TileService;->mToken:Landroid/os/IBinder;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 128
    new-instance v0, Landroid/service/quicksettings/TileService$H;

    #@5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, p0, v1}, Landroid/service/quicksettings/TileService$H;-><init>(Landroid/service/quicksettings/TileService;Landroid/os/Looper;)V

    #@c
    iput-object v0, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    #@e
    .line 130
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    #@11
    .line 76
    return-void
.end method

.method public static final requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.service.quicksettings.action.REQUEST_LISTENING"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 422
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.service.quicksettings.extra.COMPONENT"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e
    .line 423
    const-string/jumbo v1, "android.permission.BIND_QUICK_SETTINGS_TILE"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@14
    .line 420
    return-void
.end method


# virtual methods
.method public final getQsTile()Landroid/service/quicksettings/Tile;
    .locals 1

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    #@2
    return-object v0
.end method

.method public final isLocked()Z
    .locals 2

    #@0
    .prologue
    .line 283
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@2
    invoke-interface {v1}, Landroid/service/quicksettings/IQSService;->isLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 284
    :catch_0
    move-exception v0

    #@8
    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    #@9
    return v1
.end method

.method public final isSecure()Z
    .locals 2

    #@0
    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@2
    invoke-interface {v1}, Landroid/service/quicksettings/IQSService;->isSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 265
    :catch_0
    move-exception v0

    #@8
    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    #@9
    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 313
    const-string/jumbo v2, "service"

    #@3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Landroid/service/quicksettings/IQSService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSService;

    #@a
    move-result-object v2

    #@b
    iput-object v2, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@d
    .line 315
    :try_start_0
    const-string/jumbo v2, "android.service.quicksettings.extra.COMPONENT"

    #@10
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/content/ComponentName;

    #@16
    .line 316
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@18
    invoke-interface {v2, v0}, Landroid/service/quicksettings/IQSService;->getTile(Landroid/content/ComponentName;)Landroid/service/quicksettings/Tile;

    #@1b
    move-result-object v2

    #@1c
    iput-object v2, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 320
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 321
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    #@24
    iget-object v3, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@26
    invoke-virtual {v2, v3}, Landroid/service/quicksettings/Tile;->setService(Landroid/service/quicksettings/IQSService;)V

    #@29
    .line 322
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    #@2b
    const/4 v3, 0x7

    #@2c
    invoke-virtual {v2, v3}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    #@2f
    .line 324
    :cond_0
    new-instance v2, Landroid/service/quicksettings/TileService$2;

    #@31
    invoke-direct {v2, p0}, Landroid/service/quicksettings/TileService$2;-><init>(Landroid/service/quicksettings/TileService;)V

    #@34
    return-object v2

    #@35
    .line 317
    .end local v0    # "component":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    #@36
    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@38
    const-string/jumbo v3, "Unable to reach IQSService"

    #@3b
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3e
    throw v2
.end method

.method public onClick()V
    .locals 0

    #@0
    .prologue
    .line 183
    return-void
.end method

.method public onDestroy()V
    .locals 1

    #@0
    .prologue
    .line 138
    iget-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 139
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    #@7
    .line 140
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    #@a
    .line 142
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    #@d
    .line 137
    return-void
.end method

.method public onStartListening()V
    .locals 0

    #@0
    .prologue
    .line 171
    return-void
.end method

.method public onStopListening()V
    .locals 0

    #@0
    .prologue
    .line 177
    return-void
.end method

.method public onTileAdded()V
    .locals 0

    #@0
    .prologue
    .line 152
    return-void
.end method

.method public onTileRemoved()V
    .locals 0

    #@0
    .prologue
    .line 158
    return-void
.end method

.method public final setStatusIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 198
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 200
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@6
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    #@8
    invoke-interface {v1, v2, p1, p2}, Landroid/service/quicksettings/IQSService;->updateStatusIcon(Landroid/service/quicksettings/Tile;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 197
    :cond_0
    :goto_0
    return-void

    #@c
    .line 201
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final showDialog(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    #@0
    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mToken:Landroid/os/IBinder;

    #@a
    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@c
    .line 217
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@f
    move-result-object v1

    #@10
    const/16 v2, 0x7f3

    #@12
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    #@15
    .line 218
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@1c
    move-result-object v1

    #@1d
    .line 219
    new-instance v2, Landroid/service/quicksettings/TileService$1;

    #@1f
    invoke-direct {v2, p0}, Landroid/service/quicksettings/TileService$1;-><init>(Landroid/service/quicksettings/TileService;)V

    #@22
    .line 218
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@25
    .line 232
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    #@28
    .line 234
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@2a
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    #@2c
    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->onShowDialog(Landroid/service/quicksettings/Tile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 215
    :goto_0
    return-void

    #@30
    .line 235
    :catch_0
    move-exception v0

    #@31
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final startActivityAndCollapse(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 293
    invoke-virtual {p0, p1}, Landroid/service/quicksettings/TileService;->startActivity(Landroid/content/Intent;)V

    #@3
    .line 295
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@5
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    #@7
    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->onStartActivity(Landroid/service/quicksettings/Tile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 292
    :goto_0
    return-void

    #@b
    .line 296
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final unlockAndRun(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 247
    iput-object p1, p0, Landroid/service/quicksettings/TileService;->mUnlockRunnable:Ljava/lang/Runnable;

    #@2
    .line 249
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@4
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    #@6
    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->startUnlockAndRun(Landroid/service/quicksettings/Tile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 246
    :goto_0
    return-void

    #@a
    .line 250
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
