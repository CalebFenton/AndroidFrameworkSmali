.class public Landroid/appwidget/AppWidgetHost;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;,
        Landroid/appwidget/AppWidgetHost$UpdateHandler;,
        Landroid/appwidget/AppWidgetHost$Callbacks;
    }
.end annotation


# static fields
.field static final blacklist HANDLE_APP_WIDGET_REMOVED:I = 0x5

.field static final greylist-max-o HANDLE_PROVIDERS_CHANGED:I = 0x3

.field static final greylist-max-o HANDLE_PROVIDER_CHANGED:I = 0x2

.field static final greylist-max-o HANDLE_UPDATE:I = 0x1

.field static final greylist-max-r HANDLE_VIEW_DATA_CHANGED:I = 0x4

.field static final blacklist HANDLE_VIEW_UPDATE_DEFERRED:I = 0x6

.field private static final blacklist TAG:Ljava/lang/String; = "AppWidgetHost"

.field static greylist sService:Lcom/android/internal/appwidget/IAppWidgetService;

.field static greylist-max-o sServiceInitialized:Z

.field static final greylist-max-o sServiceLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

.field private greylist-max-o mContextOpPackageName:Ljava/lang/String;

.field private greylist-max-o mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final greylist mHandler:Landroid/os/Handler;

.field private final greylist-max-o mHostId:I

