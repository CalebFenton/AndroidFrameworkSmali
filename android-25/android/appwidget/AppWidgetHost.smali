.class public Landroid/appwidget/AppWidgetHost;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHost$Callbacks;,
        Landroid/appwidget/AppWidgetHost$UpdateHandler;
    }
.end annotation


# static fields
.field static final HANDLE_PROVIDERS_CHANGED:I = 0x3

.field static final HANDLE_PROVIDER_CHANGED:I = 0x2

.field static final HANDLE_UPDATE:I = 0x1

.field static final HANDLE_VIEW_DATA_CHANGED:I = 0x4

.field static sService:Lcom/android/internal/appwidget/IAppWidgetService;

.field static final sServiceLock:Ljava/lang/Object;


# instance fields
.field private final mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

.field private mContextOpPackageName:Ljava/lang/String;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mHandler:Landroid/os/Handler;

.field private final mHostId:I

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private final mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/appwidget/AppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 57
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    #@7
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I

    #@0
    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, p2, v1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    #@8
    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p4, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@a
    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@10
    .line 159
    iput p2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    #@12
    .line 160
    iput-object p3, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@14
    .line 161
    new-instance v0, Landroid/appwidget/AppWidgetHost$UpdateHandler;

    #@16
    invoke-direct {v0, p0, p4}, Landroid/appwidget/AppWidgetHost$UpdateHandler;-><init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V

    #@19
    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    #@1b
    .line 162
    new-instance v0, Landroid/appwidget/AppWidgetHost$Callbacks;

    #@1d
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    #@1f
    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>(Landroid/os/Handler;)V

    #@22
    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    #@24
    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@2e
    .line 164
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    #@31
    .line 157
    return-void
.end method

.method private static bindService()V
    .locals 3

    #@0
    .prologue
    .line 168
    sget-object v2, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 169
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 170
    const-string/jumbo v1, "appwidget"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 171
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v2

    #@15
    .line 167
    return-void

    #@16
    .line 168
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method public static deleteAllHosts()V
    .locals 3

    #@0
    .prologue
    .line 336
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAllHosts()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 334
    return-void

    #@6
    .line 338
    :catch_0
    move-exception v0

    #@7
    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v2, "system server dead?"

    #@c
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method


