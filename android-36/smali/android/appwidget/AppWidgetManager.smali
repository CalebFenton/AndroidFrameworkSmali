.class public Landroid/appwidget/AppWidgetManager;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_APPWIDGET_BIND:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_BIND"

.field public static final whitelist ACTION_APPWIDGET_CONFIGURE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_CONFIGURE"

.field public static final whitelist ACTION_APPWIDGET_DELETED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DELETED"

.field public static final whitelist ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field public static final whitelist ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field public static final blacklist ACTION_APPWIDGET_ENABLE_AND_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLE_AND_UPDATE"

.field public static final whitelist ACTION_APPWIDGET_HOST_RESTORED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_HOST_RESTORED"

.field public static final whitelist ACTION_APPWIDGET_OPTIONS_CHANGED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

.field public static final whitelist ACTION_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_PICK"

.field public static final whitelist ACTION_APPWIDGET_RESTORED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_RESTORED"

.field public static final whitelist ACTION_APPWIDGET_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field public static final greylist-max-o ACTION_KEYGUARD_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

.field public static final blacklist EVENT_CATEGORY_APPWIDGET:Ljava/lang/String; = "android.appwidget"

.field public static final blacklist EVENT_TYPE_WIDGET_INTERACTION:Ljava/lang/String; = "widget_interaction"

.field public static final whitelist EXTRA_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final whitelist EXTRA_APPWIDGET_IDS:Ljava/lang/String; = "appWidgetIds"

.field public static final whitelist EXTRA_APPWIDGET_OLD_IDS:Ljava/lang/String; = "appWidgetOldIds"

.field public static final whitelist EXTRA_APPWIDGET_OPTIONS:Ljava/lang/String; = "appWidgetOptions"

.field public static final whitelist EXTRA_APPWIDGET_PREVIEW:Ljava/lang/String; = "appWidgetPreview"

.field public static final whitelist EXTRA_APPWIDGET_PROVIDER:Ljava/lang/String; = "appWidgetProvider"

.field public static final whitelist EXTRA_APPWIDGET_PROVIDER_PROFILE:Ljava/lang/String; = "appWidgetProviderProfile"

.field public static final greylist-max-o EXTRA_CATEGORY_FILTER:Ljava/lang/String; = "categoryFilter"

.field public static final whitelist EXTRA_CUSTOM_EXTRAS:Ljava/lang/String; = "customExtras"

.field public static final whitelist EXTRA_CUSTOM_INFO:Ljava/lang/String; = "customInfo"

.field public static final greylist-max-o EXTRA_CUSTOM_SORT:Ljava/lang/String; = "customSort"

.field public static final blacklist EXTRA_EVENT_CLICKED_VIEWS:Ljava/lang/String; = "android.appwidget.extra.EVENT_CLICKED_VIEWS"

.field public static final blacklist EXTRA_EVENT_DURATION_MS:Ljava/lang/String; = "android.appwidget.extra.EVENT_DURATION_MS"

.field public static final blacklist EXTRA_EVENT_POSITION_RECT:Ljava/lang/String; = "android.appwidget.extra.EVENT_POSITION_RECT"

.field public static final blacklist EXTRA_EVENT_SCROLLED_VIEWS:Ljava/lang/String; = "android.appwidget.extra.EVENT_SCROLLED_VIEWS"

.field public static final whitelist EXTRA_HOST_ID:Ljava/lang/String; = "hostId"

.field public static final whitelist INVALID_APPWIDGET_ID:I = 0x0

.field public static final whitelist META_DATA_APPWIDGET_PROVIDER:Ljava/lang/String; = "android.appwidget.provider"

.field public static final whitelist OPTION_APPWIDGET_HOST_CATEGORY:Ljava/lang/String; = "appWidgetCategory"

.field public static final whitelist OPTION_APPWIDGET_MAX_HEIGHT:Ljava/lang/String; = "appWidgetMaxHeight"

.field public static final whitelist OPTION_APPWIDGET_MAX_WIDTH:Ljava/lang/String; = "appWidgetMaxWidth"

.field public static final whitelist OPTION_APPWIDGET_MIN_HEIGHT:Ljava/lang/String; = "appWidgetMinHeight"

.field public static final whitelist OPTION_APPWIDGET_MIN_WIDTH:Ljava/lang/String; = "appWidgetMinWidth"

