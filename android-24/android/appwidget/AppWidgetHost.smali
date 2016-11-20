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
    .line 58
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    #@7
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I

    #@0
    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, p2, v1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    #@8
    .line 151
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
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@a
    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@10
    .line 160
    iput p2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    #@12
    .line 161
    iput-object p3, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@14
    .line 162
    new-instance v0, Landroid/appwidget/AppWidgetHost$UpdateHandler;

    #@16
    invoke-direct {v0, p0, p4}, Landroid/appwidget/AppWidgetHost$UpdateHandler;-><init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V

    #@19
    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    #@1b
    .line 163
    new-instance v0, Landroid/appwidget/AppWidgetHost$Callbacks;

    #@1d
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    #@1f
    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>(Landroid/os/Handler;)V

    #@22
    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    #@24
    .line 164
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
    .line 165
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    #@31
    .line 158
    return-void
.end method

.method private static bindService()V
    .locals 3

    #@0
    .prologue
    .line 169
    sget-object v2, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 170
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 171
    const-string/jumbo v1, "appwidget"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 172
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
    .line 168
    return-void

    #@16
    .line 169
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
    .line 328
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAllHosts()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 326
    return-void

    #@6
    .line 330
    :catch_0
    move-exception v0

    #@7
    .line 331
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
    .line 226
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
    .line 228
    :catch_0
    move-exception v0

    #@c
    .line 229
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
    .line 425
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 426
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 424
    return-void

    #@a
    .line 425
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
    .line 341
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    #@3
    move-result-object v1

    #@4
    .line 342
    .local v1, "view":Landroid/appwidget/AppWidgetHostView;
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@6
    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetHostView;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    #@9
    .line 343
    invoke-virtual {v1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    #@c
    .line 344
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@e
    monitor-enter v4

    #@f
    .line 345
    :try_start_0
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v4

    #@15
    .line 349
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
    .line 353
    .local v2, "views":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    #@20
    .line 355
    return-object v1

    #@21
    .line 344
    .end local v2    # "views":Landroid/widget/RemoteViews;
    :catchall_0
    move-exception v3

    #@22
    monitor-exit v4

    #@23
    throw v3

    #@24
    .line 350
    :catch_0
    move-exception v0

    #@25
    .line 351
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
    .line 290
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 291
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 293
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
    .line 289
    return-void

    #@11
    .line 295
    :catch_0
    move-exception v0

    #@12
    .line 296
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
    .line 290
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
    .line 311
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
    .line 309
    return-void

    #@a
    .line 313
    :catch_0
    move-exception v0

    #@b
    .line 314
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
    .line 277
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 278
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    #@7
    .line 280
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
    .line 281
    :catch_0
    move-exception v0

    #@13
    .line 282
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
    .line 364
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
    .line 377
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@2
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@4
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@7
    move-result v1

    #@8
    .line 376
    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@a
    .line 379
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@c
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@e
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@11
    move-result v1

    #@12
    .line 378
    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@14
    .line 381
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@16
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@18
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@1b
    move-result v1

    #@1c
    .line 380
    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@1e
    .line 383
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@20
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@22
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@25
    move-result v1

    #@26
    .line 382
    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@28
    .line 385
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@2a
    monitor-enter v2

    #@2b
    .line 386
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
    .line 388
    if-eqz v0, :cond_0

    #@36
    .line 389
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    #@39
    .line 370
    :cond_0
    return-void

    #@3a
    .line 385
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
    .line 397
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
    .line 255
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    .line 256
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@4
    .line 255
    invoke-interface {v0, v2, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    #@7
    move-result-object v1

    #@8
    .line 257
    .local v1, "intentSender":Landroid/content/IntentSender;
    if-eqz v1, :cond_0

    #@a
    .line 258
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
    .line 253
    return-void

    #@15
    .line 261
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
    .line 263
    .end local v1    # "intentSender":Landroid/content/IntentSender;
    :catch_0
    move-exception v8

    #@1c
    .line 264
    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v0, Landroid/content/ActivityNotFoundException;

    #@1e
    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    #@21
    throw v0

    #@22
    .line 265
    .end local v8    # "e":Landroid/content/IntentSender$SendIntentException;
    :catch_1
    move-exception v9

    #@23
    .line 266
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
    .line 183
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 184
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v6

    #@9
    .line 185
    .local v6, "N":I
    new-array v4, v6, [I

    #@b
    .line 186
    .local v4, "idsToUpdate":[I
    const/4 v8, 0x0

    #@c
    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_0

    #@e
    .line 187
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    #@13
    move-result v0

    #@14
    aput v0, v4, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 186
    add-int/lit8 v8, v8, 0x1

    #@18
    goto :goto_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 191
    array-length v0, v4

    #@1b
    new-array v5, v0, [I

    #@1d
    .line 193
    .local v5, "updatedIds":[I
    :try_start_1
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@1f
    .line 194
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    #@21
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@23
    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    #@25
    .line 193
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/appwidget/IAppWidgetService;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I[I)Landroid/content/pm/ParceledListSlice;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2c
    move-result-object v9

    #@2d
    .line 200
    .local v9, "updatedViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@30
    move-result v6

    #@31
    .line 201
    const/4 v8, 0x0

    #@32
    :goto_1
    if-ge v8, v6, :cond_1

    #@34
    .line 202
    aget v1, v5, v8

    #@36
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Landroid/widget/RemoteViews;

    #@3c
    invoke-virtual {p0, v1, v0}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    #@3f
    .line 201
    add-int/lit8 v8, v8, 0x1

    #@41
    goto :goto_1

    #@42
    .line 183
    .end local v4    # "idsToUpdate":[I
    .end local v5    # "updatedIds":[I
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v9    # "updatedViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v1

    #@44
    throw v0

    #@45
    .line 196
    .restart local v4    # "idsToUpdate":[I
    .restart local v5    # "updatedIds":[I
    .restart local v6    # "N":I
    .restart local v8    # "i":I
    :catch_0
    move-exception v7

    #@46
    .line 197
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@48
    const-string/jumbo v1, "system server dead?"

    #@4b
    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4e
    throw v0

    #@4f
    .line 181
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v9    # "updatedViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    :cond_1
    return-void
.end method

.method public stopListening()V
    .locals 4

    #@0
    .prologue
    .line 212
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
    .line 210
    return-void

    #@a
    .line 214
    :catch_0
    move-exception v0

    #@b
    .line 215
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
    .line 403
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 404
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
    .line 406
    if-eqz v0, :cond_0

    #@e
    .line 407
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    #@11
    .line 401
    :cond_0
    return-void

    #@12
    .line 403
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
    .line 413
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 414
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
    .line 416
    if-eqz v0, :cond_0

    #@e
    .line 417
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->viewDataChanged(I)V

    #@11
    .line 411
    :cond_0
    return-void

    #@12
    .line 413
    .end local v0    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method
