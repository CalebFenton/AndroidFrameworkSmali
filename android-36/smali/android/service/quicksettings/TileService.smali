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
.field public static final whitelist ACTION_QS_TILE:Ljava/lang/String; = "android.service.quicksettings.action.QS_TILE"

.field public static final whitelist ACTION_QS_TILE_PREFERENCES:Ljava/lang/String; = "android.service.quicksettings.action.QS_TILE_PREFERENCES"

.field private static final blacklist DEBUG:Z = false

.field public static final greylist-max-o EXTRA_SERVICE:Ljava/lang/String; = "service"

.field public static final greylist-max-o EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final greylist-max-o EXTRA_TOKEN:Ljava/lang/String; = "token"

.field public static final whitelist META_DATA_ACTIVE_TILE:Ljava/lang/String; = "android.service.quicksettings.ACTIVE_TILE"

.field public static final whitelist META_DATA_TOGGLEABLE_TILE:Ljava/lang/String; = "android.service.quicksettings.TOGGLEABLE_TILE"

.field public static final blacklist START_ACTIVITY_NEEDS_PENDING_INTENT:J = 0xe691189L

.field private static final blacklist TAG:Ljava/lang/String; = "TileService"


# instance fields
.field private final greylist-max-o mHandler:Landroid/service/quicksettings/TileService$H;

.field private greylist-max-o mListening:Z

.field private greylist-max-o mService:Landroid/service/quicksettings/IQSService;

.field private greylist-max-o mTile:Landroid/service/quicksettings/Tile;

.field private greylist-max-o mTileToken:Landroid/os/IBinder;

.field private greylist-max-o mToken:Landroid/os/IBinder;

.field private greylist-max-o mUnlockRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;
    .registers 1

    iget-object p0, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListening(Landroid/service/quicksettings/TileService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;
    .registers 1

    iget-object p0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTileToken(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnlockRunnable(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/service/quicksettings/TileService;->mUnlockRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmListening(Landroid/service/quicksettings/TileService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToken(Landroid/service/quicksettings/TileService;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/service/quicksettings/TileService;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 92
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 183
    new-instance v0, Landroid/service/quicksettings/TileService$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/quicksettings/TileService$H;-><init>(Landroid/service/quicksettings/TileService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    return-void
.end method

.method public static blacklist isQuickSettingsSupported()Z
    .registers 2

    .line 519
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110217

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static final whitelist requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 540
    const-class v0, Landroid/app/StatusBarManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 541
    .local v0, "sbm":Landroid/app/StatusBarManager;
    if-nez v0, :cond_12

    .line 542
    const-string v1, "TileService"

    const-string v2, "No StatusBarManager service found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    .line 545
    :cond_12
    invoke-virtual {v0, p1}, Landroid/app/StatusBarManager;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    .line 546
    return-void
.end method


# virtual methods
.method public final whitelist getQsTile()Landroid/service/quicksettings/Tile;
    .registers 2

    .line 388
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    return-object v0
.end method

.method public final whitelist isLocked()Z
    .registers 3

    .line 338
    :try_start_0
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSService;->isLocked()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 339
    :catch_7
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    return v1
.end method

.method public final whitelist isSecure()Z
    .registers 3

    .line 319
    :try_start_0
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSService;->isSecure()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 320
    :catch_7
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 393
    const-string/jumbo v0, "service"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/quicksettings/IQSService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSService;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    .line 394
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    .line 396
    :try_start_16
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/quicksettings/IQSService;->getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_3a

    .line 405
    nop

    .line 406
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    if-eqz v0, :cond_34

    .line 407
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/service/quicksettings/Tile;->setService(Landroid/service/quicksettings/IQSService;Landroid/os/IBinder;)V

    .line 408
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    .line 410
    :cond_34
    new-instance v0, Landroid/service/quicksettings/TileService$2;

    invoke-direct {v0, p0}, Landroid/service/quicksettings/TileService$2;-><init>(Landroid/service/quicksettings/TileService;)V

    return-object v0

    .line 397
    :catch_3a
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Couldn\'t get tile from IQSService."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TileService"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist onClick()V
    .registers 1

    .line 240
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 194
    iget-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    if-eqz v0, :cond_a

    .line 195
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    .line 198
    :cond_a
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 199
    return-void
.end method

.method public whitelist onStartListening()V
    .registers 1

    .line 228
    return-void
.end method

.method public whitelist onStopListening()V
    .registers 1

    .line 234
    return-void
.end method

.method public whitelist onTileAdded()V
    .registers 1

    .line 209
    return-void
.end method

.method public whitelist onTileRemoved()V
    .registers 1

    .line 215
    return-void
.end method

.method public final whitelist setStatusIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .registers 5
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentDescription"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 254
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    if-eqz v0, :cond_d

    .line 256
    :try_start_4
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Landroid/service/quicksettings/IQSService;->updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 258
    goto :goto_d

    .line 257
    :catch_c
    move-exception v0

    .line 260
    :cond_d
    :goto_d
    return-void
.end method

.method public final whitelist showDialog(Landroid/app/Dialog;)V
    .registers 4
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 271
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 272
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7f3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 273
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/service/quicksettings/TileService$1;

    invoke-direct {v1, p0}, Landroid/service/quicksettings/TileService$1;-><init>(Landroid/service/quicksettings/TileService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 287
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 289
    :try_start_28
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/quicksettings/IQSService;->onShowDialog(Landroid/os/IBinder;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_30

    .line 291
    goto :goto_31

    .line 290
    :catch_30
    move-exception v0

    .line 292
    :goto_31
    return-void
.end method

.method public final whitelist startActivityAndCollapse(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 373
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :try_start_3
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/service/quicksettings/IQSService;->startActivity(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    .line 377
    goto :goto_c

    .line 376
    :catch_b
    move-exception v0

    .line 378
    :goto_c
    return-void
.end method

.method public final whitelist startActivityAndCollapse(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    const-wide/32 v0, 0xe691189

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_16

    .line 359
    invoke-virtual {p0, p1}, Landroid/service/quicksettings/TileService;->startActivity(Landroid/content/Intent;)V

    .line 361
    :try_start_c
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/quicksettings/IQSService;->onStartActivity(Landroid/os/IBinder;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 363
    goto :goto_15

    .line 362
    :catch_14
    move-exception v0

    .line 364
    :goto_15
    return-void

    .line 355
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "startActivityAndCollapse: Starting activity from TileService using an Intent is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist unlockAndRun(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 302
    iput-object p1, p0, Landroid/service/quicksettings/TileService;->mUnlockRunnable:Ljava/lang/Runnable;

    .line 304
    :try_start_2
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/quicksettings/IQSService;->startUnlockAndRun(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_a

    .line 306
    goto :goto_b

    .line 305
    :catch_a
    move-exception v0

    .line 307
    :goto_b
    return-void
.end method
