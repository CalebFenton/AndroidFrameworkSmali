.class public Landroid/appwidget/AppWidgetManager;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"


# static fields
.field public static final ACTION_APPWIDGET_BIND:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_BIND"

.field public static final ACTION_APPWIDGET_CONFIGURE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_CONFIGURE"

.field public static final ACTION_APPWIDGET_DELETED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DELETED"

.field public static final ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field public static final ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field public static final ACTION_APPWIDGET_HOST_RESTORED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_HOST_RESTORED"

.field public static final ACTION_APPWIDGET_OPTIONS_CHANGED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

.field public static final ACTION_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_PICK"

.field public static final ACTION_APPWIDGET_RESTORED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_RESTORED"

.field public static final ACTION_APPWIDGET_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field public static final ACTION_KEYGUARD_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

.field public static final EXTRA_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final EXTRA_APPWIDGET_IDS:Ljava/lang/String; = "appWidgetIds"

.field public static final EXTRA_APPWIDGET_OLD_IDS:Ljava/lang/String; = "appWidgetOldIds"

.field public static final EXTRA_APPWIDGET_OPTIONS:Ljava/lang/String; = "appWidgetOptions"

.field public static final EXTRA_APPWIDGET_PROVIDER:Ljava/lang/String; = "appWidgetProvider"

.field public static final EXTRA_APPWIDGET_PROVIDER_PROFILE:Ljava/lang/String; = "appWidgetProviderProfile"

.field public static final EXTRA_CATEGORY_FILTER:Ljava/lang/String; = "categoryFilter"

.field public static final EXTRA_CUSTOM_EXTRAS:Ljava/lang/String; = "customExtras"

.field public static final EXTRA_CUSTOM_INFO:Ljava/lang/String; = "customInfo"

.field public static final EXTRA_CUSTOM_SORT:Ljava/lang/String; = "customSort"

.field public static final EXTRA_HOST_ID:Ljava/lang/String; = "hostId"

.field public static final INVALID_APPWIDGET_ID:I = 0x0

.field public static final META_DATA_APPWIDGET_PROVIDER:Ljava/lang/String; = "android.appwidget.provider"

.field public static final OPTION_APPWIDGET_HOST_CATEGORY:Ljava/lang/String; = "appWidgetCategory"

.field public static final OPTION_APPWIDGET_MAX_HEIGHT:Ljava/lang/String; = "appWidgetMaxHeight"

.field public static final OPTION_APPWIDGET_MAX_WIDTH:Ljava/lang/String; = "appWidgetMaxWidth"

.field public static final OPTION_APPWIDGET_MIN_HEIGHT:Ljava/lang/String; = "appWidgetMinHeight"

.field public static final OPTION_APPWIDGET_MIN_WIDTH:Ljava/lang/String; = "appWidgetMinWidth"


# instance fields
.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lcom/android/internal/appwidget/IAppWidgetService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/appwidget/IAppWidgetService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/appwidget/IAppWidgetService;

    #@0
    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 445
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    #@9
    .line 446
    iput-object p2, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@b
    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@15
    .line 444
    return-void
.end method

.method private bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "appWidgetId"    # I
    .param p2, "profileId"    # I
    .param p3, "provider"    # Landroid/content/ComponentName;
    .param p4, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1073
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1074
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 1077
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@8
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    #@a
    move v2, p1

    #@b
    move v3, p2

    #@c
    move-object v4, p3

    #@d
    move-object v5, p4

    #@e
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 1080
    :catch_0
    move-exception v6

    #@14
    .line 1081
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@16
    const-string/jumbo v1, "system server dead?"

    #@19
    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1c
    throw v0
.end method