.field private blacklist mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private final blacklist mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateAppWidgetDeferred(Landroid/appwidget/AppWidgetHost;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetDeferred(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$InteractionHandler;Landroid/os/Looper;)V

    .line 189
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;ILandroid/widget/RemoteViews$InteractionHandler;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    .line 206
    iput p2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    .line 207
    iput-object p3, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 208
    new-instance v0, Landroid/appwidget/AppWidgetHost$UpdateHandler;

    invoke-direct {v0, p0, p4}, Landroid/appwidget/AppWidgetHost$UpdateHandler;-><init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    .line 209
    new-instance v0, Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 211
    invoke-static {p1}, Landroid/appwidget/AppWidgetHost;->bindService(Landroid/content/Context;)V

    .line 212
    return-void
.end method

.method private static greylist-max-o bindService(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 215
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    sget-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    if-eqz v1, :cond_9

    .line 217
    monitor-exit v0

    return-void

    .line 219
    :cond_9
    const/4 v1, 0x1

    sput-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 221
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android.software.app_widgets"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111016a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_27

    .line 223
    monitor-exit v0

    return-void

    .line 225
    :cond_27
    const-string v2, "appwidget"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 226
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v3

    sput-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 227
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "b":Landroid/os/IBinder;
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public static whitelist deleteAllHosts()V
    .registers 3

    .line 456
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 457
    return-void

    .line 460
    :cond_5
    :try_start_5
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAllHosts()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 464
    nop

    .line 465
    return-void

    .line 462
    :catch_c
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
    .registers 5
    .param p1, "appWidgetId"    # I

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "tempListener":Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v1

    .line 195
    :try_start_4
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-object v0, v2

    .line 196
    monitor-exit v1

    .line 197
    return-object v0

    .line 196
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v2
.end method

.method private blacklist updateAppWidgetDeferred(I)V
    .registers 5
    .param p1, "appWidgetId"    # I

    .line 627
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object v0

    .line 628
    .local v0, "v":Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
    if-nez v0, :cond_20

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidgetDeferred: null listener for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetHost"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void

    .line 632
    :cond_20
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidgetDeferred(Ljava/lang/String;I)V

    .line 633
    return-void
.end method


# virtual methods
.method public whitelist allocateAppWidgetId()I
    .registers 4

    .line 297
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 298
    const/4 v0, -0x1

    return v0

    .line 301
    :cond_6
    :try_start_6
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v0

    .line 303
    :catch_11
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist clearViews()V
    .registers 3

    .line 639
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 640
    :try_start_3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 641
    monitor-exit v0

    .line 642
    return-void

    .line 641
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final whitelist createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 473
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 474
    const/4 v0, 0x0

    return-object v0

    .line 476
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 477
    .local v0, "view":Landroid/appwidget/AppWidgetHostView;
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 478
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 479
    invoke-virtual {p0, p2, v0}, Landroid/appwidget/AppWidgetHost;->setListener(ILandroid/appwidget/AppWidgetHost$AppWidgetHostListener;)V

    .line 481
    return-object v0
.end method

.method public whitelist deleteAppWidgetId(I)V
    .registers 5
    .param p1, "appWidgetId"    # I

    .line 416
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 417
    return-void

    .line 419
    :cond_5
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->removeListener(I)V

    .line 421
    :try_start_8
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    .line 424
    nop

    .line 425
    return-void

    .line 422
    :catch_11
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist deleteHost()V
    .registers 4

    .line 436
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 437
    return-void

    .line 440
    :cond_5
    :try_start_5
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteHost(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    .line 444
    nop

    .line 445
    return-void

    .line 442
    :catch_10
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist dispatchOnAppWidgetRemoved(I)V
    .registers 2
    .param p1, "appWidgetId"    # I

    .line 560
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->removeListener(I)V

    .line 561
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->onAppWidgetRemoved(I)V

    .line 562
    return-void
.end method

.method public whitelist getAppWidgetIds()[I
    .registers 4

    .line 402
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_8

    .line 403
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 406
    :cond_8
    :try_start_8
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    .line 407
    :catch_13
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final blacklist getIntentSenderForConfigureActivity(II)Landroid/content/IntentSender;
    .registers 6
    .param p1, "appWidgetId"    # I
    .param p2, "intentFlags"    # I

    .line 322
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 323
    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_6
    :try_start_6
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_18

    .line 332
    .local v0, "intentSender":Landroid/content/IntentSender;
    nop

    .line 334
    if-eqz v0, :cond_12

    .line 337
    return-object v0

    .line 335
    :cond_12
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1

    .line 330
    .end local v0    # "intentSender":Landroid/content/IntentSender;
    :catch_18
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist onAppWidgetRemoved(I)V
    .registers 2
    .param p1, "appWidgetId"    # I

    .line 570
    return-void
.end method

.method protected whitelist onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 490
    new-instance v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-object v0
.end method

.method protected whitelist onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 497
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object v0

    .line 502
    .local v0, "v":Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    .line 503
    if-eqz v0, :cond_e

    .line 504
    invoke-interface {v0, p2}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->onUpdateProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 506
    :cond_e
    return-void
.end method

.method protected whitelist onProvidersChanged()V
    .registers 1

    .line 578
    return-void
.end method

.method public blacklist removeListener(I)V
    .registers 4
    .param p1, "appWidgetId"    # I

    .line 607
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 608
    :try_start_3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 609
    monitor-exit v0

    .line 610
    return-void

    .line 609
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist setAppWidgetHidden()V
    .registers 4

    .line 379
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 380
    return-void

    .line 383
    :cond_5
    :try_start_5
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->setAppWidgetHidden(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    .line 386
    nop

    .line 387
    return-void

    .line 384
    :catch_10
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 2
    .param p1, "interactionHandler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 395
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 396
    return-void
.end method

.method public blacklist setListener(ILandroid/appwidget/AppWidgetHost$AppWidgetHostListener;)V
    .registers 7
    .param p1, "appWidgetId"    # I
    .param p2, "listener"    # Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    .line 588
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 589
    :try_start_3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 590
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_21

    .line 591
    const/4 v0, 0x0

    .line 593
    .local v0, "views":Landroid/widget/RemoteViews;
    :try_start_a
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_17

    .line 596
    .end local v0    # "views":Landroid/widget/RemoteViews;
    .local v1, "views":Landroid/widget/RemoteViews;
    nop

    .line 597
    invoke-interface {p2, v1}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 598
    return-void

    .line 594
    .end local v1    # "views":Landroid/widget/RemoteViews;
    .restart local v0    # "views":Landroid/widget/RemoteViews;
    :catch_17
    move-exception v1

    .line 595
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 590
    .end local v0    # "views":Landroid/widget/RemoteViews;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public final whitelist startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appWidgetId"    # I
    .param p3, "intentFlags"    # I
    .param p4, "requestCode"    # I
    .param p5, "options"    # Landroid/os/Bundle;

    .line 361
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 362
    return-void

    .line 365
    :cond_5
    :try_start_5
    invoke-virtual {p0, p2, p3}, Landroid/appwidget/AppWidgetHost;->getIntentSenderForConfigureActivity(II)Landroid/content/IntentSender;

    move-result-object v0
    :try_end_9
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_9} :catch_19

    move-object v2, v0

    .line 367
    .local v2, "intentSender":Landroid/content/IntentSender;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p4

    move-object v8, p5

    .end local p1    # "activity":Landroid/app/Activity;
    .end local p4    # "requestCode":I
    .end local p5    # "options":Landroid/os/Bundle;
    .local v1, "activity":Landroid/app/Activity;
    .local v3, "requestCode":I
    .local v8, "options":Landroid/os/Bundle;
    :try_start_11
    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_11 .. :try_end_14} :catch_16

    .line 370
    .end local v2    # "intentSender":Landroid/content/IntentSender;
    nop

    .line 371
    return-void

    .line 368
    :catch_16
    move-exception v0

    move-object p1, v0

    goto :goto_1e

    .end local v1    # "activity":Landroid/app/Activity;
    .end local v3    # "requestCode":I
    .end local v8    # "options":Landroid/os/Bundle;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p4    # "requestCode":I
    .restart local p5    # "options":Landroid/os/Bundle;
    :catch_19
    move-exception v0

    move-object v1, p1

    move v3, p4

    move-object v8, p5

    move-object p1, v0

    .line 369
    .end local p4    # "requestCode":I
    .end local p5    # "options":Landroid/os/Bundle;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v3    # "requestCode":I
    .restart local v8    # "options":Landroid/os/Bundle;
    .local p1, "e":Landroid/content/IntentSender$SendIntentException;
    :goto_1e
    new-instance p4, Landroid/content/ActivityNotFoundException;

    invoke-direct {p4}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw p4
.end method

.method public whitelist startListening()V
    .registers 8

    .line 235
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 236
    return-void

    .line 239
    :cond_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 240
    :try_start_8
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 241
    .local v1, "n":I
    new-array v2, v1, [I

    .line 242
    .local v2, "idsToUpdate":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_1e

    .line 243
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 245
    .end local v1    # "n":I
    .end local v3    # "i":I
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_6f

    .line 248
    :try_start_1f
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v4, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2f} :catch_65

    .line 253
    .local v0, "updates":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/PendingHostUpdate;>;"
    nop

    .line 255
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 256
    .local v1, "N":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_35
    if-ge v3, v1, :cond_64

    .line 257
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/PendingHostUpdate;

    .line 258
    .local v4, "update":Landroid/appwidget/PendingHostUpdate;
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v5, :pswitch_data_72

    goto :goto_61

    .line 269
    :pswitch_43
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHost;->dispatchOnAppWidgetRemoved(I)V

    goto :goto_61

    .line 266
    :pswitch_49
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget v6, v4, Landroid/appwidget/PendingHostUpdate;->viewId:I

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->viewDataChanged(II)V

    .line 267
    goto :goto_61

    .line 263
    :pswitch_51
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v6, v4, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 264
    goto :goto_61

    .line 260
    :pswitch_59
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v6, v4, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    .line 261
    nop

    .line 256
    .end local v4    # "update":Landroid/appwidget/PendingHostUpdate;
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 273
    .end local v3    # "i":I
    :cond_64
    return-void

    .line 251
    .end local v0    # "updates":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/PendingHostUpdate;>;"
    .end local v1    # "N":I
    :catch_65
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "idsToUpdate":[I
    :catchall_6f
    move-exception v1

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v1

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_43
    .end packed-switch
.end method

.method public whitelist stopListening()V
    .registers 4

    .line 280
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 281
    return-void

    .line 284
    :cond_5
    :try_start_5
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->stopListening(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    .line 288
    nop

    .line 289
    return-void

    .line 286
    :catch_10
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method greylist-max-o updateAppWidgetView(ILandroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 613
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object v0

    .line 614
    .local v0, "v":Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
    if-eqz v0, :cond_9

    .line 615
    invoke-interface {v0, p2}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 617
    :cond_9
    return-void
.end method

.method greylist-max-o viewDataChanged(II)V
    .registers 4
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    .line 620
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object v0

    .line 621
    .local v0, "v":Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
    if-eqz v0, :cond_9

    .line 622
    invoke-interface {v0, p2}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->onViewDataChanged(I)V

    .line 624
    :cond_9
    return-void
.end method
