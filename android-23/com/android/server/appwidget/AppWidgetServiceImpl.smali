.class Lcom/android/server/appwidget/AppWidgetServiceImpl;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Lcom/android/server/WidgetBackupProvider;
.implements Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$1;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static DEBUG:Z = false

.field private static final KEYGUARD_HOST_ID:I = 0x4b455947

.field private static final LOADED_PROFILE_ID:I = -0x1

.field private static final MIN_UPDATE_PERIOD:I

.field private static final NEW_KEYGUARD_HOST_PACKAGE:Ljava/lang/String; = "com.android.keyguard"

.field private static final OLD_KEYGUARD_HOST_PACKAGE:Ljava/lang/String; = "android"

.field private static final STATE_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final TAG:Ljava/lang/String; = "AppWidgetServiceImpl"

.field private static final TAG_UNDEFINED:I = -0x1

.field private static final UNKNOWN_UID:I = -0x1

.field private static final UNKNOWN_USER_ID:I = -0xa


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

.field private final mBoundRemoteViewsServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadedUserIds:Landroid/util/SparseIntArray;

.field private mLocale:Ljava/util/Locale;

.field private final mLock:Ljava/lang/Object;

.field private mMaxWidgetBitmapMemory:I

.field private final mNextAppWidgetIds:Landroid/util/SparseIntArray;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSafeMode:Z

.field private final mSaveStateHandler:Landroid/os/Handler;