.method private convertSizesToPixels(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    .line 1087
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@2
    .line 1088
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@4
    .line 1087
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@7
    move-result v0

    #@8
    iput v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@a
    .line 1089
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@c
    .line 1090
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@e
    .line 1089
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@11
    move-result v0

    #@12
    iput v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@14
    .line 1091
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@16
    .line 1092
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@18
    .line 1091
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@1b
    move-result v0

    #@1c
    iput v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@1e
    .line 1093
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@20
    .line 1094
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@22
    .line 1093
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@25
    move-result v0

    #@26
    iput v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@28
    .line 1085
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 434
    const-string/jumbo v0, "appwidget"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/appwidget/AppWidgetManager;

    #@9
    return-object v0
.end method


# virtual methods
.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 809
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 810
    return-void

    #@6
    .line 812
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    #@9
    .line 808
    return-void
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 831
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 832
    return-void

    #@5
    .line 834
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    #@c
    .line 830
    return-void
.end method

.method public bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 851
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 852
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 854
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@a
    move-result v0

    #@b
    invoke-direct {p0, p1, v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 875
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 876
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 878
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v0

    #@a
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "provider"    # Landroid/content/ComponentName;
    .param p4, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 899
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 900
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 902
    :cond_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@9
    move-result v0

    #@a
    invoke-direct {p0, p1, v0, p3, p4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "connection"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1003
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1004
    return-void

    #@5
    .line 1007
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@7
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetService;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1002
    return-void

    #@b
    .line 1009
    :catch_0
    move-exception v0

    #@c
    .line 1010
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "system server dead?"

    #@11
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14
    throw v1
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1046
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1047
    const/4 v1, 0x0

    #@5
    new-array v1, v1, [I

    #@7
    return-object v1

    #@8
    .line 1050
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@a
    invoke-interface {v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIds(Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 1052
    :catch_0
    move-exception v0

    #@10
    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v2, "system server dead?"

    #@15
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18
    throw v1
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4
    .param p1, "appWidgetId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 780
    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 781
    return-object v3

    #@6
    .line 784
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@8
    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    #@a
    invoke-interface {v2, v3, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;

    #@d
    move-result-object v1

    #@e
    .line 785
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_1

    #@10
    .line 787
    invoke-direct {p0, v1}, Landroid/appwidget/AppWidgetManager;->convertSizesToPixels(Landroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 789
    :cond_1
    return-object v1

    #@14
    .line 791
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :catch_0
    move-exception v0

    #@15
    .line 792
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@17
    const-string/jumbo v3, "system server dead?"

    #@1a
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1d
    throw v2
.end method

.method public getAppWidgetOptions(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "appWidgetId"    # I

    #@0
    .prologue
    .line 516
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 517
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #@6
    return-object v1

    #@7
    .line 520
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@9
    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    #@b
    invoke-interface {v1, v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 522
    :catch_0
    move-exception v0

    #@11
    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@13
    const-string/jumbo v2, "system server dead?"

    #@16
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@19
    throw v1
.end method

.method public getInstalledProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 702
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 703
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 705
    :cond_0
    const/4 v0, 0x1

    #@b
    invoke-virtual {p0, v0, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;)Ljava/util/List;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getInstalledProviders(I)Ljava/util/List;
    .locals 2
    .param p1, "categoryFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 722
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 723
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 725
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getInstalledProvidersForProfile(ILandroid/os/UserHandle;)Ljava/util/List;
    .locals 6
    .param p1, "categoryFilter"    # I
    .param p2, "profile"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 748
    iget-object v4, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 749
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7
    move-result-object v4

    #@8
    return-object v4

    #@9
    .line 752
    :cond_0
    if-nez p2, :cond_1

    #@b
    .line 753
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@e
    move-result-object p2

    #@f
    .line 757
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@11
    .line 758
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@14
    move-result v5

    #@15
    .line 757
    invoke-interface {v4, p1, v5}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProvidersForProfile(II)Landroid/content/pm/ParceledListSlice;

    #@18
    move-result-object v3

    #@19
    .line 759
    .local v3, "providers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v3, :cond_2

    #@1b
    .line 760
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1e
    move-result-object v4

    #@1f
    return-object v4

    #@20
    .line 762
    :cond_2
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@23
    move-result-object v4

    #@24
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v2

    #@28
    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_3

    #@2e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    #@34
    .line 764
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-direct {p0, v1}, Landroid/appwidget/AppWidgetManager;->convertSizesToPixels(Landroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    goto :goto_0

    #@38
    .line 768
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v3    # "providers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catch_0
    move-exception v0

    #@39
    .line 769
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@3b
    const-string/jumbo v5, "system server dead?"

    #@3e
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v4

    #@42
    .line 766
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "info$iterator":Ljava/util/Iterator;
    .restart local v3    # "providers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@45
    move-result-object v4

    #@46
    return-object v4
.end method

.method public getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "profile"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 692
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 694
    :cond_0
    const/4 v0, 0x1

    #@a
    invoke-virtual {p0, v0, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 937
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 938
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 941
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@b
    move-result v2

    #@c
    invoke-interface {v1, p1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 943
    :catch_0
    move-exception v0

    #@12
    .line 944
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v2, "system server dead?"

    #@17
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v1
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 916
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 917
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 920
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@8
    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 922
    :catch_0
    move-exception v0

    #@e
    .line 923
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v2, "system server dead?"

    #@13
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public isBoundWidgetPackage(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1061
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1062
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 1065
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@8
    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->isBoundWidgetPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1066
    :catch_0
    move-exception v0

    #@e
    .line 1067
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v2, "system server dead?"

    #@13
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public notifyAppWidgetViewDataChanged(II)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    #@0
    .prologue
    .line 671
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 672
    return-void

    #@5
    .line 674
    :cond_0
    const/4 v0, 0x1

    #@6
    new-array v0, v0, [I

    #@8
    const/4 v1, 0x0

    #@9
    aput p1, v0, v1

    #@b
    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    #@e
    .line 670
    return-void
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .locals 3
    .param p1, "appWidgetIds"    # [I
    .param p2, "viewId"    # I

    #@0
    .prologue
    .line 652
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 653
    return-void

    #@5
    .line 656
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@7
    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    #@9
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 651
    return-void

    #@d
    .line 658
    :catch_0
    move-exception v0

    #@e
    .line 659
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v2, "system server dead?"

    #@13
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 613
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 614
    return-void

    #@5
    .line 616
    :cond_0
    const/4 v0, 0x1

    #@6
    new-array v0, v0, [I

    #@8
    const/4 v1, 0x0

    #@9
    aput p1, v0, v1

    #@b
    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V

    #@e
    .line 612
    return-void
.end method

.method public partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 578
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 579
    return-void

    #@5
    .line 582
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@7
    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    #@9
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 577
    return-void

    #@d
    .line 583
    :catch_0
    move-exception v0

    #@e
    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v2, "system server dead?"

    #@13
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "permission"    # Z

    #@0
    .prologue
    .line 977
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 978
    return-void

    #@5
    .line 981
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@7
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 976
    return-void

    #@b
    .line 983
    :catch_0
    move-exception v0

    #@c
    .line 984
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "system server dead?"

    #@11
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14
    throw v1
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Z

    #@0
    .prologue
    .line 959
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 960
    return-void

    #@5
    .line 962
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@8
    move-result v0

    #@9
    invoke-virtual {p0, p1, v0, p2}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V

    #@c
    .line 958
    return-void
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1027
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1028
    return-void

    #@5
    .line 1031
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@7
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1026
    return-void

    #@b
    .line 1033
    :catch_0
    move-exception v0

    #@c
    .line 1034
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "system server dead?"

    #@11
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14
    throw v1
.end method

.method public updateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 547
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 548
    return-void

    #@5
    .line 550
    :cond_0
    const/4 v0, 0x1

    #@6
    new-array v0, v0, [I

    #@8
    const/4 v1, 0x0

    #@9
    aput p1, v0, v1

    #@b
    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    #@e
    .line 546
    return-void
.end method

.method public updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 633
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 634
    return-void

    #@5
    .line 637
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@7
    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 632
    return-void

    #@b
    .line 639
    :catch_0
    move-exception v0

    #@c
    .line 640
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "system server dead?"

    #@11
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14
    throw v1
.end method

.method public updateAppWidget([ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 470
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 471
    return-void

    #@5
    .line 474
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@7
    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    #@9
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 469
    return-void

    #@d
    .line 476
    :catch_0
    move-exception v0

    #@e
    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v2, "system server dead?"

    #@13
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 493
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 494
    return-void

    #@5
    .line 497
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    #@7
    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    #@9
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 492
    return-void

    #@d
    .line 499
    :catch_0
    move-exception v0

    #@e
    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v2, "system server dead?"

    #@13
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method