# virtual methods
.method public allocateAppWidgetId()I
    .locals 4

    #@0
    .prologue
    .line 234
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@4
    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    #@6
    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->allocateAppWidgetId(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 236
    :catch_0
    move-exception v0

    #@c
    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "system server dead?"

    #@11
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14
    throw v1
.end method

.method protected clearViews()V
    .locals 2

    #@0
    .prologue
    .line 433
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 434
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 432
    return-void

    #@a
    .line 433
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public final createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    .line 349
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    #@3
    move-result-object v1

    #@4
    .line 350
    .local v1, "view":Landroid/appwidget/AppWidgetHostView;
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@6
    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetHostView;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    #@9
    .line 351
    invoke-virtual {v1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    #@c
    .line 352
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@e
    monitor-enter v4

    #@f
    .line 353
    :try_start_0
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v4

    #@15
    .line 357
    :try_start_1
    sget-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@17
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@19
    invoke-interface {v3, v4, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1c
    move-result-object v2

    #@1d
    .line 361
    .local v2, "views":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    #@20
    .line 363
    return-object v1

    #@21
    .line 352
    .end local v2    # "views":Landroid/widget/RemoteViews;
    :catchall_0
    move-exception v3

    #@22
    monitor-exit v4

    #@23
    throw v3

    #@24
    .line 358
    :catch_0
    move-exception v0

    #@25
    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@27
    const-string/jumbo v4, "system server dead?"

    #@2a
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v3
.end method

.method public deleteAppWidgetId(I)V
    .locals 4
    .param p1, "appWidgetId"    # I

    #@0
    .prologue
    .line 298
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 299
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 301
    :try_start_1
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@a
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@c
    invoke-interface {v1, v3, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    monitor-exit v2

    #@10
    .line 297
    return-void

    #@11
    .line 303
    :catch_0
    move-exception v0

    #@12
    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v3, "system server dead?"

    #@17
    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method public deleteHost()V
    .locals 4

    #@0
    .prologue
    .line 319
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@4
    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    #@6
    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteHost(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 317
    return-void

    #@a
    .line 321
    :catch_0
    move-exception v0

    #@b
    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "system server dead?"

    #@10
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method public getAppWidgetIds()[I
    .locals 4

    #@0
    .prologue
    .line 285
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 286
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    #@7
    .line 288
    :cond_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@9
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@b
    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    #@d
    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 289
    :catch_0
    move-exception v0

    #@13
    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v2, "system server dead?"

    #@18
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    throw v1
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    .line 372
    new-instance v0, Landroid/appwidget/AppWidgetHostView;

    #@2
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@4
    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@7
    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    .line 385
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@2
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@4
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@7
    move-result v1

    #@8
    .line 384
    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@a
    .line 387
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@c
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@e
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@11
    move-result v1

    #@12
    .line 386
    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@14
    .line 389
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@16
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@18
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@1b
    move-result v1

    #@1c
    .line 388
    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@1e
    .line 391
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@20
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@22
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@25
    move-result v1

    #@26
    .line 390
    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@28
    .line 393
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@2a
    monitor-enter v2

    #@2b
    .line 394
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/appwidget/AppWidgetHostView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .local v0, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v2

    #@34
    .line 396
    if-eqz v0, :cond_0

    #@36
    .line 397
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    #@39
    .line 378
    :cond_0
    return-void

    #@3a
    .line 393
    .end local v0    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v2

    #@3c
    throw v1
.end method

.method protected onProvidersChanged()V
    .locals 0

    #@0
    .prologue
    .line 405
    return-void
.end method

.method public final startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appWidgetId"    # I
    .param p3, "intentFlags"    # I
    .param p4, "requestCode"    # I
    .param p5, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 263
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    .line 264
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@4
    .line 263
    invoke-interface {v0, v2, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    #@7
    move-result-object v1

    #@8
    .line 265
    .local v1, "intentSender":Landroid/content/IntentSender;
    if-eqz v1, :cond_0

    #@a
    .line 266
    const/4 v3, 0x0

    #@b
    const/4 v4, 0x0

    #@c
    const/4 v5, 0x0

    #@d
    const/4 v6, 0x0

    #@e
    move-object v0, p1

    #@f
    move v2, p4

    #@10
    move-object v7, p5

    #@11
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@14
    .line 261
    return-void

    #@15
    .line 269
    :cond_0
    new-instance v0, Landroid/content/ActivityNotFoundException;

    #@17
    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    #@1a
    throw v0
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@1b
    .line 271
    .end local v1    # "intentSender":Landroid/content/IntentSender;
    :catch_0
    move-exception v8

    #@1c
    .line 272
    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v0, Landroid/content/ActivityNotFoundException;

    #@1e
    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    #@21
    throw v0

    #@22
    .line 273
    .end local v8    # "e":Landroid/content/IntentSender$SendIntentException;
    :catch_1
    move-exception v9

    #@23
    .line 274
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@25
    const-string/jumbo v2, "system server dead?"

    #@28
    invoke-direct {v0, v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2b
    throw v0
.end method

.method public startListening()V
    .locals 10

    #@0
    .prologue
    .line 182
    iget-object v7, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@2
    monitor-enter v7

    #@3
    .line 183
    :try_start_0
    iget-object v6, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v0

    #@9
    .line 184
    .local v0, "N":I
    new-array v3, v0, [I

    #@b
    .line 185
    .local v3, "idsToUpdate":[I
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@e
    .line 186
    iget-object v6, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@13
    move-result v6

    #@14
    aput v6, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 185
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    :cond_0
    monitor-exit v7

    #@1a
    .line 191
    :try_start_1
    sget-object v6, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@1c
    .line 192
    iget-object v7, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    #@1e
    iget-object v8, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@20
    iget v9, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    #@22
    .line 191
    invoke-interface {v6, v7, v8, v9, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@29
    move-result-object v5

    #@2a
    .line 198
    .local v5, "updates":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/PendingHostUpdate;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@2d
    move-result v0

    #@2e
    .line 199
    const/4 v2, 0x0

    #@2f
    :goto_1
    if-ge v2, v0, :cond_1

    #@31
    .line 200
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Landroid/appwidget/PendingHostUpdate;

    #@37
    .line 201
    .local v4, "update":Landroid/appwidget/PendingHostUpdate;
    iget v6, v4, Landroid/appwidget/PendingHostUpdate;->type:I

    #@39
    packed-switch v6, :pswitch_data_0

    #@3c
    .line 199
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 182
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "idsToUpdate":[I
    .end local v4    # "update":Landroid/appwidget/PendingHostUpdate;
    .end local v5    # "updates":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/PendingHostUpdate;>;"
    :catchall_0
    move-exception v6

    #@40
    monitor-exit v7

    #@41
    throw v6

    #@42
    .line 194
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "idsToUpdate":[I
    :catch_0
    move-exception v1

    #@43
    .line 195
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@45
    const-string/jumbo v7, "system server dead?"

    #@48
    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4b
    throw v6

    #@4c
    .line 203
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "update":Landroid/appwidget/PendingHostUpdate;
    .restart local v5    # "updates":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/PendingHostUpdate;>;"
    :pswitch_0
    iget v6, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    #@4e
    iget-object v7, v4, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    #@50
    invoke-virtual {p0, v6, v7}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    #@53
    goto :goto_2

    #@54
    .line 206
    :pswitch_1
    iget v6, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    #@56
    iget-object v7, v4, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@58
    invoke-virtual {p0, v6, v7}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    #@5b
    goto :goto_2

    #@5c
    .line 209
    :pswitch_2
    iget v6, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    #@5e
    iget v7, v4, Landroid/appwidget/PendingHostUpdate;->viewId:I

    #@60
    invoke-virtual {p0, v6, v7}, Landroid/appwidget/AppWidgetHost;->viewDataChanged(II)V

    #@63
    goto :goto_2

    #@64
    .line 180
    .end local v4    # "update":Landroid/appwidget/PendingHostUpdate;
    :cond_1
    return-void

    #@65
    .line 201
    nop

    #@66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stopListening()V
    .locals 4

    #@0
    .prologue
    .line 220
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@4
    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    #@6
    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->stopListening(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 218
    return-void

    #@a
    .line 222
    :catch_0
    move-exception v0

    #@b
    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "system server dead?"

    #@10
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method updateAppWidgetView(ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 411
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 412
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/appwidget/AppWidgetHostView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .local v0, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v2

    #@c
    .line 414
    if-eqz v0, :cond_0

    #@e
    .line 415
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    #@11
    .line 409
    :cond_0
    return-void

    #@12
    .line 411
    .end local v0    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method viewDataChanged(II)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    #@0
    .prologue
    .line 421
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 422
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/appwidget/AppWidgetHostView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .local v0, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v2

    #@c
    .line 424
    if-eqz v0, :cond_0

    #@e
    .line 425
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->viewDataChanged(I)V

    #@11
    .line 419
    :cond_0
    return-void

    #@12
    .line 421
    .end local v0    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method