.field private final mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWidgetPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/AppOpsManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .locals 1
    .param p1, "id"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onUserStarted(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onUserStopped(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p1, "groupId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveStateLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 0
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 0
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 0
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 0
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;II)V
    .locals 0
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "viewId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onConfigurationChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onPackageBroadcastReceived(Landroid/content/Intent;I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 114
    sput-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@3
    .line 122
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    :goto_0
    sput v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    #@9
    .line 110
    return-void

    #@a
    .line 122
    :cond_0
    const v0, 0x1b7740

    #@d
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 200
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    #@4
    .line 135
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    #@6
    invoke-direct {v0, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    #@9
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@b
    .line 160
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@12
    .line 164
    new-instance v0, Ljava/util/HashMap;

    #@14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@19
    .line 166
    new-instance v0, Ljava/lang/Object;

    #@1b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@20
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    #@22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@25
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@27
    .line 169
    new-instance v0, Ljava/util/ArrayList;

    #@29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2c
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@2e
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    #@30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@33
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@35
    .line 173
    new-instance v0, Landroid/util/ArraySet;

    #@37
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@3a
    .line 172
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@3c
    .line 175
    new-instance v0, Landroid/util/SparseIntArray;

    #@3e
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@41
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    #@43
    .line 177
    new-instance v0, Landroid/util/SparseArray;

    #@45
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@48
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    #@4a
    .line 195
    new-instance v0, Landroid/util/SparseIntArray;

    #@4c
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@4f
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@51
    .line 201
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@53
    .line 202
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@59
    .line 203
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@5b
    const-string/jumbo v1, "alarm"

    #@5e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    check-cast v0, Landroid/app/AlarmManager;

    #@64
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@66
    .line 204
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@68
    const-string/jumbo v1, "user"

    #@6b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6e
    move-result-object v0

    #@6f
    check-cast v0, Landroid/os/UserManager;

    #@71
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@73
    .line 205
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@75
    const-string/jumbo v1, "appops"

    #@78
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7b
    move-result-object v0

    #@7c
    check-cast v0, Landroid/app/AppOpsManager;

    #@7e
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@80
    .line 206
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@83
    move-result-object v0

    #@84
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    #@86
    .line 207
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    #@88
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@8a
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@8d
    move-result-object v1

    #@8e
    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V

    #@91
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    #@93
    .line 208
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    #@95
    invoke-direct {v0, p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;)V

    #@98
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    #@9a
    .line 209
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@9c
    invoke-direct {v0, p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;)V

    #@9f
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@a1
    .line 210
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->computeMaximumWidgetBitmapMemory()V

    #@a4
    .line 211
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerBroadcastReceiver()V

    #@a7
    .line 212
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerOnCrossProfileProvidersChangedListener()V

    #@aa
    .line 200
    return-void
.end method

.method private addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .locals 9
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 1828
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8
    const/high16 v6, 0x40000

    #@a
    and-int/2addr v5, v6

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 1829
    return v7

    #@e
    .line 1832
    :cond_0
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@10
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_1

    #@16
    .line 1833
    return v7

    #@17
    .line 1836
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    #@19
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1b
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1d
    .line 1837
    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1f
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@21
    .line 1836
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 1838
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@26
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@28
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2a
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@2c
    invoke-direct {v3, v5, v0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V

    #@2f
    .line 1840
    .local v3, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@32
    move-result-object v2

    #@33
    .line 1841
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v2, :cond_6

    #@35
    .line 1845
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@38
    move-result-object v1

    #@39
    .line 1849
    .local v1, "existing":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v1, :cond_2

    #@3b
    .line 1850
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@3d
    const/4 v5, -0x1

    #@3e
    invoke-direct {v4, v5, v0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V

    #@41
    .line 1851
    .local v4, "restoredProviderId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@44
    move-result-object v1

    #@45
    .line 1854
    .end local v4    # "restoredProviderId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :cond_2
    if-eqz v1, :cond_5

    #@47
    .line 1855
    iget-boolean v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@49
    if-eqz v5, :cond_3

    #@4b
    iget-boolean v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    #@4d
    if-eqz v5, :cond_4

    #@4f
    .line 1867
    :cond_3
    :goto_0
    const/4 v5, 0x1

    #@50
    return v5

    #@51
    .line 1857
    :cond_4
    iput-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@53
    .line 1858
    iput-boolean v7, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@55
    .line 1859
    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@57
    iput-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@59
    .line 1860
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@5b
    if-eqz v5, :cond_3

    #@5d
    .line 1861
    const-string/jumbo v5, "AppWidgetServiceImpl"

    #@60
    new-instance v6, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v7, "Provider placeholder now reified: "

    #@68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    goto :goto_0

    #@78
    .line 1865
    :cond_5
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7d
    goto :goto_0

    #@7e
    .line 1870
    .end local v1    # "existing":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_6
    return v7
.end method

.method private bindLoadedWidgetsLocked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2301
    .local p1, "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v2

    #@4
    .line 2302
    .local v2, "loadedWidgetCount":I
    add-int/lit8 v0, v2, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@8
    .line 2303
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    #@e
    .line 2304
    .local v1, "loadedWidget":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@10
    .line 2306
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->providerTag:I

    #@12
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@15
    move-result-object v4

    #@16
    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@18
    .line 2307
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 2302
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2313
    :cond_1
    iget v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->hostTag:I

    #@21
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@24
    move-result-object v4

    #@25
    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@27
    .line 2314
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 2319
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2d
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 2320
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@34
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    .line 2321
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@3c
    goto :goto_1

    #@3d
    .line 2300
    .end local v1    # "loadedWidget":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_2
    return-void
.end method

.method private bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "connection"    # Landroid/content/ServiceConnection;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 2998
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3000
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@6
    .line 3001
    const v3, 0x2000001

    #@9
    .line 3000
    invoke-virtual {v2, p1, p2, v3, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 3004
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 2997
    return-void

    #@10
    .line 3003
    :catchall_0
    move-exception v2

    #@11
    .line 3004
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 3003
    throw v2
.end method

.method private cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 6
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1438
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 1439
    const-string/jumbo v2, "AppWidgetServiceImpl"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "cancelBroadcasts() for "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 1441
    :cond_0
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 1442
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@25
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    #@27
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@2a
    .line 1443
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2d
    move-result-wide v0

    #@2e
    .line 1445
    .local v0, "token":J
    :try_start_0
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    #@30
    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 1447
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 1449
    iput-object v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    #@38
    .line 1437
    .end local v0    # "token":J
    :cond_1
    return-void

    #@39
    .line 1446
    .restart local v0    # "token":J
    :catchall_0
    move-exception v2

    #@3a
    .line 1447
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    .line 1446
    throw v2
.end method

.method private clearProvidersAndHostsTagsLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 2478
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    .line 2479
    .local v4, "providerCount":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@a
    .line 2480
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@12
    .line 2481
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    #@14
    .line 2479
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 2484
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_0
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v1

    #@1d
    .line 2485
    .local v1, "hostCount":I
    const/4 v2, 0x0

    #@1e
    :goto_1
    if-ge v2, v1, :cond_1

    #@20
    .line 2486
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@28
    .line 2487
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    #@2a
    .line 2485
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 2477
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1
    return-void
.end method

.method private static cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .param p0, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    .line 1744
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    if-eqz p0, :cond_0

    #@8
    .line 1745
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 1747
    :cond_0
    return-object p0
.end method

.method private static cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1754
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    if-eqz p0, :cond_0

    #@8
    .line 1755
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/os/Bundle;

    #@e
    return-object v0

    #@f
    .line 1757
    :cond_0
    return-object p0
.end method

.method private static cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "rv"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 1737
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    if-eqz p0, :cond_0

    #@8
    .line 1738
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 1740
    :cond_0
    return-object p0
.end method

.method private computeMaximumWidgetBitmapMemory()V
    .locals 5

    #@0
    .prologue
    .line 216
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "window"

    #@5
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/view/WindowManager;

    #@b
    .line 217
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@e
    move-result-object v0

    #@f
    .line 218
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    #@11
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@14
    .line 219
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@17
    .line 222
    iget v3, v1, Landroid/graphics/Point;->x:I

    #@19
    mul-int/lit8 v3, v3, 0x6

    #@1b
    iget v4, v1, Landroid/graphics/Point;->y:I

    #@1d
    mul-int/2addr v3, v4

    #@1e
    iput v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    #@20
    .line 215
    return-void
.end method

.method private decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 4
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 1523
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@2
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .line 1525
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 1526
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/util/Pair;

    #@16
    .line 1527
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@18
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/HashSet;

    #@1e
    .line 1528
    .local v0, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_0

    #@2a
    .line 1531
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_0

    #@30
    .line 1532
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@32
    check-cast v3, Landroid/content/Intent$FilterComparison;

    #@34
    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@37
    move-result-object v3

    #@38
    invoke-direct {p0, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@3b
    .line 1533
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@3e
    goto :goto_0

    #@3f
    .line 1522
    .end local v0    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_1
    return-void
.end method

.method private deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 1411
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@3
    .line 1413
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@5
    .line 1414
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a
    .line 1415
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@d
    .line 1417
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@10
    .line 1419
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@12
    .line 1420
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v1, :cond_0

    #@14
    .line 1421
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@19
    .line 1422
    iget-boolean v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@1b
    if-nez v2, :cond_0

    #@1d
    .line 1424
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@20
    .line 1426
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    .line 1428
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@2b
    .line 1431
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@2e
    .line 1409
    :cond_0
    return-void
.end method

.method private deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@0
    .prologue
    .line 1398
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1399
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@a
    .line 1400
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@12
    .line 1401
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@15
    .line 1399
    add-int/lit8 v1, v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1403
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1d
    .line 1406
    const/4 v3, 0x0

    #@1e
    iput-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@20
    .line 1397
    return-void
.end method

.method private deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 6
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1874
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    .line 1875
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@a
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@c
    .line 1876
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@14
    .line 1878
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    #@17
    .line 1880
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@19
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1e
    .line 1881
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@21
    .line 1882
    iput-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@23
    .line 1883
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@25
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@28
    .line 1884
    iput-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@2a
    .line 1875
    add-int/lit8 v1, v1, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1886
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@32
    .line 1889
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@35
    .line 1873
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 1477
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V

    #@5
    .line 1497
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v2

    #@9
    .line 1499
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@b
    .line 1501
    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@d
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@f
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@12
    move-result-object v4

    #@13
    .line 1500
    const v5, 0x2000001

    #@16
    .line 1499
    invoke-virtual {v1, p1, v0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1503
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 1476
    return-void

    #@1d
    .line 1502
    :catchall_0
    move-exception v1

    #@1e
    .line 1503
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 1502
    throw v1
.end method

.method private static dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1993
    .local p0, "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string/jumbo v0, "  ["

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    #@9
    const/16 v0, 0x5d

    #@b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(C)V

    #@e
    .line 1994
    const-string/jumbo v0, " user="

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@19
    .line 1995
    const-string/jumbo v0, " package="

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@21
    check-cast v0, Ljava/lang/String;

    #@23
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26
    .line 1992
    return-void
.end method

.method private static dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V
    .locals 1
    .param p0, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1985
    const-string/jumbo v0, "  ["

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    #@9
    const-string/jumbo v0, "] hostId="

    #@c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 1986
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@14
    .line 1987
    const-string/jumbo v0, "    callbacks="

    #@17
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1f
    .line 1988
    const-string/jumbo v0, "    widgets.size="

    #@22
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v0

    #@2b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2e
    .line 1989
    const-string/jumbo v0, " zombie="

    #@31
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@39
    .line 1984
    return-void
.end method

.method private static dumpProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V
    .locals 2
    .param p0, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1963
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@2
    .line 1964
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    const-string/jumbo v1, "  ["

    #@5
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    #@b
    const-string/jumbo v1, "] provider "

    #@e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 1965
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@13
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@16
    .line 1966
    const-string/jumbo v1, "    min=("

    #@19
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@1e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@21
    .line 1967
    const-string/jumbo v1, "x"

    #@24
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@29
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2c
    .line 1968
    const-string/jumbo v1, ")   minResize=("

    #@2f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@34
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@37
    .line 1969
    const-string/jumbo v1, "x"

    #@3a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@3f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@42
    .line 1970
    const-string/jumbo v1, ") updatePeriodMillis="

    #@45
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 1971
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    #@4a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@4d
    .line 1972
    const-string/jumbo v1, " resizeMode="

    #@50
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    .line 1973
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    #@55
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@58
    .line 1974
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    #@5a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@5d
    .line 1975
    const-string/jumbo v1, " autoAdvanceViewId="

    #@60
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    .line 1976
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    #@65
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@68
    .line 1977
    const-string/jumbo v1, " initialLayout=#"

    #@6b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    .line 1978
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    #@70
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 1979
    const-string/jumbo v1, " initialKeyguardLayout=#"

    #@7a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    .line 1980
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    #@7f
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@86
    .line 1981
    const-string/jumbo v1, " zombie="

    #@89
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8c
    iget-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@8e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@91
    .line 1962
    return-void
.end method

.method private static dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V
    .locals 1
    .param p0, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1999
    const-string/jumbo v0, "  ["

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    #@9
    const-string/jumbo v0, "] id="

    #@c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 2000
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@14
    .line 2001
    const-string/jumbo v0, "    host="

    #@17
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    .line 2002
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@1c
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@1e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@21
    .line 2003
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 2004
    const-string/jumbo v0, "    provider="

    #@28
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2d
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@2f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@32
    .line 2006
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@34
    if-eqz v0, :cond_1

    #@36
    .line 2007
    const-string/jumbo v0, "    host.callbacks="

    #@39
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@3e
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@40
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@43
    .line 2009
    :cond_1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@45
    if-eqz v0, :cond_2

    #@47
    .line 2010
    const-string/jumbo v0, "    views="

    #@4a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@4f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@52
    .line 1998
    :cond_2
    return-void
.end method

.method private ensureGroupStateLoadedLocked(I)V
    .locals 9
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 411
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@3
    invoke-virtual {v7, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    #@6
    move-result-object v6

    #@7
    .line 416
    .local v6, "profileIds":[I
    const/4 v1, 0x0

    #@8
    .line 417
    .local v1, "newMemberCount":I
    array-length v5, v6

    #@9
    .line 418
    .local v5, "profileIdCount":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    #@c
    .line 419
    aget v4, v6, v0

    #@e
    .line 420
    .local v4, "profileId":I
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    #@10
    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@13
    move-result v7

    #@14
    if-ltz v7, :cond_0

    #@16
    .line 421
    aput v8, v6, v0

    #@18
    .line 418
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 423
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 427
    .end local v4    # "profileId":I
    :cond_1
    if-gtz v1, :cond_2

    #@20
    .line 428
    return-void

    #@21
    .line 431
    :cond_2
    const/4 v2, 0x0

    #@22
    .line 432
    .local v2, "newMemberIndex":I
    new-array v3, v1, [I

    #@24
    .line 433
    .local v3, "newProfileIds":[I
    const/4 v0, 0x0

    #@25
    :goto_2
    if-ge v0, v5, :cond_4

    #@27
    .line 434
    aget v4, v6, v0

    #@29
    .line 435
    .restart local v4    # "profileId":I
    if-eq v4, v8, :cond_3

    #@2b
    .line 436
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    #@2d
    invoke-virtual {v7, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@30
    .line 437
    aput v4, v3, v2

    #@32
    .line 438
    add-int/lit8 v2, v2, 0x1

    #@34
    .line 433
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_2

    #@37
    .line 442
    .end local v4    # "profileId":I
    :cond_4
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearProvidersAndHostsTagsLocked()V

    #@3a
    .line 444
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupWidgetProvidersLocked([I)V

    #@3d
    .line 445
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupStateLocked([I)V

    #@40
    .line 410
    return-void
.end method

.method private findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .locals 5
    .param p1, "tag"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2340
    if-gez p1, :cond_0

    #@3
    .line 2341
    return-object v4

    #@4
    .line 2343
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    .line 2344
    .local v1, "hostCount":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@d
    .line 2345
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@15
    .line 2346
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    #@17
    if-ne v3, p1, :cond_1

    #@19
    .line 2347
    return-object v0

    #@1a
    .line 2344
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2350
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_2
    return-object v4
.end method

.method private findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .locals 5
    .param p1, "tag"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2326
    if-gez p1, :cond_0

    #@3
    .line 2327
    return-object v4

    #@4
    .line 2329
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .line 2330
    .local v2, "providerCount":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@d
    .line 2331
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@15
    .line 2332
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    #@17
    if-ne v3, p1, :cond_1

    #@19
    .line 2333
    return-object v1

    #@1a
    .line 2330
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2336
    .end local v1    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2
    return-object v4
.end method

.method private getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4
    move-result-wide v0

    #@5
    .line 2971
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@8
    move-result-object v4

    #@9
    new-instance v5, Landroid/content/ComponentName;

    #@b
    invoke-direct {v5, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 2972
    const/4 v6, 0x0

    #@f
    .line 2971
    invoke-interface {v4, v5, v6, p3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 2982
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 2973
    return-object p1

    #@16
    .line 2974
    :catch_0
    move-exception v3

    #@17
    .line 2975
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@19
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1c
    move-result-object v4

    #@1d
    .line 2976
    const/4 v5, 0x1

    #@1e
    new-array v5, v5, [Ljava/lang/String;

    #@20
    const/4 v6, 0x0

    #@21
    aput-object p1, v5, v6

    #@23
    .line 2975
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 2977
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_0

    #@29
    array-length v4, v2

    #@2a
    if-lez v4, :cond_0

    #@2c
    .line 2978
    const/4 v4, 0x0

    #@2d
    aget-object v4, v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    .line 2982
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 2978
    return-object v4

    #@33
    .line 2982
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 2984
    return-object v7

    #@37
    .line 2981
    .end local v2    # "packageNames":[Ljava/lang/String;
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@38
    .line 2982
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 2981
    throw v4
.end method

.method private getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2204
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_UPDATE"

    #@5
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2205
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@b
    .line 2207
    invoke-direct {p0, v0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@e
    move-result-object v1

    #@f
    .line 2209
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_0

    #@15
    .line 2210
    const/4 v2, 0x0

    #@16
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/content/pm/ResolveInfo;

    #@1c
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1e
    return-object v2

    #@1f
    .line 2213
    :cond_0
    const/4 v2, 0x0

    #@20
    return-object v2
.end method

.method private static getSavedStateFile(I)Landroid/util/AtomicFile;
    .locals 4
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 2751
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 2752
    .local v0, "dir":Ljava/io/File;
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getStateFile(I)Ljava/io/File;

    #@7
    move-result-object v2

    #@8
    .line 2753
    .local v2, "settingsFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_1

    #@e
    if-nez p0, :cond_1

    #@10
    .line 2754
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_0

    #@16
    .line 2755
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@19
    .line 2758
    :cond_0
    new-instance v1, Ljava/io/File;

    #@1b
    const-string/jumbo v3, "/data/system/appwidgets.xml"

    #@1e
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@21
    .line 2761
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@24
    .line 2763
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_1
    new-instance v3, Landroid/util/AtomicFile;

    #@26
    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@29
    return-object v3
.end method

.method private static getStateFile(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 2747
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "appwidgets.xml"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2185
    const/4 v2, 0x0

    #@1
    .line 2187
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4
    move-result-wide v0

    #@5
    .line 2189
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@7
    const/4 v5, 0x0

    #@8
    invoke-interface {v4, p1, v5, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v2

    #@c
    .line 2193
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 2196
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v2, :cond_0

    #@11
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@13
    if-nez v4, :cond_1

    #@15
    .line 2197
    :cond_0
    const/4 v4, -0x1

    #@16
    return v4

    #@17
    .line 2190
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    #@18
    .line 2193
    .local v3, "re":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    goto :goto_0

    #@1c
    .line 2192
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@1d
    .line 2193
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 2192
    throw v4

    #@21
    .line 2200
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@25
    return v4
.end method

.method private static getWidgetIds(Ljava/util/ArrayList;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;)[I"
        }
    .end annotation

    #@0
    .prologue
    .line 1954
    .local p0, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    .line 1955
    .local v2, "instancesSize":I
    new-array v0, v2, [I

    #@6
    .line 1956
    .local v0, "appWidgetIds":[I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 1957
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@f
    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@11
    aput v3, v0, v1

    #@13
    .line 1956
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1959
    :cond_0
    return-object v0
.end method

.method private handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;II)V
    .locals 10
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "viewId"    # I

    #@0
    .prologue
    .line 1582
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1591
    .end local p2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    :goto_0
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v8

    #@6
    .line 1592
    if-nez p2, :cond_1

    #@8
    .line 1593
    const/4 v7, 0x0

    #@9
    :try_start_1
    iput-object v7, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@b
    .line 1595
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@d
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@10
    move-result-object v4

    #@11
    .line 1596
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v3

    #@15
    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v7

    #@19
    if-eqz v7, :cond_1

    #@1b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroid/util/Pair;

    #@21
    .line 1597
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@23
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v7

    #@27
    check-cast v7, Ljava/util/HashSet;

    #@29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v9

    #@2d
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@30
    move-result v7

    #@31
    if-eqz v7, :cond_0

    #@33
    .line 1598
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;

    #@35
    invoke-direct {v0, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    #@38
    .line 1617
    .local v0, "connection":Landroid/content/ServiceConnection;
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3a
    check-cast v7, Ljava/lang/Integer;

    #@3c
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@3f
    move-result v7

    #@40
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    #@43
    move-result v6

    #@44
    .line 1618
    .local v6, "userId":I
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@46
    check-cast v7, Landroid/content/Intent$FilterComparison;

    #@48
    invoke-virtual {v7}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@4b
    move-result-object v1

    #@4c
    .line 1621
    .local v1, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/os/UserHandle;

    #@4e
    invoke-direct {v7, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@51
    invoke-direct {p0, v1, v0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    goto :goto_1

    #@55
    .line 1591
    .end local v0    # "connection":Landroid/content/ServiceConnection;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    .end local v6    # "userId":I
    :catchall_0
    move-exception v7

    #@56
    monitor-exit v8

    #@57
    throw v7

    #@58
    .line 1583
    .restart local p2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    :catch_0
    move-exception v5

    #@59
    .line 1586
    .local v5, "re":Landroid/os/RemoteException;
    const/4 p2, 0x0

    #@5a
    .local p2, "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    goto :goto_0

    #@5b
    .end local v5    # "re":Landroid/os/RemoteException;
    .end local p2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    :cond_1
    monitor-exit v8

    #@5c
    .line 1580
    return-void
.end method

.method private handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 5
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    .line 1677
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1675
    :goto_0
    return-void

    #@4
    .line 1678
    :catch_0
    move-exception v0

    #@5
    .line 1679
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 1680
    :try_start_1
    const-string/jumbo v1, "AppWidgetServiceImpl"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Widget host dead: "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 1681
    const/4 v1, 0x0

    #@25
    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    monitor-exit v2

    #@28
    goto :goto_0

    #@29
    .line 1679
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method private handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .locals 5
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;

    #@0
    .prologue
    .line 1723
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->providersChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1721
    :goto_0
    return-void

    #@4
    .line 1724
    :catch_0
    move-exception v0

    #@5
    .line 1725
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 1726
    :try_start_1
    const-string/jumbo v1, "AppWidgetServiceImpl"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Widget host dead: "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 1727
    const/4 v1, 0x0

    #@25
    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    monitor-exit v2

    #@28
    goto :goto_0

    #@29
    .line 1725
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method private handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 1648
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1646
    :goto_0
    return-void

    #@4
    .line 1649
    :catch_0
    move-exception v0

    #@5
    .line 1650
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 1651
    :try_start_1
    const-string/jumbo v1, "AppWidgetServiceImpl"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Widget host dead: "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 1652
    const/4 v1, 0x0

    #@25
    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    monitor-exit v2

    #@28
    goto :goto_0

    #@29
    .line 1650
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method private incrementAndGetAppWidgetIdLocked(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1364
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    #@3
    move-result v1

    #@4
    add-int/lit8 v0, v1, 0x1

    #@6
    .line 1365
    .local v0, "appWidgetId":I
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@8
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    #@b
    .line 1366
    return v0
.end method

.method private incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1510
    .local p2, "serviceId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    const/4 v0, 0x0

    #@1
    .line 1511
    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1512
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@b
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    #@11
    .line 1517
    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@18
    .line 1509
    return-void

    #@19
    .line 1514
    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    #@1b
    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1e
    .line 1515
    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@20
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    goto :goto_0
.end method

.method private static isLocalBinder()Z
    .locals 2

    #@0
    .prologue
    .line 1733
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private loadGroupStateLocked([I)V
    .locals 12
    .param p1, "profileIds"    # [I

    #@0
    .prologue
    .line 2263
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2265
    .local v4, "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    const/4 v8, 0x0

    #@6
    .line 2267
    .local v8, "version":I
    array-length v6, p1

    #@7
    .line 2268
    .local v6, "profileIdCount":I
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_0

    #@a
    .line 2269
    aget v5, p1, v3

    #@c
    .line 2272
    .local v5, "profileId":I
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    #@f
    move-result-object v2

    #@10
    .line 2274
    .local v2, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@13
    move-result-object v7

    #@14
    .line 2275
    .local v7, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, v7, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I

    #@17
    move-result v8

    #@18
    .line 2276
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 2268
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2277
    :catch_0
    move-exception v1

    #@1f
    .line 2278
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "AppWidgetServiceImpl"

    #@22
    new-instance v10, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v11, "Failed to read state: "

    #@2a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v10

    #@2e
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v10

    #@32
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v10

    #@36
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    goto :goto_1

    #@3a
    .line 2282
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v5    # "profileId":I
    :cond_0
    if-ltz v8, :cond_2

    #@3c
    .line 2284
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindLoadedWidgetsLocked(Ljava/util/List;)V

    #@3f
    .line 2287
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->performUpgradeLocked(I)V

    #@42
    .line 2259
    :cond_1
    return-void

    #@43
    .line 2290
    :cond_2
    const-string/jumbo v9, "AppWidgetServiceImpl"

    #@46
    const-string/jumbo v10, "Failed to read state, clearing widgets and hosts."

    #@49
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 2291
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearWidgetsLocked()V

    #@4f
    .line 2292
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    #@54
    .line 2293
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@56
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@59
    move-result v0

    #@5a
    .line 2294
    .local v0, "N":I
    const/4 v3, 0x0

    #@5b
    :goto_2
    if-ge v3, v0, :cond_1

    #@5d
    .line 2295
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@5f
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@62
    move-result-object v9

    #@63
    check-cast v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@65
    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@67
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    #@6a
    .line 2294
    add-int/lit8 v3, v3, 0x1

    #@6c
    goto :goto_2
.end method

.method private loadGroupWidgetProvidersLocked([I)V
    .locals 9
    .param p1, "profileIds"    # [I

    #@0
    .prologue
    .line 1804
    const/4 v1, 0x0

    #@1
    .line 1805
    .local v1, "allReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/content/Intent;

    #@3
    const-string/jumbo v8, "android.appwidget.action.APPWIDGET_UPDATE"

    #@6
    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9
    .line 1807
    .local v3, "intent":Landroid/content/Intent;
    array-length v4, p1

    #@a
    .line 1808
    .local v4, "profileCount":I
    const/4 v2, 0x0

    #@b
    .end local v1    # "allReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    #@d
    .line 1809
    aget v5, p1, v2

    #@f
    .line 1811
    .local v5, "profileId":I
    invoke-direct {p0, v3, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@12
    move-result-object v7

    #@13
    .line 1812
    .local v7, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_0

    #@15
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@18
    move-result v8

    #@19
    if-eqz v8, :cond_1

    #@1b
    .line 1808
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1813
    :cond_1
    if-nez v1, :cond_2

    #@20
    .line 1814
    new-instance v1, Ljava/util/ArrayList;

    #@22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 1816
    :cond_2
    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@28
    goto :goto_1

    #@29
    .line 1820
    .end local v5    # "profileId":I
    .end local v7    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    if-nez v1, :cond_4

    #@2b
    const/4 v0, 0x0

    #@2c
    .line 1821
    .local v0, "N":I
    :goto_2
    const/4 v2, 0x0

    #@2d
    :goto_3
    if-ge v2, v0, :cond_5

    #@2f
    .line 1822
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v6

    #@33
    check-cast v6, Landroid/content/pm/ResolveInfo;

    #@35
    .line 1823
    .local v6, "receiver":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    #@38
    .line 1821
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_3

    #@3b
    .line 1820
    .end local v0    # "N":I
    .end local v6    # "receiver":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@3e
    move-result v0

    #@3f
    .restart local v0    # "N":I
    goto :goto_2

    #@40
    .line 1803
    :cond_5
    return-void
.end method

.method private lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .locals 4
    .param p1, "hostId"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@0
    .prologue
    .line 1784
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1785
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@9
    .line 1786
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@11
    .line 1787
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@13
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 1788
    return-object v1

    #@1a
    .line 1785
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1791
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1
    const/4 v3, 0x0

    #@1e
    return-object v3
.end method

.method private lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .locals 2
    .param p1, "id"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1385
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@4
    move-result-object v0

    #@5
    .line 1386
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_0

    #@7
    .line 1387
    return-object v0

    #@8
    .line 1390
    :cond_0
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@a
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@d
    .line 1391
    .restart local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@f
    .line 1392
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 1394
    return-object v0
.end method

.method private lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .locals 4
    .param p1, "id"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@0
    .prologue
    .line 1773
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1774
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1775
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@11
    .line 1776
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@13
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 1777
    return-object v2

    #@1a
    .line 1774
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1780
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1
    const/4 v3, 0x0

    #@1e
    return-object v3
.end method

.method private lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1761
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1762
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1763
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@11
    .line 1764
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@13
    if-ne v3, p1, :cond_0

    #@15
    .line 1765
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@17
    invoke-virtual {v3, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z

    #@1a
    move-result v3

    #@1b
    .line 1764
    if-eqz v3, :cond_0

    #@1d
    .line 1766
    return-object v2

    #@1e
    .line 1762
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1769
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1
    const/4 v3, 0x0

    #@22
    return-object v3
.end method

.method private onConfigurationChanged()V
    .locals 14

    #@0
    .prologue
    .line 271
    sget-boolean v11, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@2
    if-eqz v11, :cond_0

    #@4
    .line 272
    const-string/jumbo v11, "AppWidgetServiceImpl"

    #@7
    const-string/jumbo v12, "onConfigurationChanged()"

    #@a
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 275
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@10
    move-result-object v10

    #@11
    .line 276
    .local v10, "revised":Ljava/util/Locale;
    if-eqz v10, :cond_1

    #@13
    iget-object v11, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    #@15
    if-nez v11, :cond_2

    #@17
    .line 277
    :cond_1
    iput-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    #@19
    .line 279
    iget-object v12, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@1b
    monitor-enter v12

    #@1c
    .line 280
    const/4 v2, 0x0

    #@1d
    .line 285
    .local v2, "changedGroups":Landroid/util/SparseIntArray;
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    #@1f
    iget-object v11, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@21
    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@24
    .line 286
    .local v7, "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    new-instance v9, Ljava/util/HashSet;

    #@26
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    #@29
    .line 288
    .local v9, "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v0

    #@2d
    .line 289
    .local v0, "N":I
    add-int/lit8 v6, v0, -0x1

    #@2f
    .local v6, "i":I
    move-object v3, v2

    #@30
    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .local v3, "changedGroups":Landroid/util/SparseIntArray;
    :goto_0
    if-ltz v6, :cond_3

    #@32
    .line 290
    :try_start_1
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v8

    #@36
    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@38
    .line 292
    .local v8, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@3b
    move-result v11

    #@3c
    invoke-direct {p0, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@3f
    .line 294
    iget-object v11, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@41
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@44
    move-result v11

    #@45
    if-nez v11, :cond_6

    #@47
    .line 296
    iget-object v11, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@49
    iget-object v11, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@4b
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@4e
    move-result-object v11

    #@4f
    .line 297
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@52
    move-result v13

    #@53
    .line 295
    invoke-direct {p0, v11, v13, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    #@56
    move-result v1

    #@57
    .line 299
    .local v1, "changed":Z
    if-eqz v1, :cond_6

    #@59
    .line 300
    if-nez v3, :cond_5

    #@5b
    .line 301
    new-instance v2, Landroid/util/SparseIntArray;

    #@5d
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@60
    .line 303
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .local v2, "changedGroups":Landroid/util/SparseIntArray;
    :goto_1
    :try_start_2
    iget-object v11, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@62
    .line 304
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@65
    move-result v13

    #@66
    .line 303
    invoke-virtual {v11, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    #@69
    move-result v5

    #@6a
    .line 305
    .local v5, "groupId":I
    invoke-virtual {v2, v5, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6d
    .line 289
    .end local v1    # "changed":Z
    .end local v5    # "groupId":I
    :goto_2
    add-int/lit8 v6, v6, -0x1

    #@6f
    move-object v3, v2

    #@70
    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    goto :goto_0

    #@71
    .line 276
    .end local v0    # "N":I
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .end local v6    # "i":I
    .end local v7    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v8    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v9    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    :cond_2
    iget-object v11, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    #@73
    invoke-virtual {v10, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v11

    #@77
    if-eqz v11, :cond_1

    #@79
    .line 270
    :goto_3
    return-void

    #@7a
    .line 310
    .restart local v0    # "N":I
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v6    # "i":I
    .restart local v7    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v9    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    :cond_3
    if-eqz v3, :cond_4

    #@7c
    .line 311
    :try_start_3
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    #@7f
    move-result v4

    #@80
    .line 312
    .local v4, "groupCount":I
    const/4 v6, 0x0

    #@81
    :goto_4
    if-ge v6, v4, :cond_4

    #@83
    .line 313
    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->get(I)I

    #@86
    move-result v5

    #@87
    .line 314
    .restart local v5    # "groupId":I
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@8a
    .line 312
    add-int/lit8 v6, v6, 0x1

    #@8c
    goto :goto_4

    #@8d
    .end local v4    # "groupCount":I
    .end local v5    # "groupId":I
    :cond_4
    monitor-exit v12

    #@8e
    goto :goto_3

    #@8f
    .line 279
    .end local v0    # "N":I
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .end local v6    # "i":I
    .end local v7    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v9    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    :catchall_0
    move-exception v11

    #@90
    :goto_5
    monitor-exit v12

    #@91
    throw v11

    #@92
    .restart local v0    # "N":I
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v6    # "i":I
    .restart local v7    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v9    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    :catchall_1
    move-exception v11

    #@93
    move-object v2, v3

    #@94
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v2    # "changedGroups":Landroid/util/SparseIntArray;
    goto :goto_5

    #@95
    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v1    # "changed":Z
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v8    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_5
    move-object v2, v3

    #@96
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v2    # "changedGroups":Landroid/util/SparseIntArray;
    goto :goto_1

    #@97
    .end local v1    # "changed":Z
    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    :cond_6
    move-object v2, v3

    #@98
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v2    # "changedGroups":Landroid/util/SparseIntArray;
    goto :goto_2
.end method

.method private onPackageBroadcastReceived(Landroid/content/Intent;I)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 323
    .local v3, "action":Ljava/lang/String;
    const/4 v4, 0x0

    #@5
    .line 324
    .local v4, "added":Z
    const/4 v5, 0x0

    #@6
    .line 325
    .local v5, "changed":Z
    const/4 v6, 0x0

    #@7
    .line 327
    .local v6, "componentsModified":Z
    const/4 v10, 0x0

    #@8
    .line 328
    .local v10, "pkgList":[Ljava/lang/String;
    const-string/jumbo v14, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@b
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v14

    #@f
    if-eqz v14, :cond_1

    #@11
    .line 329
    const-string/jumbo v14, "android.intent.extra.changed_package_list"

    #@14
    move-object/from16 v0, p1

    #@16
    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v10

    #@1a
    .line 330
    .local v10, "pkgList":[Ljava/lang/String;
    const/4 v4, 0x1

    #@1b
    .line 347
    .end local v4    # "added":Z
    .end local v5    # "changed":Z
    :goto_0
    if-eqz v10, :cond_0

    #@1d
    array-length v14, v10

    #@1e
    if-nez v14, :cond_5

    #@20
    .line 348
    :cond_0
    return-void

    #@21
    .line 331
    .restart local v4    # "added":Z
    .restart local v5    # "changed":Z
    .local v10, "pkgList":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v14, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@24
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v14

    #@28
    if-eqz v14, :cond_2

    #@2a
    .line 332
    const-string/jumbo v14, "android.intent.extra.changed_package_list"

    #@2d
    move-object/from16 v0, p1

    #@2f
    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@32
    move-result-object v10

    #@33
    .line 333
    .local v10, "pkgList":[Ljava/lang/String;
    const/4 v4, 0x0

    #@34
    goto :goto_0

    #@35
    .line 335
    .local v10, "pkgList":[Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@38
    move-result-object v13

    #@39
    .line 336
    .local v13, "uri":Landroid/net/Uri;
    if-nez v13, :cond_3

    #@3b
    .line 337
    return-void

    #@3c
    .line 339
    :cond_3
    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@3f
    move-result-object v11

    #@40
    .line 340
    .local v11, "pkgName":Ljava/lang/String;
    if-nez v11, :cond_4

    #@42
    .line 341
    return-void

    #@43
    .line 343
    :cond_4
    const/4 v14, 0x1

    #@44
    new-array v10, v14, [Ljava/lang/String;

    #@46
    .end local v10    # "pkgList":[Ljava/lang/String;
    const/4 v14, 0x0

    #@47
    aput-object v11, v10, v14

    #@49
    .line 344
    .local v10, "pkgList":[Ljava/lang/String;
    const-string/jumbo v14, "android.intent.action.PACKAGE_ADDED"

    #@4c
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v4

    #@50
    .line 345
    .local v4, "added":Z
    const-string/jumbo v14, "android.intent.action.PACKAGE_CHANGED"

    #@53
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v5

    #@57
    .local v5, "changed":Z
    goto :goto_0

    #@58
    .line 351
    .end local v4    # "added":Z
    .end local v5    # "changed":Z
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_5
    move-object/from16 v0, p0

    #@5a
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@5c
    monitor-enter v15

    #@5d
    .line 352
    :try_start_0
    move-object/from16 v0, p0

    #@5f
    move/from16 v1, p2

    #@61
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@64
    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@67
    move-result-object v7

    #@68
    .line 356
    .local v7, "extras":Landroid/os/Bundle;
    if-nez v4, :cond_6

    #@6a
    if-eqz v5, :cond_b

    #@6c
    .line 357
    :cond_6
    if-eqz v4, :cond_a

    #@6e
    if-eqz v7, :cond_8

    #@70
    .line 358
    const-string/jumbo v14, "android.intent.extra.REPLACING"

    #@73
    const/16 v16, 0x0

    #@75
    move/from16 v0, v16

    #@77
    invoke-virtual {v7, v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@7a
    move-result v14

    #@7b
    if-eqz v14, :cond_9

    #@7d
    const/4 v8, 0x0

    #@7e
    .line 360
    .local v8, "newPackageAdded":Z
    :goto_1
    const/4 v14, 0x0

    #@7f
    array-length v0, v10

    #@80
    move/from16 v16, v0

    #@82
    .end local v6    # "componentsModified":Z
    :goto_2
    move/from16 v0, v16

    #@84
    if-ge v14, v0, :cond_e

    #@86
    aget-object v11, v10, v14

    #@88
    .line 362
    .restart local v11    # "pkgName":Ljava/lang/String;
    const/16 v17, 0x0

    #@8a
    move-object/from16 v0, p0

    #@8c
    move/from16 v1, p2

    #@8e
    move-object/from16 v2, v17

    #@90
    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    #@93
    move-result v17

    #@94
    or-int v6, v6, v17

    #@96
    .line 366
    .local v6, "componentsModified":Z
    if-eqz v8, :cond_7

    #@98
    if-nez p2, :cond_7

    #@9a
    .line 367
    move-object/from16 v0, p0

    #@9c
    move/from16 v1, p2

    #@9e
    invoke-direct {v0, v11, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    #@a1
    move-result v12

    #@a2
    .line 368
    .local v12, "uid":I
    if-ltz v12, :cond_7

    #@a4
    .line 369
    move-object/from16 v0, p0

    #@a6
    invoke-direct {v0, v11, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->resolveHostUidLocked(Ljava/lang/String;I)V

    #@a9
    .line 360
    .end local v12    # "uid":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    #@ab
    goto :goto_2

    #@ac
    .line 357
    .end local v8    # "newPackageAdded":Z
    .end local v11    # "pkgName":Ljava/lang/String;
    .local v6, "componentsModified":Z
    :cond_8
    const/4 v8, 0x1

    #@ad
    .restart local v8    # "newPackageAdded":Z
    goto :goto_1

    #@ae
    .line 358
    .end local v8    # "newPackageAdded":Z
    :cond_9
    const/4 v8, 0x1

    #@af
    .restart local v8    # "newPackageAdded":Z
    goto :goto_1

    #@b0
    .line 357
    .end local v8    # "newPackageAdded":Z
    :cond_a
    const/4 v8, 0x0

    #@b1
    .restart local v8    # "newPackageAdded":Z
    goto :goto_1

    #@b2
    .line 376
    .end local v8    # "newPackageAdded":Z
    :cond_b
    if-eqz v7, :cond_c

    #@b4
    .line 377
    const-string/jumbo v14, "android.intent.extra.REPLACING"

    #@b7
    const/16 v16, 0x0

    #@b9
    move/from16 v0, v16

    #@bb
    invoke-virtual {v7, v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@be
    move-result v14

    #@bf
    if-eqz v14, :cond_d

    #@c1
    const/4 v9, 0x0

    #@c2
    .line 379
    .local v9, "packageRemovedPermanently":Z
    :goto_3
    if-eqz v9, :cond_e

    #@c4
    .line 380
    const/4 v14, 0x0

    #@c5
    array-length v0, v10

    #@c6
    move/from16 v16, v0

    #@c8
    .end local v6    # "componentsModified":Z
    :goto_4
    move/from16 v0, v16

    #@ca
    if-ge v14, v0, :cond_e

    #@cc
    aget-object v11, v10, v14

    #@ce
    .line 381
    .restart local v11    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d0
    move/from16 v1, p2

    #@d2
    invoke-direct {v0, v11, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z

    #@d5
    move-result v17

    #@d6
    or-int v6, v6, v17

    #@d8
    .line 380
    .local v6, "componentsModified":Z
    add-int/lit8 v14, v14, 0x1

    #@da
    goto :goto_4

    #@db
    .line 376
    .end local v9    # "packageRemovedPermanently":Z
    .end local v11    # "pkgName":Ljava/lang/String;
    .local v6, "componentsModified":Z
    :cond_c
    const/4 v9, 0x1

    #@dc
    .restart local v9    # "packageRemovedPermanently":Z
    goto :goto_3

    #@dd
    .line 377
    .end local v9    # "packageRemovedPermanently":Z
    :cond_d
    const/4 v9, 0x1

    #@de
    .restart local v9    # "packageRemovedPermanently":Z
    goto :goto_3

    #@df
    .line 387
    .end local v6    # "componentsModified":Z
    .end local v9    # "packageRemovedPermanently":Z
    :cond_e
    if-eqz v6, :cond_f

    #@e1
    .line 388
    move-object/from16 v0, p0

    #@e3
    move/from16 v1, p2

    #@e5
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@e8
    .line 391
    move-object/from16 v0, p0

    #@ea
    move/from16 v1, p2

    #@ec
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ef
    :cond_f
    monitor-exit v15

    #@f0
    .line 321
    return-void

    #@f1
    .line 351
    .end local v7    # "extras":Landroid/os/Bundle;
    :catchall_0
    move-exception v14

    #@f2
    monitor-exit v15

    #@f3
    throw v14
.end method

.method private onUserStarted(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2236
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 2237
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@6
    .line 2239
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    .line 2240
    .local v0, "N":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@f
    .line 2241
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@17
    .line 2244
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@1a
    move-result v4

    #@1b
    if-eq v4, p1, :cond_1

    #@1d
    .line 2240
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 2248
    :cond_1
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v4

    #@26
    if-lez v4, :cond_0

    #@28
    .line 2249
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@2b
    .line 2250
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@2d
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    #@30
    move-result-object v1

    #@31
    .line 2251
    .local v1, "appWidgetIds":[I
    invoke-direct {p0, v3, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    #@34
    .line 2252
    invoke-direct {p0, v3, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    goto :goto_1

    #@38
    .line 2236
    .end local v0    # "N":I
    .end local v1    # "appWidgetIds":[I
    .end local v2    # "i":I
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catchall_0
    move-exception v4

    #@39
    monitor-exit v5

    #@3a
    throw v4

    #@3b
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_2
    monitor-exit v5

    #@3c
    .line 2235
    return-void
.end method

.method private onUserStopped(I)V
    .locals 20
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2767
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@4
    move-object/from16 v19, v0

    #@6
    monitor-enter v19

    #@7
    .line 2768
    const/4 v14, 0x0

    #@8
    .line 2769
    .local v14, "providersChanged":Z
    const/4 v2, 0x0

    #@9
    .line 2772
    .local v2, "crossProfileWidgetsChanged":Z
    :try_start_0
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@d
    move-object/from16 v18, v0

    #@f
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v17

    #@13
    .line 2773
    .local v17, "widgetCount":I
    add-int/lit8 v8, v17, -0x1

    #@15
    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_5

    #@17
    .line 2774
    move-object/from16 v0, p0

    #@19
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@1b
    move-object/from16 v18, v0

    #@1d
    move-object/from16 v0, v18

    #@1f
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v16

    #@23
    check-cast v16, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@25
    .line 2776
    .local v16, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    move-object/from16 v0, v16

    #@27
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@29
    move-object/from16 v18, v0

    #@2b
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@2e
    move-result v18

    #@2f
    move/from16 v0, v18

    #@31
    move/from16 v1, p1

    #@33
    if-ne v0, v1, :cond_2

    #@35
    const/4 v7, 0x1

    #@36
    .line 2777
    .local v7, "hostInUser":Z
    :goto_1
    move-object/from16 v0, v16

    #@38
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3a
    move-object/from16 v18, v0

    #@3c
    if-eqz v18, :cond_3

    #@3e
    const/4 v4, 0x1

    #@3f
    .line 2778
    .local v4, "hasProvider":Z
    :goto_2
    if-eqz v4, :cond_4

    #@41
    move-object/from16 v0, v16

    #@43
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@45
    move-object/from16 v18, v0

    #@47
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@4a
    move-result v18

    #@4b
    move/from16 v0, v18

    #@4d
    move/from16 v1, p1

    #@4f
    if-ne v0, v1, :cond_4

    #@51
    const/4 v13, 0x1

    #@52
    .line 2783
    .local v13, "providerInUser":Z
    :goto_3
    if-eqz v7, :cond_1

    #@54
    if-eqz v4, :cond_0

    #@56
    if-eqz v13, :cond_1

    #@58
    .line 2784
    :cond_0
    move-object/from16 v0, p0

    #@5a
    move-object/from16 v1, v16

    #@5c
    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@5f
    .line 2785
    move-object/from16 v0, v16

    #@61
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@63
    move-object/from16 v18, v0

    #@65
    move-object/from16 v0, v18

    #@67
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@69
    move-object/from16 v18, v0

    #@6b
    move-object/from16 v0, v18

    #@6d
    move-object/from16 v1, v16

    #@6f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@72
    .line 2786
    const/16 v18, 0x0

    #@74
    move-object/from16 v0, v18

    #@76
    move-object/from16 v1, v16

    #@78
    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@7a
    .line 2787
    if-eqz v4, :cond_1

    #@7c
    .line 2788
    move-object/from16 v0, v16

    #@7e
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@80
    move-object/from16 v18, v0

    #@82
    move-object/from16 v0, v18

    #@84
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@86
    move-object/from16 v18, v0

    #@88
    move-object/from16 v0, v18

    #@8a
    move-object/from16 v1, v16

    #@8c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@8f
    .line 2789
    const/16 v18, 0x0

    #@91
    move-object/from16 v0, v18

    #@93
    move-object/from16 v1, v16

    #@95
    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@97
    .line 2773
    :cond_1
    add-int/lit8 v8, v8, -0x1

    #@99
    goto/16 :goto_0

    #@9b
    .line 2776
    .end local v4    # "hasProvider":Z
    .end local v7    # "hostInUser":Z
    .end local v13    # "providerInUser":Z
    :cond_2
    const/4 v7, 0x0

    #@9c
    .restart local v7    # "hostInUser":Z
    goto :goto_1

    #@9d
    .line 2777
    :cond_3
    const/4 v4, 0x0

    #@9e
    .restart local v4    # "hasProvider":Z
    goto :goto_2

    #@9f
    .line 2778
    :cond_4
    const/4 v13, 0x0

    #@a0
    .restart local v13    # "providerInUser":Z
    goto :goto_3

    #@a1
    .line 2795
    .end local v4    # "hasProvider":Z
    .end local v7    # "hostInUser":Z
    .end local v13    # "providerInUser":Z
    .end local v16    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_5
    move-object/from16 v0, p0

    #@a3
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@a5
    move-object/from16 v18, v0

    #@a7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@aa
    move-result v6

    #@ab
    .line 2796
    .local v6, "hostCount":I
    add-int/lit8 v8, v6, -0x1

    #@ad
    .end local v2    # "crossProfileWidgetsChanged":Z
    :goto_4
    if-ltz v8, :cond_8

    #@af
    .line 2797
    move-object/from16 v0, p0

    #@b1
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@b3
    move-object/from16 v18, v0

    #@b5
    move-object/from16 v0, v18

    #@b7
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ba
    move-result-object v5

    #@bb
    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@bd
    .line 2798
    .local v5, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@c0
    move-result v18

    #@c1
    move/from16 v0, v18

    #@c3
    move/from16 v1, p1

    #@c5
    if-ne v0, v1, :cond_6

    #@c7
    .line 2799
    iget-object v0, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@c9
    move-object/from16 v18, v0

    #@cb
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    #@ce
    move-result v18

    #@cf
    if-eqz v18, :cond_7

    #@d1
    const/16 v18, 0x0

    #@d3
    :goto_5
    or-int v2, v2, v18

    #@d5
    .line 2800
    .local v2, "crossProfileWidgetsChanged":Z
    move-object/from16 v0, p0

    #@d7
    invoke-direct {v0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@da
    .line 2796
    .end local v2    # "crossProfileWidgetsChanged":Z
    :cond_6
    add-int/lit8 v8, v8, -0x1

    #@dc
    goto :goto_4

    #@dd
    .line 2799
    :cond_7
    const/16 v18, 0x1

    #@df
    goto :goto_5

    #@e0
    .line 2805
    .end local v5    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_8
    move-object/from16 v0, p0

    #@e2
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@e4
    move-object/from16 v18, v0

    #@e6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@e9
    move-result v12

    #@ea
    .line 2806
    .local v12, "providerCount":I
    add-int/lit8 v8, v12, -0x1

    #@ec
    :goto_6
    if-ltz v8, :cond_b

    #@ee
    .line 2807
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@f2
    move-object/from16 v18, v0

    #@f4
    move-object/from16 v0, v18

    #@f6
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f9
    move-result-object v11

    #@fa
    check-cast v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@fc
    .line 2808
    .local v11, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@ff
    move-result v18

    #@100
    move/from16 v0, v18

    #@102
    move/from16 v1, p1

    #@104
    if-ne v0, v1, :cond_9

    #@106
    .line 2809
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@108
    move-object/from16 v18, v0

    #@10a
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    #@10d
    move-result v18

    #@10e
    if-eqz v18, :cond_a

    #@110
    const/16 v18, 0x0

    #@112
    :goto_7
    or-int v2, v2, v18

    #@114
    .line 2810
    .restart local v2    # "crossProfileWidgetsChanged":Z
    const/4 v14, 0x1

    #@115
    .line 2811
    move-object/from16 v0, p0

    #@117
    invoke-direct {v0, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@11a
    .line 2806
    .end local v2    # "crossProfileWidgetsChanged":Z
    :cond_9
    add-int/lit8 v8, v8, -0x1

    #@11c
    goto :goto_6

    #@11d
    .line 2809
    :cond_a
    const/16 v18, 0x1

    #@11f
    goto :goto_7

    #@120
    .line 2816
    .end local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_b
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@124
    move-object/from16 v18, v0

    #@126
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->size()I

    #@129
    move-result v3

    #@12a
    .line 2817
    .local v3, "grantCount":I
    add-int/lit8 v8, v3, -0x1

    #@12c
    :goto_8
    if-ltz v8, :cond_d

    #@12e
    .line 2818
    move-object/from16 v0, p0

    #@130
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@132
    move-object/from16 v18, v0

    #@134
    move-object/from16 v0, v18

    #@136
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@139
    move-result-object v10

    #@13a
    check-cast v10, Landroid/util/Pair;

    #@13c
    .line 2819
    .local v10, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@13e
    move-object/from16 v18, v0

    #@140
    check-cast v18, Ljava/lang/Integer;

    #@142
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    #@145
    move-result v18

    #@146
    move/from16 v0, v18

    #@148
    move/from16 v1, p1

    #@14a
    if-ne v0, v1, :cond_c

    #@14c
    .line 2820
    move-object/from16 v0, p0

    #@14e
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@150
    move-object/from16 v18, v0

    #@152
    move-object/from16 v0, v18

    #@154
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@157
    .line 2817
    :cond_c
    add-int/lit8 v8, v8, -0x1

    #@159
    goto :goto_8

    #@15a
    .line 2825
    .end local v10    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    #@15e
    move-object/from16 v18, v0

    #@160
    move-object/from16 v0, v18

    #@162
    move/from16 v1, p1

    #@164
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@167
    move-result v15

    #@168
    .line 2826
    .local v15, "userIndex":I
    if-ltz v15, :cond_e

    #@16a
    .line 2827
    move-object/from16 v0, p0

    #@16c
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    #@16e
    move-object/from16 v18, v0

    #@170
    move-object/from16 v0, v18

    #@172
    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->removeAt(I)V

    #@175
    .line 2831
    :cond_e
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@179
    move-object/from16 v18, v0

    #@17b
    move-object/from16 v0, v18

    #@17d
    move/from16 v1, p1

    #@17f
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@182
    move-result v9

    #@183
    .line 2832
    .local v9, "nextIdIndex":I
    if-ltz v9, :cond_f

    #@185
    .line 2833
    move-object/from16 v0, p0

    #@187
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@189
    move-object/from16 v18, v0

    #@18b
    move-object/from16 v0, v18

    #@18d
    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->removeAt(I)V

    #@190
    .line 2837
    :cond_f
    if-eqz v14, :cond_10

    #@192
    .line 2838
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    #@195
    .line 2843
    :cond_10
    if-eqz v2, :cond_11

    #@197
    .line 2844
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19a
    :cond_11
    monitor-exit v19

    #@19b
    .line 2766
    return-void

    #@19c
    .line 2767
    .end local v3    # "grantCount":I
    .end local v6    # "hostCount":I
    .end local v8    # "i":I
    .end local v9    # "nextIdIndex":I
    .end local v12    # "providerCount":I
    .end local v15    # "userIndex":I
    .end local v17    # "widgetCount":I
    :catchall_0
    move-exception v18

    #@19d
    monitor-exit v19

    #@19e
    throw v18
.end method

.method private onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 7
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 2389
    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2
    if-nez v6, :cond_0

    #@4
    return-void

    #@5
    .line 2391
    :cond_0
    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@7
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@a
    move-result v4

    #@b
    .line 2392
    .local v4, "userId":I
    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@d
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@f
    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@11
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 2393
    .local v2, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroid/util/ArraySet;

    #@1d
    .line 2394
    .local v3, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    #@1f
    .line 2395
    return-void

    #@20
    .line 2399
    :cond_1
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v0

    #@26
    .line 2400
    .local v0, "N":I
    const/4 v1, 0x0

    #@27
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@29
    .line 2401
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v5

    #@2f
    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@31
    .line 2402
    .local v5, "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@33
    if-nez v6, :cond_3

    #@35
    .line 2400
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 2403
    :cond_3
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3a
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@3d
    move-result v6

    #@3e
    if-ne v6, v4, :cond_2

    #@40
    .line 2404
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@42
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@44
    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@46
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v6

    #@4e
    .line 2403
    if-eqz v6, :cond_2

    #@50
    .line 2405
    return-void

    #@51
    .line 2408
    .end local v5    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_4
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@54
    .line 2388
    return-void
.end method

.method private onWidgetsClearedLocked()V
    .locals 1

    #@0
    .prologue
    .line 2421
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@5
    .line 2420
    return-void
.end method

.method private parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .locals 20
    .param p1, "providerId"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 2080
    const/4 v11, 0x0

    #@1
    .line 2082
    .local v11, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    move-object/from16 v0, p2

    #@3
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@5
    .line 2083
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v10, 0x0

    #@6
    .line 2085
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@a
    move-object/from16 v17, v0

    #@c
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v17

    #@10
    .line 2086
    const-string/jumbo v18, "android.appwidget.provider"

    #@13
    .line 2085
    move-object/from16 v0, v17

    #@15
    move-object/from16 v1, v18

    #@17
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@1a
    move-result-object v10

    #@1b
    .line 2087
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v10, :cond_1

    #@1d
    .line 2088
    const-string/jumbo v17, "AppWidgetServiceImpl"

    #@20
    new-instance v18, Ljava/lang/StringBuilder;

    #@22
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v19, "No android.appwidget.provider meta-data for AppWidget provider \'"

    #@28
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v18

    #@2c
    move-object/from16 v0, v18

    #@2e
    move-object/from16 v1, p1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v18

    #@34
    .line 2089
    const/16 v19, 0x27

    #@36
    .line 2088
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    move-result-object v18

    #@3a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v18

    #@3e
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@41
    .line 2090
    const/16 v17, 0x0

    #@43
    .line 2177
    if-eqz v10, :cond_0

    #@45
    .line 2178
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    #@48
    .line 2090
    :cond_0
    return-object v17

    #@49
    .line 2093
    :cond_1
    :try_start_1
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@4c
    move-result-object v3

    #@4d
    .line 2096
    .local v3, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    #@50
    move-result v15

    #@51
    .local v15, "type":I
    const/16 v17, 0x1

    #@53
    move/from16 v0, v17

    #@55
    if-eq v15, v0, :cond_3

    #@57
    .line 2097
    const/16 v17, 0x2

    #@59
    move/from16 v0, v17

    #@5b
    if-ne v15, v0, :cond_2

    #@5d
    .line 2101
    :cond_3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@60
    move-result-object v9

    #@61
    .line 2102
    .local v9, "nodeName":Ljava/lang/String;
    const-string/jumbo v17, "appwidget-provider"

    #@64
    move-object/from16 v0, v17

    #@66
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v17

    #@6a
    if-nez v17, :cond_5

    #@6c
    .line 2103
    const-string/jumbo v17, "AppWidgetServiceImpl"

    #@6f
    new-instance v18, Ljava/lang/StringBuilder;

    #@71
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v19, "Meta-data does not start with appwidget-provider tag for AppWidget provider "

    #@77
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v18

    #@7b
    .line 2104
    move-object/from16 v0, p1

    #@7d
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@7f
    move-object/from16 v19, v0

    #@81
    .line 2103
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v18

    #@85
    .line 2105
    const-string/jumbo v19, " for user "

    #@88
    .line 2103
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v18

    #@8c
    .line 2105
    move-object/from16 v0, p1

    #@8e
    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    #@90
    move/from16 v19, v0

    #@92
    .line 2103
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95
    move-result-object v18

    #@96
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v18

    #@9a
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@9d
    .line 2106
    const/16 v17, 0x0

    #@9f
    .line 2177
    if-eqz v10, :cond_4

    #@a1
    .line 2178
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    #@a4
    .line 2106
    :cond_4
    return-object v17

    #@a5
    .line 2109
    :cond_5
    :try_start_2
    new-instance v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@a7
    const/16 v17, 0x0

    #@a9
    move-object/from16 v0, v17

    #@ab
    invoke-direct {v12, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@ae
    .line 2110
    .end local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .local v12, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_start_3
    move-object/from16 v0, p1

    #@b0
    iput-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@b2
    .line 2111
    new-instance v8, Landroid/appwidget/AppWidgetProviderInfo;

    #@b4
    invoke-direct {v8}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    #@b7
    iput-object v8, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@b9
    .line 2112
    .local v8, "info":Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p1

    #@bb
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@bd
    move-object/from16 v17, v0

    #@bf
    move-object/from16 v0, v17

    #@c1
    iput-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@c3
    .line 2113
    iput-object v2, v8, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@c5
    .line 2116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@c8
    move-result-wide v6

    #@c9
    .line 2118
    .local v6, "identity":J
    :try_start_4
    move-object/from16 v0, p0

    #@cb
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@cd
    move-object/from16 v17, v0

    #@cf
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@d2
    move-result-object v17

    #@d3
    .line 2119
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@d5
    move-object/from16 v18, v0

    #@d7
    .line 2120
    move-object/from16 v0, p1

    #@d9
    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    #@db
    move/from16 v19, v0

    #@dd
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    #@e0
    move-result v19

    #@e1
    .line 2118
    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e4
    move-result-object v13

    #@e5
    .line 2122
    .local v13, "resources":Landroid/content/res/Resources;
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@e8
    .line 2126
    sget-object v17, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    #@ea
    .line 2125
    move-object/from16 v0, v17

    #@ec
    invoke-virtual {v13, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@ef
    move-result-object v14

    #@f0
    .line 2132
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    #@f2
    .line 2131
    move/from16 v0, v17

    #@f4
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@f7
    move-result-object v16

    #@f8
    .line 2133
    .local v16, "value":Landroid/util/TypedValue;
    if-eqz v16, :cond_9

    #@fa
    move-object/from16 v0, v16

    #@fc
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@fe
    move/from16 v17, v0

    #@100
    :goto_0
    move/from16 v0, v17

    #@102
    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@104
    .line 2134
    const/16 v17, 0x1

    #@106
    move/from16 v0, v17

    #@108
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@10b
    move-result-object v16

    #@10c
    .line 2135
    if-eqz v16, :cond_a

    #@10e
    move-object/from16 v0, v16

    #@110
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@112
    move/from16 v17, v0

    #@114
    :goto_1
    move/from16 v0, v17

    #@116
    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@118
    .line 2137
    const/16 v17, 0x8

    #@11a
    .line 2136
    move/from16 v0, v17

    #@11c
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@11f
    move-result-object v16

    #@120
    .line 2138
    if-eqz v16, :cond_b

    #@122
    move-object/from16 v0, v16

    #@124
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@126
    move/from16 v17, v0

    #@128
    :goto_2
    move/from16 v0, v17

    #@12a
    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@12c
    .line 2140
    const/16 v17, 0x9

    #@12e
    .line 2139
    move/from16 v0, v17

    #@130
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@133
    move-result-object v16

    #@134
    .line 2141
    if-eqz v16, :cond_c

    #@136
    move-object/from16 v0, v16

    #@138
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@13a
    move/from16 v17, v0

    #@13c
    :goto_3
    move/from16 v0, v17

    #@13e
    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@140
    .line 2143
    const/16 v17, 0x2

    #@142
    const/16 v18, 0x0

    #@144
    .line 2142
    move/from16 v0, v17

    #@146
    move/from16 v1, v18

    #@148
    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@14b
    move-result v17

    #@14c
    move/from16 v0, v17

    #@14e
    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    #@150
    .line 2145
    const/16 v17, 0x3

    #@152
    const/16 v18, 0x0

    #@154
    .line 2144
    move/from16 v0, v17

    #@156
    move/from16 v1, v18

    #@158
    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@15b
    move-result v17

    #@15c
    move/from16 v0, v17

    #@15e
    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    #@160
    .line 2146
    const/16 v17, 0xa

    #@162
    .line 2147
    const/16 v18, 0x0

    #@164
    .line 2146
    move/from16 v0, v17

    #@166
    move/from16 v1, v18

    #@168
    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@16b
    move-result v17

    #@16c
    move/from16 v0, v17

    #@16e
    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    #@170
    .line 2150
    const/16 v17, 0x4

    #@172
    .line 2149
    move/from16 v0, v17

    #@174
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@177
    move-result-object v4

    #@178
    .line 2151
    .local v4, "className":Ljava/lang/String;
    if-eqz v4, :cond_6

    #@17a
    .line 2152
    new-instance v17, Landroid/content/ComponentName;

    #@17c
    move-object/from16 v0, p1

    #@17e
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@180
    move-object/from16 v18, v0

    #@182
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@185
    move-result-object v18

    #@186
    move-object/from16 v0, v17

    #@188
    move-object/from16 v1, v18

    #@18a
    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18d
    move-object/from16 v0, v17

    #@18f
    iput-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    #@191
    .line 2155
    :cond_6
    move-object/from16 v0, p0

    #@193
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@195
    move-object/from16 v17, v0

    #@197
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@19a
    move-result-object v17

    #@19b
    move-object/from16 v0, v17

    #@19d
    invoke-virtual {v2, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@1a0
    move-result-object v17

    #@1a1
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1a4
    move-result-object v17

    #@1a5
    move-object/from16 v0, v17

    #@1a7
    iput-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    #@1a9
    .line 2156
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    #@1ac
    move-result v17

    #@1ad
    move/from16 v0, v17

    #@1af
    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    #@1b1
    .line 2158
    const/16 v17, 0x5

    #@1b3
    const/16 v18, 0x0

    #@1b5
    .line 2157
    move/from16 v0, v17

    #@1b7
    move/from16 v1, v18

    #@1b9
    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1bc
    move-result v17

    #@1bd
    move/from16 v0, v17

    #@1bf
    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    #@1c1
    .line 2160
    const/16 v17, 0x6

    #@1c3
    const/16 v18, -0x1

    #@1c5
    .line 2159
    move/from16 v0, v17

    #@1c7
    move/from16 v1, v18

    #@1c9
    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1cc
    move-result v17

    #@1cd
    move/from16 v0, v17

    #@1cf
    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    #@1d1
    .line 2162
    const/16 v17, 0x7

    #@1d3
    .line 2163
    const/16 v18, 0x0

    #@1d5
    .line 2161
    move/from16 v0, v17

    #@1d7
    move/from16 v1, v18

    #@1d9
    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1dc
    move-result v17

    #@1dd
    move/from16 v0, v17

    #@1df
    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    #@1e1
    .line 2165
    const/16 v17, 0xb

    #@1e3
    .line 2166
    const/16 v18, 0x1

    #@1e5
    .line 2164
    move/from16 v0, v17

    #@1e7
    move/from16 v1, v18

    #@1e9
    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1ec
    move-result v17

    #@1ed
    move/from16 v0, v17

    #@1ef
    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    #@1f1
    .line 2168
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@1f4
    .line 2177
    if-eqz v10, :cond_7

    #@1f6
    .line 2178
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    #@1f9
    .line 2181
    :cond_7
    return-object v12

    #@1fa
    .line 2121
    .end local v4    # "className":Ljava/lang/String;
    .end local v13    # "resources":Landroid/content/res/Resources;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v16    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v17

    #@1fb
    .line 2122
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1fe
    .line 2121
    throw v17
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@1ff
    .line 2169
    .end local v6    # "identity":J
    .end local v8    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :catch_0
    move-exception v5

    #@200
    .local v5, "e":Ljava/lang/Exception;
    move-object v11, v12

    #@201
    .line 2173
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v10    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v15    # "type":I
    :goto_4
    :try_start_7
    const-string/jumbo v17, "AppWidgetServiceImpl"

    #@204
    new-instance v18, Ljava/lang/StringBuilder;

    #@206
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@209
    const-string/jumbo v19, "XML parsing failed for AppWidget provider "

    #@20c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v18

    #@210
    .line 2174
    move-object/from16 v0, p1

    #@212
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@214
    move-object/from16 v19, v0

    #@216
    .line 2173
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v18

    #@21a
    .line 2174
    const-string/jumbo v19, " for user "

    #@21d
    .line 2173
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v18

    #@221
    .line 2174
    move-object/from16 v0, p1

    #@223
    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    #@225
    move/from16 v19, v0

    #@227
    .line 2173
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v18

    #@22b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22e
    move-result-object v18

    #@22f
    move-object/from16 v0, v17

    #@231
    move-object/from16 v1, v18

    #@233
    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@236
    .line 2175
    const/16 v17, 0x0

    #@238
    .line 2177
    if-eqz v10, :cond_8

    #@23a
    .line 2178
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    #@23d
    .line 2175
    :cond_8
    return-object v17

    #@23e
    .line 2133
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "identity":J
    .restart local v8    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v9    # "nodeName":Ljava/lang/String;
    .restart local v10    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v13    # "resources":Landroid/content/res/Resources;
    .restart local v14    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "type":I
    .restart local v16    # "value":Landroid/util/TypedValue;
    :cond_9
    const/16 v17, 0x0

    #@240
    goto/16 :goto_0

    #@242
    .line 2135
    :cond_a
    const/16 v17, 0x0

    #@244
    goto/16 :goto_1

    #@246
    .line 2138
    :cond_b
    :try_start_8
    iget v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@248
    move/from16 v17, v0

    #@24a
    goto/16 :goto_2

    #@24c
    .line 2141
    :cond_c
    iget v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@24e
    move/from16 v17, v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@250
    goto/16 :goto_3

    #@252
    .line 2176
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "identity":J
    .end local v8    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v10    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v13    # "resources":Landroid/content/res/Resources;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "type":I
    .end local v16    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v17

    #@253
    .line 2177
    :goto_5
    if-eqz v10, :cond_d

    #@255
    .line 2178
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    #@258
    .line 2176
    :cond_d
    throw v17

    #@259
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v9    # "nodeName":Ljava/lang/String;
    .restart local v10    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v15    # "type":I
    :catchall_2
    move-exception v17

    #@25a
    move-object v11, v12

    #@25b
    .end local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .local v11, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    goto :goto_5

    #@25c
    .line 2169
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v10    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v15    # "type":I
    .local v11, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catch_1
    move-exception v5

    #@25d
    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_4
.end method

.method private peekNextAppWidgetIdLocked(I)I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@5
    move-result v0

    #@6
    if-gez v0, :cond_0

    #@8
    .line 1378
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method private performUpgradeLocked(I)V
    .locals 10
    .param p1, "fromVersion"    # I

    #@0
    .prologue
    const v9, 0x4b455947    # 1.2933447E7f

    #@3
    const/4 v8, 0x1

    #@4
    const/4 v7, 0x0

    #@5
    .line 2717
    if-ge p1, v8, :cond_0

    #@7
    .line 2718
    const-string/jumbo v4, "AppWidgetServiceImpl"

    #@a
    new-instance v5, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v6, "Upgrading widget database from "

    #@12
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    const-string/jumbo v6, " to "

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 2722
    :cond_0
    move v3, p1

    #@2d
    .line 2725
    .local v3, "version":I
    if-nez v3, :cond_2

    #@2f
    .line 2726
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@31
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@34
    move-result v4

    #@35
    .line 2727
    const-string/jumbo v5, "android"

    #@38
    .line 2726
    invoke-direct {v1, v4, v9, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@3b
    .line 2729
    .local v1, "oldHostId":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@3e
    move-result-object v0

    #@3f
    .line 2730
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_1

    #@41
    .line 2731
    const-string/jumbo v4, "com.android.keyguard"

    #@44
    invoke-direct {p0, v4, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    #@47
    move-result v2

    #@48
    .line 2733
    .local v2, "uid":I
    if-ltz v2, :cond_1

    #@4a
    .line 2734
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@4c
    const-string/jumbo v5, "com.android.keyguard"

    #@4f
    invoke-direct {v4, v2, v9, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@52
    iput-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@54
    .line 2738
    .end local v2    # "uid":I
    :cond_1
    const/4 v3, 0x1

    #@55
    .line 2741
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v1    # "oldHostId":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :cond_2
    if-eq v3, v8, :cond_3

    #@57
    .line 2742
    new-instance v4, Ljava/lang/IllegalStateException;

    #@59
    const-string/jumbo v5, "Failed to upgrade widget database"

    #@5c
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v4

    #@60
    .line 2716
    :cond_3
    return-void
.end method

.method private pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 3
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@0
    .prologue
    .line 1795
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1796
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1797
    const-string/jumbo v0, "AppWidgetServiceImpl"

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Pruning host "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@31
    .line 1794
    :cond_1
    return-void
.end method

.method private queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2217
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 2223
    .local v2, "identity":J
    const/16 v0, 0x480

    #@6
    .line 2225
    .local v0, "flags":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@8
    .line 2226
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 2225
    invoke-interface {v4, p1, v5, v0, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v4

    #@16
    .line 2231
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 2225
    return-object v4

    #@1a
    .line 2228
    :catch_0
    move-exception v1

    #@1b
    .line 2229
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result-object v4

    #@1f
    .line 2231
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 2229
    return-object v4

    #@23
    .line 2230
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@24
    .line 2231
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 2230
    throw v4
.end method

.method private readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I
    .locals 39
    .param p1, "stream"    # Ljava/io/FileInputStream;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 2556
    .local p3, "outLoadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    const/16 v34, -0x1

    #@2
    .line 2558
    .local v34, "version":I
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@5
    move-result-object v22

    #@6
    .line 2559
    .local v22, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v36, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@8
    invoke-virtual/range {v36 .. v36}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@b
    move-result-object v36

    #@c
    move-object/from16 v0, v22

    #@e
    move-object/from16 v1, p1

    #@10
    move-object/from16 v2, v36

    #@12
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@15
    .line 2561
    const/4 v13, -0x1

    #@16
    .line 2562
    .local v13, "legacyProviderIndex":I
    const/4 v12, -0x1

    #@17
    .line 2565
    .local v12, "legacyHostIndex":I
    :cond_0
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1a
    move-result v32

    #@1b
    .line 2566
    .local v32, "type":I
    const/16 v36, 0x2

    #@1d
    move/from16 v0, v32

    #@1f
    move/from16 v1, v36

    #@21
    if-ne v0, v1, :cond_1

    #@23
    .line 2567
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@26
    move-result-object v30

    #@27
    .line 2568
    .local v30, "tag":Ljava/lang/String;
    const-string/jumbo v36, "gs"

    #@2a
    move-object/from16 v0, v36

    #@2c
    move-object/from16 v1, v30

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v36

    #@32
    if-eqz v36, :cond_2

    #@34
    .line 2569
    const-string/jumbo v36, "version"

    #@37
    const/16 v37, 0x0

    #@39
    move-object/from16 v0, v22

    #@3b
    move-object/from16 v1, v37

    #@3d
    move-object/from16 v2, v36

    #@3f
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@42
    move-result-object v3

    #@43
    .line 2571
    .local v3, "attributeValue":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@46
    move-result v34

    #@47
    .line 2703
    .end local v3    # "attributeValue":Ljava/lang/String;
    .end local v30    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    const/16 v36, 0x1

    #@49
    move/from16 v0, v32

    #@4b
    move/from16 v1, v36

    #@4d
    if-ne v0, v1, :cond_0

    #@4f
    .line 2713
    return v34

    #@50
    .line 2572
    .restart local v3    # "attributeValue":Ljava/lang/String;
    .restart local v30    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@51
    .line 2573
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/16 v34, 0x0

    #@53
    goto :goto_0

    #@54
    .line 2575
    .end local v3    # "attributeValue":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_2
    const-string/jumbo v36, "p"

    #@57
    move-object/from16 v0, v36

    #@59
    move-object/from16 v1, v30

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v36

    #@5f
    if-eqz v36, :cond_5

    #@61
    .line 2576
    add-int/lit8 v13, v13, 0x1

    #@63
    .line 2579
    const-string/jumbo v36, "pkg"

    #@66
    const/16 v37, 0x0

    #@68
    move-object/from16 v0, v22

    #@6a
    move-object/from16 v1, v37

    #@6c
    move-object/from16 v2, v36

    #@6e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v23

    #@72
    .line 2580
    .local v23, "pkg":Ljava/lang/String;
    const-string/jumbo v36, "cl"

    #@75
    const/16 v37, 0x0

    #@77
    move-object/from16 v0, v22

    #@79
    move-object/from16 v1, v37

    #@7b
    move-object/from16 v2, v36

    #@7d
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    .line 2582
    .local v5, "cl":Ljava/lang/String;
    move-object/from16 v0, p0

    #@83
    move-object/from16 v1, v23

    #@85
    move/from16 v2, p2

    #@87
    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@8a
    move-result-object v23

    #@8b
    .line 2583
    if-eqz v23, :cond_1

    #@8d
    .line 2587
    move-object/from16 v0, p0

    #@8f
    move-object/from16 v1, v23

    #@91
    move/from16 v2, p2

    #@93
    invoke-direct {v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    #@96
    move-result v33

    #@97
    .line 2588
    .local v33, "uid":I
    if-ltz v33, :cond_1

    #@99
    .line 2592
    new-instance v6, Landroid/content/ComponentName;

    #@9b
    move-object/from16 v0, v23

    #@9d
    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a0
    .line 2594
    .local v6, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@a2
    move/from16 v1, p2

    #@a4
    invoke-direct {v0, v6, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@a7
    move-result-object v26

    #@a8
    .line 2595
    .local v26, "providerInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v26, :cond_1

    #@aa
    .line 2599
    new-instance v25, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@ac
    const/16 v36, 0x0

    #@ae
    move-object/from16 v0, v25

    #@b0
    move/from16 v1, v33

    #@b2
    move-object/from16 v2, v36

    #@b4
    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V

    #@b7
    .line 2600
    .local v25, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    move-object/from16 v0, p0

    #@b9
    move-object/from16 v1, v25

    #@bb
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@be
    move-result-object v24

    #@bf
    .line 2602
    .local v24, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v24, :cond_3

    #@c1
    move-object/from16 v0, p0

    #@c3
    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    #@c5
    move/from16 v36, v0

    #@c7
    if-eqz v36, :cond_3

    #@c9
    .line 2604
    new-instance v24, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@cb
    .end local v24    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    const/16 v36, 0x0

    #@cd
    move-object/from16 v0, v24

    #@cf
    move-object/from16 v1, v36

    #@d1
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@d4
    .line 2605
    .restart local v24    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    new-instance v36, Landroid/appwidget/AppWidgetProviderInfo;

    #@d6
    invoke-direct/range {v36 .. v36}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    #@d9
    move-object/from16 v0, v36

    #@db
    move-object/from16 v1, v24

    #@dd
    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@df
    .line 2606
    move-object/from16 v0, v24

    #@e1
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@e3
    move-object/from16 v36, v0

    #@e5
    move-object/from16 v0, v25

    #@e7
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@e9
    move-object/from16 v37, v0

    #@eb
    move-object/from16 v0, v37

    #@ed
    move-object/from16 v1, v36

    #@ef
    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@f1
    .line 2607
    move-object/from16 v0, v24

    #@f3
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@f5
    move-object/from16 v36, v0

    #@f7
    move-object/from16 v0, v26

    #@f9
    move-object/from16 v1, v36

    #@fb
    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@fd
    .line 2608
    const/16 v36, 0x1

    #@ff
    move/from16 v0, v36

    #@101
    move-object/from16 v1, v24

    #@103
    iput-boolean v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@105
    .line 2609
    move-object/from16 v0, v25

    #@107
    move-object/from16 v1, v24

    #@109
    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@10b
    .line 2610
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@10f
    move-object/from16 v36, v0

    #@111
    move-object/from16 v0, v36

    #@113
    move-object/from16 v1, v24

    #@115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@118
    .line 2613
    :cond_3
    const-string/jumbo v36, "tag"

    #@11b
    const/16 v37, 0x0

    #@11d
    move-object/from16 v0, v22

    #@11f
    move-object/from16 v1, v37

    #@121
    move-object/from16 v2, v36

    #@123
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@126
    move-result-object v31

    #@127
    .line 2614
    .local v31, "tagAttribute":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12a
    move-result v36

    #@12b
    if-nez v36, :cond_4

    #@12d
    .line 2615
    const/16 v36, 0x10

    #@12f
    move-object/from16 v0, v31

    #@131
    move/from16 v1, v36

    #@133
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@136
    move-result v28

    #@137
    .line 2616
    .local v28, "providerTag":I
    :goto_1
    move/from16 v0, v28

    #@139
    move-object/from16 v1, v24

    #@13b
    iput v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    #@13d
    goto/16 :goto_0

    #@13f
    .line 2708
    .end local v5    # "cl":Ljava/lang/String;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "legacyHostIndex":I
    .end local v13    # "legacyProviderIndex":I
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "pkg":Ljava/lang/String;
    .end local v24    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v25    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v26    # "providerInfo":Landroid/content/pm/ActivityInfo;
    .end local v28    # "providerTag":I
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "tagAttribute":Ljava/lang/String;
    .end local v32    # "type":I
    .end local v33    # "uid":I
    :catch_1
    move-exception v7

    #@140
    .line 2709
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v36, "AppWidgetServiceImpl"

    #@143
    new-instance v37, Ljava/lang/StringBuilder;

    #@145
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v38, "failed parsing "

    #@14b
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v37

    #@14f
    move-object/from16 v0, v37

    #@151
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v37

    #@155
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@158
    move-result-object v37

    #@159
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15c
    .line 2710
    const/16 v36, -0x1

    #@15e
    return v36

    #@15f
    .line 2615
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "cl":Ljava/lang/String;
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v12    # "legacyHostIndex":I
    .restart local v13    # "legacyProviderIndex":I
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "pkg":Ljava/lang/String;
    .restart local v24    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v25    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v26    # "providerInfo":Landroid/content/pm/ActivityInfo;
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "tagAttribute":Ljava/lang/String;
    .restart local v32    # "type":I
    .restart local v33    # "uid":I
    :cond_4
    move/from16 v28, v13

    #@161
    .restart local v28    # "providerTag":I
    goto :goto_1

    #@162
    .line 2617
    .end local v5    # "cl":Ljava/lang/String;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v23    # "pkg":Ljava/lang/String;
    .end local v24    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v25    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v26    # "providerInfo":Landroid/content/pm/ActivityInfo;
    .end local v28    # "providerTag":I
    .end local v31    # "tagAttribute":Ljava/lang/String;
    .end local v33    # "uid":I
    :cond_5
    :try_start_3
    const-string/jumbo v36, "h"

    #@165
    move-object/from16 v0, v36

    #@167
    move-object/from16 v1, v30

    #@169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16c
    move-result v36

    #@16d
    if-eqz v36, :cond_9

    #@16f
    .line 2618
    add-int/lit8 v12, v12, 0x1

    #@171
    .line 2619
    new-instance v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@173
    const/16 v36, 0x0

    #@175
    move-object/from16 v0, v36

    #@177
    invoke-direct {v9, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@17a
    .line 2622
    .local v9, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const-string/jumbo v36, "pkg"

    #@17d
    const/16 v37, 0x0

    #@17f
    move-object/from16 v0, v22

    #@181
    move-object/from16 v1, v37

    #@183
    move-object/from16 v2, v36

    #@185
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@188
    move-result-object v23

    #@189
    .line 2624
    .restart local v23    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@18b
    move-object/from16 v1, v23

    #@18d
    move/from16 v2, p2

    #@18f
    invoke-direct {v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    #@192
    move-result v33

    #@193
    .line 2625
    .restart local v33    # "uid":I
    if-gez v33, :cond_6

    #@195
    .line 2626
    const/16 v36, 0x1

    #@197
    move/from16 v0, v36

    #@199
    iput-boolean v0, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@19b
    .line 2629
    :cond_6
    iget-boolean v0, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@19d
    move/from16 v36, v0

    #@19f
    if-eqz v36, :cond_7

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    #@1a5
    move/from16 v36, v0

    #@1a7
    if-eqz v36, :cond_1

    #@1a9
    .line 2633
    :cond_7
    const-string/jumbo v36, "id"

    #@1ac
    const/16 v37, 0x0

    #@1ae
    .line 2632
    move-object/from16 v0, v22

    #@1b0
    move-object/from16 v1, v37

    #@1b2
    move-object/from16 v2, v36

    #@1b4
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b7
    move-result-object v36

    #@1b8
    .line 2633
    const/16 v37, 0x10

    #@1ba
    .line 2632
    invoke-static/range {v36 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@1bd
    move-result v10

    #@1be
    .line 2635
    .local v10, "hostId":I
    const-string/jumbo v36, "tag"

    #@1c1
    const/16 v37, 0x0

    #@1c3
    move-object/from16 v0, v22

    #@1c5
    move-object/from16 v1, v37

    #@1c7
    move-object/from16 v2, v36

    #@1c9
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1cc
    move-result-object v31

    #@1cd
    .line 2636
    .restart local v31    # "tagAttribute":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1d0
    move-result v36

    #@1d1
    if-nez v36, :cond_8

    #@1d3
    .line 2637
    const/16 v36, 0x10

    #@1d5
    move-object/from16 v0, v31

    #@1d7
    move/from16 v1, v36

    #@1d9
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@1dc
    move-result v11

    #@1dd
    .line 2639
    .local v11, "hostTag":I
    :goto_2
    iput v11, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    #@1df
    .line 2640
    new-instance v36, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@1e1
    move-object/from16 v0, v36

    #@1e3
    move/from16 v1, v33

    #@1e5
    move-object/from16 v2, v23

    #@1e7
    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@1ea
    move-object/from16 v0, v36

    #@1ec
    iput-object v0, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@1ee
    .line 2641
    move-object/from16 v0, p0

    #@1f0
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@1f2
    move-object/from16 v36, v0

    #@1f4
    move-object/from16 v0, v36

    #@1f6
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f9
    goto/16 :goto_0

    #@1fb
    .line 2637
    .end local v11    # "hostTag":I
    :cond_8
    move v11, v12

    #@1fc
    .restart local v11    # "hostTag":I
    goto :goto_2

    #@1fd
    .line 2643
    .end local v9    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v10    # "hostId":I
    .end local v11    # "hostTag":I
    .end local v23    # "pkg":Ljava/lang/String;
    .end local v31    # "tagAttribute":Ljava/lang/String;
    .end local v33    # "uid":I
    :cond_9
    const-string/jumbo v36, "b"

    #@200
    move-object/from16 v0, v36

    #@202
    move-object/from16 v1, v30

    #@204
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@207
    move-result v36

    #@208
    if-eqz v36, :cond_a

    #@20a
    .line 2644
    const-string/jumbo v36, "packageName"

    #@20d
    const/16 v37, 0x0

    #@20f
    move-object/from16 v0, v22

    #@211
    move-object/from16 v1, v37

    #@213
    move-object/from16 v2, v36

    #@215
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@218
    move-result-object v21

    #@219
    .line 2645
    .local v21, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@21b
    move-object/from16 v1, v21

    #@21d
    move/from16 v2, p2

    #@21f
    invoke-direct {v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    #@222
    move-result v33

    #@223
    .line 2646
    .restart local v33    # "uid":I
    if-ltz v33, :cond_1

    #@225
    .line 2647
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@228
    move-result-object v36

    #@229
    move-object/from16 v0, v36

    #@22b
    move-object/from16 v1, v21

    #@22d
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@230
    move-result-object v20

    #@231
    .line 2648
    .local v20, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@233
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@235
    move-object/from16 v36, v0

    #@237
    move-object/from16 v0, v36

    #@239
    move-object/from16 v1, v20

    #@23b
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@23e
    goto/16 :goto_0

    #@240
    .line 2650
    .end local v20    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v33    # "uid":I
    :cond_a
    const-string/jumbo v36, "g"

    #@243
    move-object/from16 v0, v36

    #@245
    move-object/from16 v1, v30

    #@247
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24a
    move-result v36

    #@24b
    if-eqz v36, :cond_1

    #@24d
    .line 2651
    new-instance v35, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@24f
    const/16 v36, 0x0

    #@251
    invoke-direct/range {v35 .. v36}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@254
    .line 2653
    .local v35, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const-string/jumbo v36, "id"

    #@257
    const/16 v37, 0x0

    #@259
    .line 2652
    move-object/from16 v0, v22

    #@25b
    move-object/from16 v1, v37

    #@25d
    move-object/from16 v2, v36

    #@25f
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@262
    move-result-object v36

    #@263
    .line 2653
    const/16 v37, 0x10

    #@265
    .line 2652
    invoke-static/range {v36 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@268
    move-result v36

    #@269
    move/from16 v0, v36

    #@26b
    move-object/from16 v1, v35

    #@26d
    iput v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@26f
    .line 2654
    move-object/from16 v0, v35

    #@271
    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@273
    move/from16 v36, v0

    #@275
    add-int/lit8 v36, v36, 0x1

    #@277
    move-object/from16 v0, p0

    #@279
    move/from16 v1, p2

    #@27b
    move/from16 v2, v36

    #@27d
    invoke-direct {v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->setMinAppWidgetIdLocked(II)V

    #@280
    .line 2657
    const-string/jumbo v36, "rid"

    #@283
    const/16 v37, 0x0

    #@285
    move-object/from16 v0, v22

    #@287
    move-object/from16 v1, v37

    #@289
    move-object/from16 v2, v36

    #@28b
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@28e
    move-result-object v29

    #@28f
    .line 2658
    .local v29, "restoredIdString":Ljava/lang/String;
    if-nez v29, :cond_10

    #@291
    const/16 v36, 0x0

    #@293
    :goto_3
    move/from16 v0, v36

    #@295
    move-object/from16 v1, v35

    #@297
    iput v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    #@299
    .line 2661
    new-instance v19, Landroid/os/Bundle;

    #@29b
    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    #@29e
    .line 2662
    .local v19, "options":Landroid/os/Bundle;
    const-string/jumbo v36, "min_width"

    #@2a1
    const/16 v37, 0x0

    #@2a3
    move-object/from16 v0, v22

    #@2a5
    move-object/from16 v1, v37

    #@2a7
    move-object/from16 v2, v36

    #@2a9
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2ac
    move-result-object v18

    #@2ad
    .line 2663
    .local v18, "minWidthString":Ljava/lang/String;
    if-eqz v18, :cond_b

    #@2af
    .line 2664
    const-string/jumbo v36, "appWidgetMinWidth"

    #@2b2
    .line 2665
    const/16 v37, 0x10

    #@2b4
    move-object/from16 v0, v18

    #@2b6
    move/from16 v1, v37

    #@2b8
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@2bb
    move-result v37

    #@2bc
    .line 2664
    move-object/from16 v0, v19

    #@2be
    move-object/from16 v1, v36

    #@2c0
    move/from16 v2, v37

    #@2c2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2c5
    .line 2667
    :cond_b
    const-string/jumbo v36, "min_height"

    #@2c8
    const/16 v37, 0x0

    #@2ca
    move-object/from16 v0, v22

    #@2cc
    move-object/from16 v1, v37

    #@2ce
    move-object/from16 v2, v36

    #@2d0
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d3
    move-result-object v17

    #@2d4
    .line 2668
    .local v17, "minHeightString":Ljava/lang/String;
    if-eqz v17, :cond_c

    #@2d6
    .line 2669
    const-string/jumbo v36, "appWidgetMinHeight"

    #@2d9
    .line 2670
    const/16 v37, 0x10

    #@2db
    move-object/from16 v0, v17

    #@2dd
    move/from16 v1, v37

    #@2df
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@2e2
    move-result v37

    #@2e3
    .line 2669
    move-object/from16 v0, v19

    #@2e5
    move-object/from16 v1, v36

    #@2e7
    move/from16 v2, v37

    #@2e9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2ec
    .line 2672
    :cond_c
    const-string/jumbo v36, "max_width"

    #@2ef
    const/16 v37, 0x0

    #@2f1
    move-object/from16 v0, v22

    #@2f3
    move-object/from16 v1, v37

    #@2f5
    move-object/from16 v2, v36

    #@2f7
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2fa
    move-result-object v16

    #@2fb
    .line 2673
    .local v16, "maxWidthString":Ljava/lang/String;
    if-eqz v16, :cond_d

    #@2fd
    .line 2674
    const-string/jumbo v36, "appWidgetMaxWidth"

    #@300
    .line 2675
    const/16 v37, 0x10

    #@302
    move-object/from16 v0, v16

    #@304
    move/from16 v1, v37

    #@306
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@309
    move-result v37

    #@30a
    .line 2674
    move-object/from16 v0, v19

    #@30c
    move-object/from16 v1, v36

    #@30e
    move/from16 v2, v37

    #@310
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@313
    .line 2677
    :cond_d
    const-string/jumbo v36, "max_height"

    #@316
    const/16 v37, 0x0

    #@318
    move-object/from16 v0, v22

    #@31a
    move-object/from16 v1, v37

    #@31c
    move-object/from16 v2, v36

    #@31e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@321
    move-result-object v15

    #@322
    .line 2678
    .local v15, "maxHeightString":Ljava/lang/String;
    if-eqz v15, :cond_e

    #@324
    .line 2679
    const-string/jumbo v36, "appWidgetMaxHeight"

    #@327
    .line 2680
    const/16 v37, 0x10

    #@329
    move/from16 v0, v37

    #@32b
    invoke-static {v15, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@32e
    move-result v37

    #@32f
    .line 2679
    move-object/from16 v0, v19

    #@331
    move-object/from16 v1, v36

    #@333
    move/from16 v2, v37

    #@335
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@338
    .line 2682
    :cond_e
    const-string/jumbo v36, "host_category"

    #@33b
    const/16 v37, 0x0

    #@33d
    move-object/from16 v0, v22

    #@33f
    move-object/from16 v1, v37

    #@341
    move-object/from16 v2, v36

    #@343
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@346
    move-result-object v4

    #@347
    .line 2683
    .local v4, "categoryString":Ljava/lang/String;
    if-eqz v4, :cond_f

    #@349
    .line 2684
    const-string/jumbo v36, "appWidgetCategory"

    #@34c
    .line 2685
    const/16 v37, 0x10

    #@34e
    move/from16 v0, v37

    #@350
    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@353
    move-result v37

    #@354
    .line 2684
    move-object/from16 v0, v19

    #@356
    move-object/from16 v1, v36

    #@358
    move/from16 v2, v37

    #@35a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@35d
    .line 2687
    :cond_f
    move-object/from16 v0, v19

    #@35f
    move-object/from16 v1, v35

    #@361
    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@363
    .line 2690
    const-string/jumbo v36, "h"

    #@366
    const/16 v37, 0x0

    #@368
    .line 2689
    move-object/from16 v0, v22

    #@36a
    move-object/from16 v1, v37

    #@36c
    move-object/from16 v2, v36

    #@36e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@371
    move-result-object v36

    #@372
    .line 2690
    const/16 v37, 0x10

    #@374
    .line 2689
    invoke-static/range {v36 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@377
    move-result v11

    #@378
    .line 2691
    .restart local v11    # "hostTag":I
    const-string/jumbo v36, "p"

    #@37b
    const/16 v37, 0x0

    #@37d
    move-object/from16 v0, v22

    #@37f
    move-object/from16 v1, v37

    #@381
    move-object/from16 v2, v36

    #@383
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@386
    move-result-object v27

    #@387
    .line 2692
    .local v27, "providerString":Ljava/lang/String;
    if-eqz v27, :cond_11

    #@389
    .line 2693
    const-string/jumbo v36, "p"

    #@38c
    const/16 v37, 0x0

    #@38e
    move-object/from16 v0, v22

    #@390
    move-object/from16 v1, v37

    #@392
    move-object/from16 v2, v36

    #@394
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@397
    move-result-object v36

    #@398
    const/16 v37, 0x10

    #@39a
    .line 2692
    invoke-static/range {v36 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@39d
    move-result v28

    #@39e
    .line 2698
    .restart local v28    # "providerTag":I
    :goto_4
    new-instance v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    #@3a0
    move-object/from16 v0, p0

    #@3a2
    move-object/from16 v1, v35

    #@3a4
    move/from16 v2, v28

    #@3a6
    invoke-direct {v14, v0, v1, v11, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;II)V

    #@3a9
    .line 2700
    .local v14, "loadedWidgets":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    move-object/from16 v0, p3

    #@3ab
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3ae
    goto/16 :goto_0

    #@3b0
    .line 2659
    .end local v4    # "categoryString":Ljava/lang/String;
    .end local v11    # "hostTag":I
    .end local v14    # "loadedWidgets":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    .end local v15    # "maxHeightString":Ljava/lang/String;
    .end local v16    # "maxWidthString":Ljava/lang/String;
    .end local v17    # "minHeightString":Ljava/lang/String;
    .end local v18    # "minWidthString":Ljava/lang/String;
    .end local v19    # "options":Landroid/os/Bundle;
    .end local v27    # "providerString":Ljava/lang/String;
    .end local v28    # "providerTag":I
    :cond_10
    const/16 v36, 0x10

    #@3b2
    move-object/from16 v0, v29

    #@3b4
    move/from16 v1, v36

    #@3b6
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    #@3b9
    move-result v36

    #@3ba
    goto/16 :goto_3

    #@3bc
    .line 2693
    .restart local v4    # "categoryString":Ljava/lang/String;
    .restart local v11    # "hostTag":I
    .restart local v15    # "maxHeightString":Ljava/lang/String;
    .restart local v16    # "maxWidthString":Ljava/lang/String;
    .restart local v17    # "minHeightString":Ljava/lang/String;
    .restart local v18    # "minWidthString":Ljava/lang/String;
    .restart local v19    # "options":Landroid/os/Bundle;
    .restart local v27    # "providerString":Ljava/lang/String;
    :cond_11
    const/16 v28, -0x1

    #@3be
    .restart local v28    # "providerTag":I
    goto :goto_4
.end method

.method private registerBroadcastReceiver()V
    .locals 19

    #@0
    .prologue
    .line 228
    new-instance v4, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 229
    .local v4, "configFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    #@8
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 230
    move-object/from16 v0, p0

    #@d
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@f
    move-object/from16 v0, p0

    #@11
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@13
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@15
    .line 231
    const/4 v5, 0x0

    #@16
    const/4 v6, 0x0

    #@17
    .line 230
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1a
    .line 235
    new-instance v8, Landroid/content/IntentFilter;

    #@1c
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@1f
    .line 236
    .local v8, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    #@22
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@25
    .line 237
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    #@28
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2b
    .line 238
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    #@2e
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@31
    .line 239
    const-string/jumbo v1, "package"

    #@34
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@37
    .line 240
    move-object/from16 v0, p0

    #@39
    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@3f
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@41
    .line 241
    const/4 v9, 0x0

    #@42
    const/4 v10, 0x0

    #@43
    .line 240
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@46
    .line 244
    new-instance v12, Landroid/content/IntentFilter;

    #@48
    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    #@4b
    .line 245
    .local v12, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@4e
    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@51
    .line 246
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@54
    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@57
    .line 247
    move-object/from16 v0, p0

    #@59
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget-object v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@5f
    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@61
    .line 248
    const/4 v13, 0x0

    #@62
    const/4 v14, 0x0

    #@63
    .line 247
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@66
    .line 250
    new-instance v16, Landroid/content/IntentFilter;

    #@68
    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    #@6b
    .line 251
    .local v16, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_STARTED"

    #@6e
    move-object/from16 v0, v16

    #@70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@73
    .line 252
    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    #@76
    move-object/from16 v0, v16

    #@78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@7b
    .line 253
    move-object/from16 v0, p0

    #@7d
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@7f
    move-object/from16 v0, p0

    #@81
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@83
    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@85
    .line 254
    const/16 v17, 0x0

    #@87
    const/16 v18, 0x0

    #@89
    .line 253
    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@8c
    .line 225
    return-void
.end method

.method private registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .locals 12
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    #@0
    .prologue
    .line 1927
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@2
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    #@4
    if-lez v0, :cond_1

    #@6
    .line 1931
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    #@8
    if-eqz v0, :cond_2

    #@a
    const/4 v7, 0x1

    #@b
    .line 1932
    .local v7, "alreadyRegistered":Z
    :goto_0
    new-instance v8, Landroid/content/Intent;

    #@d
    const-string/jumbo v0, "android.appwidget.action.APPWIDGET_UPDATE"

    #@10
    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@13
    .line 1933
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "appWidgetIds"

    #@16
    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    #@19
    .line 1934
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@1b
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@1d
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@20
    .line 1935
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v10

    #@24
    .line 1937
    .local v10, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@26
    .line 1938
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@28
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@2b
    move-result-object v1

    #@2c
    .line 1937
    const/4 v2, 0x1

    #@2d
    .line 1938
    const/high16 v3, 0x8000000

    #@2f
    .line 1937
    invoke-static {v0, v2, v8, v3, v1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 1940
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 1942
    if-nez v7, :cond_1

    #@3a
    .line 1943
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@3c
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    #@3e
    int-to-long v4, v0

    #@3f
    .line 1944
    .local v4, "period":J
    sget v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    #@41
    int-to-long v0, v0

    #@42
    cmp-long v0, v4, v0

    #@44
    if-gez v0, :cond_0

    #@46
    .line 1945
    sget v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    #@48
    int-to-long v4, v0

    #@49
    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@4b
    .line 1948
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4e
    move-result-wide v2

    #@4f
    add-long/2addr v2, v4

    #@50
    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    #@52
    .line 1947
    const/4 v1, 0x2

    #@53
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    #@56
    .line 1926
    .end local v4    # "period":J
    .end local v7    # "alreadyRegistered":Z
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "token":J
    :cond_1
    return-void

    #@57
    .line 1931
    :cond_2
    const/4 v7, 0x0

    #@58
    .restart local v7    # "alreadyRegistered":Z
    goto :goto_0

    #@59
    .line 1939
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "token":J
    :catchall_0
    move-exception v0

    #@5a
    .line 1940
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5d
    .line 1939
    throw v0
.end method

.method private registerOnCrossProfileProvidersChangedListener()V
    .locals 2

    #@0
    .prologue
    .line 259
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    #@2
    .line 258
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    #@8
    .line 261
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_0

    #@a
    .line 262
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    #@d
    .line 257
    :cond_0
    return-void
.end method

.method private removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2949
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;I)Z

    #@3
    move-result v3

    #@4
    .line 2954
    .local v3, "removed":Z
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 2955
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    #@c
    .end local v3    # "removed":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@e
    .line 2956
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@16
    .line 2957
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@18
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@1a
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 2958
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@23
    move-result v4

    #@24
    if-ne v4, p2, :cond_0

    #@26
    .line 2959
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@29
    .line 2960
    const/4 v3, 0x1

    #@2a
    .line 2955
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 2964
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1
    return v3
.end method

.method private removeProvidersForPackageLocked(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2934
    const/4 v3, 0x0

    #@1
    .line 2936
    .local v3, "removed":Z
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 2937
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 2938
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@13
    .line 2939
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@15
    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@17
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 2940
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@24
    move-result v4

    #@25
    if-ne v4, p2, :cond_0

    #@27
    .line 2941
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@2a
    .line 2942
    const/4 v3, 0x1

    #@2b
    .line 2937
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 2945
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1
    return v3
.end method

.method private resolveHostUidLocked(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 397
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 398
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@9
    .line 399
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@11
    .line 400
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@13
    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    #@15
    const/4 v4, -0x1

    #@16
    if-ne v3, v4, :cond_1

    #@18
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@1a
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@1c
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 401
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 402
    const-string/jumbo v3, "AppWidgetServiceImpl"

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "host "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    const-string/jumbo v5, " resolved to uid "

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 404
    :cond_0
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@4f
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@51
    iget v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    #@53
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@55
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@57
    invoke-direct {v3, p2, v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@5a
    iput-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@5c
    .line 405
    return-void

    #@5d
    .line 398
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 396
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_2
    return-void
.end method

.method private saveGroupStateAsync(I)V
    .locals 2
    .param p1, "groupId"    # I

    #@0
    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 1539
    return-void
.end method

.method private saveStateLocked(I)V
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2439
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->tagProvidersAndHosts()V

    #@3
    .line 2441
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@5
    invoke-virtual {v7, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    #@8
    move-result-object v5

    #@9
    .line 2443
    .local v5, "profileIds":[I
    array-length v3, v5

    #@a
    .line 2444
    .local v3, "profileCount":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@d
    .line 2445
    aget v4, v5, v2

    #@f
    .line 2447
    .local v4, "profileId":I
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    #@12
    move-result-object v1

    #@13
    .line 2450
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@16
    move-result-object v6

    #@17
    .line 2451
    .local v6, "stream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v6, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_0

    #@1d
    .line 2452
    invoke-virtual {v1, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@20
    .line 2444
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 2454
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :cond_0
    invoke-virtual {v1, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@26
    .line 2455
    const-string/jumbo v7, "AppWidgetServiceImpl"

    #@29
    const-string/jumbo v8, "Failed to save state, restoring backup."

    #@2c
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    goto :goto_1

    #@30
    .line 2457
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    #@31
    .line 2458
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v7, "AppWidgetServiceImpl"

    #@34
    new-instance v8, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v9, "Failed open state file for write: "

    #@3c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v8

    #@48
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    goto :goto_1

    #@4c
    .line 2438
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Landroid/util/AtomicFile;
    .end local v4    # "profileId":I
    :cond_1
    return-void
.end method

.method private scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "viewId"    # I

    #@0
    .prologue
    .line 1561
    if-eqz p1, :cond_0

    #@2
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@4
    if-nez v1, :cond_1

    #@6
    .line 1564
    :cond_0
    return-void

    #@7
    .line 1561
    :cond_1
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@9
    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1562
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@f
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@11
    if-eqz v1, :cond_0

    #@13
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 1563
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@19
    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@1b
    .line 1561
    if-nez v1, :cond_0

    #@1d
    .line 1567
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@20
    move-result-object v0

    #@21
    .line 1568
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@23
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@25
    .line 1569
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@27
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@29
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@2b
    .line 1570
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@2d
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@2f
    .line 1571
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@31
    .line 1573
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    #@33
    .line 1574
    const/4 v2, 0x4

    #@34
    .line 1573
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@3b
    .line 1560
    return-void
.end method

.method private scheduleNotifyGroupHostsForProvidersChangedLocked(I)V
    .locals 11
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1687
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@2
    invoke-virtual {v9, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    #@5
    move-result-object v8

    #@6
    .line 1689
    .local v8, "profileIds":[I
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    .line 1690
    .local v1, "N":I
    add-int/lit8 v5, v1, -0x1

    #@e
    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    #@10
    .line 1691
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@18
    .line 1693
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const/4 v4, 0x0

    #@19
    .line 1694
    .local v4, "hostInGroup":Z
    array-length v0, v8

    #@1a
    .line 1695
    .local v0, "M":I
    const/4 v6, 0x0

    #@1b
    .local v6, "j":I
    :goto_1
    if-ge v6, v0, :cond_0

    #@1d
    .line 1696
    aget v7, v8, v6

    #@1f
    .line 1697
    .local v7, "profileId":I
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@22
    move-result v9

    #@23
    if-ne v9, v7, :cond_2

    #@25
    .line 1698
    const/4 v4, 0x1

    #@26
    .line 1703
    .end local v7    # "profileId":I
    :cond_0
    if-nez v4, :cond_3

    #@28
    .line 1690
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1695
    .restart local v7    # "profileId":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 1707
    .end local v7    # "profileId":I
    :cond_3
    if-eqz v3, :cond_1

    #@30
    iget-boolean v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@32
    if-nez v9, :cond_1

    #@34
    iget-object v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@36
    if-eqz v9, :cond_1

    #@38
    .line 1711
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3b
    move-result-object v2

    #@3c
    .line 1712
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@3e
    .line 1713
    iget-object v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@40
    iput-object v9, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@42
    .line 1715
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    #@44
    .line 1716
    const/4 v10, 0x3

    #@45
    .line 1715
    invoke-virtual {v9, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@48
    move-result-object v9

    #@49
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    #@4c
    goto :goto_2

    #@4d
    .line 1686
    .end local v0    # "M":I
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v4    # "hostInGroup":Z
    .end local v6    # "j":I
    :cond_4
    return-void
.end method

.method private scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 1658
    if-eqz p1, :cond_0

    #@2
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@4
    if-nez v1, :cond_1

    #@6
    .line 1660
    :cond_0
    return-void

    #@7
    .line 1658
    :cond_1
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@9
    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1659
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@f
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@11
    if-eqz v1, :cond_0

    #@13
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@15
    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@17
    .line 1658
    if-nez v1, :cond_0

    #@19
    .line 1663
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@1c
    move-result-object v0

    #@1d
    .line 1664
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@1f
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@21
    .line 1665
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@23
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@25
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@27
    .line 1666
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@29
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@2b
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@2d
    .line 1667
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@2f
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@31
    .line 1669
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    #@33
    .line 1670
    const/4 v2, 0x2

    #@34
    .line 1669
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@3b
    .line 1657
    return-void
.end method

.method private scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "updateViews"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 1629
    if-eqz p1, :cond_0

    #@2
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@4
    if-nez v1, :cond_1

    #@6
    .line 1631
    :cond_0
    return-void

    #@7
    .line 1629
    :cond_1
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@9
    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1630
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@f
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@11
    if-eqz v1, :cond_0

    #@13
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@15
    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@17
    .line 1629
    if-nez v1, :cond_0

    #@19
    .line 1634
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@1c
    move-result-object v0

    #@1d
    .line 1635
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@1f
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@21
    .line 1636
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@23
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@25
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@27
    .line 1637
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@29
    .line 1638
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@2b
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@2d
    .line 1640
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    #@2f
    .line 1641
    const/4 v2, 0x1

    #@30
    .line 1640
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@37
    .line 1628
    return-void
.end method

.method private sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 2988
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 2990
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 2992
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 2987
    return-void

    #@d
    .line 2991
    :catchall_0
    move-exception v2

    #@e
    .line 2992
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 2991
    throw v2
.end method

.method private sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 1906
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_DELETED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1907
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@a
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@c
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@11
    .line 1908
    const-string/jumbo v1, "appWidgetId"

    #@14
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@19
    .line 1909
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@1b
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@1d
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@20
    move-result-object v1

    #@21
    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@24
    .line 1905
    return-void
.end method

.method private sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@0
    .prologue
    .line 1913
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_DISABLED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1914
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@a
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@f
    .line 1915
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@11
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@14
    move-result-object v1

    #@15
    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@18
    .line 1912
    return-void
.end method

.method private sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 2
    .param p1, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@0
    .prologue
    .line 1893
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_ENABLED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1894
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@a
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@f
    .line 1895
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@11
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@14
    move-result-object v1

    #@15
    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@18
    .line 1892
    return-void
.end method

.method private sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    #@0
    .prologue
    .line 1899
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_UPDATE"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1900
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "appWidgetIds"

    #@b
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    #@e
    .line 1901
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@10
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@15
    .line 1902
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@17
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1e
    .line 1898
    return-void
.end method

.method private static serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 4
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2031
    const-string/jumbo v0, "g"

    #@4
    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 2032
    const-string/jumbo v0, "id"

    #@a
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@c
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13
    .line 2033
    const-string/jumbo v0, "rid"

    #@16
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1f
    .line 2034
    const-string/jumbo v0, "h"

    #@22
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@24
    iget v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    #@26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2d
    .line 2035
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2f
    if-eqz v0, :cond_0

    #@31
    .line 2036
    const-string/jumbo v0, "p"

    #@34
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@36
    iget v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    #@38
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3f
    .line 2038
    :cond_0
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@41
    if-eqz v0, :cond_1

    #@43
    .line 2039
    const-string/jumbo v0, "min_width"

    #@46
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@48
    .line 2040
    const-string/jumbo v2, "appWidgetMinWidth"

    #@4b
    .line 2039
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@4e
    move-result v1

    #@4f
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@56
    .line 2041
    const-string/jumbo v0, "min_height"

    #@59
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@5b
    .line 2042
    const-string/jumbo v2, "appWidgetMinHeight"

    #@5e
    .line 2041
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@61
    move-result v1

    #@62
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@69
    .line 2043
    const-string/jumbo v0, "max_width"

    #@6c
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@6e
    .line 2044
    const-string/jumbo v2, "appWidgetMaxWidth"

    #@71
    .line 2043
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@74
    move-result v1

    #@75
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7c
    .line 2045
    const-string/jumbo v0, "max_height"

    #@7f
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@81
    .line 2046
    const-string/jumbo v2, "appWidgetMaxHeight"

    #@84
    .line 2045
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@87
    move-result v1

    #@88
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8f
    .line 2047
    const-string/jumbo v0, "host_category"

    #@92
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@94
    .line 2048
    const-string/jumbo v2, "appWidgetCategory"

    #@97
    .line 2047
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9a
    move-result v1

    #@9b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@9e
    move-result-object v1

    #@9f
    invoke-interface {p0, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a2
    .line 2050
    :cond_1
    const-string/jumbo v0, "g"

    #@a5
    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a8
    .line 2030
    return-void
.end method

.method private static serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 3
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2023
    const-string/jumbo v0, "h"

    #@4
    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 2024
    const-string/jumbo v0, "pkg"

    #@a
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@c
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@e
    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11
    .line 2025
    const-string/jumbo v0, "id"

    #@14
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@16
    iget v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1f
    .line 2026
    const-string/jumbo v0, "tag"

    #@22
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    #@24
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 2027
    const-string/jumbo v0, "h"

    #@2e
    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31
    .line 2022
    return-void
.end method

.method private static serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 3
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2015
    const-string/jumbo v0, "p"

    #@4
    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 2016
    const-string/jumbo v0, "pkg"

    #@a
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@c
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@e
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 2017
    const-string/jumbo v0, "cl"

    #@18
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@1a
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@1c
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23
    .line 2018
    const-string/jumbo v0, "tag"

    #@26
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    #@28
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f
    .line 2019
    const-string/jumbo v0, "p"

    #@32
    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@35
    .line 2014
    return-void
.end method

.method private setMinAppWidgetIdLocked(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "minWidgetId"    # I

    #@0
    .prologue
    .line 1370
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    #@3
    move-result v0

    #@4
    .line 1371
    .local v0, "nextAppWidgetId":I
    if-ge v0, p2, :cond_0

    #@6
    .line 1372
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@8
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@b
    .line 1369
    :cond_0
    return-void
.end method

.method private tagProvidersAndHosts()V
    .locals 6

    #@0
    .prologue
    .line 2464
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v4

    #@6
    .line 2465
    .local v4, "providerCount":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@9
    .line 2466
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@11
    .line 2467
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    #@13
    .line 2465
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2470
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_0
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v1

    #@1c
    .line 2471
    .local v1, "hostCount":I
    const/4 v2, 0x0

    #@1d
    :goto_1
    if-ge v2, v1, :cond_1

    #@1f
    .line 2472
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@27
    .line 2473
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    #@29
    .line 2471
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 2463
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1
    return-void
.end method

.method private unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 1455
    iget v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@2
    .line 1457
    .local v0, "appWidgetId":I
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@4
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@7
    move-result-object v4

    #@8
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .line 1459
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 1460
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroid/util/Pair;

    #@18
    .line 1461
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1a
    check-cast v4, Ljava/lang/Integer;

    #@1c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@1f
    move-result v4

    #@20
    if-ne v4, v0, :cond_0

    #@22
    .line 1463
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@24
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;

    #@2a
    .line 1464
    .local v1, "conn":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    #@2d
    .line 1465
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@2f
    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@32
    .line 1466
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@35
    goto :goto_0

    #@36
    .line 1472
    .end local v1    # "conn":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@39
    .line 1454
    return-void
.end method

.method private unbindService(Landroid/content/ServiceConnection;)V
    .locals 3
    .param p1, "connection"    # Landroid/content/ServiceConnection;

    #@0
    .prologue
    .line 3009
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3011
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 3013
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 3008
    return-void

    #@d
    .line 3012
    :catchall_0
    move-exception v2

    #@e
    .line 3013
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 3012
    throw v2
.end method

.method private updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;
    .param p4, "partially"    # Z

    #@0
    .prologue
    .line 1328
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v4

    #@4
    .line 1330
    .local v4, "userId":I
    if-eqz p2, :cond_0

    #@6
    array-length v6, p2

    #@7
    if-nez v6, :cond_1

    #@9
    .line 1331
    :cond_0
    return-void

    #@a
    .line 1335
    :cond_1
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@c
    invoke-virtual {v6, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@f
    .line 1337
    if-eqz p3, :cond_2

    #@11
    invoke-virtual {p3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    #@14
    move-result v2

    #@15
    .line 1338
    .local v2, "bitmapMemoryUsage":I
    :goto_0
    iget v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    #@17
    if-le v2, v6, :cond_3

    #@19
    .line 1339
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v7, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v8, "RemoteViews for widget update exceeds maximum bitmap memory usage (used: "

    #@23
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    .line 1341
    const-string/jumbo v8, ", max: "

    #@2e
    .line 1339
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    .line 1341
    iget v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    #@34
    .line 1339
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    .line 1341
    const-string/jumbo v8, ")"

    #@3b
    .line 1339
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v6

    #@47
    .line 1337
    .end local v2    # "bitmapMemoryUsage":I
    :cond_2
    const/4 v2, 0x0

    #@48
    .restart local v2    # "bitmapMemoryUsage":I
    goto :goto_0

    #@49
    .line 1344
    :cond_3
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@4b
    monitor-enter v7

    #@4c
    .line 1345
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@4f
    .line 1347
    array-length v0, p2

    #@50
    .line 1348
    .local v0, "N":I
    const/4 v3, 0x0

    #@51
    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    #@53
    .line 1349
    aget v1, p2, v3

    #@55
    .line 1354
    .local v1, "appWidgetId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@58
    move-result v6

    #@59
    .line 1353
    invoke-direct {p0, v1, v6, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@5c
    move-result-object v5

    #@5d
    .line 1356
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v5, :cond_4

    #@5f
    .line 1357
    invoke-direct {p0, v5, p3, p4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    .line 1348
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@64
    goto :goto_1

    #@65
    .end local v1    # "appWidgetId":I
    .end local v5    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_5
    monitor-exit v7

    #@66
    .line 1327
    return-void

    #@67
    .line 1344
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v6

    #@68
    monitor-exit v7

    #@69
    throw v6
.end method

.method private updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V
    .locals 1
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "isPartialUpdate"    # Z

    #@0
    .prologue
    .line 1545
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1546
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@8
    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1544
    :cond_0
    :goto_0
    return-void

    #@d
    .line 1546
    :cond_1
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@f
    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@11
    if-nez v0, :cond_0

    #@13
    .line 1548
    if-eqz p3, :cond_2

    #@15
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 1550
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@1b
    invoke-virtual {v0, p2}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    #@1e
    .line 1556
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    #@21
    goto :goto_0

    #@22
    .line 1553
    :cond_2
    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@24
    goto :goto_1
.end method

.method private updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2857
    .local p3, "removedProviders":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    const/4 v15, 0x0

    #@1
    .line 2859
    .local v15, "providersUpdated":Z
    new-instance v11, Ljava/util/HashSet;

    #@3
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    #@6
    .line 2860
    .local v11, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    new-instance v9, Landroid/content/Intent;

    #@8
    const-string/jumbo v18, "android.appwidget.action.APPWIDGET_UPDATE"

    #@b
    move-object/from16 v0, v18

    #@d
    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 2861
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    #@12
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@15
    .line 2862
    move-object/from16 v0, p0

    #@17
    move/from16 v1, p2

    #@19
    invoke-direct {v0, v9, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@1c
    move-result-object v7

    #@1d
    .line 2865
    .local v7, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_1

    #@1f
    const/4 v4, 0x0

    #@20
    .line 2866
    .local v4, "N":I
    :goto_0
    const/4 v8, 0x0

    #@21
    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_6

    #@23
    .line 2867
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v16

    #@27
    check-cast v16, Landroid/content/pm/ResolveInfo;

    #@29
    .line 2868
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    #@2b
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2d
    .line 2870
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2f
    move-object/from16 v18, v0

    #@31
    move-object/from16 v0, v18

    #@33
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@35
    move/from16 v18, v0

    #@37
    const/high16 v19, 0x40000

    #@39
    and-int v18, v18, v19

    #@3b
    if-eqz v18, :cond_2

    #@3d
    .line 2866
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 2865
    .end local v4    # "N":I
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v8    # "i":I
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@43
    move-result v4

    #@44
    .restart local v4    # "N":I
    goto :goto_0

    #@45
    .line 2874
    .restart local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "i":I
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@47
    move-object/from16 v18, v0

    #@49
    move-object/from16 v0, p1

    #@4b
    move-object/from16 v1, v18

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v18

    #@51
    if-eqz v18, :cond_0

    #@53
    .line 2875
    new-instance v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@55
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@57
    move-object/from16 v18, v0

    #@59
    move-object/from16 v0, v18

    #@5b
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@5d
    move/from16 v18, v0

    #@5f
    .line 2876
    new-instance v19, Landroid/content/ComponentName;

    #@61
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@63
    move-object/from16 v20, v0

    #@65
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@67
    move-object/from16 v21, v0

    #@69
    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6c
    .line 2875
    const/16 v20, 0x0

    #@6e
    move/from16 v0, v18

    #@70
    move-object/from16 v1, v19

    #@72
    move-object/from16 v2, v20

    #@74
    invoke-direct {v14, v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V

    #@77
    .line 2878
    .local v14, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    move-object/from16 v0, p0

    #@79
    invoke-direct {v0, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@7c
    move-result-object v13

    #@7d
    .line 2879
    .local v13, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v13, :cond_3

    #@7f
    .line 2880
    move-object/from16 v0, p0

    #@81
    move-object/from16 v1, v16

    #@83
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    #@86
    move-result v18

    #@87
    if-eqz v18, :cond_0

    #@89
    .line 2881
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@8c
    .line 2882
    const/4 v15, 0x1

    #@8d
    goto :goto_2

    #@8e
    .line 2885
    :cond_3
    move-object/from16 v0, p0

    #@90
    move-object/from16 v1, v16

    #@92
    invoke-direct {v0, v14, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@95
    move-result-object v12

    #@96
    .line 2886
    .local v12, "parsed":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v12, :cond_5

    #@98
    .line 2887
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@9b
    .line 2889
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@9d
    move-object/from16 v18, v0

    #@9f
    move-object/from16 v0, v18

    #@a1
    iput-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@a3
    .line 2891
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@a5
    move-object/from16 v18, v0

    #@a7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@aa
    move-result v3

    #@ab
    .line 2892
    .local v3, "M":I
    if-lez v3, :cond_5

    #@ad
    .line 2893
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@af
    move-object/from16 v18, v0

    #@b1
    invoke-static/range {v18 .. v18}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    #@b4
    move-result-object v6

    #@b5
    .line 2897
    .local v6, "appWidgetIds":[I
    move-object/from16 v0, p0

    #@b7
    invoke-direct {v0, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@ba
    .line 2898
    move-object/from16 v0, p0

    #@bc
    invoke-direct {v0, v13, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    #@bf
    .line 2901
    const/4 v10, 0x0

    #@c0
    .local v10, "j":I
    :goto_3
    if-ge v10, v3, :cond_4

    #@c2
    .line 2902
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@c4
    move-object/from16 v18, v0

    #@c6
    move-object/from16 v0, v18

    #@c8
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@cb
    move-result-object v17

    #@cc
    check-cast v17, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@ce
    .line 2903
    .local v17, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/16 v18, 0x0

    #@d0
    move-object/from16 v0, v18

    #@d2
    move-object/from16 v1, v17

    #@d4
    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@d6
    .line 2904
    move-object/from16 v0, p0

    #@d8
    move-object/from16 v1, v17

    #@da
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@dd
    .line 2901
    add-int/lit8 v10, v10, 0x1

    #@df
    goto :goto_3

    #@e0
    .line 2907
    .end local v17    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_4
    move-object/from16 v0, p0

    #@e2
    invoke-direct {v0, v13, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    #@e5
    .line 2910
    .end local v3    # "M":I
    .end local v6    # "appWidgetIds":[I
    .end local v10    # "j":I
    :cond_5
    const/4 v15, 0x1

    #@e6
    goto/16 :goto_2

    #@e8
    .line 2916
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v12    # "parsed":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v13    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object/from16 v0, p0

    #@ea
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@ec
    move-object/from16 v18, v0

    #@ee
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@f1
    move-result v4

    #@f2
    .line 2917
    add-int/lit8 v8, v4, -0x1

    #@f4
    :goto_4
    if-ltz v8, :cond_a

    #@f6
    .line 2918
    move-object/from16 v0, p0

    #@f8
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@fa
    move-object/from16 v18, v0

    #@fc
    move-object/from16 v0, v18

    #@fe
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@101
    move-result-object v13

    #@102
    check-cast v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@104
    .line 2919
    .restart local v13    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@106
    move-object/from16 v18, v0

    #@108
    move-object/from16 v0, v18

    #@10a
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@10c
    move-object/from16 v18, v0

    #@10e
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@111
    move-result-object v18

    #@112
    move-object/from16 v0, p1

    #@114
    move-object/from16 v1, v18

    #@116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@119
    move-result v18

    #@11a
    if-eqz v18, :cond_7

    #@11c
    .line 2920
    invoke-virtual {v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@11f
    move-result v18

    #@120
    move/from16 v0, v18

    #@122
    move/from16 v1, p2

    #@124
    if-ne v0, v1, :cond_7

    #@126
    .line 2921
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@128
    move-object/from16 v18, v0

    #@12a
    move-object/from16 v0, v18

    #@12c
    invoke-virtual {v11, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@12f
    move-result v18

    #@130
    if-eqz v18, :cond_8

    #@132
    .line 2917
    :cond_7
    :goto_5
    add-int/lit8 v8, v8, -0x1

    #@134
    goto :goto_4

    #@135
    .line 2922
    :cond_8
    if-eqz p3, :cond_9

    #@137
    .line 2923
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@139
    move-object/from16 v18, v0

    #@13b
    move-object/from16 v0, p3

    #@13d
    move-object/from16 v1, v18

    #@13f
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@142
    .line 2925
    :cond_9
    move-object/from16 v0, p0

    #@144
    invoke-direct {v0, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@147
    .line 2926
    const/4 v15, 0x1

    #@148
    goto :goto_5

    #@149
    .line 2930
    .end local v13    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_a
    return v15
.end method

.method private writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z
    .locals 12
    .param p1, "stream"    # Ljava/io/FileOutputStream;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2495
    :try_start_0
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    #@2
    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@5
    .line 2496
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@7
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@a
    move-result-object v9

    #@b
    invoke-interface {v6, p1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@e
    .line 2497
    const/4 v9, 0x1

    #@f
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v9

    #@13
    const/4 v10, 0x0

    #@14
    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@17
    .line 2498
    const-string/jumbo v9, "gs"

    #@1a
    const/4 v10, 0x0

    #@1b
    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 2499
    const-string/jumbo v9, "version"

    #@21
    const/4 v10, 0x1

    #@22
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@25
    move-result-object v10

    #@26
    const/4 v11, 0x0

    #@27
    invoke-interface {v6, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2a
    .line 2501
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v0

    #@30
    .line 2502
    .local v0, "N":I
    const/4 v4, 0x0

    #@31
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    #@33
    .line 2503
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v7

    #@39
    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3b
    .line 2505
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@3e
    move-result v9

    #@3f
    if-eq v9, p2, :cond_1

    #@41
    .line 2502
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@43
    goto :goto_0

    #@44
    .line 2508
    :cond_1
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v9

    #@4a
    if-lez v9, :cond_0

    #@4c
    .line 2509
    invoke-static {v6, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    goto :goto_1

    #@50
    .line 2548
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catch_0
    move-exception v2

    #@51
    .line 2549
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v9, "AppWidgetServiceImpl"

    #@54
    new-instance v10, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v11, "Failed to write state: "

    #@5c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v10

    #@60
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v10

    #@64
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v10

    #@68
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 2550
    const/4 v9, 0x0

    #@6c
    return v9

    #@6d
    .line 2513
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@6f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@72
    move-result v0

    #@73
    .line 2514
    const/4 v4, 0x0

    #@74
    :goto_2
    if-ge v4, v0, :cond_4

    #@76
    .line 2515
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7b
    move-result-object v3

    #@7c
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@7e
    .line 2517
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@81
    move-result v9

    #@82
    if-eq v9, p2, :cond_3

    #@84
    .line 2514
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@86
    goto :goto_2

    #@87
    .line 2520
    :cond_3
    invoke-static {v6, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@8a
    goto :goto_3

    #@8b
    .line 2523
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_4
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@8d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@90
    move-result v0

    #@91
    .line 2524
    const/4 v4, 0x0

    #@92
    :goto_4
    if-ge v4, v0, :cond_6

    #@94
    .line 2525
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@96
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@99
    move-result-object v8

    #@9a
    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@9c
    .line 2527
    .local v8, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@9e
    invoke-virtual {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@a1
    move-result v9

    #@a2
    if-eq v9, p2, :cond_5

    #@a4
    .line 2524
    :goto_5
    add-int/lit8 v4, v4, 0x1

    #@a6
    goto :goto_4

    #@a7
    .line 2530
    :cond_5
    invoke-static {v6, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@aa
    goto :goto_5

    #@ab
    .line 2533
    .end local v8    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_6
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@ad
    invoke-virtual {v9}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    #@b0
    move-result-object v5

    #@b1
    .line 2534
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_7
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@b4
    move-result v9

    #@b5
    if-eqz v9, :cond_8

    #@b7
    .line 2535
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ba
    move-result-object v1

    #@bb
    check-cast v1, Landroid/util/Pair;

    #@bd
    .line 2537
    .local v1, "binding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@bf
    check-cast v9, Ljava/lang/Integer;

    #@c1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@c4
    move-result v9

    #@c5
    if-ne v9, p2, :cond_7

    #@c7
    .line 2540
    const-string/jumbo v9, "b"

    #@ca
    const/4 v10, 0x0

    #@cb
    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ce
    .line 2541
    const-string/jumbo v10, "packageName"

    #@d1
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@d3
    check-cast v9, Ljava/lang/String;

    #@d5
    const/4 v11, 0x0

    #@d6
    invoke-interface {v6, v11, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d9
    .line 2542
    const-string/jumbo v9, "b"

    #@dc
    const/4 v10, 0x0

    #@dd
    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e0
    goto :goto_6

    #@e1
    .line 2545
    .end local v1    # "binding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_8
    const-string/jumbo v9, "gs"

    #@e4
    const/4 v10, 0x0

    #@e5
    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e8
    .line 2546
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@eb
    .line 2547
    const/4 v9, 0x1

    #@ec
    return v9
.end method


# virtual methods
.method addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 1
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 2357
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 2359
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@8
    .line 2356
    return-void
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    #@0
    .prologue
    .line 552
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v3

    #@4
    .line 554
    .local v3, "userId":I
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 555
    const-string/jumbo v5, "AppWidgetServiceImpl"

    #@b
    new-instance v6, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v7, "allocateAppWidgetId() "

    #@13
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 559
    :cond_0
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 561
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v6

    #@2a
    .line 562
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 564
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@2f
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@32
    move-result v5

    #@33
    if-gez v5, :cond_1

    #@35
    .line 565
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@37
    const/4 v7, 0x1

    #@38
    invoke-virtual {v5, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    #@3b
    .line 568
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I

    #@3e
    move-result v0

    #@3f
    .line 572
    .local v0, "appWidgetId":I
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@44
    move-result v5

    #@45
    invoke-direct {v2, v5, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@48
    .line 573
    .local v2, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@4b
    move-result-object v1

    #@4c
    .line 575
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@4e
    const/4 v5, 0x0

    #@4f
    invoke-direct {v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@52
    .line 576
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iput v0, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@54
    .line 577
    iput-object v1, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@56
    .line 579
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5b
    .line 580
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@5e
    .line 582
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@61
    .line 584
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@63
    if-eqz v5, :cond_2

    #@65
    .line 585
    const-string/jumbo v5, "AppWidgetServiceImpl"

    #@68
    new-instance v7, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v8, "Allocated widget id "

    #@70
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v7

    #@78
    .line 586
    const-string/jumbo v8, " for host "

    #@7b
    .line 585
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v7

    #@7f
    .line 586
    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@81
    .line 585
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v7

    #@89
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8c
    :cond_2
    monitor-exit v6

    #@8d
    .line 589
    return v0

    #@8e
    .line 561
    .end local v0    # "appWidgetId":I
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v2    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v5

    #@8f
    monitor-exit v6

    #@90
    throw v5
.end method

.method public bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "providerProfileId"    # I
    .param p4, "providerComponent"    # Landroid/content/ComponentName;
    .param p5, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 734
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v3

    #@4
    .line 736
    .local v3, "userId":I
    sget-boolean v6, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v6, :cond_0

    #@8
    .line 737
    const-string/jumbo v6, "AppWidgetServiceImpl"

    #@b
    new-instance v7, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v8, "bindAppWidgetId() "

    #@13
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v7

    #@17
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 741
    :cond_0
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v6, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 744
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@29
    invoke-virtual {v6, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    #@2c
    move-result v6

    #@2d
    if-nez v6, :cond_1

    #@2f
    .line 745
    const/4 v6, 0x0

    #@30
    return v6

    #@31
    .line 750
    :cond_1
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@33
    .line 751
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    .line 750
    invoke-virtual {v6, v7, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    #@3a
    move-result v6

    #@3b
    if-nez v6, :cond_2

    #@3d
    .line 752
    const/4 v6, 0x0

    #@3e
    return v6

    #@3f
    .line 755
    :cond_2
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@41
    monitor-enter v7

    #@42
    .line 756
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@45
    .line 759
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@47
    invoke-virtual {v6, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    move-result v6

    #@4b
    if-nez v6, :cond_3

    #@4d
    .line 761
    const/4 v6, 0x0

    #@4e
    monitor-exit v7

    #@4f
    return v6

    #@50
    .line 767
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@53
    move-result v6

    #@54
    .line 766
    invoke-direct {p0, p2, v6, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@57
    move-result-object v4

    #@58
    .line 769
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v4, :cond_4

    #@5a
    .line 770
    const-string/jumbo v6, "AppWidgetServiceImpl"

    #@5d
    new-instance v8, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v9, "Bad widget id "

    #@65
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v8

    #@6d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v8

    #@71
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@74
    .line 771
    const/4 v6, 0x0

    #@75
    monitor-exit v7

    #@76
    return v6

    #@77
    .line 774
    :cond_4
    :try_start_2
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@79
    if-eqz v6, :cond_5

    #@7b
    .line 775
    const-string/jumbo v6, "AppWidgetServiceImpl"

    #@7e
    new-instance v8, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v9, "Widget id "

    #@86
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v8

    #@8e
    .line 776
    const-string/jumbo v9, " already bound to: "

    #@91
    .line 775
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v8

    #@95
    .line 776
    iget-object v9, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@97
    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@99
    .line 775
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v8

    #@9d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v8

    #@a1
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a4
    .line 777
    const/4 v6, 0x0

    #@a5
    monitor-exit v7

    #@a6
    return v6

    #@a7
    .line 780
    :cond_5
    :try_start_3
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@aa
    move-result-object v6

    #@ab
    invoke-direct {p0, v6, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    #@ae
    move-result v2

    #@af
    .line 782
    .local v2, "providerUid":I
    if-gez v2, :cond_6

    #@b1
    .line 783
    const-string/jumbo v6, "AppWidgetServiceImpl"

    #@b4
    new-instance v8, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v9, "Package "

    #@bc
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v8

    #@c0
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@c3
    move-result-object v9

    #@c4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v8

    #@c8
    const-string/jumbo v9, " not installed "

    #@cb
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v8

    #@cf
    .line 784
    const-string/jumbo v9, " for profile "

    #@d2
    .line 783
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v8

    #@d6
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v8

    #@da
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v8

    #@de
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e1
    .line 785
    const/4 v6, 0x0

    #@e2
    monitor-exit v7

    #@e3
    return v6

    #@e4
    .line 790
    :cond_6
    :try_start_4
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@e6
    const/4 v6, 0x0

    #@e7
    invoke-direct {v1, v2, p4, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V

    #@ea
    .line 791
    .local v1, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@ed
    move-result-object v0

    #@ee
    .line 793
    .local v0, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v0, :cond_7

    #@f0
    .line 794
    const-string/jumbo v6, "AppWidgetServiceImpl"

    #@f3
    new-instance v8, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string/jumbo v9, "No widget provider "

    #@fb
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v8

    #@ff
    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v8

    #@103
    const-string/jumbo v9, " for profile "

    #@106
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v8

    #@10a
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v8

    #@10e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v8

    #@112
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@115
    .line 796
    const/4 v6, 0x0

    #@116
    monitor-exit v7

    #@117
    return v6

    #@118
    .line 799
    :cond_7
    :try_start_5
    iget-boolean v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@11a
    if-eqz v6, :cond_8

    #@11c
    .line 800
    const-string/jumbo v6, "AppWidgetServiceImpl"

    #@11f
    new-instance v8, Ljava/lang/StringBuilder;

    #@121
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@124
    const-string/jumbo v9, "Can\'t bind to a 3rd party provider in safe mode "

    #@127
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v8

    #@12b
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v8

    #@12f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@132
    move-result-object v8

    #@133
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@136
    .line 802
    const/4 v6, 0x0

    #@137
    monitor-exit v7

    #@138
    return v6

    #@139
    .line 805
    :cond_8
    :try_start_6
    iput-object v0, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@13b
    .line 806
    if-eqz p5, :cond_c

    #@13d
    invoke-static {p5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@140
    move-result-object v6

    #@141
    :goto_0
    iput-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@143
    .line 808
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@146
    .line 811
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@148
    const-string/jumbo v8, "appWidgetCategory"

    #@14b
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@14e
    move-result v6

    #@14f
    if-nez v6, :cond_9

    #@151
    .line 812
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@153
    const-string/jumbo v8, "appWidgetCategory"

    #@156
    .line 813
    const/4 v9, 0x1

    #@157
    .line 812
    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@15a
    .line 816
    :cond_9
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@15c
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15f
    .line 818
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@161
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@164
    move-result v5

    #@165
    .line 819
    .local v5, "widgetCount":I
    const/4 v6, 0x1

    #@166
    if-ne v5, v6, :cond_a

    #@168
    .line 821
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@16b
    .line 828
    :cond_a
    const/4 v6, 0x1

    #@16c
    new-array v6, v6, [I

    #@16e
    const/4 v8, 0x0

    #@16f
    aput p2, v6, v8

    #@171
    invoke-direct {p0, v0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    #@174
    .line 831
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@176
    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    #@179
    move-result-object v6

    #@17a
    invoke-direct {p0, v0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    #@17d
    .line 833
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@180
    .line 835
    sget-boolean v6, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@182
    if-eqz v6, :cond_b

    #@184
    .line 836
    const-string/jumbo v6, "AppWidgetServiceImpl"

    #@187
    new-instance v8, Ljava/lang/StringBuilder;

    #@189
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@18c
    const-string/jumbo v9, "Bound widget "

    #@18f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v8

    #@193
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@196
    move-result-object v8

    #@197
    const-string/jumbo v9, " to provider "

    #@19a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v8

    #@19e
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@1a0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v8

    #@1a4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a7
    move-result-object v8

    #@1a8
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1ab
    :cond_b
    monitor-exit v7

    #@1ac
    .line 840
    const/4 v6, 0x1

    #@1ad
    return v6

    #@1ae
    .line 806
    .end local v5    # "widgetCount":I
    :cond_c
    :try_start_7
    new-instance v6, Landroid/os/Bundle;

    #@1b0
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1b3
    goto :goto_0

    #@1b4
    .line 755
    .end local v0    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v1    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v2    # "providerUid":I
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v6

    #@1b5
    monitor-exit v7

    #@1b6
    throw v6
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 14
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callbacks"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 900
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v8

    #@4
    .line 902
    .local v8, "userId":I
    sget-boolean v10, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v10, :cond_0

    #@8
    .line 903
    const-string/jumbo v10, "AppWidgetServiceImpl"

    #@b
    new-instance v11, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v12, "bindRemoteViewsService() "

    #@13
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v11

    #@17
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v11

    #@1b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v11

    #@1f
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 907
    :cond_0
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v10, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 909
    iget-object v11, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v11

    #@2a
    .line 910
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 915
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@30
    move-result v10

    #@31
    .line 914
    move/from16 v0, p2

    #@33
    invoke-direct {p0, v0, v10, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@36
    move-result-object v9

    #@37
    .line 917
    .local v9, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v9, :cond_1

    #@39
    .line 918
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@3b
    const-string/jumbo v12, "Bad widget id"

    #@3e
    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 909
    .end local v9    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v10

    #@43
    monitor-exit v11

    #@44
    throw v10

    #@45
    .line 922
    .restart local v9    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1
    :try_start_1
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@47
    if-nez v10, :cond_2

    #@49
    .line 923
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@4b
    new-instance v12, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v13, "No provider for widget "

    #@53
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v12

    #@57
    move/from16 v0, p2

    #@59
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v12

    #@5d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v12

    #@61
    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@64
    throw v10

    #@65
    .line 927
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@68
    move-result-object v1

    #@69
    .line 931
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@6b
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@6d
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@6f
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    .line 932
    .local v5, "providerPackage":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@76
    move-result-object v7

    #@77
    .line 933
    .local v7, "servicePackage":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v10

    #@7b
    if-nez v10, :cond_3

    #@7d
    .line 934
    new-instance v10, Ljava/lang/SecurityException;

    #@7f
    const-string/jumbo v12, "The taget service not in the same package as the widget provider"

    #@82
    invoke-direct {v10, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@85
    throw v10

    #@86
    .line 940
    :cond_3
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@88
    .line 941
    iget-object v12, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@8a
    invoke-virtual {v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@8d
    move-result v12

    #@8e
    .line 940
    invoke-virtual {v10, v1, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V

    #@91
    .line 949
    const/4 v2, 0x0

    #@92
    .line 950
    .local v2, "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    new-instance v3, Landroid/content/Intent$FilterComparison;

    #@94
    move-object/from16 v0, p3

    #@96
    invoke-direct {v3, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@99
    .line 951
    .local v3, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9c
    move-result-object v10

    #@9d
    invoke-static {v10, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@a0
    move-result-object v4

    #@a1
    .line 953
    .local v4, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@a3
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@a6
    move-result v10

    #@a7
    if-eqz v10, :cond_4

    #@a9
    .line 954
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@ab
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    move-result-object v2

    #@af
    .end local v2    # "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;

    #@b1
    .line 955
    .local v2, "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    #@b4
    .line 956
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unbindService(Landroid/content/ServiceConnection;)V

    #@b7
    .line 957
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@b9
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@bc
    .line 962
    .end local v2    # "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    :cond_4
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;

    #@be
    move-object/from16 v0, p4

    #@c0
    invoke-direct {v2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;-><init>(Landroid/os/IBinder;)V

    #@c3
    .line 963
    .restart local v2    # "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@c5
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@c7
    invoke-virtual {v10}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@ca
    move-result-object v10

    #@cb
    move-object/from16 v0, p3

    #@cd
    invoke-direct {p0, v0, v2, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    #@d0
    .line 964
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@d2
    invoke-virtual {v10, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d5
    .line 969
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@d7
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@d9
    iget v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    #@db
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@de
    move-result-object v10

    #@df
    invoke-static {v10, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@e2
    move-result-object v6

    #@e3
    .line 970
    .local v6, "serviceId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    move/from16 v0, p2

    #@e5
    invoke-direct {p0, v0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e8
    monitor-exit v11

    #@e9
    .line 899
    return-void
.end method

.method clearWidgetsLocked()V
    .locals 1

    #@0
    .prologue
    .line 2415
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 2417
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetsClearedLocked()V

    #@8
    .line 2414
    return-void
.end method

.method public createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;
    .locals 15
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intentFlags"    # I

    #@0
    .prologue
    .line 683
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v12

    #@4
    .line 685
    .local v12, "userId":I
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 686
    const-string/jumbo v2, "AppWidgetServiceImpl"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "createAppWidgetConfigIntentSender() "

    #@13
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 690
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-virtual {v2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@29
    .line 692
    iget-object v14, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2b
    monitor-enter v14

    #@2c
    .line 693
    :try_start_0
    invoke-direct {p0, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2f
    .line 698
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@32
    move-result v2

    #@33
    .line 697
    move/from16 v0, p2

    #@35
    move-object/from16 v1, p1

    #@37
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@3a
    move-result-object v13

    #@3b
    .line 700
    .local v13, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v13, :cond_1

    #@3d
    .line 701
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v5, "Bad widget id "

    #@47
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    move/from16 v0, p2

    #@4d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    .line 692
    .end local v13    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v2

    #@5a
    monitor-exit v14

    #@5b
    throw v2

    #@5c
    .line 704
    .restart local v13    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1
    :try_start_1
    iget-object v10, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@5e
    .line 705
    .local v10, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v10, :cond_2

    #@60
    .line 706
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@62
    new-instance v3, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v5, "Widget not bound "

    #@6a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    move/from16 v0, p2

    #@70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v2

    #@7c
    .line 710
    :cond_2
    move/from16 v0, p3

    #@7e
    and-int/lit16 v11, v0, -0xc4

    #@80
    .line 712
    .local v11, "secureFlags":I
    new-instance v4, Landroid/content/Intent;

    #@82
    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    #@85
    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@88
    .line 713
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "appWidgetId"

    #@8b
    move/from16 v0, p2

    #@8d
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@90
    .line 714
    iget-object v2, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@92
    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    #@94
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@97
    .line 715
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@9a
    .line 718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9d
    move-result-wide v8

    #@9e
    .line 721
    .local v8, "identity":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@a0
    .line 723
    new-instance v7, Landroid/os/UserHandle;

    #@a2
    invoke-virtual {v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@a5
    move-result v3

    #@a6
    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    #@a9
    .line 721
    const/4 v3, 0x0

    #@aa
    const/high16 v5, 0x54000000

    #@ac
    .line 723
    const/4 v6, 0x0

    #@ad
    .line 720
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@b0
    move-result-object v2

    #@b1
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@b4
    move-result-object v2

    #@b5
    .line 726
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b8
    monitor-exit v14

    #@b9
    .line 720
    return-object v2

    #@ba
    .line 725
    :catchall_1
    move-exception v2

    #@bb
    .line 726
    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@be
    .line 725
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public deleteAllHosts()V
    .locals 9

    #@0
    .prologue
    .line 1050
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v4

    #@4
    .line 1052
    .local v4, "userId":I
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 1053
    const-string/jumbo v5, "AppWidgetServiceImpl"

    #@b
    new-instance v6, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v7, "deleteAllHosts() "

    #@13
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1056
    :cond_0
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@24
    monitor-enter v6

    #@25
    .line 1057
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@28
    .line 1059
    const/4 v1, 0x0

    #@29
    .line 1061
    .local v1, "changed":Z
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v0

    #@2f
    .line 1062
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    #@31
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    #@33
    .line 1063
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@3b
    .line 1066
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@3d
    iget v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    #@3f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@42
    move-result v7

    #@43
    if-ne v5, v7, :cond_1

    #@45
    .line 1067
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@48
    .line 1068
    const/4 v1, 0x1

    #@49
    .line 1070
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@4b
    if-eqz v5, :cond_1

    #@4d
    .line 1071
    const-string/jumbo v5, "AppWidgetServiceImpl"

    #@50
    new-instance v7, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v8, "Deleted host "

    #@58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    iget-object v8, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@5e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 1062
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@6b
    goto :goto_0

    #@6c
    .line 1076
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_2
    if-eqz v1, :cond_3

    #@6e
    .line 1077
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    :cond_3
    monitor-exit v6

    #@72
    .line 1049
    return-void

    #@73
    .line 1056
    .end local v0    # "N":I
    .end local v1    # "changed":Z
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    #@74
    monitor-exit v6

    #@75
    throw v5
.end method

.method public deleteAppWidgetId(Ljava/lang/String;I)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    #@0
    .prologue
    .line 595
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 597
    .local v0, "userId":I
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 598
    const-string/jumbo v2, "AppWidgetServiceImpl"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "deleteAppWidgetId() "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 602
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 604
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v3

    #@2a
    .line 605
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 610
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@30
    move-result v2

    #@31
    .line 609
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v1

    #@35
    .line 612
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v1, :cond_1

    #@37
    monitor-exit v3

    #@38
    .line 613
    return-void

    #@39
    .line 616
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@3c
    .line 618
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@3f
    .line 620
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@41
    if-eqz v2, :cond_2

    #@43
    .line 621
    const-string/jumbo v2, "AppWidgetServiceImpl"

    #@46
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "Deleted widget id "

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    .line 622
    const-string/jumbo v5, " for host "

    #@59
    .line 621
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    .line 622
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@5f
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@61
    .line 621
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6c
    :cond_2
    monitor-exit v3

    #@6d
    .line 594
    return-void

    #@6e
    .line 604
    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v2

    #@6f
    monitor-exit v3

    #@70
    throw v2
.end method

.method public deleteHost(Ljava/lang/String;I)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    #@0
    .prologue
    .line 1017
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v2

    #@4
    .line 1019
    .local v2, "userId":I
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 1020
    const-string/jumbo v3, "AppWidgetServiceImpl"

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "deleteHost() "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1024
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 1026
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v4

    #@2a
    .line 1027
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 1031
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@2f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@32
    move-result v3

    #@33
    invoke-direct {v1, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@36
    .line 1032
    .local v1, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    move-result-object v0

    #@3a
    .line 1034
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-nez v0, :cond_1

    #@3c
    monitor-exit v4

    #@3d
    .line 1035
    return-void

    #@3e
    .line 1038
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@41
    .line 1040
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@44
    .line 1042
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 1043
    const-string/jumbo v3, "AppWidgetServiceImpl"

    #@4b
    new-instance v5, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v6, "Deleted host "

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    :cond_2
    monitor-exit v4

    #@65
    .line 1016
    return-void

    #@66
    .line 1026
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v1    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :catchall_0
    move-exception v3

    #@67
    monitor-exit v4

    #@68
    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 450
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.DUMP"

    #@5
    .line 451
    new-instance v5, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v6, "Permission Denial: can\'t dump from from pid="

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    .line 452
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14
    move-result v6

    #@15
    .line 451
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    .line 453
    const-string/jumbo v6, ", uid="

    #@1c
    .line 451
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    .line 453
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@23
    move-result v6

    #@24
    .line 451
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    .line 450
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    .line 455
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@31
    monitor-enter v4

    #@32
    .line 456
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v0

    #@38
    .line 457
    .local v0, "N":I
    const-string/jumbo v3, "Providers:"

    #@3b
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 458
    const/4 v2, 0x0

    #@3f
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@41
    .line 459
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@43
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@49
    invoke-static {v3, v2, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    #@4c
    .line 458
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 462
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@54
    move-result v0

    #@55
    .line 463
    const-string/jumbo v3, " "

    #@58
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5b
    .line 464
    const-string/jumbo v3, "Widgets:"

    #@5e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@61
    .line 465
    const/4 v2, 0x0

    #@62
    :goto_1
    if-ge v2, v0, :cond_1

    #@64
    .line 466
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@66
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v3

    #@6a
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@6c
    invoke-static {v3, v2, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V

    #@6f
    .line 465
    add-int/lit8 v2, v2, 0x1

    #@71
    goto :goto_1

    #@72
    .line 469
    :cond_1
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@74
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@77
    move-result v0

    #@78
    .line 470
    const-string/jumbo v3, " "

    #@7b
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7e
    .line 471
    const-string/jumbo v3, "Hosts:"

    #@81
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84
    .line 472
    const/4 v2, 0x0

    #@85
    :goto_2
    if-ge v2, v0, :cond_2

    #@87
    .line 473
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@89
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8c
    move-result-object v3

    #@8d
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@8f
    invoke-static {v3, v2, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    #@92
    .line 472
    add-int/lit8 v2, v2, 0x1

    #@94
    goto :goto_2

    #@95
    .line 477
    :cond_2
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@97
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@9a
    move-result v0

    #@9b
    .line 478
    const-string/jumbo v3, " "

    #@9e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a1
    .line 479
    const-string/jumbo v3, "Grants:"

    #@a4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7
    .line 480
    const/4 v2, 0x0

    #@a8
    :goto_3
    if-ge v2, v0, :cond_3

    #@aa
    .line 481
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@ac
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@af
    move-result-object v1

    #@b0
    check-cast v1, Landroid/util/Pair;

    #@b2
    .line 482
    .local v1, "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {v1, v2, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b5
    .line 480
    add-int/lit8 v2, v2, 0x1

    #@b7
    goto :goto_3

    #@b8
    .end local v1    # "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_3
    monitor-exit v4

    #@b9
    .line 449
    return-void

    #@ba
    .line 455
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    #@bb
    monitor-exit v4

    #@bc
    throw v3
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 845
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v2

    #@4
    .line 847
    .local v2, "userId":I
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 848
    const-string/jumbo v3, "AppWidgetServiceImpl"

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "getAppWidgetIds() "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 852
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@2b
    .line 854
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2d
    monitor-enter v4

    #@2e
    .line 855
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@31
    .line 859
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@36
    move-result v3

    #@37
    const/4 v5, 0x0

    #@38
    invoke-direct {v1, v3, p1, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V

    #@3b
    .line 860
    .local v1, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3e
    move-result-object v0

    #@3f
    .line 862
    .local v0, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v0, :cond_1

    #@41
    .line 863
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@43
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    move-result-object v3

    #@47
    monitor-exit v4

    #@48
    return-object v3

    #@49
    .line 866
    :cond_1
    const/4 v3, 0x0

    #@4a
    :try_start_1
    new-array v3, v3, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    monitor-exit v4

    #@4d
    return-object v3

    #@4e
    .line 854
    .end local v0    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v1    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :catchall_0
    move-exception v3

    #@4f
    monitor-exit v4

    #@50
    throw v3
.end method

.method public getAppWidgetIdsForHost(Ljava/lang/String;I)[I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    #@0
    .prologue
    .line 872
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v2

    #@4
    .line 874
    .local v2, "userId":I
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 875
    const-string/jumbo v3, "AppWidgetServiceImpl"

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "getAppWidgetIdsForHost() "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 879
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 881
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v4

    #@2a
    .line 882
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 886
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@2f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@32
    move-result v3

    #@33
    invoke-direct {v1, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@36
    .line 887
    .local v1, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@39
    move-result-object v0

    #@3a
    .line 889
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_1

    #@3c
    .line 890
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@3e
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    move-result-object v3

    #@42
    monitor-exit v4

    #@43
    return-object v3

    #@44
    .line 893
    :cond_1
    const/4 v3, 0x0

    #@45
    :try_start_1
    new-array v3, v3, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    monitor-exit v4

    #@48
    return-object v3

    #@49
    .line 881
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v1    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :catchall_0
    move-exception v3

    #@4a
    monitor-exit v4

    #@4b
    throw v3
.end method

.method public getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1084
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v0

    #@5
    .line 1086
    .local v0, "userId":I
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1087
    const-string/jumbo v2, "AppWidgetServiceImpl"

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "getAppWidgetInfo() "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 1091
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@25
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@28
    .line 1093
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2a
    monitor-enter v3

    #@2b
    .line 1094
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2e
    .line 1099
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v2

    #@32
    .line 1098
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@35
    move-result-object v1

    #@36
    .line 1101
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v1, :cond_1

    #@38
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3a
    if-eqz v2, :cond_1

    #@3c
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3e
    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    if-eqz v2, :cond_2

    #@42
    :cond_1
    monitor-exit v3

    #@43
    .line 1105
    return-object v5

    #@44
    .line 1102
    :cond_2
    :try_start_1
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@46
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@48
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    move-result-object v2

    #@4c
    monitor-exit v3

    #@4d
    return-object v2

    #@4e
    .line 1093
    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v2

    #@4f
    monitor-exit v3

    #@50
    throw v2
.end method

.method public getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    #@0
    .prologue
    .line 1171
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 1173
    .local v0, "userId":I
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1174
    const-string/jumbo v2, "AppWidgetServiceImpl"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "getAppWidgetOptions() "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1178
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 1180
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v3

    #@2a
    .line 1181
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 1186
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@30
    move-result v2

    #@31
    .line 1185
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@34
    move-result-object v1

    #@35
    .line 1188
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v1, :cond_1

    #@37
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@39
    if-eqz v2, :cond_1

    #@3b
    .line 1189
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@3d
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result-object v2

    #@41
    monitor-exit v3

    #@42
    return-object v2

    #@43
    .line 1192
    :cond_1
    :try_start_1
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    monitor-exit v3

    #@46
    return-object v2

    #@47
    .line 1180
    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v2

    #@48
    monitor-exit v3

    #@49
    throw v2
.end method

.method public getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1111
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v0

    #@5
    .line 1113
    .local v0, "userId":I
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1114
    const-string/jumbo v2, "AppWidgetServiceImpl"

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "getAppWidgetViews() "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 1118
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@25
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@28
    .line 1120
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2a
    monitor-enter v3

    #@2b
    .line 1121
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2e
    .line 1126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v2

    #@32
    .line 1125
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@35
    move-result-object v1

    #@36
    .line 1128
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v1, :cond_1

    #@38
    .line 1129
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@3a
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    move-result-object v2

    #@3e
    monitor-exit v3

    #@3f
    return-object v2

    #@40
    :cond_1
    monitor-exit v3

    #@41
    .line 1132
    return-object v5

    #@42
    .line 1120
    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v2

    #@43
    monitor-exit v3

    #@44
    throw v2
.end method

.method public getInstalledProvidersForProfile(II)Landroid/content/pm/ParceledListSlice;
    .locals 10
    .param p1, "categoryFilter"    # I
    .param p2, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1287
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v6

    #@4
    .line 1289
    .local v6, "userId":I
    sget-boolean v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 1290
    const-string/jumbo v7, "AppWidgetServiceImpl"

    #@b
    new-instance v8, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v9, "getInstalledProvidersForProfiles() "

    #@13
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v8

    #@17
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v8

    #@1b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v8

    #@1f
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1294
    :cond_0
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v7, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    #@27
    move-result v7

    #@28
    if-nez v7, :cond_1

    #@2a
    .line 1295
    const/4 v7, 0x0

    #@2b
    return-object v7

    #@2c
    .line 1298
    :cond_1
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2e
    monitor-enter v8

    #@2f
    .line 1299
    :try_start_0
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@32
    .line 1301
    new-instance v5, Ljava/util/ArrayList;

    #@34
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@37
    .line 1303
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v3

    #@3d
    .line 1304
    .local v3, "providerCount":I
    const/4 v0, 0x0

    #@3e
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_4

    #@40
    .line 1305
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v2

    #@46
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@48
    .line 1306
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@4a
    .line 1309
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-boolean v7, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@4c
    if-nez v7, :cond_2

    #@4e
    iget v7, v1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    #@50
    and-int/2addr v7, p1

    #@51
    if-nez v7, :cond_3

    #@53
    .line 1304
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@55
    goto :goto_0

    #@56
    .line 1314
    :cond_3
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    #@5d
    move-result v4

    #@5e
    .line 1315
    .local v4, "providerProfileId":I
    if-ne v4, p2, :cond_2

    #@60
    .line 1316
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@62
    .line 1317
    iget-object v9, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@64
    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@66
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    .line 1316
    invoke-virtual {v7, v9, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    #@6d
    move-result v7

    #@6e
    .line 1315
    if-eqz v7, :cond_2

    #@70
    .line 1318
    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@77
    goto :goto_1

    #@78
    .line 1298
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v3    # "providerCount":I
    .end local v4    # "providerProfileId":I
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catchall_0
    move-exception v7

    #@79
    monitor-exit v8

    #@7a
    throw v7

    #@7b
    .line 1322
    .restart local v0    # "i":I
    .restart local v3    # "providerCount":I
    .restart local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_4
    :try_start_1
    new-instance v7, Landroid/content/pm/ParceledListSlice;

    #@7d
    invoke-direct {v7, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@80
    monitor-exit v8

    #@81
    return-object v7
.end method

.method public getWidgetParticipants(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetParticipants(I)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWidgetState(Ljava/lang/String;I)[B
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2060
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetState(Ljava/lang/String;I)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "grantId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 629
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 630
    const-string/jumbo v2, "AppWidgetServiceImpl"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "hasBindAppWidgetPermission() "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@17
    move-result v4

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 634
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@25
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    #@28
    .line 636
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2a
    monitor-enter v3

    #@2b
    .line 638
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2e
    .line 640
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    move-result v1

    #@32
    .line 641
    .local v1, "packageUid":I
    if-gez v1, :cond_1

    #@34
    monitor-exit v3

    #@35
    .line 642
    return v5

    #@36
    .line 645
    :cond_1
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v2

    #@3a
    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@3d
    move-result-object v0

    #@3e
    .line 646
    .local v0, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@40
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    move-result v2

    #@44
    monitor-exit v3

    #@45
    return v2

    #@46
    .line 636
    .end local v0    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "packageUid":I
    :catchall_0
    move-exception v2

    #@47
    monitor-exit v3

    #@48
    throw v2
.end method

.method public isBoundWidgetPackage(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2426
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    const/16 v2, 0x3e8

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 2427
    new-instance v1, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v2, "Only the system process can call this"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 2429
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@13
    monitor-enter v2

    #@14
    .line 2430
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/util/ArraySet;

    #@1c
    .line 2431
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    #@1e
    .line 2432
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v1

    #@22
    monitor-exit v2

    #@23
    return v1

    #@24
    :cond_1
    monitor-exit v2

    #@25
    .line 2435
    const/4 v1, 0x0

    #@26
    return v1

    #@27
    .line 2429
    .end local v0    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1
.end method

.method public notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "viewId"    # I

    #@0
    .prologue
    .line 1219
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v3

    #@4
    .line 1221
    .local v3, "userId":I
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 1222
    const-string/jumbo v5, "AppWidgetServiceImpl"

    #@b
    new-instance v6, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v7, "notifyAppWidgetViewDataChanged() "

    #@13
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1226
    :cond_0
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 1228
    if-eqz p2, :cond_1

    #@29
    array-length v5, p2

    #@2a
    if-nez v5, :cond_2

    #@2c
    .line 1229
    :cond_1
    return-void

    #@2d
    .line 1232
    :cond_2
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2f
    monitor-enter v6

    #@30
    .line 1233
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@33
    .line 1235
    array-length v0, p2

    #@34
    .line 1236
    .local v0, "N":I
    const/4 v2, 0x0

    #@35
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@37
    .line 1237
    aget v1, p2, v2

    #@39
    .line 1242
    .local v1, "appWidgetId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3c
    move-result v5

    #@3d
    .line 1241
    invoke-direct {p0, v1, v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@40
    move-result-object v4

    #@41
    .line 1244
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v4, :cond_3

    #@43
    .line 1245
    invoke-direct {p0, v4, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 1236
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@48
    goto :goto_0

    #@49
    .end local v1    # "appWidgetId":I
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_4
    monitor-exit v6

    #@4a
    .line 1218
    return-void

    #@4b
    .line 1232
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v5

    #@4c
    monitor-exit v6

    #@4d
    throw v5
.end method

.method public onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V
    .locals 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3019
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@2
    invoke-virtual {v9, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    #@5
    move-result v3

    #@6
    .line 3023
    .local v3, "parentId":I
    if-eq v3, p1, :cond_5

    #@8
    .line 3024
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v10

    #@b
    .line 3025
    const/4 v7, 0x0

    #@c
    .line 3027
    .local v7, "providersChanged":Z
    :try_start_0
    new-instance v4, Landroid/util/ArraySet;

    #@e
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    #@11
    .line 3028
    .local v4, "previousPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v6

    #@17
    .line 3029
    .local v6, "providerCount":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    #@1a
    .line 3030
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@22
    .line 3031
    .local v5, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@25
    move-result v9

    #@26
    if-ne v9, p1, :cond_0

    #@28
    .line 3032
    iget-object v9, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@2a
    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@2c
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2f
    move-result-object v9

    #@30
    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@33
    .line 3029
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 3036
    .end local v5    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@39
    move-result v1

    #@3a
    .line 3037
    .local v1, "packageCount":I
    const/4 v0, 0x0

    #@3b
    .end local v7    # "providersChanged":Z
    :goto_1
    if-ge v0, v1, :cond_2

    #@3d
    .line 3038
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Ljava/lang/String;

    #@43
    .line 3039
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@46
    .line 3041
    const/4 v9, 0x0

    #@47
    .line 3040
    invoke-direct {p0, v2, p1, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    #@4a
    move-result v9

    #@4b
    or-int/2addr v7, v9

    #@4c
    .line 3037
    .local v7, "providersChanged":Z
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 3045
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v7    # "providersChanged":Z
    :cond_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    #@52
    move-result v8

    #@53
    .line 3046
    .local v8, "removedCount":I
    const/4 v0, 0x0

    #@54
    :goto_2
    if-ge v0, v8, :cond_3

    #@56
    .line 3048
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@59
    move-result-object v9

    #@5a
    check-cast v9, Ljava/lang/String;

    #@5c
    .line 3047
    invoke-direct {p0, v9, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;I)Z

    #@5f
    move-result v9

    #@60
    or-int/2addr v7, v9

    #@61
    .line 3046
    .restart local v7    # "providersChanged":Z
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_2

    #@64
    .line 3051
    .end local v7    # "providersChanged":Z
    :cond_3
    if-eqz v7, :cond_4

    #@66
    .line 3052
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@69
    .line 3053
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6c
    :cond_4
    monitor-exit v10

    #@6d
    .line 3018
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    .end local v4    # "previousPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "providerCount":I
    .end local v8    # "removedCount":I
    :cond_5
    return-void

    #@6e
    .line 3024
    :catchall_0
    move-exception v9

    #@6f
    monitor-exit v10

    #@70
    throw v9
.end method

.method onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 2367
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2
    if-nez v2, :cond_0

    #@4
    return-void

    #@5
    .line 2369
    :cond_0
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@7
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@a
    move-result v1

    #@b
    .line 2370
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/util/ArraySet;

    #@13
    .line 2371
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    #@15
    .line 2372
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    #@17
    new-instance v0, Landroid/util/ArraySet;

    #@19
    .end local v0    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@1c
    .restart local v0    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1f
    .line 2374
    :cond_1
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@21
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@23
    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@25
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@2c
    .line 2366
    return-void
.end method

.method public partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 1209
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1210
    const-string/jumbo v0, "AppWidgetServiceImpl"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "partiallyUpdateAppWidgetIds() "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@16
    move-result v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1213
    :cond_0
    const/4 v0, 0x1

    #@23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    #@26
    .line 1208
    return-void
.end method

.method removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 1
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 2383
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 2385
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@8
    .line 2382
    return-void
.end method

.method public restoreFinished(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreFinished(I)V

    #@5
    .line 2074
    return-void
.end method

.method public restoreStarting(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreStarting(I)V

    #@5
    .line 2064
    return-void
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restoredState"    # [B
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreWidgetState(Ljava/lang/String;[BI)V

    #@5
    .line 2069
    return-void
.end method

.method public sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 1919
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1920
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@a
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@c
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@11
    .line 1921
    const-string/jumbo v1, "appWidgetId"

    #@14
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@19
    .line 1922
    const-string/jumbo v1, "appWidgetOptions"

    #@1c
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@21
    .line 1923
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@23
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@25
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@28
    move-result-object v1

    #@29
    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@2c
    .line 1918
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "grantId"    # I
    .param p3, "grantPermission"    # Z

    #@0
    .prologue
    .line 653
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 654
    const-string/jumbo v2, "AppWidgetServiceImpl"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "setBindAppWidgetPermission() "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@16
    move-result v4

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 658
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    #@27
    .line 660
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v3

    #@2a
    .line 662
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 664
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result v1

    #@31
    .line 665
    .local v1, "packageUid":I
    if-gez v1, :cond_1

    #@33
    monitor-exit v3

    #@34
    .line 666
    return-void

    #@35
    .line 669
    :cond_1
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v2

    #@39
    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@3c
    move-result-object v0

    #@3d
    .line 670
    .local v0, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p3, :cond_2

    #@3f
    .line 671
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@41
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@44
    .line 676
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    monitor-exit v3

    #@48
    .line 652
    return-void

    #@49
    .line 673
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@4b
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 660
    .end local v0    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "packageUid":I
    :catchall_0
    move-exception v2

    #@50
    monitor-exit v3

    #@51
    throw v2
.end method

.method public setSafeMode(Z)V
    .locals 0
    .param p1, "safeMode"    # Z

    #@0
    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    #@2
    .line 266
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    .locals 11
    .param p1, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "hostId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)[I"
        }
    .end annotation

    #@0
    .prologue
    .line 490
    .local p4, "updatedViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v6

    #@4
    .line 492
    .local v6, "userId":I
    sget-boolean v8, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 493
    const-string/jumbo v8, "AppWidgetServiceImpl"

    #@b
    new-instance v9, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v10, "startListening() "

    #@13
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v9

    #@17
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v9

    #@1b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v9

    #@1f
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 497
    :cond_0
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v8, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 499
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v9

    #@2a
    .line 500
    :try_start_0
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 504
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@2f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@32
    move-result v8

    #@33
    invoke-direct {v3, v8, p3, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@36
    .line 505
    .local v3, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@39
    move-result-object v1

    #@3a
    .line 507
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput-object p1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@3c
    .line 509
    invoke-interface {p4}, Ljava/util/List;->clear()V

    #@3f
    .line 511
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@41
    .line 512
    .local v4, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@44
    move-result v0

    #@45
    .line 513
    .local v0, "N":I
    new-array v5, v0, [I

    #@47
    .line 514
    .local v5, "updatedIds":[I
    const/4 v2, 0x0

    #@48
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@4a
    .line 515
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v7

    #@4e
    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@50
    .line 516
    .local v7, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@52
    aput v8, v5, v2

    #@54
    .line 517
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@56
    invoke-static {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    #@59
    move-result-object v8

    #@5a
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    .line 514
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_0

    #@60
    .end local v7    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1
    monitor-exit v9

    #@61
    .line 520
    return-object v5

    #@62
    .line 499
    .end local v0    # "N":I
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v2    # "i":I
    .end local v3    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v4    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    .end local v5    # "updatedIds":[I
    :catchall_0
    move-exception v8

    #@63
    monitor-exit v9

    #@64
    throw v8
.end method

.method public stopListening(Ljava/lang/String;I)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    #@0
    .prologue
    .line 526
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v2

    #@4
    .line 528
    .local v2, "userId":I
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 529
    const-string/jumbo v3, "AppWidgetServiceImpl"

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "stopListening() "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 533
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 535
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v4

    #@2a
    .line 536
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 540
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@2f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@32
    move-result v3

    #@33
    invoke-direct {v1, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@36
    .line 541
    .local v1, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@39
    move-result-object v0

    #@3a
    .line 543
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_1

    #@3c
    .line 544
    const/4 v3, 0x0

    #@3d
    iput-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@3f
    .line 545
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    :cond_1
    monitor-exit v4

    #@43
    .line 525
    return-void

    #@44
    .line 535
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v1    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :catchall_0
    move-exception v3

    #@45
    monitor-exit v4

    #@46
    throw v3
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 976
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v2

    #@4
    .line 978
    .local v2, "userId":I
    sget-boolean v4, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 979
    const-string/jumbo v4, "AppWidgetServiceImpl"

    #@b
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "unbindRemoteViewsService() "

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 983
    :cond_0
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 985
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v5

    #@2a
    .line 986
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 990
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v4

    #@31
    .line 991
    new-instance v6, Landroid/content/Intent$FilterComparison;

    #@33
    invoke-direct {v6, p3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@36
    .line 990
    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@39
    move-result-object v1

    #@3a
    .line 992
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@3c
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_2

    #@42
    .line 1000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@45
    move-result v4

    #@46
    .line 999
    invoke-direct {p0, p2, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@49
    move-result-object v3

    #@4a
    .line 1002
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v3, :cond_1

    #@4c
    .line 1003
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4e
    new-instance v6, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v7, "Bad widget id "

    #@56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v6

    #@62
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    .line 985
    .end local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v4

    #@67
    monitor-exit v5

    #@68
    throw v4

    #@69
    .line 1007
    .restart local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .restart local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@6b
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    move-result-object v0

    #@6f
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;

    #@71
    .line 1008
    .local v0, "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    #@74
    .line 1009
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@76
    invoke-virtual {v4, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@79
    .line 1010
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@7b
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7e
    .end local v0    # "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_2
    monitor-exit v5

    #@7f
    .line 975
    return-void
.end method

.method public updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 1199
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1200
    const-string/jumbo v0, "AppWidgetServiceImpl"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "updateAppWidgetIds() "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@16
    move-result v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1203
    :cond_0
    const/4 v0, 0x0

    #@23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    #@26
    .line 1198
    return-void
.end method

.method public updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1138
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 1140
    .local v0, "userId":I
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1141
    const-string/jumbo v2, "AppWidgetServiceImpl"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "updateAppWidgetOptions() "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1145
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 1147
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v3

    #@2a
    .line 1148
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 1153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@30
    move-result v2

    #@31
    .line 1152
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v1

    #@35
    .line 1155
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v1, :cond_1

    #@37
    monitor-exit v3

    #@38
    .line 1156
    return-void

    #@39
    .line 1160
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@3b
    invoke-virtual {v2, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@3e
    .line 1163
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@41
    .line 1165
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    monitor-exit v3

    #@45
    .line 1137
    return-void

    #@46
    .line 1147
    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v2

    #@47
    monitor-exit v3

    #@48
    throw v2
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 11
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 1253
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v5

    #@4
    .line 1255
    .local v5, "userId":I
    sget-boolean v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 1256
    const-string/jumbo v7, "AppWidgetServiceImpl"

    #@b
    new-instance v8, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v9, "updateAppWidgetProvider() "

    #@13
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v8

    #@17
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v8

    #@1b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v8

    #@1f
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1260
    :cond_0
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@27
    move-result-object v8

    #@28
    invoke-virtual {v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@2b
    .line 1262
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2d
    monitor-enter v8

    #@2e
    .line 1263
    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@31
    .line 1267
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@36
    move-result v7

    #@37
    const/4 v9, 0x0

    #@38
    invoke-direct {v4, v7, p1, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V

    #@3b
    .line 1268
    .local v4, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3e
    move-result-object v3

    #@3f
    .line 1270
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v3, :cond_1

    #@41
    .line 1271
    const-string/jumbo v7, "AppWidgetServiceImpl"

    #@44
    new-instance v9, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v10, "Provider doesn\'t exist "

    #@4c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v9

    #@50
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v9

    #@58
    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5b
    monitor-exit v8

    #@5c
    .line 1272
    return-void

    #@5d
    .line 1275
    :cond_1
    :try_start_1
    iget-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@5f
    .line 1276
    .local v2, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@62
    move-result v0

    #@63
    .line 1277
    .local v0, "N":I
    const/4 v1, 0x0

    #@64
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@66
    .line 1278
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v6

    #@6a
    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@6c
    .line 1279
    .local v6, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/4 v7, 0x0

    #@6d
    invoke-direct {p0, v6, p2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@70
    .line 1277
    add-int/lit8 v1, v1, 0x1

    #@72
    goto :goto_0

    #@73
    .end local v6    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_2
    monitor-exit v8

    #@74
    .line 1252
    return-void

    #@75
    .line 1262
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v4    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :catchall_0
    move-exception v7

    #@76
    monitor-exit v8

    #@77
    throw v7
.end method
