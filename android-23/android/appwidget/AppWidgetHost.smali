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

.field private final mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
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
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

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
    .line 324
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAllHosts()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 322
    return-void

    #@6
    .line 326
    :catch_0
    move-exception v0

    #@7
    .line 327
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
    .line 222
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
    .line 224
    :catch_0
    move-exception v0

    #@c
    .line 225
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
    .locals 1

    #@0
    .prologue
    .line 421
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 420
    return-void
.end method

.method public final createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    .line 337
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    #@3
    move-result-object v1

    #@4
    .line 338
    .local v1, "view":Landroid/appwidget/AppWidgetHostView;
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@6
    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetHostView;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    #@9
    .line 339
    invoke-virtual {v1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    #@c
    .line 340
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    #@e
    monitor-enter v4

    #@f
    .line 341
    :try_start_0
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v4

    #@19
    .line 345
    :try_start_1
    sget-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@1b
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@1d
    invoke-interface {v3, v4, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    move-result-object v2

    #@21
    .line 349
    .local v2, "views":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    #@24
    .line 351
    return-object v1

    #@25
    .line 340
    .end local v2    # "views":Landroid/widget/RemoteViews;
    :catchall_0
    move-exception v3

    #@26
    monitor-exit v4

    #@27
    throw v3

    #@28
    .line 346
    :catch_0
    move-exception v0

    #@29
    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@2b
    const-string/jumbo v4, "system server dead?"

    #@2e
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    throw v3
.end method

.method public deleteAppWidgetId(I)V
    .locals 4
    .param p1, "appWidgetId"    # I

    #@0
    .prologue
    .line 286
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 287
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 289
    :try_start_1
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@e
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@10
    invoke-interface {v1, v3, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 285
    return-void

    #@15
    .line 291
    :catch_0
    move-exception v0

    #@16
    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    #@18
    const-string/jumbo v3, "system server dead?"

    #@1b
    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1e
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    .line 286
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1
.end method

.method public deleteHost()V
    .locals 4

    #@0
    .prologue
    .line 307
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
    .line 305
    return-void

    #@a
    .line 309
    :catch_0
    move-exception v0

    #@b
    .line 310
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
    .line 273
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 274
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    #@7
    .line 276
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
    .line 277
    :catch_0
    move-exception v0

    #@13
    .line 278
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
    .line 360
    new-instance v0, Landroid/appwidget/AppWidgetHostView;

    #@2
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@4
    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@7
    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    .line 373
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@2
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@4
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@7
    move-result v1

    #@8
    .line 372
    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@a
    .line 375
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@c
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@e
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@11
    move-result v1

    #@12
    .line 374
    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@14
    .line 377
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@16
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@18
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@1b
    move-result v1

    #@1c
    .line 376
    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@1e
    .line 379
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@20
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@22
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@25
    move-result v1

    #@26
    .line 378
    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@28
    .line 381
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    #@2a
    monitor-enter v2

    #@2b
    .line 382
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    #@2d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/appwidget/AppWidgetHostView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .local v0, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v2

    #@38
    .line 384
    if-eqz v0, :cond_0

    #@3a
    .line 385
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    #@3d
    .line 366
    :cond_0
    return-void

    #@3e
    .line 381
    .end local v0    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    #@3f
    monitor-exit v2

    #@40
    throw v1
.end method

.method protected onProvidersChanged()V
    .locals 0

    #@0
    .prologue
    .line 393
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
    .line 251
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    .line 252
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@4
    .line 251
    invoke-interface {v0, v2, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    #@7
    move-result-object v1

    #@8
    .line 253
    .local v1, "intentSender":Landroid/content/IntentSender;
    if-eqz v1, :cond_0

    #@a
    .line 254
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
    .line 249
    return-void

    #@15
    .line 257
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
    .line 259
    .end local v1    # "intentSender":Landroid/content/IntentSender;
    :catch_0
    move-exception v8

    #@1c
    .line 260
    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v0, Landroid/content/ActivityNotFoundException;

    #@1e
    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    #@21
    throw v0

    #@22
    .line 261
    .end local v8    # "e":Landroid/content/IntentSender$SendIntentException;
    :catch_1
    move-exception v9

    #@23
    .line 262
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
    .locals 9

    #@0
    .prologue
    .line 183
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 185
    .local v4, "updatedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    :try_start_0
    sget-object v5, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@7
    iget-object v6, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    #@9
    iget-object v7, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    #@b
    iget v8, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    #@d
    invoke-interface {v5, v6, v7, v8, v4}, Lcom/android/internal/appwidget/IAppWidgetService;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v3

    #@11
    .line 192
    .local v3, "updatedIds":[I
    array-length v0, v3

    #@12
    .line 193
    .local v0, "N":I
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@15
    .line 194
    aget v6, v3, v2

    #@17
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    check-cast v5, Landroid/widget/RemoteViews;

    #@1d
    invoke-virtual {p0, v6, v5}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    #@20
    .line 193
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 188
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "updatedIds":[I
    :catch_0
    move-exception v1

    #@24
    .line 189
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    #@26
    const-string/jumbo v6, "system server dead?"

    #@29
    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v5

    #@2d
    .line 181
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "updatedIds":[I
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 4

    #@0
    .prologue
    .line 204
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
    .line 212
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    #@c
    .line 202
    return-void

    #@d
    .line 206
    :catch_0
    move-exception v0

    #@e
    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v2, "system server dead?"

    #@13
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method updateAppWidgetView(ILandroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 399
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 400
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/appwidget/AppWidgetHostView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .local v0, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v2

    #@10
    .line 402
    if-eqz v0, :cond_0

    #@12
    .line 403
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    #@15
    .line 397
    :cond_0
    return-void

    #@16
    .line 399
    .end local v0    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method viewDataChanged(II)V
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    #@0
    .prologue
    .line 409
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 410
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/appwidget/AppWidgetHostView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .local v0, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v2

    #@10
    .line 412
    if-eqz v0, :cond_0

    #@12
    .line 413
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->viewDataChanged(I)V

    #@15
    .line 407
    :cond_0
    return-void

    #@16
    .line 409
    .end local v0    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method
