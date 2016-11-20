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

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field public static final META_DATA_ACTIVE_TILE:Ljava/lang/String; = "android.service.quicksettings.ACTIVE_TILE"


# instance fields
.field private final mHandler:Landroid/service/quicksettings/TileService$H;

.field private mListening:Z

.field private mService:Landroid/service/quicksettings/IQSService;

.field private mTile:Landroid/service/quicksettings/Tile;

.field private mTileToken:Landroid/os/IBinder;

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

.method static synthetic -get3(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

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
    .line 133
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
    .line 135
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
    .line 427
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.service.quicksettings.action.REQUEST_LISTENING"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 428
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.service.quicksettings.extra.COMPONENT"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e
    .line 429
    const-string/jumbo v1, "android.permission.BIND_QUICK_SETTINGS_TILE"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@14
    .line 426
    return-void
.end method


# virtual methods
.method public final getQsTile()Landroid/service/quicksettings/Tile;
    .locals 1

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    #@2
    return-object v0
.end method

.method public final isLocked()Z
    .locals 2

    #@0
    .prologue
    .line 289
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
    .line 290
    :catch_0
    move-exception v0

    #@8
    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    #@9
    return v1
.end method

.method public final isSecure()Z
    .locals 2

    #@0
    .prologue
    .line 270
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
    .line 271
    :catch_0
    move-exception v0

    #@8
    .line 272
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
    .line 319
    const-string/jumbo v1, "service"

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Landroid/service/quicksettings/IQSService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSService;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@d
    .line 320
    const-string/jumbo v1, "token"

    #@10
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    #@16
    .line 322
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@18
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    #@1a
    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 326
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 327
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    #@26
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@28
    iget-object v3, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    #@2a
    invoke-virtual {v1, v2, v3}, Landroid/service/quicksettings/Tile;->setService(Landroid/service/quicksettings/IQSService;Landroid/os/IBinder;)V

    #@2d
    .line 328
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    #@2f
    const/4 v2, 0x7

    #@30
    invoke-virtual {v1, v2}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    #@33
    .line 330
    :cond_0
    new-instance v1, Landroid/service/quicksettings/TileService$2;

    #@35
    invoke-direct {v1, p0}, Landroid/service/quicksettings/TileService$2;-><init>(Landroid/service/quicksettings/TileService;)V

    #@38
    return-object v1

    #@39
    .line 323
    :catch_0
    move-exception v0

    #@3a
    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@3c
    const-string/jumbo v2, "Unable to reach IQSService"

    #@3f
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@42
    throw v1
.end method

.method public onClick()V
    .locals 0

    #@0
    .prologue
    .line 189
    return-void
.end method

.method public onDestroy()V
    .locals 1

    #@0
    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 145
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    #@7
    .line 146
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    #@a
    .line 148
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    #@d
    .line 143
    return-void
.end method

.method public onStartListening()V
    .locals 0

    #@0
    .prologue
    .line 177
    return-void
.end method

.method public onStopListening()V
    .locals 0

    #@0
    .prologue
    .line 183
    return-void
.end method

.method public onTileAdded()V
    .locals 0

    #@0
    .prologue
    .line 158
    return-void
.end method

.method public onTileRemoved()V
    .locals 0

    #@0
    .prologue
    .line 164
    return-void
.end method

.method public final setStatusIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 204
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 206
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@6
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    #@8
    invoke-interface {v1, v2, p1, p2}, Landroid/service/quicksettings/IQSService;->updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 203
    :cond_0
    :goto_0
    return-void

    #@c
    .line 207
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
    .line 222
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
    .line 223
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@f
    move-result-object v1

    #@10
    const/16 v2, 0x7f3

    #@12
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    #@15
    .line 224
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@1c
    move-result-object v1

    #@1d
    .line 225
    new-instance v2, Landroid/service/quicksettings/TileService$1;

    #@1f
    invoke-direct {v2, p0}, Landroid/service/quicksettings/TileService$1;-><init>(Landroid/service/quicksettings/TileService;)V

    #@22
    .line 224
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@25
    .line 238
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    #@28
    .line 240
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@2a
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    #@2c
    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->onShowDialog(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 221
    :goto_0
    return-void

    #@30
    .line 241
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
    .line 299
    invoke-virtual {p0, p1}, Landroid/service/quicksettings/TileService;->startActivity(Landroid/content/Intent;)V

    #@3
    .line 301
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@5
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    #@7
    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->onStartActivity(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 298
    :goto_0
    return-void

    #@b
    .line 302
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
    .line 253
    iput-object p1, p0, Landroid/service/quicksettings/TileService;->mUnlockRunnable:Ljava/lang/Runnable;

    #@2
    .line 255
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    #@4
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->startUnlockAndRun(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 252
    :goto_0
    return-void

    #@a
    .line 256
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