.field public static final whitelist OPTION_APPWIDGET_RESTORE_COMPLETED:Ljava/lang/String; = "appWidgetRestoreCompleted"

.field public static final whitelist OPTION_APPWIDGET_SIZES:Ljava/lang/String; = "appWidgetSizes"

.field private static final blacklist TAG:Ljava/lang/String; = "AppWidgetManager"

.field private static blacklist sUpdateExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private blacklist mHasPostedLegacyLists:Z

.field private blacklist mMaxBitmapMemory:I

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist mService:Lcom/android/internal/appwidget/IAppWidgetService;

.field private blacklist mServiceCollectionCache:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;


# direct methods
.method public static synthetic blacklist $r8$lambda$Emo9F9Eo3H92TWufpOrPKUtYf-g(Landroid/appwidget/AppWidgetManager;[ILandroid/widget/RemoteViews;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$updateAppWidget$5([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QqdazheZhcerN4Y0qy91aYaLrT4(Landroid/appwidget/AppWidgetManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$notifyCollectionWidgetChange$9(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WKLPyaeqLNLNb3560d7QJuq2DwQ(Landroid/appwidget/AppWidgetManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager;->lambda$new$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eLfJmuev9KseIIWrQoFmxYrV-jE(Landroid/appwidget/AppWidgetManager;[II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$notifyAppWidgetViewDataChanged$8([II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$f_OVkK3KW0mzmRH9rcv5fxfoLF4(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$updateAppWidget$7(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ondr49HbQW1wDxCAX8a9ES8Uv6A(Landroid/appwidget/AppWidgetManager;[ILandroid/widget/RemoteViews;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$partiallyUpdateAppWidget$6([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sBR9PAOwcEI1Yyr9xw1B15idXJ4(Landroid/appwidget/AppWidgetManager;Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->lambda$tryAdapterConversion$4(Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/appwidget/IAppWidgetService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/appwidget/IAppWidgetService;

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetManager;->mMaxBitmapMemory:I

    .line 603
    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    .line 623
    iput-object p1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    .line 624
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    .line 625
    iput-object p2, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 626
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 627
    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    const-wide/16 v1, 0x1388

    invoke-direct {v0, p1, v1, v2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mServiceCollectionCache:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    .line 628
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_2a

    .line 629
    return-void

    .line 633
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0}, Lcom/android/internal/appwidget/IAppWidgetService;->getMaxBitmapMemory()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Landroid/appwidget/AppWidgetManager;->mMaxBitmapMemory:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3a} :catch_3b

    .line 636
    goto :goto_43

    .line 634
    :catch_3b
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppWidgetManager"

    const-string v2, "Error setting the maximum bitmap memory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_43
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda7;-><init>(Landroid/appwidget/AppWidgetManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 654
    return-void
.end method

.method private greylist bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 12
    .param p1, "appWidgetId"    # I
    .param p2, "profileId"    # I
    .param p3, "provider"    # Landroid/content/ComponentName;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 1419
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1420
    const/4 v0, 0x0

    return v0

    .line 1423
    :cond_6
    :try_start_6
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_16

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "appWidgetId":I
    .end local p2    # "profileId":I
    .end local p3    # "provider":Landroid/content/ComponentName;
    .end local p4    # "options":Landroid/os/Bundle;
    .local v3, "appWidgetId":I
    .local v4, "profileId":I
    .local v5, "provider":Landroid/content/ComponentName;
    .local v6, "options":Landroid/os/Bundle;
    :try_start_e
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return p1

    .line 1425
    :catch_13
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .end local v3    # "appWidgetId":I
    .end local v4    # "profileId":I
    .end local v5    # "provider":Landroid/content/ComponentName;
    .end local v6    # "options":Landroid/os/Bundle;
    .restart local p1    # "appWidgetId":I
    .restart local p2    # "profileId":I
    .restart local p3    # "provider":Landroid/content/ComponentName;
    .restart local p4    # "options":Landroid/os/Bundle;
    :catch_16
    move-exception v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 1426
    .end local p2    # "profileId":I
    .end local p3    # "provider":Landroid/content/ComponentName;
    .end local p4    # "options":Landroid/os/Bundle;
    .restart local v3    # "appWidgetId":I
    .restart local v4    # "profileId":I
    .restart local v5    # "provider":Landroid/content/ComponentName;
    .restart local v6    # "options":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method private static blacklist createAndStartNewHandler(Ljava/lang/String;I)Landroid/os/Handler;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "priority"    # I

    .line 1641
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1642
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1643
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist createUpdateExecutorIfNull()Ljava/util/concurrent/Executor;
    .registers 3

    .line 1632
    sget-object v0, Landroid/appwidget/AppWidgetManager;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_13

    .line 1633
    new-instance v0, Landroid/os/HandlerExecutor;

    const-string/jumbo v1, "widget_manager_update_helper_thread"

    const/4 v2, -0x2

    invoke-static {v1, v2}, Landroid/appwidget/AppWidgetManager;->createAndStartNewHandler(Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Landroid/appwidget/AppWidgetManager;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    .line 1637
    :cond_13
    sget-object v0, Landroid/appwidget/AppWidgetManager;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static blacklist createWidgetInteractionEvent(IJLandroid/graphics/Rect;[I[I)Landroid/os/PersistableBundle;
    .registers 11
    .param p0, "appWidgetId"    # I
    .param p1, "durationMs"    # J
    .param p3, "position"    # Landroid/graphics/Rect;
    .param p4, "clickedIds"    # [I
    .param p5, "scrolledIds"    # [I

    .line 1611
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 1612
    .local v0, "extras":Landroid/os/PersistableBundle;
    const-string v1, "android.app.usage.extra.EVENT_ACTION"

    const-string/jumbo v2, "widget_interaction"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string v1, "android.app.usage.extra.EVENT_CATEGORY"

    const-string v2, "android.appwidget"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1615
    const-string v1, "android.appwidget.extra.EVENT_DURATION_MS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 1616
    if-eqz p3, :cond_31

    .line 1617
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const-string v2, "android.appwidget.extra.EVENT_POSITION_RECT"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1620
    :cond_31
    if-eqz p4, :cond_3b

    array-length v1, p4

    if-lez v1, :cond_3b

    .line 1621
    const-string v1, "android.appwidget.extra.EVENT_CLICKED_VIEWS"

    invoke-virtual {v0, v1, p4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1623
    :cond_3b
    if-eqz p5, :cond_45

    array-length v1, p5

    if-lez v1, :cond_45

    .line 1624
    const-string v1, "android.appwidget.extra.EVENT_SCROLLED_VIEWS"

    invoke-virtual {v0, v1, p5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1626
    :cond_45
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 612
    const-string v0, "appwidget"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 642
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "p"    # Landroid/content/ComponentName;

    .line 644
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 645
    .local v0, "clazz":Ljava/lang/Class;
    const-class v1, Landroid/appwidget/AppWidgetProvider;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return v1

    .line 646
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_f
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic blacklist lambda$new$2(I)[Landroid/content/ComponentName;
    .registers 2
    .param p0, "x$0"    # I

    .line 649
    new-array v0, p0, [Landroid/content/ComponentName;

    return-object v0
.end method

.method private synthetic blacklist lambda$new$3()V
    .registers 4

    .line 639
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 641
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda3;-><init>()V

    .line 642
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda5;-><init>()V

    .line 649
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    .line 639
    invoke-interface {v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyProviderInheritance([Landroid/content/ComponentName;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    .line 652
    goto :goto_3f

    .line 650
    :catch_37
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppWidgetManager"

    const-string v2, "Notify service of inheritance info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3f
    return-void
.end method

.method private synthetic blacklist lambda$notifyAppWidgetViewDataChanged$8([II)V
    .registers 3
    .param p1, "appWidgetIds"    # [I
    .param p2, "viewId"    # I

    .line 931
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->notifyCollectionWidgetChange([II)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyCollectionWidgetChange$10(I)[Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .param p0, "x$0"    # I

    .line 961
    new-array v0, p0, [Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method private synthetic blacklist lambda$notifyCollectionWidgetChange$9(II)V
    .registers 6
    .param p1, "widgetId"    # I
    .param p2, "viewId"    # I

    .line 952
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 953
    .local v0, "views":Landroid/widget/RemoteViews;
    invoke-virtual {v0, p2}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 954
    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 958
    .end local v0    # "views":Landroid/widget/RemoteViews;
    :cond_11
    goto :goto_1a

    .line 956
    :catch_12
    move-exception v0

    .line 957
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppWidgetManager"

    const-string v2, "Error notifying changes in RemoteViews"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 959
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method private synthetic blacklist lambda$partiallyUpdateAppWidget$6([ILandroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "appWidgetIds"    # [I
    .param p2, "view"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private synthetic blacklist lambda$tryAdapterConversion$4(Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V
    .registers 6
    .param p1, "viewsCopy"    # Landroid/widget/RemoteViews;
    .param p2, "action"    # Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;
    .param p3, "failureMsg"    # Ljava/lang/String;

    .line 665
    :try_start_0
    iget v0, p0, Landroid/appwidget/AppWidgetManager;->mMaxBitmapMemory:I

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mServiceCollectionCache:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->collectAllIntents(ILandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 666
    invoke-interface {p2, p1}, Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 669
    goto :goto_15

    .line 667
    :catch_f
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppWidgetManager"

    invoke-static {v1, p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    return-void
.end method

.method private synthetic blacklist lambda$updateAppWidget$5([ILandroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "appWidgetIds"    # [I
    .param p2, "view"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateAppWidget$7(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "view"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 871
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private blacklist notifyCollectionWidgetChange([II)V
    .registers 7
    .param p1, "appWidgetIds"    # [I
    .param p2, "viewId"    # I

    .line 947
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v0, "updateFutures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_1b

    .line 949
    aget v2, p1, v1

    .line 950
    .local v2, "widgetId":I
    new-instance v3, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManager;II)V

    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    nop

    .end local v2    # "widgetId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 961
    .end local v1    # "i":I
    :cond_1b
    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2f

    .line 964
    nop

    .end local v0    # "updateFutures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;>;"
    goto :goto_37

    .line 962
    :catch_2f
    move-exception v0

    .line 963
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppWidgetManager"

    const-string v2, "Error notifying changes for all widgets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 965
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_37
    return-void
.end method

.method private blacklist tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .registers 8
    .param p2, "original"    # Landroid/widget/RemoteViews;
    .param p3, "failureMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Landroid/widget/RemoteViews;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 659
    .local p1, "action":Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;, "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<Landroid/widget/RemoteViews;>;"
    invoke-static {}, Landroid/appwidget/flags/Flags;->remoteAdapterConversion()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    if-nez v0, :cond_15

    if-eqz p2, :cond_13

    .line 661
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    if-eqz v0, :cond_3a

    .line 662
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    .line 663
    .local v0, "viewsCopy":Landroid/widget/RemoteViews;
    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0, p1, p3}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;-><init>(Landroid/appwidget/AppWidgetManager;Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V

    .line 672
    .local v1, "updateWidgetWithTask":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_36

    .line 673
    invoke-static {}, Landroid/appwidget/AppWidgetManager;->createUpdateExecutorIfNull()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 674
    return-void

    .line 677
    :cond_36
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 678
    .end local v0    # "viewsCopy":Landroid/widget/RemoteViews;
    .end local v1    # "updateWidgetWithTask":Ljava/lang/Runnable;
    goto :goto_3e

    .line 680
    :cond_3a
    :try_start_3a
    invoke-interface {p1, p2}, Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3f

    .line 683
    nop

    .line 685
    :goto_3e
    return-void

    .line 681
    :catch_3f
    move-exception v0

    .line 682
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public greylist bindAppWidgetId(ILandroid/content/ComponentName;)V
    .registers 4
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;

    .line 1163
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 1164
    return-void

    .line 1166
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 1167
    return-void
.end method

.method public greylist-max-r bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1186
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 1187
    return-void

    .line 1189
    :cond_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    .line 1190
    return-void
.end method

.method public whitelist bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;

    .line 1209
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1210
    const/4 v0, 0x0

    return v0

    .line 1212
    :cond_6
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1236
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1237
    const/4 v0, 0x0

    return v0

    .line 1239
    :cond_6
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 6
    .param p1, "appWidgetId"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "provider"    # Landroid/content/ComponentName;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 1264
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1265
    const/4 v0, 0x0

    return v0

    .line 1267
    :cond_6
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r bindRemoteViewsService(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/IServiceConnection;I)Z
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "connection"    # Landroid/app/IServiceConnection;
    .param p5, "flags"    # I

    .line 1372
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1373
    const/4 v0, 0x0

    return v0

    .line 1376
    :cond_6
    :try_start_6
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1377
    invoke-virtual {p1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 1378
    invoke-static {p5}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v8
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_23

    .line 1376
    move v3, p2

    move-object v4, p3

    move-object v7, p4

    .end local p2    # "appWidgetId":I
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "connection":Landroid/app/IServiceConnection;
    .local v3, "appWidgetId":I
    .local v4, "intent":Landroid/content/Intent;
    .local v7, "connection":Landroid/app/IServiceConnection;
    :try_start_1b
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/appwidget/IAppWidgetService;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;J)Z

    move-result p2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1f} :catch_20

    return p2

    .line 1379
    :catch_20
    move-exception v0

    move-object p2, v0

    goto :goto_28

    .end local v3    # "appWidgetId":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "connection":Landroid/app/IServiceConnection;
    .restart local p2    # "appWidgetId":I
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "connection":Landroid/app/IServiceConnection;
    :catch_23
    move-exception v0

    move v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object p2, v0

    .line 1380
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "connection":Landroid/app/IServiceConnection;
    .restart local v3    # "appWidgetId":I
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "connection":Landroid/app/IServiceConnection;
    .local p2, "e":Landroid/os/RemoteException;
    :goto_28
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 4
    .param p1, "provider"    # Landroid/content/ComponentName;

    .line 1392
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_8

    .line 1393
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 1396
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 1397
    :catch_f
    move-exception v0

    .line 1398
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 6
    .param p1, "appWidgetId"    # I

    .line 1130
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    const-string v1, "AppWidgetManager"

    if-nez v0, :cond_1e

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service wasn\'t initialized, appWidgetId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/4 v0, 0x0

    return-object v0

    .line 1135
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1136
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_2e

    .line 1138
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    goto :goto_50

    .line 1140
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App widget provider info is null. PackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appWidgetId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_50} :catch_51

    .line 1143
    :goto_50
    return-object v0

    .line 1144
    .end local v0    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :catch_51
    move-exception v0

    .line 1145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAppWidgetOptions(I)Landroid/os/Bundle;
    .registers 4
    .param p1, "appWidgetId"    # I

    .line 752
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_7

    .line 753
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0

    .line 756
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    return-object v0

    .line 757
    :catch_10
    move-exception v0

    .line 758
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInstalledProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1049
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_9

    .line 1050
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1052
    :cond_9
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getInstalledProviders(I)Ljava/util/List;
    .registers 3
    .param p1, "categoryFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_9

    .line 1071
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1073
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1033
    if-eqz p1, :cond_11

    .line 1038
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_b

    .line 1039
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1041
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1034
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "A non-null package must be passed to this method. If you want all widgets regardless of package, see getInstalledProvidersForProfile(UserHandle)"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "categoryFilter"    # I
    .param p2, "profile"    # Landroid/os/UserHandle;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_9

    .line 1099
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1102
    :cond_9
    if-nez p2, :cond_11

    .line 1103
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    .line 1107
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 1108
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1107
    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1109
    .local v0, "providers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v0, :cond_22

    .line 1110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1112
    :cond_22
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1114
    .local v2, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    .line 1115
    .end local v2    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    goto :goto_2a

    .line 1116
    :cond_3c
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_40} :catch_41

    return-object v1

    .line 1117
    .end local v0    # "providers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catch_41
    move-exception v0

    .line 1118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .param p1, "profile"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_9

    .line 1008
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1010
    :cond_9
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWidgetPreview(Landroid/content/ComponentName;Landroid/os/UserHandle;I)Landroid/widget/RemoteViews;
    .registers 7
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Landroid/os/UserHandle;
    .param p3, "widgetCategory"    # I

    .line 1567
    if-nez p2, :cond_9

    .line 1568
    :try_start_2
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    move-object p2, v0

    .line 1570
    :cond_9
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v0, v1, p1, v2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->getWidgetPreview(Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/widget/RemoteViews;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_15} :catch_16

    return-object v0

    .line 1572
    :catch_16
    move-exception v0

    .line 1573
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1301
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1302
    const/4 v0, 0x0

    return v0

    .line 1305
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return v0

    .line 1306
    :catch_13
    move-exception v0

    .line 1307
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1281
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1282
    const/4 v0, 0x0

    return v0

    .line 1285
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1286
    :catch_d
    move-exception v0

    .line 1287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isBoundWidgetPackage(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1406
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1407
    const/4 v0, 0x0

    return v0

    .line 1410
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1411
    :catch_d
    move-exception v0

    .line 1412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isRequestPinAppWidgetSupported()Z
    .registers 3

    .line 1436
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0}, Lcom/android/internal/appwidget/IAppWidgetService;->isRequestPinAppWidgetSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1437
    :catch_7
    move-exception v0

    .line 1438
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist noteAppWidgetTapped(I)V
    .registers 4
    .param p1, "appWidgetId"    # I

    .line 1506
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->noteAppWidgetTapped(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1509
    nop

    .line 1510
    return-void

    .line 1507
    :catch_9
    move-exception v0

    .line 1508
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifyAppWidgetViewDataChanged(II)V
    .registers 4
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 986
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 987
    return-void

    .line 989
    :cond_5
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 990
    return-void
.end method

.method public whitelist notifyAppWidgetViewDataChanged([II)V
    .registers 5
    .param p1, "appWidgetIds"    # [I
    .param p2, "viewId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 924
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 925
    return-void

    .line 928
    :cond_5
    invoke-static {}, Landroid/appwidget/flags/Flags;->remoteAdapterConversion()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 929
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_25

    .line 930
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    .line 931
    invoke-static {}, Landroid/appwidget/AppWidgetManager;->createUpdateExecutorIfNull()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda9;-><init>(Landroid/appwidget/AppWidgetManager;[II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_31

    .line 934
    :cond_25
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->notifyCollectionWidgetChange([II)V

    goto :goto_31

    .line 938
    :cond_29
    :try_start_29
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_32

    .line 941
    nop

    .line 943
    :goto_31
    return-void

    .line 939
    :catch_32
    move-exception v0

    .line 940
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 847
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 848
    return-void

    .line 850
    :cond_5
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 851
    return-void
.end method

.method public whitelist partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 813
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 814
    return-void

    .line 817
    :cond_5
    new-instance v0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda10;-><init>(Landroid/appwidget/AppWidgetManager;[I)V

    const-string v1, "Error partially updating app widget views in background"

    invoke-direct {p0, v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method public whitelist removeWidgetPreview(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "widgetCategories"    # I

    .line 1590
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->removeWidgetPreview(Landroid/content/ComponentName;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1593
    nop

    .line 1594
    return-void

    .line 1591
    :catch_7
    move-exception v0

    .line 1592
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o requestPinAppWidget(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z
    .registers 4
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "successCallback"    # Landroid/app/PendingIntent;

    .line 1448
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/appwidget/AppWidgetManager;->requestPinAppWidget(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method public whitelist requestPinAppWidget(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .registers 7
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "successCallback"    # Landroid/app/PendingIntent;

    .line 1491
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    .line 1492
    if-nez p3, :cond_8

    const/4 v2, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 1491
    :goto_c
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 1493
    :catch_11
    move-exception v0

    .line 1494
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "permission"    # Z

    .line 1342
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 1343
    return-void

    .line 1346
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 1349
    nop

    .line 1350
    return-void

    .line 1347
    :catch_c
    move-exception v0

    .line 1348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Z

    .line 1322
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 1323
    return-void

    .line 1325
    :cond_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V

    .line 1326
    return-void
.end method

.method public whitelist setWidgetPreview(Landroid/content/ComponentName;ILandroid/widget/RemoteViews;)Z
    .registers 6
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "widgetCategories"    # I
    .param p3, "preview"    # Landroid/widget/RemoteViews;

    .line 1542
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->setWidgetPreview(Landroid/content/ComponentName;ILandroid/widget/RemoteViews;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1543
    :catch_7
    move-exception v0

    .line 1544
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateAppWidget(ILandroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 782
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 783
    return-void

    .line 785
    :cond_5
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 786
    return-void
.end method

.method public whitelist updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 867
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 868
    return-void

    .line 871
    :cond_5
    new-instance v0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda6;-><init>(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)V

    const-string v1, "Error updating app widget view using provider in background"

    invoke-direct {p0, v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method public whitelist updateAppWidget([ILandroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 707
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 708
    return-void

    .line 711
    :cond_5
    new-instance v0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda11;-><init>(Landroid/appwidget/AppWidgetManager;[I)V

    const-string v1, "Error updating app widget views in background"

    invoke-direct {p0, v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public whitelist updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 730
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 731
    return-void

    .line 734
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    .line 737
    nop

    .line 738
    return-void

    .line 735
    :catch_e
    move-exception v0

    .line 736
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "metaDataKey"    # Ljava/lang/String;

    .line 895
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 896
    return-void

    .line 899
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 902
    nop

    .line 903
    return-void

    .line 900
    :catch_c
    move-exception v0

    .line 901
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
