.class Lcom/android/server/appwidget/AppWidgetServiceImpl;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Lcom/android/server/WidgetBackupProvider;
.implements Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$1;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static DEBUG:Z = false

.field private static final ID_PROVIDER_CHANGED:I = 0x1

.field private static final ID_VIEWS_UPDATE:I = 0x0

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

.field private final mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

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

.field private final mIconUtilities:Lcom/android/server/policy/IconUtilities;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

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

.method static synthetic -get10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
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

.method static synthetic -get3(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "rv"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
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

.method static synthetic -wrap10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onConfigurationChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onPackageBroadcastReceived(Landroid/content/Intent;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p1, "groupId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveStateLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 0
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 0
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 0
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 0
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I
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

.method static synthetic -wrap20(Lcom/android/server/appwidget/AppWidgetServiceImpl;[Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "packagesArray"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "profileId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateWidgetPackageSuspensionMaskedState([Ljava/lang/String;ZI)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I
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

.method static synthetic -wrap4(Lcom/android/server/appwidget/AppWidgetServiceImpl;IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "enforceUserUnlockingOrUnlocked"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
    .locals 1
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "viewId"    # I
    .param p5, "requestTime"    # J

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V
    .locals 1
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "requestTime"    # J

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V
    .locals 1
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "views"    # Landroid/widget/RemoteViews;
    .param p5, "requestTime"    # J

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 133
    sput-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@3
    .line 141
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    :goto_0
    sput v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    #@9
    .line 129
    return-void

    #@a
    .line 141
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
    .line 229
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    #@4
    .line 154
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    #@6
    invoke-direct {v0, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    #@9
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@b
    .line 185
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@12
    .line 189
    new-instance v0, Ljava/util/HashMap;

    #@14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@19
    .line 191
    new-instance v0, Ljava/lang/Object;

    #@1b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@20
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    #@22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@25
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@27
    .line 194
    new-instance v0, Ljava/util/ArrayList;

    #@29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2c
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@2e
    .line 195
    new-instance v0, Ljava/util/ArrayList;

    #@30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@33
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@35
    .line 198
    new-instance v0, Landroid/util/ArraySet;

    #@37
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@3a
    .line 197
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@3c
    .line 200
    new-instance v0, Landroid/util/SparseIntArray;

    #@3e
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@41
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    #@43
    .line 202
    new-instance v0, Landroid/util/SparseArray;

    #@45
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@48
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    #@4a
    .line 222
    new-instance v0, Landroid/util/SparseIntArray;

    #@4c
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@4f
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@51
    .line 230
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@53
    .line 231
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@59
    .line 232
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
    .line 233
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
    .line 234
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
    .line 235
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@82
    const-string/jumbo v1, "keyguard"

    #@85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@88
    move-result-object v0

    #@89
    check-cast v0, Landroid/app/KeyguardManager;

    #@8b
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@8d
    .line 236
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    #@8f
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@92
    move-result-object v0

    #@93
    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    #@95
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    #@97
    .line 237
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@9a
    move-result-object v0

    #@9b
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    #@9d
    .line 238
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    #@9f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@a1
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@a4
    move-result-object v1

    #@a5
    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V

    #@a8
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    #@aa
    .line 239
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    #@ac
    invoke-direct {v0, p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;)V

    #@af
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    #@b1
    .line 240
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@b3
    invoke-direct {v0, p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;)V

    #@b6
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@b8
    .line 241
    new-instance v0, Lcom/android/server/policy/IconUtilities;

    #@ba
    invoke-direct {v0, p1}, Lcom/android/server/policy/IconUtilities;-><init>(Landroid/content/Context;)V

    #@bd
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    #@bf
    .line 243
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->computeMaximumWidgetBitmapMemory()V

    #@c2
    .line 244
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerBroadcastReceiver()V

    #@c5
    .line 245
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerOnCrossProfileProvidersChangedListener()V

    #@c8
    .line 229
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
    .line 2109
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
    .line 2110
    return v7

    #@e
    .line 2113
    :cond_0
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@10
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_1

    #@16
    .line 2114
    return v7

    #@17
    .line 2117
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    #@19
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1b
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1d
    .line 2118
    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1f
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@21
    .line 2117
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 2119
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
    .line 2121
    .local v3, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@32
    move-result-object v2

    #@33
    .line 2122
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v2, :cond_6

    #@35
    .line 2126
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@38
    move-result-object v1

    #@39
    .line 2130
    .local v1, "existing":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v1, :cond_2

    #@3b
    .line 2131
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@3d
    const/4 v5, -0x1

    #@3e
    invoke-direct {v4, v5, v0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V

    #@41
    .line 2132
    .local v4, "restoredProviderId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@44
    move-result-object v1

    #@45
    .line 2135
    .end local v4    # "restoredProviderId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :cond_2
    if-eqz v1, :cond_5

    #@47
    .line 2136
    iget-boolean v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@49
    if-eqz v5, :cond_3

    #@4b
    iget-boolean v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    #@4d
    if-eqz v5, :cond_4

    #@4f
    .line 2148
    :cond_3
    :goto_0
    const/4 v5, 0x1

    #@50
    return v5

    #@51
    .line 2138
    :cond_4
    iput-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@53
    .line 2139
    iput-boolean v7, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@55
    .line 2140
    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@57
    iput-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@59
    .line 2141
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@5b
    if-eqz v5, :cond_3

    #@5d
    .line 2142
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
    .line 2146
    :cond_5
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7d
    goto :goto_0

    #@7e
    .line 2151
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
    .line 2619
    .local p1, "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v2

    #@4
    .line 2620
    .local v2, "loadedWidgetCount":I
    add-int/lit8 v0, v2, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@8
    .line 2621
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    #@e
    .line 2622
    .local v1, "loadedWidget":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@10
    .line 2624
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->providerTag:I

    #@12
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@15
    move-result-object v4

    #@16
    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@18
    .line 2625
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 2620
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2631
    :cond_1
    iget v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->hostTag:I

    #@21
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@24
    move-result-object v4

    #@25
    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@27
    .line 2632
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 2637
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2d
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 2638
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@34
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    .line 2639
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@3c
    goto :goto_1

    #@3d
    .line 2618
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
    .line 3323
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3325
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@6
    .line 3326
    const v3, 0x2000001

    #@9
    .line 3325
    invoke-virtual {v2, p1, p2, v3, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 3329
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 3322
    return-void

    #@10
    .line 3328
    :catchall_0
    move-exception v2

    #@11
    .line 3329
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 3328
    throw v2
.end method

.method private cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 6
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1695
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 1696
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
    .line 1698
    :cond_0
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 1699
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@25
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    #@27
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@2a
    .line 1700
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2d
    move-result-wide v0

    #@2e
    .line 1702
    .local v0, "token":J
    :try_start_0
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    #@30
    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 1704
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 1706
    iput-object v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    #@38
    .line 1694
    .end local v0    # "token":J
    :cond_1
    return-void

    #@39
    .line 1703
    .restart local v0    # "token":J
    :catchall_0
    move-exception v2

    #@3a
    .line 1704
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    .line 1703
    throw v2
.end method

.method private clearProvidersAndHostsTagsLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 2804
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    .line 2805
    .local v4, "providerCount":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@a
    .line 2806
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@12
    .line 2807
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    #@14
    .line 2805
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 2810
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_0
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v1

    #@1d
    .line 2811
    .local v1, "hostCount":I
    const/4 v2, 0x0

    #@1e
    :goto_1
    if-ge v2, v1, :cond_1

    #@20
    .line 2812
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@28
    .line 2813
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    #@2a
    .line 2811
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 2803
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1
    return-void
.end method

.method private static cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .param p0, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    .line 2025
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    if-eqz p0, :cond_0

    #@8
    .line 2026
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 2028
    :cond_0
    return-object p0
.end method

.method private static cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2035
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    if-eqz p0, :cond_0

    #@8
    .line 2036
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/os/Bundle;

    #@e
    return-object v0

    #@f
    .line 2038
    :cond_0
    return-object p0
.end method

.method private static cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "rv"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 2018
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    if-eqz p0, :cond_0

    #@8
    .line 2019
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 2021
    :cond_0
    return-object p0
.end method

.method private computeMaximumWidgetBitmapMemory()V
    .locals 5

    #@0
    .prologue
    .line 249
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
    .line 250
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@e
    move-result-object v0

    #@f
    .line 251
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    #@11
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@14
    .line 252
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@17
    .line 255
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
    .line 248
    return-void
.end method

.method private createMaskedWidgetBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "providerPackage"    # Ljava/lang/String;
    .param p2, "providerUserId"    # I

    #@0
    .prologue
    .line 535
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 539
    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@6
    .line 540
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@9
    move-result-object v7

    #@a
    .line 539
    const/4 v8, 0x0

    #@b
    invoke-virtual {v6, p1, v8, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    #@e
    move-result-object v5

    #@f
    .line 541
    .local v5, "userContext":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@12
    move-result-object v4

    #@13
    .line 542
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    #@14
    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6, v4}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object v1

    #@1c
    .line 544
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    #@1e
    invoke-virtual {v6, v1}, Lcom/android/server/policy/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v6

    #@22
    .line 551
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 544
    return-object v6

    #@26
    .line 545
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "userContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    #@27
    .line 546
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string/jumbo v6, "AppWidgetServiceImpl"

    #@2a
    const-string/jumbo v7, "Fail to get application icon"

    #@2d
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 549
    const/4 v6, 0x0

    #@31
    .line 551
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 549
    return-object v6

    #@35
    .line 550
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v6

    #@36
    .line 551
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 550
    throw v6
.end method

.method private createMaskedWidgetRemoteViews(Landroid/graphics/Bitmap;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "showBadge"    # Z
    .param p3, "onClickIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 557
    new-instance v0, Landroid/widget/RemoteViews;

    #@2
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 558
    const v2, 0x109010c

    #@b
    .line 557
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    #@e
    .line 559
    .local v0, "views":Landroid/widget/RemoteViews;
    if-eqz p1, :cond_0

    #@10
    .line 560
    const v1, 0x1020455

    #@13
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    #@16
    .line 562
    :cond_0
    if-nez p2, :cond_1

    #@18
    .line 563
    const v1, 0x1020456

    #@1b
    const/4 v2, 0x4

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@1f
    .line 565
    :cond_1
    if-eqz p3, :cond_2

    #@21
    .line 566
    const v1, 0x1020454

    #@24
    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    #@27
    .line 568
    :cond_2
    return-object v0
.end method

.method private decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 4
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 1780
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
    .line 1782
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 1783
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/util/Pair;

    #@16
    .line 1784
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@18
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/HashSet;

    #@1e
    .line 1785
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
    .line 1788
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_0

    #@30
    .line 1789
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
    .line 1790
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@3e
    goto :goto_0

    #@3f
    .line 1779
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
    .line 1668
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@3
    .line 1670
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@5
    .line 1671
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a
    .line 1672
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@d
    .line 1674
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@10
    .line 1676
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@12
    .line 1677
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v1, :cond_0

    #@14
    .line 1678
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@19
    .line 1679
    iget-boolean v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@1b
    if-nez v2, :cond_0

    #@1d
    .line 1681
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@20
    .line 1683
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    .line 1685
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@2b
    .line 1688
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@2e
    .line 1666
    :cond_0
    return-void
.end method

.method private deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@0
    .prologue
    .line 1655
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1656
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@a
    .line 1657
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@12
    .line 1658
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@15
    .line 1656
    add-int/lit8 v1, v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1660
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1d
    .line 1663
    const/4 v3, 0x0

    #@1e
    iput-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@20
    .line 1654
    return-void
.end method

.method private deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@0
    .prologue
    .line 2175
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    #@4
    .line 2176
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@9
    .line 2179
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@c
    .line 2174
    return-void
.end method

.method private deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V
    .locals 6
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 2156
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    .line 2157
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@a
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@c
    .line 2158
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@14
    .line 2159
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/4 v3, -0x1

    #@15
    if-eq p2, v3, :cond_0

    #@17
    .line 2160
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@19
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@1c
    move-result v3

    #@1d
    if-ne p2, v3, :cond_1

    #@1f
    .line 2161
    :cond_0
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@24
    .line 2163
    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    #@27
    .line 2165
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@29
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@2e
    .line 2166
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@31
    .line 2167
    iput-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@33
    .line 2168
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@35
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@38
    .line 2169
    iput-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@3a
    .line 2157
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@3c
    goto :goto_0

    #@3d
    .line 2155
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_2
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 1734
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V

    #@5
    .line 1754
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v2

    #@9
    .line 1756
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@b
    .line 1758
    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@d
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@f
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@12
    move-result-object v4

    #@13
    .line 1757
    const v5, 0x2000001

    #@16
    .line 1756
    invoke-virtual {v1, p1, v0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1760
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 1733
    return-void

    #@1d
    .line 1759
    :catchall_0
    move-exception v1

    #@1e
    .line 1760
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 1759
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
    .line 2289
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
    .line 2290
    const-string/jumbo v0, " user="

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@19
    .line 2291
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
    .line 2288
    return-void
.end method

.method private static dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V
    .locals 1
    .param p0, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 2281
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
    .line 2282
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@14
    .line 2283
    const-string/jumbo v0, "    callbacks="

    #@17
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1f
    .line 2284
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
    .line 2285
    const-string/jumbo v0, " zombie="

    #@31
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@39
    .line 2280
    return-void
.end method

.method private static dumpProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V
    .locals 2
    .param p0, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@2
    .line 2259
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
    .line 2260
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@13
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@16
    .line 2261
    const-string/jumbo v1, "    min=("

    #@19
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@1e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@21
    .line 2262
    const-string/jumbo v1, "x"

    #@24
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@29
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2c
    .line 2263
    const-string/jumbo v1, ")   minResize=("

    #@2f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@34
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@37
    .line 2264
    const-string/jumbo v1, "x"

    #@3a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@3f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@42
    .line 2265
    const-string/jumbo v1, ") updatePeriodMillis="

    #@45
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 2266
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    #@4a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@4d
    .line 2267
    const-string/jumbo v1, " resizeMode="

    #@50
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    .line 2268
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    #@55
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@58
    .line 2269
    const-string/jumbo v1, " widgetCategory="

    #@5b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    .line 2270
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    #@60
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@63
    .line 2271
    const-string/jumbo v1, " autoAdvanceViewId="

    #@66
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    .line 2272
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    #@6b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@6e
    .line 2273
    const-string/jumbo v1, " initialLayout=#"

    #@71
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    .line 2274
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    #@76
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    .line 2275
    const-string/jumbo v1, " initialKeyguardLayout=#"

    #@80
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@83
    .line 2276
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    #@85
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8c
    .line 2277
    const-string/jumbo v1, " zombie="

    #@8f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    iget-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@94
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@97
    .line 2257
    return-void
.end method

.method private static dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V
    .locals 1
    .param p0, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 2295
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
    .line 2296
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@14
    .line 2297
    const-string/jumbo v0, "    host="

    #@17
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    .line 2298
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@1c
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@1e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@21
    .line 2299
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 2300
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
    .line 2302
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@34
    if-eqz v0, :cond_1

    #@36
    .line 2303
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
    .line 2305
    :cond_1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@45
    if-eqz v0, :cond_2

    #@47
    .line 2306
    const-string/jumbo v0, "    views="

    #@4a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@4f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@52
    .line 2294
    :cond_2
    return-void
.end method

.method private ensureGroupStateLoadedLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 651
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    #@4
    .line 650
    return-void
.end method

.method private ensureGroupStateLoadedLocked(IZ)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "enforceUserUnlockingOrUnlocked"    # Z

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 655
    if-eqz p2, :cond_0

    #@3
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isUserRunningAndUnlocked(I)Z

    #@6
    move-result v7

    #@7
    if-eqz v7, :cond_1

    #@9
    .line 659
    :cond_0
    if-eqz p2, :cond_2

    #@b
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    #@e
    move-result v7

    #@f
    if-eqz v7, :cond_2

    #@11
    .line 660
    new-instance v7, Ljava/lang/IllegalStateException;

    #@13
    .line 661
    new-instance v8, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v9, "Profile "

    #@1b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    const-string/jumbo v9, " must have unlocked parent"

    #@26
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v8

    #@2a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v8

    #@2e
    .line 660
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v7

    #@32
    .line 656
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    #@34
    .line 657
    new-instance v8, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v9, "User "

    #@3c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    const-string/jumbo v9, " must be unlocked for widgets to be available"

    #@47
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    .line 656
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@52
    throw v7

    #@53
    .line 663
    :cond_2
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@55
    invoke-virtual {v7, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    #@58
    move-result-object v6

    #@59
    .line 668
    .local v6, "profileIds":[I
    const/4 v1, 0x0

    #@5a
    .line 669
    .local v1, "newMemberCount":I
    array-length v5, v6

    #@5b
    .line 670
    .local v5, "profileIdCount":I
    const/4 v0, 0x0

    #@5c
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_4

    #@5e
    .line 671
    aget v4, v6, v0

    #@60
    .line 672
    .local v4, "profileId":I
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    #@62
    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@65
    move-result v7

    #@66
    if-ltz v7, :cond_3

    #@68
    .line 673
    aput v8, v6, v0

    #@6a
    .line 670
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@6c
    goto :goto_0

    #@6d
    .line 675
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@6f
    goto :goto_1

    #@70
    .line 679
    .end local v4    # "profileId":I
    :cond_4
    if-gtz v1, :cond_5

    #@72
    .line 680
    return-void

    #@73
    .line 683
    :cond_5
    const/4 v2, 0x0

    #@74
    .line 684
    .local v2, "newMemberIndex":I
    new-array v3, v1, [I

    #@76
    .line 685
    .local v3, "newProfileIds":[I
    const/4 v0, 0x0

    #@77
    :goto_2
    if-ge v0, v5, :cond_7

    #@79
    .line 686
    aget v4, v6, v0

    #@7b
    .line 687
    .restart local v4    # "profileId":I
    if-eq v4, v8, :cond_6

    #@7d
    .line 688
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    #@7f
    invoke-virtual {v7, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@82
    .line 689
    aput v4, v3, v2

    #@84
    .line 690
    add-int/lit8 v2, v2, 0x1

    #@86
    .line 685
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@88
    goto :goto_2

    #@89
    .line 694
    .end local v4    # "profileId":I
    :cond_7
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearProvidersAndHostsTagsLocked()V

    #@8c
    .line 696
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupWidgetProvidersLocked([I)V

    #@8f
    .line 697
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupStateLocked([I)V

    #@92
    .line 654
    return-void
.end method

.method private findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .locals 5
    .param p1, "tag"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2658
    if-gez p1, :cond_0

    #@3
    .line 2659
    return-object v4

    #@4
    .line 2661
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    .line 2662
    .local v1, "hostCount":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@d
    .line 2663
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@15
    .line 2664
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    #@17
    if-ne v3, p1, :cond_1

    #@19
    .line 2665
    return-object v0

    #@1a
    .line 2662
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2668
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
    .line 2644
    if-gez p1, :cond_0

    #@3
    .line 2645
    return-object v4

    #@4
    .line 2647
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .line 2648
    .local v2, "providerCount":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@d
    .line 2649
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@15
    .line 2650
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    #@17
    if-ne v3, p1, :cond_1

    #@19
    .line 2651
    return-object v1

    #@1a
    .line 2648
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2654
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
    .line 3293
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4
    move-result-wide v0

    #@5
    .line 3296
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
    .line 3297
    const/4 v6, 0x0

    #@f
    .line 3296
    invoke-interface {v4, v5, v6, p3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 3307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 3298
    return-object p1

    #@16
    .line 3299
    :catch_0
    move-exception v3

    #@17
    .line 3300
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@19
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1c
    move-result-object v4

    #@1d
    .line 3301
    const/4 v5, 0x1

    #@1e
    new-array v5, v5, [Ljava/lang/String;

    #@20
    const/4 v6, 0x0

    #@21
    aput-object p1, v5, v6

    #@23
    .line 3300
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 3302
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_0

    #@29
    array-length v4, v2

    #@2a
    if-lez v4, :cond_0

    #@2c
    .line 3303
    const/4 v4, 0x0

    #@2d
    aget-object v4, v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    .line 3307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 3303
    return-object v4

    #@33
    .line 3307
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 3309
    return-object v7

    #@37
    .line 3306
    .end local v2    # "packageNames":[Ljava/lang/String;
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@38
    .line 3307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 3306
    throw v4
.end method

.method private getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2502
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_UPDATE"

    #@5
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2503
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@b
    .line 2505
    invoke-direct {p0, v0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@e
    move-result-object v1

    #@f
    .line 2507
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_0

    #@15
    .line 2508
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
    .line 2511
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
    .line 3077
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 3078
    .local v0, "dir":Ljava/io/File;
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getStateFile(I)Ljava/io/File;

    #@7
    move-result-object v2

    #@8
    .line 3079
    .local v2, "settingsFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_1

    #@e
    if-nez p0, :cond_1

    #@10
    .line 3080
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_0

    #@16
    .line 3081
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@19
    .line 3084
    :cond_0
    new-instance v1, Ljava/io/File;

    #@1b
    const-string/jumbo v3, "/data/system/appwidgets.xml"

    #@1e
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@21
    .line 3087
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@24
    .line 3089
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
    .line 3073
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
    .line 2483
    const/4 v2, 0x0

    #@1
    .line 2485
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4
    move-result-wide v0

    #@5
    .line 2487
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
    .line 2491
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 2494
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v2, :cond_0

    #@11
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@13
    if-nez v4, :cond_1

    #@15
    .line 2495
    :cond_0
    const/4 v4, -0x1

    #@16
    return v4

    #@17
    .line 2488
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    #@18
    .line 2491
    .local v3, "re":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    goto :goto_0

    #@1c
    .line 2490
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@1d
    .line 2491
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 2490
    throw v4

    #@21
    .line 2498
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
    .line 2249
    .local p0, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    .line 2250
    .local v2, "instancesSize":I
    new-array v0, v2, [I

    #@6
    .line 2251
    .local v0, "appWidgetIds":[I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 2252
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
    .line 2251
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2254
    :cond_0
    return-object v0
.end method

.method private handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
    .locals 13
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "viewId"    # I
    .param p5, "requestTime"    # J

    #@0
    .prologue
    .line 1848
    :try_start_0
    invoke-interface/range {p2 .. p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(II)V

    #@3
    .line 1849
    move-wide/from16 v0, p5

    #@5
    iput-wide v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1858
    .end local p2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    :goto_0
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v10

    #@a
    .line 1859
    if-nez p2, :cond_1

    #@c
    .line 1860
    const/4 v9, 0x0

    #@d
    :try_start_1
    iput-object v9, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@f
    .line 1862
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@11
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@14
    move-result-object v6

    #@15
    .line 1863
    .local v6, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v5

    #@19
    .local v5, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v9

    #@1d
    if-eqz v9, :cond_1

    #@1f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Landroid/util/Pair;

    #@25
    .line 1864
    .local v4, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@27
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v9

    #@2b
    check-cast v9, Ljava/util/HashSet;

    #@2d
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v11

    #@31
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@34
    move-result v9

    #@35
    if-eqz v9, :cond_0

    #@37
    .line 1865
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;

    #@39
    invoke-direct {v2, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    #@3c
    .line 1884
    .local v2, "connection":Landroid/content/ServiceConnection;
    iget-object v9, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3e
    check-cast v9, Ljava/lang/Integer;

    #@40
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@43
    move-result v9

    #@44
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    #@47
    move-result v8

    #@48
    .line 1885
    .local v8, "userId":I
    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@4a
    check-cast v9, Landroid/content/Intent$FilterComparison;

    #@4c
    invoke-virtual {v9}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@4f
    move-result-object v3

    #@50
    .line 1888
    .local v3, "intent":Landroid/content/Intent;
    new-instance v9, Landroid/os/UserHandle;

    #@52
    invoke-direct {v9, v8}, Landroid/os/UserHandle;-><init>(I)V

    #@55
    invoke-direct {p0, v3, v2, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    goto :goto_1

    #@59
    .line 1858
    .end local v2    # "connection":Landroid/content/ServiceConnection;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    .end local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    .end local v8    # "userId":I
    :catchall_0
    move-exception v9

    #@5a
    monitor-exit v10

    #@5b
    throw v9

    #@5c
    .line 1850
    .restart local p2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    :catch_0
    move-exception v7

    #@5d
    .line 1853
    .local v7, "re":Landroid/os/RemoteException;
    const/4 p2, 0x0

    #@5e
    .local p2, "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    goto :goto_0

    #@5f
    .end local v7    # "re":Landroid/os/RemoteException;
    .end local p2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    :cond_1
    monitor-exit v10

    #@60
    .line 1846
    return-void
.end method

.method private handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V
    .locals 5
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "requestTime"    # J

    #@0
    .prologue
    .line 1957
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    #@3
    .line 1958
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1955
    :goto_0
    return-void

    #@6
    .line 1959
    :catch_0
    move-exception v0

    #@7
    .line 1960
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 1961
    :try_start_1
    const-string/jumbo v1, "AppWidgetServiceImpl"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "Widget host dead: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 1962
    const/4 v1, 0x0

    #@27
    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    monitor-exit v2

    #@2a
    goto :goto_0

    #@2b
    .line 1960
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method

.method private handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .locals 5
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;

    #@0
    .prologue
    .line 2004
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->providersChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 2002
    :goto_0
    return-void

    #@4
    .line 2005
    :catch_0
    move-exception v0

    #@5
    .line 2006
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 2007
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
    .line 2008
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
    .line 2006
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method private handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V
    .locals 5
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "views"    # Landroid/widget/RemoteViews;
    .param p5, "requestTime"    # J

    #@0
    .prologue
    .line 1920
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    #@3
    .line 1921
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1918
    :goto_0
    return-void

    #@6
    .line 1922
    :catch_0
    move-exception v0

    #@7
    .line 1923
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 1924
    :try_start_1
    const-string/jumbo v1, "AppWidgetServiceImpl"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "Widget host dead: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 1925
    const/4 v1, 0x0

    #@27
    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    monitor-exit v2

    #@2a
    goto :goto_0

    #@2b
    .line 1923
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method

.method private incrementAndGetAppWidgetIdLocked(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1621
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    #@3
    move-result v1

    #@4
    add-int/lit8 v0, v1, 0x1

    #@6
    .line 1622
    .local v0, "appWidgetId":I
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@8
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    #@b
    .line 1623
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
    .line 1767
    .local p2, "serviceId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    const/4 v0, 0x0

    #@1
    .line 1768
    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1769
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    #@b
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    #@11
    .line 1774
    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@18
    .line 1766
    return-void

    #@19
    .line 1771
    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    #@1b
    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1e
    .line 1772
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
    .line 2014
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

.method private isProfileWithLockedParent(I)Z
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 3387
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@6
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v1

    #@a
    .line 3388
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    #@c
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 3389
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@14
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@17
    move-result-object v0

    #@18
    .line 3390
    .local v0, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@1a
    .line 3391
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    #@21
    move-result v4

    #@22
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isUserRunningAndUnlocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_1

    #@28
    .line 3396
    .end local v0    # "parentInfo":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    .line 3398
    const/4 v4, 0x0

    #@2c
    return v4

    #@2d
    .line 3392
    .restart local v0    # "parentInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v4, 0x1

    #@2e
    .line 3396
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 3392
    return v4

    #@32
    .line 3395
    .end local v0    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    #@33
    .line 3396
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 3395
    throw v4
.end method

.method private isProfileWithUnlockedParent(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3402
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@5
    move-result-object v1

    #@6
    .line 3403
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    #@8
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 3404
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@10
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@13
    move-result-object v0

    #@14
    .line 3405
    .local v0, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@16
    .line 3406
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@18
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    #@1f
    move-result v2

    #@20
    .line 3405
    if-eqz v2, :cond_0

    #@22
    .line 3407
    const/4 v2, 0x1

    #@23
    return v2

    #@24
    .line 3410
    .end local v0    # "parentInfo":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v2, 0x0

    #@25
    return v2
.end method

.method private isUserRunningAndUnlocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method private loadGroupStateLocked([I)V
    .locals 12
    .param p1, "profileIds"    # [I

    #@0
    .prologue
    .line 2581
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2583
    .local v4, "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    const/4 v8, 0x0

    #@6
    .line 2585
    .local v8, "version":I
    array-length v6, p1

    #@7
    .line 2586
    .local v6, "profileIdCount":I
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_0

    #@a
    .line 2587
    aget v5, p1, v3

    #@c
    .line 2590
    .local v5, "profileId":I
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    #@f
    move-result-object v2

    #@10
    .line 2592
    .local v2, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@13
    move-result-object v7

    #@14
    .line 2593
    .local v7, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, v7, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I

    #@17
    move-result v8

    #@18
    .line 2594
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 2586
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2595
    :catch_0
    move-exception v1

    #@1f
    .line 2596
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
    .line 2600
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v5    # "profileId":I
    :cond_0
    if-ltz v8, :cond_2

    #@3c
    .line 2602
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindLoadedWidgetsLocked(Ljava/util/List;)V

    #@3f
    .line 2605
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->performUpgradeLocked(I)V

    #@42
    .line 2577
    :cond_1
    return-void

    #@43
    .line 2608
    :cond_2
    const-string/jumbo v9, "AppWidgetServiceImpl"

    #@46
    const-string/jumbo v10, "Failed to read state, clearing widgets and hosts."

    #@49
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 2609
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearWidgetsLocked()V

    #@4f
    .line 2610
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    #@54
    .line 2611
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@56
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@59
    move-result v0

    #@5a
    .line 2612
    .local v0, "N":I
    const/4 v3, 0x0

    #@5b
    :goto_2
    if-ge v3, v0, :cond_1

    #@5d
    .line 2613
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
    .line 2612
    add-int/lit8 v3, v3, 0x1

    #@6c
    goto :goto_2
.end method

.method private loadGroupWidgetProvidersLocked([I)V
    .locals 9
    .param p1, "profileIds"    # [I

    #@0
    .prologue
    .line 2085
    const/4 v1, 0x0

    #@1
    .line 2086
    .local v1, "allReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/content/Intent;

    #@3
    const-string/jumbo v8, "android.appwidget.action.APPWIDGET_UPDATE"

    #@6
    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9
    .line 2088
    .local v3, "intent":Landroid/content/Intent;
    array-length v4, p1

    #@a
    .line 2089
    .local v4, "profileCount":I
    const/4 v2, 0x0

    #@b
    .end local v1    # "allReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    #@d
    .line 2090
    aget v5, p1, v2

    #@f
    .line 2092
    .local v5, "profileId":I
    invoke-direct {p0, v3, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@12
    move-result-object v7

    #@13
    .line 2093
    .local v7, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_0

    #@15
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@18
    move-result v8

    #@19
    if-eqz v8, :cond_1

    #@1b
    .line 2089
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2094
    :cond_1
    if-nez v1, :cond_2

    #@20
    .line 2095
    new-instance v1, Ljava/util/ArrayList;

    #@22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 2097
    :cond_2
    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@28
    goto :goto_1

    #@29
    .line 2101
    .end local v5    # "profileId":I
    .end local v7    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    if-nez v1, :cond_4

    #@2b
    const/4 v0, 0x0

    #@2c
    .line 2102
    .local v0, "N":I
    :goto_2
    const/4 v2, 0x0

    #@2d
    :goto_3
    if-ge v2, v0, :cond_5

    #@2f
    .line 2103
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v6

    #@33
    check-cast v6, Landroid/content/pm/ResolveInfo;

    #@35
    .line 2104
    .local v6, "receiver":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    #@38
    .line 2102
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_3

    #@3b
    .line 2101
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
    .line 2084
    :cond_5
    return-void
.end method

.method private lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .locals 4
    .param p1, "hostId"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@0
    .prologue
    .line 2065
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 2066
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@9
    .line 2067
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@11
    .line 2068
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@13
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 2069
    return-object v1

    #@1a
    .line 2066
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2072
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
    .line 1642
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@4
    move-result-object v0

    #@5
    .line 1643
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_0

    #@7
    .line 1644
    return-object v0

    #@8
    .line 1647
    :cond_0
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@a
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@d
    .line 1648
    .restart local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@f
    .line 1649
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 1651
    return-object v0
.end method

.method private lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .locals 4
    .param p1, "id"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@0
    .prologue
    .line 2054
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 2055
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 2056
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@11
    .line 2057
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@13
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 2058
    return-object v2

    #@1a
    .line 2055
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2061
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
    .line 2042
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 2043
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 2044
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@11
    .line 2045
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@13
    if-ne v3, p1, :cond_0

    #@15
    .line 2046
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@17
    invoke-virtual {v3, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z

    #@1a
    move-result v3

    #@1b
    .line 2045
    if-eqz v3, :cond_0

    #@1d
    .line 2047
    return-object v2

    #@1e
    .line 2043
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 2050
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1
    const/4 v3, 0x0

    #@22
    return-object v3
.end method

.method private maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 18
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "targetWidget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 576
    move-object/from16 v0, p1

    #@2
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v14

    #@8
    .line 577
    .local v14, "widgetCount":I
    if-nez v14, :cond_0

    #@a
    .line 578
    return-void

    #@b
    .line 580
    :cond_0
    move-object/from16 v0, p1

    #@d
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@f
    iget-object v15, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@11
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@14
    move-result-object v8

    #@15
    .line 581
    .local v8, "providerPackage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@18
    move-result v9

    #@19
    .line 582
    .local v9, "providerUserId":I
    move-object/from16 v0, p0

    #@1b
    invoke-direct {v0, v8, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createMaskedWidgetBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    #@1e
    move-result-object v2

    #@1f
    .line 583
    .local v2, "iconBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    #@21
    .line 584
    return-void

    #@22
    .line 588
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@25
    move-result-wide v4

    #@26
    .line 590
    .local v4, "identity":J
    :try_start_0
    move-object/from16 v0, p1

    #@28
    iget-boolean v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    #@2a
    if-eqz v15, :cond_4

    #@2c
    .line 591
    move-object/from16 v0, p0

    #@2e
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@30
    invoke-virtual {v15, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@33
    move-result-object v11

    #@34
    .line 592
    .local v11, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@37
    move-result v10

    #@38
    .line 593
    .local v10, "showBadge":Z
    move-object/from16 v0, p0

    #@3a
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    #@3c
    invoke-virtual {v15, v8, v9}, Landroid/app/admin/DevicePolicyManagerInternal;->createPackageSuspendedDialogIntent(Ljava/lang/String;I)Landroid/content/Intent;

    #@3f
    move-result-object v7

    #@40
    .line 608
    .end local v10    # "showBadge":Z
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .local v7, "onClickIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    const/4 v6, 0x0

    #@41
    .local v6, "j":I
    :goto_1
    if-ge v6, v14, :cond_8

    #@43
    .line 609
    move-object/from16 v0, p1

    #@45
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v13

    #@4b
    check-cast v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@4d
    .line 610
    .local v13, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz p2, :cond_6

    #@4f
    move-object/from16 v0, p2

    #@51
    if-eq v0, v13, :cond_6

    #@53
    .line 608
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@55
    goto :goto_1

    #@56
    .line 595
    .end local v6    # "j":I
    .end local v7    # "onClickIntent":Landroid/content/Intent;
    .end local v13    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_4
    move-object/from16 v0, p1

    #@58
    iget-boolean v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    #@5a
    if-eqz v15, :cond_5

    #@5c
    .line 596
    const/4 v10, 0x1

    #@5d
    .line 597
    .local v10, "showBadge":Z
    invoke-static {v9}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    #@60
    move-result-object v7

    #@61
    .restart local v7    # "onClickIntent":Landroid/content/Intent;
    goto :goto_0

    #@62
    .line 600
    .end local v7    # "onClickIntent":Landroid/content/Intent;
    .end local v10    # "showBadge":Z
    :cond_5
    const/4 v10, 0x1

    #@63
    .line 601
    .restart local v10    # "showBadge":Z
    move-object/from16 v0, p0

    #@65
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@67
    const/16 v16, 0x0

    #@69
    const/16 v17, 0x0

    #@6b
    move-object/from16 v0, v16

    #@6d
    move-object/from16 v1, v17

    #@6f
    invoke-virtual {v15, v0, v1, v9}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    #@72
    move-result-object v7

    #@73
    .line 603
    .restart local v7    # "onClickIntent":Landroid/content/Intent;
    if-eqz v7, :cond_2

    #@75
    .line 604
    const/high16 v15, 0x10800000

    #@77
    invoke-virtual {v7, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7a
    goto :goto_0

    #@7b
    .line 621
    .end local v7    # "onClickIntent":Landroid/content/Intent;
    .end local v10    # "showBadge":Z
    :catchall_0
    move-exception v15

    #@7c
    .line 622
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7f
    .line 621
    throw v15

    #@80
    .line 611
    .restart local v6    # "j":I
    .restart local v7    # "onClickIntent":Landroid/content/Intent;
    .restart local v13    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_6
    const/4 v3, 0x0

    #@81
    .line 612
    .local v3, "intent":Landroid/app/PendingIntent;
    if-eqz v7, :cond_7

    #@83
    .line 613
    :try_start_1
    move-object/from16 v0, p0

    #@85
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@87
    iget v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@89
    move/from16 v16, v0

    #@8b
    .line 614
    const/high16 v17, 0x8000000

    #@8d
    .line 613
    move/from16 v0, v16

    #@8f
    move/from16 v1, v17

    #@91
    invoke-static {v15, v0, v7, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@94
    move-result-object v3

    #@95
    .line 616
    .end local v3    # "intent":Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p0

    #@97
    invoke-direct {v0, v2, v10, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createMaskedWidgetRemoteViews(Landroid/graphics/Bitmap;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    #@9a
    move-result-object v12

    #@9b
    .line 617
    .local v12, "views":Landroid/widget/RemoteViews;
    invoke-static {v13, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->-wrap1(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)Z

    #@9e
    move-result v15

    #@9f
    if-eqz v15, :cond_3

    #@a1
    .line 618
    invoke-virtual {v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    #@a4
    move-result-object v15

    #@a5
    move-object/from16 v0, p0

    #@a7
    invoke-direct {v0, v13, v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@aa
    goto :goto_2

    #@ab
    .line 622
    .end local v12    # "views":Landroid/widget/RemoteViews;
    .end local v13    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ae
    .line 575
    return-void
.end method

.method private onConfigurationChanged()V
    .locals 15

    #@0
    .prologue
    .line 308
    sget-boolean v12, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@2
    if-eqz v12, :cond_0

    #@4
    .line 309
    const-string/jumbo v12, "AppWidgetServiceImpl"

    #@7
    const-string/jumbo v13, "onConfigurationChanged()"

    #@a
    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 312
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@10
    move-result-object v10

    #@11
    .line 313
    .local v10, "revised":Ljava/util/Locale;
    if-eqz v10, :cond_1

    #@13
    iget-object v12, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    #@15
    if-nez v12, :cond_3

    #@17
    .line 314
    :cond_1
    iput-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    #@19
    .line 316
    iget-object v13, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@1b
    monitor-enter v13

    #@1c
    .line 317
    const/4 v2, 0x0

    #@1d
    .line 322
    .local v2, "changedGroups":Landroid/util/SparseIntArray;
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    #@1f
    iget-object v12, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@21
    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@24
    .line 323
    .local v7, "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    new-instance v9, Ljava/util/HashSet;

    #@26
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    #@29
    .line 325
    .local v9, "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v0

    #@2d
    .line 326
    .local v0, "N":I
    add-int/lit8 v6, v0, -0x1

    #@2f
    .local v6, "i":I
    move-object v3, v2

    #@30
    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .local v3, "changedGroups":Landroid/util/SparseIntArray;
    :goto_0
    if-ltz v6, :cond_5

    #@32
    .line 327
    :try_start_1
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v8

    #@36
    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@38
    .line 329
    .local v8, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@3b
    move-result v11

    #@3c
    .line 330
    .local v11, "userId":I
    iget-object v12, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@3e
    invoke-virtual {v12, v11}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@41
    move-result v12

    #@42
    if-eqz v12, :cond_2

    #@44
    .line 331
    invoke-direct {p0, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@47
    move-result v12

    #@48
    .line 330
    if-eqz v12, :cond_4

    #@4a
    :cond_2
    move-object v2, v3

    #@4b
    .line 326
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .local v2, "changedGroups":Landroid/util/SparseIntArray;
    :goto_1
    add-int/lit8 v6, v6, -0x1

    #@4d
    move-object v3, v2

    #@4e
    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    goto :goto_0

    #@4f
    .line 313
    .end local v0    # "N":I
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .end local v6    # "i":I
    .end local v7    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v8    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v9    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    .end local v11    # "userId":I
    :cond_3
    iget-object v12, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    #@51
    invoke-virtual {v10, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v12

    #@55
    if-eqz v12, :cond_1

    #@57
    .line 307
    :goto_2
    return-void

    #@58
    .line 334
    .restart local v0    # "N":I
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v6    # "i":I
    .restart local v7    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v8    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v9    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    .restart local v11    # "userId":I
    :cond_4
    :try_start_2
    invoke-direct {p0, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@5b
    .line 336
    iget-object v12, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@5d
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@60
    move-result v12

    #@61
    if-nez v12, :cond_8

    #@63
    .line 338
    iget-object v12, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@65
    iget-object v12, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@67
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@6a
    move-result-object v12

    #@6b
    .line 339
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@6e
    move-result v14

    #@6f
    .line 337
    invoke-direct {p0, v12, v14, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    #@72
    move-result v1

    #@73
    .line 341
    .local v1, "changed":Z
    if-eqz v1, :cond_8

    #@75
    .line 342
    if-nez v3, :cond_7

    #@77
    .line 343
    new-instance v2, Landroid/util/SparseIntArray;

    #@79
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@7c
    .line 345
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v2    # "changedGroups":Landroid/util/SparseIntArray;
    :goto_3
    :try_start_3
    iget-object v12, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@7e
    .line 346
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@81
    move-result v14

    #@82
    .line 345
    invoke-virtual {v12, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    #@85
    move-result v5

    #@86
    .line 347
    .local v5, "groupId":I
    invoke-virtual {v2, v5, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@89
    goto :goto_1

    #@8a
    .line 316
    .end local v0    # "N":I
    .end local v1    # "changed":Z
    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .end local v5    # "groupId":I
    .end local v6    # "i":I
    .end local v7    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v8    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v9    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    .end local v11    # "userId":I
    :catchall_0
    move-exception v12

    #@8b
    :goto_4
    monitor-exit v13

    #@8c
    throw v12

    #@8d
    .line 352
    .restart local v0    # "N":I
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v6    # "i":I
    .restart local v7    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v9    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    :cond_5
    if-eqz v3, :cond_6

    #@8f
    .line 353
    :try_start_4
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    #@92
    move-result v4

    #@93
    .line 354
    .local v4, "groupCount":I
    const/4 v6, 0x0

    #@94
    :goto_5
    if-ge v6, v4, :cond_6

    #@96
    .line 355
    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->get(I)I

    #@99
    move-result v5

    #@9a
    .line 356
    .restart local v5    # "groupId":I
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@9d
    .line 354
    add-int/lit8 v6, v6, 0x1

    #@9f
    goto :goto_5

    #@a0
    .end local v4    # "groupCount":I
    .end local v5    # "groupId":I
    :cond_6
    monitor-exit v13

    #@a1
    goto :goto_2

    #@a2
    .line 316
    :catchall_1
    move-exception v12

    #@a3
    move-object v2, v3

    #@a4
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v2    # "changedGroups":Landroid/util/SparseIntArray;
    goto :goto_4

    #@a5
    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v1    # "changed":Z
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v8    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v11    # "userId":I
    :cond_7
    move-object v2, v3

    #@a6
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v2    # "changedGroups":Landroid/util/SparseIntArray;
    goto :goto_3

    #@a7
    .end local v1    # "changed":Z
    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v3    # "changedGroups":Landroid/util/SparseIntArray;
    :cond_8
    move-object v2, v3

    #@a8
    .end local v3    # "changedGroups":Landroid/util/SparseIntArray;
    .restart local v2    # "changedGroups":Landroid/util/SparseIntArray;
    goto :goto_1
.end method

.method private onPackageBroadcastReceived(Landroid/content/Intent;I)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 364
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@4
    move/from16 v0, p2

    #@6
    invoke-virtual {v14, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@9
    move-result v14

    #@a
    if-eqz v14, :cond_0

    #@c
    .line 365
    move-object/from16 v0, p0

    #@e
    move/from16 v1, p2

    #@10
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    #@13
    move-result v14

    #@14
    .line 364
    if-eqz v14, :cond_1

    #@16
    .line 366
    :cond_0
    return-void

    #@17
    .line 369
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 370
    .local v3, "action":Ljava/lang/String;
    const/4 v4, 0x0

    #@1c
    .line 371
    .local v4, "added":Z
    const/4 v5, 0x0

    #@1d
    .line 372
    .local v5, "changed":Z
    const/4 v6, 0x0

    #@1e
    .line 374
    .local v6, "componentsModified":Z
    const/4 v10, 0x0

    #@1f
    .line 375
    .local v10, "pkgList":[Ljava/lang/String;
    const-string/jumbo v14, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@22
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v14

    #@26
    if-eqz v14, :cond_3

    #@28
    .line 376
    const-string/jumbo v14, "android.intent.extra.changed_package_list"

    #@2b
    move-object/from16 v0, p1

    #@2d
    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@30
    move-result-object v10

    #@31
    .line 377
    .local v10, "pkgList":[Ljava/lang/String;
    const/4 v4, 0x1

    #@32
    .line 394
    .end local v4    # "added":Z
    .end local v5    # "changed":Z
    :goto_0
    if-eqz v10, :cond_2

    #@34
    array-length v14, v10

    #@35
    if-nez v14, :cond_7

    #@37
    .line 395
    :cond_2
    return-void

    #@38
    .line 378
    .restart local v4    # "added":Z
    .restart local v5    # "changed":Z
    .local v10, "pkgList":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v14, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@3b
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v14

    #@3f
    if-eqz v14, :cond_4

    #@41
    .line 379
    const-string/jumbo v14, "android.intent.extra.changed_package_list"

    #@44
    move-object/from16 v0, p1

    #@46
    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@49
    move-result-object v10

    #@4a
    .line 380
    .local v10, "pkgList":[Ljava/lang/String;
    const/4 v4, 0x0

    #@4b
    goto :goto_0

    #@4c
    .line 382
    .local v10, "pkgList":[Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@4f
    move-result-object v13

    #@50
    .line 383
    .local v13, "uri":Landroid/net/Uri;
    if-nez v13, :cond_5

    #@52
    .line 384
    return-void

    #@53
    .line 386
    :cond_5
    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@56
    move-result-object v11

    #@57
    .line 387
    .local v11, "pkgName":Ljava/lang/String;
    if-nez v11, :cond_6

    #@59
    .line 388
    return-void

    #@5a
    .line 390
    :cond_6
    const/4 v14, 0x1

    #@5b
    new-array v10, v14, [Ljava/lang/String;

    #@5d
    .end local v10    # "pkgList":[Ljava/lang/String;
    const/4 v14, 0x0

    #@5e
    aput-object v11, v10, v14

    #@60
    .line 391
    .local v10, "pkgList":[Ljava/lang/String;
    const-string/jumbo v14, "android.intent.action.PACKAGE_ADDED"

    #@63
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v4

    #@67
    .line 392
    .local v4, "added":Z
    const-string/jumbo v14, "android.intent.action.PACKAGE_CHANGED"

    #@6a
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v5

    #@6e
    .local v5, "changed":Z
    goto :goto_0

    #@6f
    .line 398
    .end local v4    # "added":Z
    .end local v5    # "changed":Z
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_7
    move-object/from16 v0, p0

    #@71
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@73
    monitor-enter v15

    #@74
    .line 399
    :try_start_0
    move-object/from16 v0, p0

    #@76
    move/from16 v1, p2

    #@78
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@7b
    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@7e
    move-result-object v7

    #@7f
    .line 403
    .local v7, "extras":Landroid/os/Bundle;
    if-nez v4, :cond_8

    #@81
    if-eqz v5, :cond_d

    #@83
    .line 404
    :cond_8
    if-eqz v4, :cond_c

    #@85
    if-eqz v7, :cond_a

    #@87
    .line 405
    const-string/jumbo v14, "android.intent.extra.REPLACING"

    #@8a
    const/16 v16, 0x0

    #@8c
    move/from16 v0, v16

    #@8e
    invoke-virtual {v7, v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@91
    move-result v14

    #@92
    if-eqz v14, :cond_b

    #@94
    const/4 v8, 0x0

    #@95
    .line 407
    .local v8, "newPackageAdded":Z
    :goto_1
    const/4 v14, 0x0

    #@96
    array-length v0, v10

    #@97
    move/from16 v16, v0

    #@99
    .end local v6    # "componentsModified":Z
    :goto_2
    move/from16 v0, v16

    #@9b
    if-ge v14, v0, :cond_10

    #@9d
    aget-object v11, v10, v14

    #@9f
    .line 409
    .restart local v11    # "pkgName":Ljava/lang/String;
    const/16 v17, 0x0

    #@a1
    move-object/from16 v0, p0

    #@a3
    move/from16 v1, p2

    #@a5
    move-object/from16 v2, v17

    #@a7
    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    #@aa
    move-result v17

    #@ab
    or-int v6, v6, v17

    #@ad
    .line 414
    .local v6, "componentsModified":Z
    if-eqz v8, :cond_9

    #@af
    if-nez p2, :cond_9

    #@b1
    .line 415
    move-object/from16 v0, p0

    #@b3
    move/from16 v1, p2

    #@b5
    invoke-direct {v0, v11, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    #@b8
    move-result v12

    #@b9
    .line 416
    .local v12, "uid":I
    if-ltz v12, :cond_9

    #@bb
    .line 417
    move-object/from16 v0, p0

    #@bd
    invoke-direct {v0, v11, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->resolveHostUidLocked(Ljava/lang/String;I)V

    #@c0
    .line 407
    .end local v12    # "uid":I
    :cond_9
    add-int/lit8 v14, v14, 0x1

    #@c2
    goto :goto_2

    #@c3
    .line 404
    .end local v8    # "newPackageAdded":Z
    .end local v11    # "pkgName":Ljava/lang/String;
    .local v6, "componentsModified":Z
    :cond_a
    const/4 v8, 0x1

    #@c4
    .restart local v8    # "newPackageAdded":Z
    goto :goto_1

    #@c5
    .line 405
    .end local v8    # "newPackageAdded":Z
    :cond_b
    const/4 v8, 0x1

    #@c6
    .restart local v8    # "newPackageAdded":Z
    goto :goto_1

    #@c7
    .line 404
    .end local v8    # "newPackageAdded":Z
    :cond_c
    const/4 v8, 0x0

    #@c8
    .restart local v8    # "newPackageAdded":Z
    goto :goto_1

    #@c9
    .line 424
    .end local v8    # "newPackageAdded":Z
    :cond_d
    if-eqz v7, :cond_e

    #@cb
    .line 425
    const-string/jumbo v14, "android.intent.extra.REPLACING"

    #@ce
    const/16 v16, 0x0

    #@d0
    move/from16 v0, v16

    #@d2
    invoke-virtual {v7, v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@d5
    move-result v14

    #@d6
    if-eqz v14, :cond_f

    #@d8
    const/4 v9, 0x0

    #@d9
    .line 427
    .local v9, "packageRemovedPermanently":Z
    :goto_3
    if-eqz v9, :cond_10

    #@db
    .line 428
    const/4 v14, 0x0

    #@dc
    array-length v0, v10

    #@dd
    move/from16 v16, v0

    #@df
    .end local v6    # "componentsModified":Z
    :goto_4
    move/from16 v0, v16

    #@e1
    if-ge v14, v0, :cond_10

    #@e3
    aget-object v11, v10, v14

    #@e5
    .line 429
    .restart local v11    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e7
    move/from16 v1, p2

    #@e9
    invoke-direct {v0, v11, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z

    #@ec
    move-result v17

    #@ed
    or-int v6, v6, v17

    #@ef
    .line 428
    .local v6, "componentsModified":Z
    add-int/lit8 v14, v14, 0x1

    #@f1
    goto :goto_4

    #@f2
    .line 424
    .end local v9    # "packageRemovedPermanently":Z
    .end local v11    # "pkgName":Ljava/lang/String;
    .local v6, "componentsModified":Z
    :cond_e
    const/4 v9, 0x1

    #@f3
    goto :goto_3

    #@f4
    .line 425
    :cond_f
    const/4 v9, 0x1

    #@f5
    goto :goto_3

    #@f6
    .line 435
    .end local v6    # "componentsModified":Z
    :cond_10
    if-eqz v6, :cond_11

    #@f8
    .line 436
    move-object/from16 v0, p0

    #@fa
    move/from16 v1, p2

    #@fc
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@ff
    .line 439
    move-object/from16 v0, p0

    #@101
    move/from16 v1, p2

    #@103
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@106
    :cond_11
    monitor-exit v15

    #@107
    .line 363
    return-void

    #@108
    .line 398
    .end local v7    # "extras":Landroid/os/Bundle;
    :catchall_0
    move-exception v14

    #@109
    monitor-exit v15

    #@10a
    throw v14
.end method

.method private onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 7
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 2715
    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2
    if-nez v6, :cond_0

    #@4
    return-void

    #@5
    .line 2717
    :cond_0
    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@7
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@a
    move-result v4

    #@b
    .line 2718
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
    .line 2719
    .local v2, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroid/util/ArraySet;

    #@1d
    .line 2720
    .local v3, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    #@1f
    .line 2721
    return-void

    #@20
    .line 2725
    :cond_1
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v0

    #@26
    .line 2726
    .local v0, "N":I
    const/4 v1, 0x0

    #@27
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@29
    .line 2727
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v5

    #@2f
    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@31
    .line 2728
    .local v5, "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@33
    if-nez v6, :cond_3

    #@35
    .line 2726
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 2729
    :cond_3
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3a
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@3d
    move-result v6

    #@3e
    if-ne v6, v4, :cond_2

    #@40
    .line 2730
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
    .line 2729
    if-eqz v6, :cond_2

    #@50
    .line 2731
    return-void

    #@51
    .line 2734
    .end local v5    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_4
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@54
    .line 2714
    return-void
.end method

.method private onWidgetsClearedLocked()V
    .locals 1

    #@0
    .prologue
    .line 2747
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@5
    .line 2746
    return-void
.end method

.method private parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .locals 25
    .param p1, "providerId"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 2376
    const/4 v15, 0x0

    #@1
    .line 2378
    .local v15, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    move-object/from16 v0, p2

    #@3
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@5
    .line 2379
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v13, 0x0

    #@6
    .line 2381
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@a
    move-object/from16 v22, v0

    #@c
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v22

    #@10
    .line 2382
    const-string/jumbo v23, "android.appwidget.provider"

    #@13
    .line 2381
    move-object/from16 v0, v22

    #@15
    move-object/from16 v1, v23

    #@17
    invoke-virtual {v4, v0, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@1a
    move-result-object v13

    #@1b
    .line 2383
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v13, :cond_1

    #@1d
    .line 2384
    const-string/jumbo v22, "AppWidgetServiceImpl"

    #@20
    new-instance v23, Ljava/lang/StringBuilder;

    #@22
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v24, "No android.appwidget.provider meta-data for AppWidget provider \'"

    #@28
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v23

    #@2c
    move-object/from16 v0, v23

    #@2e
    move-object/from16 v1, p1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v23

    #@34
    .line 2385
    const/16 v24, 0x27

    #@36
    .line 2384
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    move-result-object v23

    #@3a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v23

    #@3e
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@41
    .line 2386
    const/16 v22, 0x0

    #@43
    .line 2475
    if-eqz v13, :cond_0

    #@45
    .line 2476
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@48
    .line 2386
    :cond_0
    return-object v22

    #@49
    .line 2389
    :cond_1
    :try_start_1
    invoke-static {v13}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@4c
    move-result-object v6

    #@4d
    .line 2392
    .local v6, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    #@50
    move-result v19

    #@51
    .local v19, "type":I
    const/16 v22, 0x1

    #@53
    move/from16 v0, v19

    #@55
    move/from16 v1, v22

    #@57
    if-eq v0, v1, :cond_3

    #@59
    .line 2393
    const/16 v22, 0x2

    #@5b
    move/from16 v0, v19

    #@5d
    move/from16 v1, v22

    #@5f
    if-ne v0, v1, :cond_2

    #@61
    .line 2397
    :cond_3
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@64
    move-result-object v12

    #@65
    .line 2398
    .local v12, "nodeName":Ljava/lang/String;
    const-string/jumbo v22, "appwidget-provider"

    #@68
    move-object/from16 v0, v22

    #@6a
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v22

    #@6e
    if-nez v22, :cond_5

    #@70
    .line 2399
    const-string/jumbo v22, "AppWidgetServiceImpl"

    #@73
    new-instance v23, Ljava/lang/StringBuilder;

    #@75
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v24, "Meta-data does not start with appwidget-provider tag for AppWidget provider "

    #@7b
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v23

    #@7f
    .line 2400
    move-object/from16 v0, p1

    #@81
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@83
    move-object/from16 v24, v0

    #@85
    .line 2399
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v23

    #@89
    .line 2401
    const-string/jumbo v24, " for user "

    #@8c
    .line 2399
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v23

    #@90
    .line 2401
    move-object/from16 v0, p1

    #@92
    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    #@94
    move/from16 v24, v0

    #@96
    .line 2399
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v23

    #@9a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v23

    #@9e
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a1
    .line 2402
    const/16 v22, 0x0

    #@a3
    .line 2475
    if-eqz v13, :cond_4

    #@a5
    .line 2476
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@a8
    .line 2402
    :cond_4
    return-object v22

    #@a9
    .line 2405
    :cond_5
    :try_start_2
    new-instance v16, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@ab
    const/16 v22, 0x0

    #@ad
    move-object/from16 v0, v16

    #@af
    move-object/from16 v1, v22

    #@b1
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@b4
    .line 2406
    .end local v15    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .local v16, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_start_3
    move-object/from16 v0, p1

    #@b6
    move-object/from16 v1, v16

    #@b8
    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@ba
    .line 2407
    new-instance v9, Landroid/appwidget/AppWidgetProviderInfo;

    #@bc
    invoke-direct {v9}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    #@bf
    move-object/from16 v0, v16

    #@c1
    iput-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@c3
    .line 2408
    .local v9, "info":Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p1

    #@c5
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@c7
    move-object/from16 v22, v0

    #@c9
    move-object/from16 v0, v22

    #@cb
    iput-object v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@cd
    .line 2409
    iput-object v4, v9, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@cf
    .line 2412
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@d2
    move-result-wide v10

    #@d3
    .line 2414
    .local v10, "identity":J
    :try_start_4
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@d7
    move-object/from16 v22, v0

    #@d9
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@dc
    move-result-object v14

    #@dd
    .line 2415
    .local v14, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    #@df
    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    #@e1
    move/from16 v22, v0

    #@e3
    invoke-static/range {v22 .. v22}, Landroid/os/UserHandle;->getUserId(I)I

    #@e6
    move-result v20

    #@e7
    .line 2416
    .local v20, "userId":I
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@e9
    move-object/from16 v22, v0

    #@eb
    .line 2417
    const/16 v23, 0x0

    #@ed
    .line 2416
    move-object/from16 v0, v22

    #@ef
    move/from16 v1, v23

    #@f1
    move/from16 v2, v20

    #@f3
    invoke-virtual {v14, v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@f6
    move-result-object v5

    #@f7
    .line 2418
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v14, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@fa
    move-result-object v17

    #@fb
    .line 2420
    .local v17, "resources":Landroid/content/res/Resources;
    :try_start_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@fe
    .line 2424
    sget-object v22, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    #@100
    .line 2423
    move-object/from16 v0, v17

    #@102
    move-object/from16 v1, v22

    #@104
    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@107
    move-result-object v18

    #@108
    .line 2430
    .local v18, "sa":Landroid/content/res/TypedArray;
    const/16 v22, 0x0

    #@10a
    .line 2429
    move-object/from16 v0, v18

    #@10c
    move/from16 v1, v22

    #@10e
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@111
    move-result-object v21

    #@112
    .line 2431
    .local v21, "value":Landroid/util/TypedValue;
    if-eqz v21, :cond_9

    #@114
    move-object/from16 v0, v21

    #@116
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@118
    move/from16 v22, v0

    #@11a
    :goto_0
    move/from16 v0, v22

    #@11c
    iput v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@11e
    .line 2432
    const/16 v22, 0x1

    #@120
    move-object/from16 v0, v18

    #@122
    move/from16 v1, v22

    #@124
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@127
    move-result-object v21

    #@128
    .line 2433
    if-eqz v21, :cond_a

    #@12a
    move-object/from16 v0, v21

    #@12c
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@12e
    move/from16 v22, v0

    #@130
    :goto_1
    move/from16 v0, v22

    #@132
    iput v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@134
    .line 2435
    const/16 v22, 0x8

    #@136
    .line 2434
    move-object/from16 v0, v18

    #@138
    move/from16 v1, v22

    #@13a
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@13d
    move-result-object v21

    #@13e
    .line 2436
    if-eqz v21, :cond_b

    #@140
    move-object/from16 v0, v21

    #@142
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@144
    move/from16 v22, v0

    #@146
    :goto_2
    move/from16 v0, v22

    #@148
    iput v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@14a
    .line 2438
    const/16 v22, 0x9

    #@14c
    .line 2437
    move-object/from16 v0, v18

    #@14e
    move/from16 v1, v22

    #@150
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@153
    move-result-object v21

    #@154
    .line 2439
    if-eqz v21, :cond_c

    #@156
    move-object/from16 v0, v21

    #@158
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@15a
    move/from16 v22, v0

    #@15c
    :goto_3
    move/from16 v0, v22

    #@15e
    iput v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@160
    .line 2441
    const/16 v22, 0x2

    #@162
    const/16 v23, 0x0

    #@164
    .line 2440
    move-object/from16 v0, v18

    #@166
    move/from16 v1, v22

    #@168
    move/from16 v2, v23

    #@16a
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@16d
    move-result v22

    #@16e
    move/from16 v0, v22

    #@170
    iput v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    #@172
    .line 2443
    const/16 v22, 0x3

    #@174
    const/16 v23, 0x0

    #@176
    .line 2442
    move-object/from16 v0, v18

    #@178
    move/from16 v1, v22

    #@17a
    move/from16 v2, v23

    #@17c
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@17f
    move-result v22

    #@180
    move/from16 v0, v22

    #@182
    iput v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    #@184
    .line 2444
    const/16 v22, 0xa

    #@186
    .line 2445
    const/16 v23, 0x0

    #@188
    .line 2444
    move-object/from16 v0, v18

    #@18a
    move/from16 v1, v22

    #@18c
    move/from16 v2, v23

    #@18e
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@191
    move-result v22

    #@192
    move/from16 v0, v22

    #@194
    iput v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    #@196
    .line 2448
    const/16 v22, 0x4

    #@198
    .line 2447
    move-object/from16 v0, v18

    #@19a
    move/from16 v1, v22

    #@19c
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@19f
    move-result-object v7

    #@1a0
    .line 2449
    .local v7, "className":Ljava/lang/String;
    if-eqz v7, :cond_6

    #@1a2
    .line 2450
    new-instance v22, Landroid/content/ComponentName;

    #@1a4
    move-object/from16 v0, p1

    #@1a6
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@1a8
    move-object/from16 v23, v0

    #@1aa
    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1ad
    move-result-object v23

    #@1ae
    move-object/from16 v0, v22

    #@1b0
    move-object/from16 v1, v23

    #@1b2
    invoke-direct {v0, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1b5
    move-object/from16 v0, v22

    #@1b7
    iput-object v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    #@1b9
    .line 2453
    :cond_6
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@1bd
    move-object/from16 v22, v0

    #@1bf
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1c2
    move-result-object v22

    #@1c3
    move-object/from16 v0, v22

    #@1c5
    invoke-virtual {v4, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@1c8
    move-result-object v22

    #@1c9
    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v22

    #@1cd
    move-object/from16 v0, v22

    #@1cf
    iput-object v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    #@1d1
    .line 2454
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    #@1d4
    move-result v22

    #@1d5
    move/from16 v0, v22

    #@1d7
    iput v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    #@1d9
    .line 2456
    const/16 v22, 0x5

    #@1db
    const/16 v23, 0x0

    #@1dd
    .line 2455
    move-object/from16 v0, v18

    #@1df
    move/from16 v1, v22

    #@1e1
    move/from16 v2, v23

    #@1e3
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1e6
    move-result v22

    #@1e7
    move/from16 v0, v22

    #@1e9
    iput v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    #@1eb
    .line 2458
    const/16 v22, 0x6

    #@1ed
    const/16 v23, -0x1

    #@1ef
    .line 2457
    move-object/from16 v0, v18

    #@1f1
    move/from16 v1, v22

    #@1f3
    move/from16 v2, v23

    #@1f5
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1f8
    move-result v22

    #@1f9
    move/from16 v0, v22

    #@1fb
    iput v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    #@1fd
    .line 2460
    const/16 v22, 0x7

    #@1ff
    .line 2461
    const/16 v23, 0x0

    #@201
    .line 2459
    move-object/from16 v0, v18

    #@203
    move/from16 v1, v22

    #@205
    move/from16 v2, v23

    #@207
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@20a
    move-result v22

    #@20b
    move/from16 v0, v22

    #@20d
    iput v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    #@20f
    .line 2463
    const/16 v22, 0xb

    #@211
    .line 2464
    const/16 v23, 0x1

    #@213
    .line 2462
    move-object/from16 v0, v18

    #@215
    move/from16 v1, v22

    #@217
    move/from16 v2, v23

    #@219
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@21c
    move-result v22

    #@21d
    move/from16 v0, v22

    #@21f
    iput v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    #@221
    .line 2466
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@224
    .line 2475
    if-eqz v13, :cond_7

    #@226
    .line 2476
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@229
    .line 2479
    :cond_7
    return-object v16

    #@22a
    .line 2419
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "className":Ljava/lang/String;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "resources":Landroid/content/res/Resources;
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .end local v20    # "userId":I
    .end local v21    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v22

    #@22b
    .line 2420
    :try_start_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22e
    .line 2419
    throw v22
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@22f
    .line 2467
    .end local v9    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v10    # "identity":J
    :catch_0
    move-exception v8

    #@230
    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 v15, v16

    #@232
    .line 2471
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v12    # "nodeName":Ljava/lang/String;
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v19    # "type":I
    :goto_4
    :try_start_7
    const-string/jumbo v22, "AppWidgetServiceImpl"

    #@235
    new-instance v23, Ljava/lang/StringBuilder;

    #@237
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@23a
    const-string/jumbo v24, "XML parsing failed for AppWidget provider "

    #@23d
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v23

    #@241
    .line 2472
    move-object/from16 v0, p1

    #@243
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@245
    move-object/from16 v24, v0

    #@247
    .line 2471
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24a
    move-result-object v23

    #@24b
    .line 2472
    const-string/jumbo v24, " for user "

    #@24e
    .line 2471
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    move-result-object v23

    #@252
    .line 2472
    move-object/from16 v0, p1

    #@254
    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    #@256
    move/from16 v24, v0

    #@258
    .line 2471
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v23

    #@25c
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25f
    move-result-object v23

    #@260
    move-object/from16 v0, v22

    #@262
    move-object/from16 v1, v23

    #@264
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@267
    .line 2473
    const/16 v22, 0x0

    #@269
    .line 2475
    if-eqz v13, :cond_8

    #@26b
    .line 2476
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@26e
    .line 2473
    :cond_8
    return-object v22

    #@26f
    .line 2431
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "attrs":Landroid/util/AttributeSet;
    .restart local v9    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v10    # "identity":J
    .restart local v12    # "nodeName":Ljava/lang/String;
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v17    # "resources":Landroid/content/res/Resources;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v19    # "type":I
    .restart local v20    # "userId":I
    .restart local v21    # "value":Landroid/util/TypedValue;
    :cond_9
    const/16 v22, 0x0

    #@271
    goto/16 :goto_0

    #@273
    .line 2433
    :cond_a
    const/16 v22, 0x0

    #@275
    goto/16 :goto_1

    #@277
    .line 2436
    :cond_b
    :try_start_8
    iget v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@279
    move/from16 v22, v0

    #@27b
    goto/16 :goto_2

    #@27d
    .line 2439
    :cond_c
    iget v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@27f
    move/from16 v22, v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@281
    goto/16 :goto_3

    #@283
    .line 2474
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v10    # "identity":J
    .end local v12    # "nodeName":Ljava/lang/String;
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v16    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v17    # "resources":Landroid/content/res/Resources;
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .end local v19    # "type":I
    .end local v20    # "userId":I
    .end local v21    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v22

    #@284
    .line 2475
    :goto_5
    if-eqz v13, :cond_d

    #@286
    .line 2476
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@289
    .line 2474
    :cond_d
    throw v22

    #@28a
    .restart local v6    # "attrs":Landroid/util/AttributeSet;
    .restart local v12    # "nodeName":Ljava/lang/String;
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v19    # "type":I
    :catchall_2
    move-exception v22

    #@28b
    move-object/from16 v15, v16

    #@28d
    .end local v16    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .local v15, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    goto :goto_5

    #@28e
    .line 2467
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v12    # "nodeName":Ljava/lang/String;
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v19    # "type":I
    .local v15, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catch_1
    move-exception v8

    #@28f
    .restart local v8    # "e":Ljava/lang/Exception;
    goto :goto_4
.end method

.method private peekNextAppWidgetIdLocked(I)I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1634
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@5
    move-result v0

    #@6
    if-gez v0, :cond_0

    #@8
    .line 1635
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 1637
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
    .line 3043
    if-ge p1, v8, :cond_0

    #@7
    .line 3044
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
    .line 3048
    :cond_0
    move v3, p1

    #@2d
    .line 3051
    .local v3, "version":I
    if-nez p1, :cond_2

    #@2f
    .line 3052
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@31
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@34
    move-result v4

    #@35
    .line 3053
    const-string/jumbo v5, "android"

    #@38
    .line 3052
    invoke-direct {v1, v4, v9, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@3b
    .line 3055
    .local v1, "oldHostId":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@3e
    move-result-object v0

    #@3f
    .line 3056
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_1

    #@41
    .line 3057
    const-string/jumbo v4, "com.android.keyguard"

    #@44
    invoke-direct {p0, v4, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    #@47
    move-result v2

    #@48
    .line 3059
    .local v2, "uid":I
    if-ltz v2, :cond_1

    #@4a
    .line 3060
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@4c
    const-string/jumbo v5, "com.android.keyguard"

    #@4f
    invoke-direct {v4, v2, v9, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@52
    iput-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@54
    .line 3064
    .end local v2    # "uid":I
    :cond_1
    const/4 v3, 0x1

    #@55
    .line 3067
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v1    # "oldHostId":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :cond_2
    if-eq v3, v8, :cond_3

    #@57
    .line 3068
    new-instance v4, Ljava/lang/IllegalStateException;

    #@59
    const-string/jumbo v5, "Failed to upgrade widget database"

    #@5c
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v4

    #@60
    .line 3042
    :cond_3
    return-void
.end method

.method private pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 3
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@0
    .prologue
    .line 2076
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
    .line 2077
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 2078
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
    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@31
    .line 2075
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
    .line 2515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 2521
    .local v2, "identity":J
    const v0, 0x10000080

    #@7
    .line 2526
    .local v0, "flags":I
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithUnlockedParent(I)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 2527
    const/high16 v4, 0xc0000

    #@f
    or-int/2addr v0, v4

    #@10
    .line 2533
    :cond_0
    or-int/lit16 v0, v0, 0x400

    #@12
    .line 2535
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@14
    .line 2536
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@16
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    .line 2535
    invoke-interface {v4, p1, v5, v0, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result-object v4

    #@26
    .line 2541
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 2535
    return-object v4

    #@2a
    .line 2538
    :catch_0
    move-exception v1

    #@2b
    .line 2539
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    move-result-object v4

    #@2f
    .line 2541
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 2539
    return-object v4

    #@33
    .line 2540
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@34
    .line 2541
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 2540
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
    .line 2882
    .local p3, "outLoadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    const/16 v34, -0x1

    #@2
    .line 2884
    .local v34, "version":I
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@5
    move-result-object v22

    #@6
    .line 2885
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
    .line 2887
    const/4 v13, -0x1

    #@16
    .line 2888
    .local v13, "legacyProviderIndex":I
    const/4 v12, -0x1

    #@17
    .line 2891
    .local v12, "legacyHostIndex":I
    :cond_0
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1a
    move-result v32

    #@1b
    .line 2892
    .local v32, "type":I
    const/16 v36, 0x2

    #@1d
    move/from16 v0, v32

    #@1f
    move/from16 v1, v36

    #@21
    if-ne v0, v1, :cond_1

    #@23
    .line 2893
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@26
    move-result-object v30

    #@27
    .line 2894
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
    .line 2895
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
    .line 2897
    .local v3, "attributeValue":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@46
    move-result v34

    #@47
    .line 3029
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
    .line 3039
    return v34

    #@50
    .line 2898
    .restart local v3    # "attributeValue":Ljava/lang/String;
    .restart local v30    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@51
    .line 2899
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/16 v34, 0x0

    #@53
    goto :goto_0

    #@54
    .line 2901
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
    .line 2902
    add-int/lit8 v13, v13, 0x1

    #@63
    .line 2905
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
    .line 2906
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
    .line 2908
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
    .line 2909
    if-eqz v23, :cond_1

    #@8d
    .line 2913
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
    .line 2914
    .local v33, "uid":I
    if-ltz v33, :cond_1

    #@99
    .line 2918
    new-instance v6, Landroid/content/ComponentName;

    #@9b
    move-object/from16 v0, v23

    #@9d
    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a0
    .line 2920
    .local v6, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@a2
    move/from16 v1, p2

    #@a4
    invoke-direct {v0, v6, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@a7
    move-result-object v26

    #@a8
    .line 2921
    .local v26, "providerInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v26, :cond_1

    #@aa
    .line 2925
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
    .line 2926
    .local v25, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    move-object/from16 v0, p0

    #@b9
    move-object/from16 v1, v25

    #@bb
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@be
    move-result-object v24

    #@bf
    .line 2928
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
    .line 2930
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
    .line 2931
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
    .line 2932
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
    .line 2933
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
    .line 2934
    const/16 v36, 0x1

    #@ff
    move/from16 v0, v36

    #@101
    move-object/from16 v1, v24

    #@103
    iput-boolean v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@105
    .line 2935
    move-object/from16 v0, v25

    #@107
    move-object/from16 v1, v24

    #@109
    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@10b
    .line 2936
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
    .line 2939
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
    .line 2940
    .local v31, "tagAttribute":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12a
    move-result v36

    #@12b
    if-nez v36, :cond_4

    #@12d
    .line 2941
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
    .line 2942
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
    .line 3034
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
    .line 3035
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
    .line 3036
    const/16 v36, -0x1

    #@15e
    return v36

    #@15f
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
    .line 2941
    goto :goto_1

    #@162
    .line 2943
    .end local v5    # "cl":Ljava/lang/String;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v23    # "pkg":Ljava/lang/String;
    .end local v24    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v25    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v26    # "providerInfo":Landroid/content/pm/ActivityInfo;
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
    .line 2944
    add-int/lit8 v12, v12, 0x1

    #@171
    .line 2945
    new-instance v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@173
    const/16 v36, 0x0

    #@175
    move-object/from16 v0, v36

    #@177
    invoke-direct {v9, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@17a
    .line 2948
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
    .line 2950
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
    .line 2951
    .restart local v33    # "uid":I
    if-gez v33, :cond_6

    #@195
    .line 2952
    const/16 v36, 0x1

    #@197
    move/from16 v0, v36

    #@199
    iput-boolean v0, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@19b
    .line 2955
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
    .line 2959
    :cond_7
    const-string/jumbo v36, "id"

    #@1ac
    const/16 v37, 0x0

    #@1ae
    .line 2958
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
    .line 2959
    const/16 v37, 0x10

    #@1ba
    .line 2958
    invoke-static/range {v36 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@1bd
    move-result v10

    #@1be
    .line 2961
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
    .line 2962
    .restart local v31    # "tagAttribute":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1d0
    move-result v36

    #@1d1
    if-nez v36, :cond_8

    #@1d3
    .line 2963
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
    .line 2965
    .local v11, "hostTag":I
    :goto_2
    iput v11, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    #@1df
    .line 2966
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
    .line 2967
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
    .end local v11    # "hostTag":I
    :cond_8
    move v11, v12

    #@1fc
    .line 2963
    goto :goto_2

    #@1fd
    .line 2969
    .end local v9    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v10    # "hostId":I
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
    .line 2970
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
    .line 2971
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
    .line 2972
    .restart local v33    # "uid":I
    if-ltz v33, :cond_1

    #@225
    .line 2973
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
    .line 2974
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
    .line 2976
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
    .line 2977
    new-instance v35, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@24f
    const/16 v36, 0x0

    #@251
    invoke-direct/range {v35 .. v36}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@254
    .line 2979
    .local v35, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const-string/jumbo v36, "id"

    #@257
    const/16 v37, 0x0

    #@259
    .line 2978
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
    .line 2979
    const/16 v37, 0x10

    #@265
    .line 2978
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
    .line 2980
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
    .line 2983
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
    .line 2984
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
    .line 2987
    new-instance v19, Landroid/os/Bundle;

    #@29b
    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    #@29e
    .line 2988
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
    .line 2989
    .local v18, "minWidthString":Ljava/lang/String;
    if-eqz v18, :cond_b

    #@2af
    .line 2990
    const-string/jumbo v36, "appWidgetMinWidth"

    #@2b2
    .line 2991
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
    .line 2990
    move-object/from16 v0, v19

    #@2be
    move-object/from16 v1, v36

    #@2c0
    move/from16 v2, v37

    #@2c2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2c5
    .line 2993
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
    .line 2994
    .local v17, "minHeightString":Ljava/lang/String;
    if-eqz v17, :cond_c

    #@2d6
    .line 2995
    const-string/jumbo v36, "appWidgetMinHeight"

    #@2d9
    .line 2996
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
    .line 2995
    move-object/from16 v0, v19

    #@2e5
    move-object/from16 v1, v36

    #@2e7
    move/from16 v2, v37

    #@2e9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2ec
    .line 2998
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
    .line 2999
    .local v16, "maxWidthString":Ljava/lang/String;
    if-eqz v16, :cond_d

    #@2fd
    .line 3000
    const-string/jumbo v36, "appWidgetMaxWidth"

    #@300
    .line 3001
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
    .line 3000
    move-object/from16 v0, v19

    #@30c
    move-object/from16 v1, v36

    #@30e
    move/from16 v2, v37

    #@310
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@313
    .line 3003
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
    .line 3004
    .local v15, "maxHeightString":Ljava/lang/String;
    if-eqz v15, :cond_e

    #@324
    .line 3005
    const-string/jumbo v36, "appWidgetMaxHeight"

    #@327
    .line 3006
    const/16 v37, 0x10

    #@329
    move/from16 v0, v37

    #@32b
    invoke-static {v15, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@32e
    move-result v37

    #@32f
    .line 3005
    move-object/from16 v0, v19

    #@331
    move-object/from16 v1, v36

    #@333
    move/from16 v2, v37

    #@335
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@338
    .line 3008
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
    .line 3009
    .local v4, "categoryString":Ljava/lang/String;
    if-eqz v4, :cond_f

    #@349
    .line 3010
    const-string/jumbo v36, "appWidgetCategory"

    #@34c
    .line 3011
    const/16 v37, 0x10

    #@34e
    move/from16 v0, v37

    #@350
    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@353
    move-result v37

    #@354
    .line 3010
    move-object/from16 v0, v19

    #@356
    move-object/from16 v1, v36

    #@358
    move/from16 v2, v37

    #@35a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@35d
    .line 3013
    :cond_f
    move-object/from16 v0, v19

    #@35f
    move-object/from16 v1, v35

    #@361
    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@363
    .line 3016
    const-string/jumbo v36, "h"

    #@366
    const/16 v37, 0x0

    #@368
    .line 3015
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
    .line 3016
    const/16 v37, 0x10

    #@374
    .line 3015
    invoke-static/range {v36 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@377
    move-result v11

    #@378
    .line 3017
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
    .line 3018
    .local v27, "providerString":Ljava/lang/String;
    if-eqz v27, :cond_11

    #@389
    .line 3019
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
    .line 3018
    invoke-static/range {v36 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@39d
    move-result v28

    #@39e
    .line 3024
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
    .line 3026
    .local v14, "loadedWidgets":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    move-object/from16 v0, p3

    #@3ab
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3ae
    goto/16 :goto_0

    #@3b0
    .line 2985
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
    .line 3019
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
    .locals 23

    #@0
    .prologue
    .line 261
    new-instance v4, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 262
    .local v4, "configFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    #@8
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 263
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
    .line 264
    const/4 v5, 0x0

    #@16
    const/4 v6, 0x0

    #@17
    .line 263
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1a
    .line 268
    new-instance v8, Landroid/content/IntentFilter;

    #@1c
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@1f
    .line 269
    .local v8, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    #@22
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@25
    .line 270
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    #@28
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2b
    .line 271
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    #@2e
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@31
    .line 272
    const-string/jumbo v1, "package"

    #@34
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@37
    .line 273
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
    .line 274
    const/4 v9, 0x0

    #@42
    const/4 v10, 0x0

    #@43
    .line 273
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@46
    .line 277
    new-instance v12, Landroid/content/IntentFilter;

    #@48
    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    #@4b
    .line 278
    .local v12, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@4e
    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@51
    .line 279
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@54
    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@57
    .line 280
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
    .line 281
    const/4 v13, 0x0

    #@62
    const/4 v14, 0x0

    #@63
    .line 280
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@66
    .line 283
    new-instance v16, Landroid/content/IntentFilter;

    #@68
    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    #@6b
    .line 284
    .local v16, "offModeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    #@6e
    move-object/from16 v0, v16

    #@70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@73
    .line 285
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    #@76
    move-object/from16 v0, v16

    #@78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@7b
    .line 286
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
    .line 287
    const/16 v17, 0x0

    #@87
    const/16 v18, 0x0

    #@89
    .line 286
    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@8c
    .line 289
    new-instance v20, Landroid/content/IntentFilter;

    #@8e
    invoke-direct/range {v20 .. v20}, Landroid/content/IntentFilter;-><init>()V

    #@91
    .line 290
    .local v20, "suspendPackageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGES_SUSPENDED"

    #@94
    move-object/from16 v0, v20

    #@96
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@99
    .line 291
    const-string/jumbo v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    #@9c
    move-object/from16 v0, v20

    #@9e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@a1
    .line 292
    move-object/from16 v0, p0

    #@a3
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@a5
    move-object/from16 v17, v0

    #@a7
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@ab
    move-object/from16 v18, v0

    #@ad
    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@af
    .line 293
    const/16 v21, 0x0

    #@b1
    const/16 v22, 0x0

    #@b3
    .line 292
    invoke-virtual/range {v17 .. v22}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@b6
    .line 258
    return-void
.end method

.method private registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .locals 16
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    #@0
    .prologue
    .line 2217
    move-object/from16 v0, p1

    #@2
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@4
    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    #@6
    if-lez v2, :cond_1

    #@8
    .line 2221
    move-object/from16 v0, p1

    #@a
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    #@c
    if-eqz v2, :cond_2

    #@e
    const/4 v9, 0x1

    #@f
    .line 2222
    .local v9, "alreadyRegistered":Z
    :goto_0
    new-instance v10, Landroid/content/Intent;

    #@11
    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_UPDATE"

    #@14
    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@17
    .line 2223
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "appWidgetIds"

    #@1a
    move-object/from16 v0, p2

    #@1c
    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    #@1f
    .line 2224
    move-object/from16 v0, p1

    #@21
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@23
    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@25
    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@28
    .line 2225
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v14

    #@2c
    .line 2227
    .local v14, "token":J
    :try_start_0
    move-object/from16 v0, p0

    #@2e
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@30
    .line 2228
    move-object/from16 v0, p1

    #@32
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@34
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@37
    move-result-object v3

    #@38
    .line 2227
    const/4 v4, 0x1

    #@39
    .line 2228
    const/high16 v5, 0x8000000

    #@3b
    .line 2227
    invoke-static {v2, v4, v10, v5, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@3e
    move-result-object v2

    #@3f
    move-object/from16 v0, p1

    #@41
    iput-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 2230
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@46
    .line 2232
    if-nez v9, :cond_1

    #@48
    .line 2233
    move-object/from16 v0, p1

    #@4a
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@4c
    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    #@4e
    int-to-long v6, v2

    #@4f
    .line 2234
    .local v6, "period":J
    sget v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    #@51
    int-to-long v2, v2

    #@52
    cmp-long v2, v6, v2

    #@54
    if-gez v2, :cond_0

    #@56
    .line 2235
    sget v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    #@58
    int-to-long v6, v2

    #@59
    .line 2237
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@5c
    move-result-wide v12

    #@5d
    .line 2239
    .local v12, "oldId":J
    :try_start_1
    move-object/from16 v0, p0

    #@5f
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@61
    .line 2240
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@64
    move-result-wide v4

    #@65
    add-long/2addr v4, v6

    #@66
    move-object/from16 v0, p1

    #@68
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    #@6a
    .line 2239
    const/4 v3, 0x2

    #@6b
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@6e
    .line 2242
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@71
    .line 2216
    .end local v6    # "period":J
    .end local v9    # "alreadyRegistered":Z
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "oldId":J
    .end local v14    # "token":J
    :cond_1
    return-void

    #@72
    .line 2221
    :cond_2
    const/4 v9, 0x0

    #@73
    .restart local v9    # "alreadyRegistered":Z
    goto :goto_0

    #@74
    .line 2229
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v14    # "token":J
    :catchall_0
    move-exception v2

    #@75
    .line 2230
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@78
    .line 2229
    throw v2

    #@79
    .line 2241
    .restart local v6    # "period":J
    .restart local v12    # "oldId":J
    :catchall_1
    move-exception v2

    #@7a
    .line 2242
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7d
    .line 2241
    throw v2
.end method

.method private registerOnCrossProfileProvidersChangedListener()V
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 299
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    #@6
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    #@9
    .line 296
    :cond_0
    return-void
.end method

.method private reloadWidgetsMaskedState(I)V
    .locals 18
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 463
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v8

    #@4
    .line 465
    .local v8, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    #@6
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@8
    move/from16 v0, p1

    #@a
    invoke-virtual {v15, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@d
    move-result-object v14

    #@e
    .line 467
    .local v14, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    #@10
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@12
    move/from16 v0, p1

    #@14
    invoke-virtual {v15, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@17
    move-result v15

    #@18
    if-eqz v15, :cond_1

    #@1a
    const/4 v7, 0x0

    #@1b
    .line 468
    .local v7, "lockedProfile":Z
    :goto_0
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    #@1e
    move-result v12

    #@1f
    .line 469
    .local v12, "quietProfile":Z
    move-object/from16 v0, p0

    #@21
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v2

    #@27
    .line 470
    .local v2, "N":I
    const/4 v6, 0x0

    #@28
    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_4

    #@2a
    .line 471
    move-object/from16 v0, p0

    #@2c
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v10

    #@32
    check-cast v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@34
    .line 472
    .local v10, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@37
    move-result v11

    #@38
    .line 473
    .local v11, "providerUserId":I
    move/from16 v0, p1

    #@3a
    if-eq v11, v0, :cond_2

    #@3c
    .line 470
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 467
    .end local v2    # "N":I
    .end local v6    # "i":I
    .end local v7    # "lockedProfile":Z
    .end local v10    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v11    # "providerUserId":I
    .end local v12    # "quietProfile":Z
    :cond_1
    const/4 v7, 0x1

    #@40
    .restart local v7    # "lockedProfile":Z
    goto :goto_0

    #@41
    .line 477
    .restart local v2    # "N":I
    .restart local v6    # "i":I
    .restart local v10    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v11    # "providerUserId":I
    .restart local v12    # "quietProfile":Z
    :cond_2
    invoke-virtual {v10, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedByLockedProfileLocked(Z)Z

    #@44
    move-result v3

    #@45
    .line 478
    .local v3, "changed":Z
    invoke-virtual {v10, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedByQuietProfileLocked(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    move-result v15

    #@49
    or-int/2addr v3, v15

    #@4a
    .line 482
    :try_start_1
    move-object/from16 v0, p0

    #@4c
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@4e
    .line 483
    iget-object v0, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@50
    move-object/from16 v16, v0

    #@52
    move-object/from16 v0, v16

    #@54
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@56
    move-object/from16 v16, v0

    #@58
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@5b
    move-result-object v16

    #@5c
    invoke-virtual {v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@5f
    move-result v17

    #@60
    .line 482
    invoke-interface/range {v15 .. v17}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@63
    move-result v13

    #@64
    .line 488
    :goto_3
    :try_start_2
    invoke-virtual {v10, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedBySuspendedPackageLocked(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@67
    move-result v15

    #@68
    or-int/2addr v3, v15

    #@69
    .line 492
    :goto_4
    if-eqz v3, :cond_0

    #@6b
    .line 493
    :try_start_3
    invoke-virtual {v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    #@6e
    move-result v15

    #@6f
    if-eqz v15, :cond_3

    #@71
    .line 494
    const/4 v15, 0x0

    #@72
    move-object/from16 v0, p0

    #@74
    invoke-direct {v0, v10, v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@77
    goto :goto_2

    #@78
    .line 500
    .end local v2    # "N":I
    .end local v3    # "changed":Z
    .end local v6    # "i":I
    .end local v7    # "lockedProfile":Z
    .end local v10    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v11    # "providerUserId":I
    .end local v12    # "quietProfile":Z
    .end local v14    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v15

    #@79
    .line 501
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7c
    .line 500
    throw v15

    #@7d
    .line 484
    .restart local v2    # "N":I
    .restart local v3    # "changed":Z
    .restart local v6    # "i":I
    .restart local v7    # "lockedProfile":Z
    .restart local v10    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v11    # "providerUserId":I
    .restart local v12    # "quietProfile":Z
    .restart local v14    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v5

    #@7e
    .line 486
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v13, 0x0

    #@7f
    .local v13, "suspended":Z
    goto :goto_3

    #@80
    .line 489
    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v13    # "suspended":Z
    :catch_1
    move-exception v4

    #@81
    .line 490
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v15, "AppWidgetServiceImpl"

    #@84
    const-string/jumbo v16, "Failed to query application info"

    #@87
    move-object/from16 v0, v16

    #@89
    invoke-static {v15, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8c
    goto :goto_4

    #@8d
    .line 496
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v0, p0

    #@8f
    invoke-direct {v0, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@92
    goto :goto_2

    #@93
    .line 501
    .end local v3    # "changed":Z
    .end local v10    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v11    # "providerUserId":I
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@96
    .line 462
    return-void
.end method

.method private removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3274
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;I)Z

    #@3
    move-result v3

    #@4
    .line 3279
    .local v3, "removed":Z
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 3280
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    #@c
    .end local v3    # "removed":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@e
    .line 3281
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@16
    .line 3282
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
    .line 3283
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@23
    move-result v4

    #@24
    if-ne v4, p2, :cond_0

    #@26
    .line 3284
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@29
    .line 3285
    const/4 v3, 0x1

    #@2a
    .line 3280
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 3289
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
    .line 3259
    const/4 v3, 0x0

    #@1
    .line 3261
    .local v3, "removed":Z
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 3262
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 3263
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@13
    .line 3264
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
    .line 3265
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@24
    move-result v4

    #@25
    if-ne v4, p2, :cond_0

    #@27
    .line 3266
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@2a
    .line 3267
    const/4 v3, 0x1

    #@2b
    .line 3262
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 3270
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1
    return v3
.end method

.method private removeWidgetsForPackageLocked(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "parentUserId"    # I

    #@0
    .prologue
    .line 3247
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 3248
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 3249
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@11
    .line 3250
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@13
    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@15
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 3251
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@22
    move-result v3

    #@23
    if-ne v3, p2, :cond_0

    #@25
    .line 3252
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v3

    #@2b
    if-lez v3, :cond_0

    #@2d
    .line 3253
    invoke-direct {p0, v2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    #@30
    .line 3248
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 3246
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1
    return-void
.end method

.method private resolveHostUidLocked(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 637
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 638
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@9
    .line 639
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@11
    .line 640
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
    .line 641
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 642
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
    .line 644
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
    .line 645
    return-void

    #@5d
    .line 638
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 636
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_2
    return-void
.end method

.method private saveGroupStateAsync(I)V
    .locals 2
    .param p1, "groupId"    # I

    #@0
    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 1796
    return-void
.end method

.method private saveStateLocked(I)V
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->tagProvidersAndHosts()V

    #@3
    .line 2767
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@5
    invoke-virtual {v7, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    #@8
    move-result-object v5

    #@9
    .line 2769
    .local v5, "profileIds":[I
    array-length v3, v5

    #@a
    .line 2770
    .local v3, "profileCount":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@d
    .line 2771
    aget v4, v5, v2

    #@f
    .line 2773
    .local v4, "profileId":I
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    #@12
    move-result-object v1

    #@13
    .line 2776
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@16
    move-result-object v6

    #@17
    .line 2777
    .local v6, "stream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v6, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_0

    #@1d
    .line 2778
    invoke-virtual {v1, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@20
    .line 2770
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 2780
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :cond_0
    invoke-virtual {v1, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@26
    .line 2781
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
    .line 2783
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    #@31
    .line 2784
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
    .line 2764
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Landroid/util/AtomicFile;
    .end local v4    # "profileId":I
    :cond_1
    return-void
.end method

.method private scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V
    .locals 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "viewId"    # I

    #@0
    .prologue
    .line 1817
    if-eqz p2, :cond_0

    #@2
    const/4 v1, 0x1

    #@3
    if-ne p2, v1, :cond_1

    #@5
    .line 1820
    :cond_0
    return-void

    #@6
    .line 1822
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9
    move-result-wide v2

    #@a
    .line 1823
    .local v2, "requestTime":J
    if-eqz p1, :cond_2

    #@c
    .line 1824
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateTimes:Landroid/util/SparseLongArray;

    #@e
    invoke-virtual {v1, p2, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    #@11
    .line 1826
    :cond_2
    if-eqz p1, :cond_3

    #@13
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@15
    if-nez v1, :cond_4

    #@17
    .line 1829
    :cond_3
    return-void

    #@18
    .line 1826
    :cond_4
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@1a
    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@1c
    if-nez v1, :cond_3

    #@1e
    .line 1827
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@20
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@22
    if-eqz v1, :cond_3

    #@24
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 1828
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2a
    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@2c
    .line 1826
    if-nez v1, :cond_3

    #@2e
    .line 1832
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@31
    move-result-object v0

    #@32
    .line 1833
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@34
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@36
    .line 1834
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@38
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@3a
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@3c
    .line 1835
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@42
    .line 1836
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@44
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@46
    .line 1837
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@48
    .line 1839
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    #@4a
    .line 1840
    const/4 v4, 0x4

    #@4b
    .line 1839
    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@52
    .line 1816
    return-void
.end method

.method private scheduleNotifyGroupHostsForProvidersChangedLocked(I)V
    .locals 11
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1968
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@2
    invoke-virtual {v9, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    #@5
    move-result-object v8

    #@6
    .line 1970
    .local v8, "profileIds":[I
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    .line 1971
    .local v1, "N":I
    add-int/lit8 v5, v1, -0x1

    #@e
    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    #@10
    .line 1972
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@18
    .line 1974
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const/4 v4, 0x0

    #@19
    .line 1975
    .local v4, "hostInGroup":Z
    array-length v0, v8

    #@1a
    .line 1976
    .local v0, "M":I
    const/4 v6, 0x0

    #@1b
    .local v6, "j":I
    :goto_1
    if-ge v6, v0, :cond_0

    #@1d
    .line 1977
    aget v7, v8, v6

    #@1f
    .line 1978
    .local v7, "profileId":I
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@22
    move-result v9

    #@23
    if-ne v9, v7, :cond_2

    #@25
    .line 1979
    const/4 v4, 0x1

    #@26
    .line 1984
    .end local v7    # "profileId":I
    :cond_0
    if-nez v4, :cond_3

    #@28
    .line 1971
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1976
    .restart local v7    # "profileId":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 1988
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
    .line 1992
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3b
    move-result-object v2

    #@3c
    .line 1993
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@3e
    .line 1994
    iget-object v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@40
    iput-object v9, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@42
    .line 1996
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    #@44
    .line 1997
    const/4 v10, 0x3

    #@45
    .line 1996
    invoke-virtual {v9, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@48
    move-result-object v9

    #@49
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    #@4c
    goto :goto_2

    #@4d
    .line 1967
    .end local v0    # "M":I
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v4    # "hostInGroup":Z
    .end local v6    # "j":I
    :cond_4
    return-void
.end method

.method private scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 1931
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 1932
    .local v2, "requestTime":J
    if-eqz p1, :cond_0

    #@6
    .line 1934
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateTimes:Landroid/util/SparseLongArray;

    #@8
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    #@b
    .line 1935
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateTimes:Landroid/util/SparseLongArray;

    #@d
    const/4 v4, 0x1

    #@e
    invoke-virtual {v1, v4, v2, v3}, Landroid/util/SparseLongArray;->append(IJ)V

    #@11
    .line 1937
    :cond_0
    if-eqz p1, :cond_1

    #@13
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@15
    if-nez v1, :cond_2

    #@17
    .line 1939
    :cond_1
    return-void

    #@18
    .line 1937
    :cond_2
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@1a
    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@1c
    if-nez v1, :cond_1

    #@1e
    .line 1938
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@20
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@22
    if-eqz v1, :cond_1

    #@24
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@26
    iget-boolean v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@28
    .line 1937
    if-nez v1, :cond_1

    #@2a
    .line 1942
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@2d
    move-result-object v0

    #@2e
    .line 1943
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@30
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@32
    .line 1944
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@34
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@36
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@38
    .line 1945
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3a
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@3c
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@3e
    .line 1946
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@41
    move-result-object v1

    #@42
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@44
    .line 1947
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@46
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@48
    .line 1949
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    #@4a
    .line 1950
    const/4 v4, 0x2

    #@4b
    .line 1949
    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@52
    .line 1930
    return-void
.end method

.method private scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "updateViews"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1896
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v2

    #@5
    .line 1897
    .local v2, "requestTime":J
    if-eqz p1, :cond_0

    #@7
    .line 1898
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateTimes:Landroid/util/SparseLongArray;

    #@9
    const/4 v5, 0x0

    #@a
    invoke-virtual {v4, v5, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    #@d
    .line 1900
    :cond_0
    if-eqz p1, :cond_1

    #@f
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@11
    if-nez v4, :cond_2

    #@13
    .line 1902
    :cond_1
    return-void

    #@14
    .line 1900
    :cond_2
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@16
    iget-boolean v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@18
    if-nez v4, :cond_1

    #@1a
    .line 1901
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@1c
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@1e
    if-eqz v4, :cond_1

    #@20
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@22
    iget-boolean v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@24
    .line 1900
    if-nez v4, :cond_1

    #@26
    .line 1905
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@29
    move-result-object v0

    #@2a
    .line 1906
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@2c
    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@2e
    .line 1907
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@30
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@32
    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@34
    .line 1908
    if-eqz p2, :cond_3

    #@36
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@39
    move-result-object v1

    #@3a
    :cond_3
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@3c
    .line 1909
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@42
    .line 1910
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@44
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@46
    .line 1912
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    #@48
    .line 1913
    const/4 v4, 0x1

    #@49
    .line 1912
    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@50
    .line 1895
    return-void
.end method

.method private sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 3313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3315
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 3317
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 3312
    return-void

    #@d
    .line 3316
    :catchall_0
    move-exception v2

    #@e
    .line 3317
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 3316
    throw v2
.end method

.method private sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 2196
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_DELETED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2197
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@a
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@c
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@11
    .line 2198
    const-string/jumbo v1, "appWidgetId"

    #@14
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@19
    .line 2199
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
    .line 2195
    return-void
.end method

.method private sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@0
    .prologue
    .line 2203
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_DISABLED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2204
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@a
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@f
    .line 2205
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@11
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@14
    move-result-object v1

    #@15
    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@18
    .line 2202
    return-void
.end method

.method private sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 2
    .param p1, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@0
    .prologue
    .line 2183
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_ENABLED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2184
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@a
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@f
    .line 2185
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@11
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@14
    move-result-object v1

    #@15
    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@18
    .line 2182
    return-void
.end method

.method private sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    #@0
    .prologue
    .line 2189
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_UPDATE"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2190
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "appWidgetIds"

    #@b
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    #@e
    .line 2191
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@10
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@15
    .line 2192
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@17
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1e
    .line 2188
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
    .line 2327
    const-string/jumbo v0, "g"

    #@4
    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 2328
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
    .line 2329
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
    .line 2330
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
    .line 2331
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2f
    if-eqz v0, :cond_0

    #@31
    .line 2332
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
    .line 2334
    :cond_0
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@41
    if-eqz v0, :cond_1

    #@43
    .line 2335
    const-string/jumbo v0, "min_width"

    #@46
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@48
    .line 2336
    const-string/jumbo v2, "appWidgetMinWidth"

    #@4b
    .line 2335
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
    .line 2337
    const-string/jumbo v0, "min_height"

    #@59
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@5b
    .line 2338
    const-string/jumbo v2, "appWidgetMinHeight"

    #@5e
    .line 2337
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
    .line 2339
    const-string/jumbo v0, "max_width"

    #@6c
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@6e
    .line 2340
    const-string/jumbo v2, "appWidgetMaxWidth"

    #@71
    .line 2339
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
    .line 2341
    const-string/jumbo v0, "max_height"

    #@7f
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@81
    .line 2342
    const-string/jumbo v2, "appWidgetMaxHeight"

    #@84
    .line 2341
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
    .line 2343
    const-string/jumbo v0, "host_category"

    #@92
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@94
    .line 2344
    const-string/jumbo v2, "appWidgetCategory"

    #@97
    .line 2343
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
    .line 2346
    :cond_1
    const-string/jumbo v0, "g"

    #@a5
    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a8
    .line 2326
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
    .line 2319
    const-string/jumbo v0, "h"

    #@4
    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 2320
    const-string/jumbo v0, "pkg"

    #@a
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@c
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@e
    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11
    .line 2321
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
    .line 2322
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
    .line 2323
    const-string/jumbo v0, "h"

    #@2e
    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31
    .line 2318
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
    .line 2311
    const-string/jumbo v0, "p"

    #@4
    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 2312
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
    .line 2313
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
    .line 2314
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
    .line 2315
    const-string/jumbo v0, "p"

    #@32
    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@35
    .line 2310
    return-void
.end method

.method private setMinAppWidgetIdLocked(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "minWidgetId"    # I

    #@0
    .prologue
    .line 1627
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    #@3
    move-result v0

    #@4
    .line 1628
    .local v0, "nextAppWidgetId":I
    if-ge v0, p2, :cond_0

    #@6
    .line 1629
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@8
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@b
    .line 1626
    :cond_0
    return-void
.end method

.method private tagProvidersAndHosts()V
    .locals 6

    #@0
    .prologue
    .line 2790
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v4

    #@6
    .line 2791
    .local v4, "providerCount":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@9
    .line 2792
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@11
    .line 2793
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    #@13
    .line 2791
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2796
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_0
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v1

    #@1c
    .line 2797
    .local v1, "hostCount":I
    const/4 v2, 0x0

    #@1d
    :goto_1
    if-ge v2, v1, :cond_1

    #@1f
    .line 2798
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@27
    .line 2799
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    #@29
    .line 2797
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 2789
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1
    return-void
.end method

.method private unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 1712
    iget v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@2
    .line 1714
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
    .line 1716
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 1717
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroid/util/Pair;

    #@18
    .line 1718
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
    .line 1720
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@24
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;

    #@2a
    .line 1721
    .local v1, "conn":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    #@2d
    .line 1722
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@2f
    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@32
    .line 1723
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@35
    goto :goto_0

    #@36
    .line 1729
    .end local v1    # "conn":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@39
    .line 1711
    return-void
.end method

.method private unbindService(Landroid/content/ServiceConnection;)V
    .locals 3
    .param p1, "connection"    # Landroid/content/ServiceConnection;

    #@0
    .prologue
    .line 3334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3336
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 3338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 3333
    return-void

    #@d
    .line 3337
    :catchall_0
    move-exception v2

    #@e
    .line 3338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 3337
    throw v2
.end method

.method private unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 4
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@0
    .prologue
    .line 627
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 628
    .local v2, "widgetCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "j":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 629
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@11
    .line 630
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->-wrap0(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 631
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    #@1a
    move-result-object v3

    #@1b
    invoke-direct {p0, v1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    #@1e
    .line 628
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 626
    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1
    return-void
.end method

.method private updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;
    .param p4, "partially"    # Z

    #@0
    .prologue
    .line 1585
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v4

    #@4
    .line 1587
    .local v4, "userId":I
    if-eqz p2, :cond_0

    #@6
    array-length v6, p2

    #@7
    if-nez v6, :cond_1

    #@9
    .line 1588
    :cond_0
    return-void

    #@a
    .line 1592
    :cond_1
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@c
    invoke-virtual {v6, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@f
    .line 1594
    if-eqz p3, :cond_2

    #@11
    invoke-virtual {p3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    #@14
    move-result v2

    #@15
    .line 1595
    .local v2, "bitmapMemoryUsage":I
    :goto_0
    iget v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    #@17
    if-le v2, v6, :cond_3

    #@19
    .line 1596
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
    .line 1598
    const-string/jumbo v8, ", max: "

    #@2e
    .line 1596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    .line 1598
    iget v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    #@34
    .line 1596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    .line 1598
    const-string/jumbo v8, ")"

    #@3b
    .line 1596
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
    .line 1594
    .end local v2    # "bitmapMemoryUsage":I
    :cond_2
    const/4 v2, 0x0

    #@48
    .restart local v2    # "bitmapMemoryUsage":I
    goto :goto_0

    #@49
    .line 1601
    :cond_3
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@4b
    monitor-enter v7

    #@4c
    .line 1602
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@4f
    .line 1604
    array-length v0, p2

    #@50
    .line 1605
    .local v0, "N":I
    const/4 v3, 0x0

    #@51
    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    #@53
    .line 1606
    aget v1, p2, v3

    #@55
    .line 1611
    .local v1, "appWidgetId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@58
    move-result v6

    #@59
    .line 1610
    invoke-direct {p0, v1, v6, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@5c
    move-result-object v5

    #@5d
    .line 1613
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v5, :cond_4

    #@5f
    .line 1614
    invoke-direct {p0, v5, p3, p4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    .line 1605
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
    .line 1584
    return-void

    #@67
    .line 1601
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
    .line 1802
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1803
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@8
    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1801
    :cond_0
    :goto_0
    return-void

    #@d
    .line 1803
    :cond_1
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@f
    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@11
    if-nez v0, :cond_0

    #@13
    .line 1805
    if-eqz p3, :cond_2

    #@15
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 1807
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@1b
    invoke-virtual {v0, p2}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    #@1e
    .line 1812
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    #@21
    move-result-object v0

    #@22
    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    #@25
    goto :goto_0

    #@26
    .line 1810
    :cond_2
    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@28
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
    .line 3169
    .local p3, "removedProviders":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    const/4 v15, 0x0

    #@1
    .line 3171
    .local v15, "providersUpdated":Z
    new-instance v11, Ljava/util/HashSet;

    #@3
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    #@6
    .line 3172
    .local v11, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    new-instance v9, Landroid/content/Intent;

    #@8
    const-string/jumbo v18, "android.appwidget.action.APPWIDGET_UPDATE"

    #@b
    move-object/from16 v0, v18

    #@d
    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 3173
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    #@12
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@15
    .line 3174
    move-object/from16 v0, p0

    #@17
    move/from16 v1, p2

    #@19
    invoke-direct {v0, v9, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@1c
    move-result-object v7

    #@1d
    .line 3177
    .local v7, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_1

    #@1f
    const/4 v4, 0x0

    #@20
    .line 3178
    .local v4, "N":I
    :goto_0
    const/4 v8, 0x0

    #@21
    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_6

    #@23
    .line 3179
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v16

    #@27
    check-cast v16, Landroid/content/pm/ResolveInfo;

    #@29
    .line 3180
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    #@2b
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2d
    .line 3182
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
    .line 3178
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 3177
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
    .line 3186
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
    .line 3187
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
    .line 3188
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
    .line 3187
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
    .line 3190
    .local v14, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    move-object/from16 v0, p0

    #@79
    invoke-direct {v0, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@7c
    move-result-object v13

    #@7d
    .line 3191
    .local v13, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v13, :cond_3

    #@7f
    .line 3192
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
    .line 3193
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@8c
    .line 3194
    const/4 v15, 0x1

    #@8d
    goto :goto_2

    #@8e
    .line 3197
    :cond_3
    move-object/from16 v0, p0

    #@90
    move-object/from16 v1, v16

    #@92
    invoke-direct {v0, v14, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@95
    move-result-object v12

    #@96
    .line 3198
    .local v12, "parsed":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v12, :cond_5

    #@98
    .line 3199
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@9b
    .line 3201
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@9d
    move-object/from16 v18, v0

    #@9f
    move-object/from16 v0, v18

    #@a1
    iput-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@a3
    .line 3203
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@a5
    move-object/from16 v18, v0

    #@a7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@aa
    move-result v3

    #@ab
    .line 3204
    .local v3, "M":I
    if-lez v3, :cond_5

    #@ad
    .line 3205
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@af
    move-object/from16 v18, v0

    #@b1
    invoke-static/range {v18 .. v18}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    #@b4
    move-result-object v6

    #@b5
    .line 3209
    .local v6, "appWidgetIds":[I
    move-object/from16 v0, p0

    #@b7
    invoke-direct {v0, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@ba
    .line 3210
    move-object/from16 v0, p0

    #@bc
    invoke-direct {v0, v13, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    #@bf
    .line 3213
    const/4 v10, 0x0

    #@c0
    .local v10, "j":I
    :goto_3
    if-ge v10, v3, :cond_4

    #@c2
    .line 3214
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
    .line 3215
    .local v17, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/16 v18, 0x0

    #@d0
    move-object/from16 v0, v18

    #@d2
    move-object/from16 v1, v17

    #@d4
    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    #@d6
    .line 3216
    move-object/from16 v0, p0

    #@d8
    move-object/from16 v1, v17

    #@da
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@dd
    .line 3213
    add-int/lit8 v10, v10, 0x1

    #@df
    goto :goto_3

    #@e0
    .line 3219
    .end local v17    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_4
    move-object/from16 v0, p0

    #@e2
    invoke-direct {v0, v13, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    #@e5
    .line 3222
    .end local v3    # "M":I
    .end local v6    # "appWidgetIds":[I
    .end local v10    # "j":I
    :cond_5
    const/4 v15, 0x1

    #@e6
    goto/16 :goto_2

    #@e8
    .line 3228
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
    .line 3229
    add-int/lit8 v8, v4, -0x1

    #@f4
    :goto_4
    if-ltz v8, :cond_a

    #@f6
    .line 3230
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
    .line 3231
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
    .line 3232
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
    .line 3233
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
    .line 3229
    :cond_7
    :goto_5
    add-int/lit8 v8, v8, -0x1

    #@134
    goto :goto_4

    #@135
    .line 3234
    :cond_8
    if-eqz p3, :cond_9

    #@137
    .line 3235
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
    .line 3237
    :cond_9
    move-object/from16 v0, p0

    #@144
    invoke-direct {v0, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@147
    .line 3238
    const/4 v15, 0x1

    #@148
    goto :goto_5

    #@149
    .line 3242
    .end local v13    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_a
    return v15
.end method

.method private updateWidgetPackageSuspensionMaskedState([Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "packagesArray"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "profileId"    # I

    #@0
    .prologue
    .line 510
    if-nez p1, :cond_0

    #@2
    .line 511
    return-void

    #@3
    .line 513
    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    #@5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@8
    move-result-object v5

    #@9
    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    #@c
    .line 514
    .local v2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v6

    #@f
    .line 515
    :try_start_0
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    .line 516
    .local v0, "N":I
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@18
    .line 517
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@20
    .line 518
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@23
    move-result v4

    #@24
    .line 519
    .local v4, "providerUserId":I
    if-ne v4, p3, :cond_1

    #@26
    .line 520
    iget-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@28
    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@2a
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_1

    #@34
    .line 523
    invoke-virtual {v3, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedBySuspendedPackageLocked(Z)Z

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_1

    #@3a
    .line 524
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    #@3d
    move-result v5

    #@3e
    if-eqz v5, :cond_2

    #@40
    .line 525
    const/4 v5, 0x0

    #@41
    invoke-direct {p0, v3, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@44
    .line 516
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_0

    #@47
    .line 527
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    goto :goto_1

    #@4b
    .line 514
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v4    # "providerUserId":I
    :catchall_0
    move-exception v5

    #@4c
    monitor-exit v6

    #@4d
    throw v5

    #@4e
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_3
    monitor-exit v6

    #@4f
    .line 509
    return-void
.end method

.method private writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z
    .locals 12
    .param p1, "stream"    # Ljava/io/FileOutputStream;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2821
    :try_start_0
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    #@2
    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@5
    .line 2822
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@7
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@a
    move-result-object v9

    #@b
    invoke-interface {v6, p1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@e
    .line 2823
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
    .line 2824
    const-string/jumbo v9, "gs"

    #@1a
    const/4 v10, 0x0

    #@1b
    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 2825
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
    .line 2827
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v0

    #@30
    .line 2828
    .local v0, "N":I
    const/4 v4, 0x0

    #@31
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    #@33
    .line 2829
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v7

    #@39
    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3b
    .line 2831
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@3e
    move-result v9

    #@3f
    if-eq v9, p2, :cond_1

    #@41
    .line 2828
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@43
    goto :goto_0

    #@44
    .line 2834
    :cond_1
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v9

    #@4a
    if-lez v9, :cond_0

    #@4c
    .line 2835
    invoke-static {v6, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    goto :goto_1

    #@50
    .line 2874
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catch_0
    move-exception v2

    #@51
    .line 2875
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
    .line 2876
    const/4 v9, 0x0

    #@6c
    return v9

    #@6d
    .line 2839
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
    .line 2840
    const/4 v4, 0x0

    #@74
    :goto_2
    if-ge v4, v0, :cond_4

    #@76
    .line 2841
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7b
    move-result-object v3

    #@7c
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@7e
    .line 2843
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@81
    move-result v9

    #@82
    if-eq v9, p2, :cond_3

    #@84
    .line 2840
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@86
    goto :goto_2

    #@87
    .line 2846
    :cond_3
    invoke-static {v6, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@8a
    goto :goto_3

    #@8b
    .line 2849
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_4
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@8d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@90
    move-result v0

    #@91
    .line 2850
    const/4 v4, 0x0

    #@92
    :goto_4
    if-ge v4, v0, :cond_6

    #@94
    .line 2851
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@96
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@99
    move-result-object v8

    #@9a
    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@9c
    .line 2853
    .local v8, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@9e
    invoke-virtual {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@a1
    move-result v9

    #@a2
    if-eq v9, p2, :cond_5

    #@a4
    .line 2850
    :goto_5
    add-int/lit8 v4, v4, 0x1

    #@a6
    goto :goto_4

    #@a7
    .line 2856
    :cond_5
    invoke-static {v6, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@aa
    goto :goto_5

    #@ab
    .line 2859
    .end local v8    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_6
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@ad
    invoke-virtual {v9}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    #@b0
    move-result-object v5

    #@b1
    .line 2860
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_7
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@b4
    move-result v9

    #@b5
    if-eqz v9, :cond_8

    #@b7
    .line 2861
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ba
    move-result-object v1

    #@bb
    check-cast v1, Landroid/util/Pair;

    #@bd
    .line 2863
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
    .line 2866
    const-string/jumbo v9, "b"

    #@ca
    const/4 v10, 0x0

    #@cb
    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ce
    .line 2867
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
    .line 2868
    const-string/jumbo v9, "b"

    #@dc
    const/4 v10, 0x0

    #@dd
    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e0
    goto :goto_6

    #@e1
    .line 2871
    .end local v1    # "binding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_8
    const-string/jumbo v9, "gs"

    #@e4
    const/4 v10, 0x0

    #@e5
    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e8
    .line 2872
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@eb
    .line 2873
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
    .line 2675
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 2677
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@8
    .line 2674
    return-void
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    #@0
    .prologue
    .line 809
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v3

    #@4
    .line 811
    .local v3, "userId":I
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 812
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
    .line 816
    :cond_0
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 818
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v6

    #@2a
    .line 819
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 821
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@2f
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@32
    move-result v5

    #@33
    if-gez v5, :cond_1

    #@35
    .line 822
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@37
    const/4 v7, 0x1

    #@38
    invoke-virtual {v5, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    #@3b
    .line 825
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I

    #@3e
    move-result v0

    #@3f
    .line 829
    .local v0, "appWidgetId":I
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@44
    move-result v5

    #@45
    invoke-direct {v2, v5, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@48
    .line 830
    .local v2, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@4b
    move-result-object v1

    #@4c
    .line 832
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@4e
    const/4 v5, 0x0

    #@4f
    invoke-direct {v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@52
    .line 833
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iput v0, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@54
    .line 834
    iput-object v1, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@56
    .line 836
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5b
    .line 837
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@5e
    .line 839
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@61
    .line 841
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@63
    if-eqz v5, :cond_2

    #@65
    .line 842
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
    .line 843
    const-string/jumbo v8, " for host "

    #@7b
    .line 842
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v7

    #@7f
    .line 843
    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@81
    .line 842
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
    .line 846
    return v0

    #@8e
    .line 818
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
    .line 991
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v3

    #@4
    .line 993
    .local v3, "userId":I
    sget-boolean v6, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v6, :cond_0

    #@8
    .line 994
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
    .line 998
    :cond_0
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v6, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 1001
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@29
    invoke-virtual {v6, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    #@2c
    move-result v6

    #@2d
    if-nez v6, :cond_1

    #@2f
    .line 1002
    const/4 v6, 0x0

    #@30
    return v6

    #@31
    .line 1007
    :cond_1
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@33
    .line 1008
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    .line 1007
    invoke-virtual {v6, v7, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    #@3a
    move-result v6

    #@3b
    if-nez v6, :cond_2

    #@3d
    .line 1009
    const/4 v6, 0x0

    #@3e
    return v6

    #@3f
    .line 1012
    :cond_2
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@41
    monitor-enter v7

    #@42
    .line 1013
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@45
    .line 1016
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
    .line 1018
    const/4 v6, 0x0

    #@4e
    monitor-exit v7

    #@4f
    return v6

    #@50
    .line 1024
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@53
    move-result v6

    #@54
    .line 1023
    invoke-direct {p0, p2, v6, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@57
    move-result-object v4

    #@58
    .line 1026
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v4, :cond_4

    #@5a
    .line 1027
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
    .line 1028
    const/4 v6, 0x0

    #@75
    monitor-exit v7

    #@76
    return v6

    #@77
    .line 1031
    :cond_4
    :try_start_2
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@79
    if-eqz v6, :cond_5

    #@7b
    .line 1032
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
    .line 1033
    const-string/jumbo v9, " already bound to: "

    #@91
    .line 1032
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v8

    #@95
    .line 1033
    iget-object v9, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@97
    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@99
    .line 1032
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
    .line 1034
    const/4 v6, 0x0

    #@a5
    monitor-exit v7

    #@a6
    return v6

    #@a7
    .line 1037
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
    .line 1039
    .local v2, "providerUid":I
    if-gez v2, :cond_6

    #@b1
    .line 1040
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
    .line 1041
    const-string/jumbo v9, " for profile "

    #@d2
    .line 1040
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
    .line 1042
    const/4 v6, 0x0

    #@e2
    monitor-exit v7

    #@e3
    return v6

    #@e4
    .line 1047
    :cond_6
    :try_start_4
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@e6
    const/4 v6, 0x0

    #@e7
    invoke-direct {v1, v2, p4, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V

    #@ea
    .line 1048
    .local v1, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@ed
    move-result-object v0

    #@ee
    .line 1050
    .local v0, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v0, :cond_7

    #@f0
    .line 1051
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
    .line 1053
    const/4 v6, 0x0

    #@116
    monitor-exit v7

    #@117
    return v6

    #@118
    .line 1056
    :cond_7
    :try_start_5
    iget-boolean v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@11a
    if-eqz v6, :cond_8

    #@11c
    .line 1057
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
    .line 1059
    const/4 v6, 0x0

    #@137
    monitor-exit v7

    #@138
    return v6

    #@139
    .line 1062
    :cond_8
    :try_start_6
    iput-object v0, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@13b
    .line 1063
    if-eqz p5, :cond_c

    #@13d
    invoke-static {p5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@140
    move-result-object v6

    #@141
    :goto_0
    iput-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@143
    .line 1066
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@145
    const-string/jumbo v8, "appWidgetCategory"

    #@148
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@14b
    move-result v6

    #@14c
    if-nez v6, :cond_9

    #@14e
    .line 1067
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@150
    const-string/jumbo v8, "appWidgetCategory"

    #@153
    .line 1068
    const/4 v9, 0x1

    #@154
    .line 1067
    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@157
    .line 1071
    :cond_9
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@159
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15c
    .line 1073
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@15f
    .line 1075
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@161
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@164
    move-result v5

    #@165
    .line 1076
    .local v5, "widgetCount":I
    const/4 v6, 0x1

    #@166
    if-ne v5, v6, :cond_a

    #@168
    .line 1078
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@16b
    .line 1085
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
    .line 1088
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@176
    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    #@179
    move-result-object v6

    #@17a
    invoke-direct {p0, v0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    #@17d
    .line 1090
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@180
    .line 1092
    sget-boolean v6, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@182
    if-eqz v6, :cond_b

    #@184
    .line 1093
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
    .line 1097
    const/4 v6, 0x1

    #@1ad
    return v6

    #@1ae
    .line 1063
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
    .line 1012
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
    .line 1157
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v8

    #@4
    .line 1159
    .local v8, "userId":I
    sget-boolean v10, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v10, :cond_0

    #@8
    .line 1160
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
    .line 1164
    :cond_0
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v10, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 1166
    iget-object v11, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v11

    #@2a
    .line 1167
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 1172
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@30
    move-result v10

    #@31
    .line 1171
    move/from16 v0, p2

    #@33
    invoke-direct {p0, v0, v10, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@36
    move-result-object v9

    #@37
    .line 1174
    .local v9, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v9, :cond_1

    #@39
    .line 1175
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
    .line 1166
    .end local v9    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v10

    #@43
    monitor-exit v11

    #@44
    throw v10

    #@45
    .line 1179
    .restart local v9    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1
    :try_start_1
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@47
    if-nez v10, :cond_2

    #@49
    .line 1180
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
    .line 1184
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@68
    move-result-object v1

    #@69
    .line 1188
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
    .line 1189
    .local v5, "providerPackage":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@76
    move-result-object v7

    #@77
    .line 1190
    .local v7, "servicePackage":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v10

    #@7b
    if-nez v10, :cond_3

    #@7d
    .line 1191
    new-instance v10, Ljava/lang/SecurityException;

    #@7f
    const-string/jumbo v12, "The taget service not in the same package as the widget provider"

    #@82
    invoke-direct {v10, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@85
    throw v10

    #@86
    .line 1197
    :cond_3
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@88
    .line 1198
    iget-object v12, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@8a
    invoke-virtual {v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@8d
    move-result v12

    #@8e
    .line 1197
    invoke-virtual {v10, v1, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V

    #@91
    .line 1206
    const/4 v2, 0x0

    #@92
    .line 1207
    .local v2, "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    new-instance v3, Landroid/content/Intent$FilterComparison;

    #@94
    move-object/from16 v0, p3

    #@96
    invoke-direct {v3, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@99
    .line 1208
    .local v3, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9c
    move-result-object v10

    #@9d
    invoke-static {v10, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@a0
    move-result-object v4

    #@a1
    .line 1210
    .local v4, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@a3
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@a6
    move-result v10

    #@a7
    if-eqz v10, :cond_4

    #@a9
    .line 1211
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@ab
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    move-result-object v2

    #@af
    .end local v2    # "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;

    #@b1
    .line 1212
    .local v2, "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    #@b4
    .line 1213
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unbindService(Landroid/content/ServiceConnection;)V

    #@b7
    .line 1214
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@b9
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@bc
    .line 1219
    .end local v2    # "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    :cond_4
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;

    #@be
    move-object/from16 v0, p4

    #@c0
    invoke-direct {v2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;-><init>(Landroid/os/IBinder;)V

    #@c3
    .line 1220
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
    .line 1221
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@d2
    invoke-virtual {v10, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d5
    .line 1226
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
    .line 1227
    .local v6, "serviceId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    move/from16 v0, p2

    #@e5
    invoke-direct {p0, v0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e8
    monitor-exit v11

    #@e9
    .line 1156
    return-void
.end method

.method clearWidgetsLocked()V
    .locals 1

    #@0
    .prologue
    .line 2741
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 2743
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetsClearedLocked()V

    #@8
    .line 2740
    return-void
.end method

.method public createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;
    .locals 15
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intentFlags"    # I

    #@0
    .prologue
    .line 940
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v12

    #@4
    .line 942
    .local v12, "userId":I
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 943
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
    .line 947
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-virtual {v2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@29
    .line 949
    iget-object v14, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2b
    monitor-enter v14

    #@2c
    .line 950
    :try_start_0
    invoke-direct {p0, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2f
    .line 955
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@32
    move-result v2

    #@33
    .line 954
    move/from16 v0, p2

    #@35
    move-object/from16 v1, p1

    #@37
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@3a
    move-result-object v13

    #@3b
    .line 957
    .local v13, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v13, :cond_1

    #@3d
    .line 958
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
    .line 949
    .end local v13    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v2

    #@5a
    monitor-exit v14

    #@5b
    throw v2

    #@5c
    .line 961
    .restart local v13    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1
    :try_start_1
    iget-object v10, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@5e
    .line 962
    .local v10, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v10, :cond_2

    #@60
    .line 963
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
    .line 967
    :cond_2
    move/from16 v0, p3

    #@7e
    and-int/lit16 v11, v0, -0xc4

    #@80
    .line 969
    .local v11, "secureFlags":I
    new-instance v4, Landroid/content/Intent;

    #@82
    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    #@85
    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@88
    .line 970
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "appWidgetId"

    #@8b
    move/from16 v0, p2

    #@8d
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@90
    .line 971
    iget-object v2, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@92
    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    #@94
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@97
    .line 972
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@9a
    .line 975
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9d
    move-result-wide v8

    #@9e
    .line 978
    .local v8, "identity":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@a0
    .line 980
    new-instance v7, Landroid/os/UserHandle;

    #@a2
    invoke-virtual {v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@a5
    move-result v3

    #@a6
    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    #@a9
    .line 978
    const/4 v3, 0x0

    #@aa
    const/high16 v5, 0x54000000

    #@ac
    .line 980
    const/4 v6, 0x0

    #@ad
    .line 977
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
    .line 983
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b8
    monitor-exit v14

    #@b9
    .line 977
    return-object v2

    #@ba
    .line 982
    :catchall_1
    move-exception v2

    #@bb
    .line 983
    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@be
    .line 982
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public deleteAllHosts()V
    .locals 9

    #@0
    .prologue
    .line 1307
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v4

    #@4
    .line 1309
    .local v4, "userId":I
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 1310
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
    .line 1313
    :cond_0
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@24
    monitor-enter v6

    #@25
    .line 1314
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@28
    .line 1316
    const/4 v1, 0x0

    #@29
    .line 1318
    .local v1, "changed":Z
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v0

    #@2f
    .line 1319
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    #@31
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    #@33
    .line 1320
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@3b
    .line 1323
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
    .line 1324
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@48
    .line 1325
    const/4 v1, 0x1

    #@49
    .line 1327
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@4b
    if-eqz v5, :cond_1

    #@4d
    .line 1328
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
    .line 1319
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@6b
    goto :goto_0

    #@6c
    .line 1333
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_2
    if-eqz v1, :cond_3

    #@6e
    .line 1334
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    :cond_3
    monitor-exit v6

    #@72
    .line 1306
    return-void

    #@73
    .line 1313
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
    .line 852
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 854
    .local v0, "userId":I
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 855
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
    .line 859
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 861
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v3

    #@2a
    .line 862
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 867
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@30
    move-result v2

    #@31
    .line 866
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v1

    #@35
    .line 869
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v1, :cond_1

    #@37
    monitor-exit v3

    #@38
    .line 870
    return-void

    #@39
    .line 873
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@3c
    .line 875
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@3f
    .line 877
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@41
    if-eqz v2, :cond_2

    #@43
    .line 878
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
    .line 879
    const-string/jumbo v5, " for host "

    #@59
    .line 878
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    .line 879
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@5f
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@61
    .line 878
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
    .line 851
    return-void

    #@6e
    .line 861
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
    .line 1274
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v2

    #@4
    .line 1276
    .local v2, "userId":I
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 1277
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
    .line 1281
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 1283
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v4

    #@2a
    .line 1284
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 1288
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@2f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@32
    move-result v3

    #@33
    invoke-direct {v1, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@36
    .line 1289
    .local v1, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    move-result-object v0

    #@3a
    .line 1291
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-nez v0, :cond_1

    #@3c
    monitor-exit v4

    #@3d
    .line 1292
    return-void

    #@3e
    .line 1295
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@41
    .line 1297
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@44
    .line 1299
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 1300
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
    .line 1273
    return-void

    #@66
    .line 1283
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
    .line 706
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.DUMP"

    #@5
    .line 707
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
    .line 708
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14
    move-result v6

    #@15
    .line 707
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    .line 709
    const-string/jumbo v6, ", uid="

    #@1c
    .line 707
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    .line 709
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@23
    move-result v6

    #@24
    .line 707
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    .line 706
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    .line 711
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@31
    monitor-enter v4

    #@32
    .line 712
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v0

    #@38
    .line 713
    .local v0, "N":I
    const-string/jumbo v3, "Providers:"

    #@3b
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 714
    const/4 v2, 0x0

    #@3f
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@41
    .line 715
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
    .line 714
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 718
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@54
    move-result v0

    #@55
    .line 719
    const-string/jumbo v3, " "

    #@58
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5b
    .line 720
    const-string/jumbo v3, "Widgets:"

    #@5e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@61
    .line 721
    const/4 v2, 0x0

    #@62
    :goto_1
    if-ge v2, v0, :cond_1

    #@64
    .line 722
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
    .line 721
    add-int/lit8 v2, v2, 0x1

    #@71
    goto :goto_1

    #@72
    .line 725
    :cond_1
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@74
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@77
    move-result v0

    #@78
    .line 726
    const-string/jumbo v3, " "

    #@7b
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7e
    .line 727
    const-string/jumbo v3, "Hosts:"

    #@81
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84
    .line 728
    const/4 v2, 0x0

    #@85
    :goto_2
    if-ge v2, v0, :cond_2

    #@87
    .line 729
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
    .line 728
    add-int/lit8 v2, v2, 0x1

    #@94
    goto :goto_2

    #@95
    .line 733
    :cond_2
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@97
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@9a
    move-result v0

    #@9b
    .line 734
    const-string/jumbo v3, " "

    #@9e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a1
    .line 735
    const-string/jumbo v3, "Grants:"

    #@a4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7
    .line 736
    const/4 v2, 0x0

    #@a8
    :goto_3
    if-ge v2, v0, :cond_3

    #@aa
    .line 737
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@ac
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@af
    move-result-object v1

    #@b0
    check-cast v1, Landroid/util/Pair;

    #@b2
    .line 738
    .local v1, "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {v1, v2, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b5
    .line 736
    add-int/lit8 v2, v2, 0x1

    #@b7
    goto :goto_3

    #@b8
    .end local v1    # "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_3
    monitor-exit v4

    #@b9
    .line 705
    return-void

    #@ba
    .line 711
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
    .line 1102
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v2

    #@4
    .line 1104
    .local v2, "userId":I
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 1105
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
    .line 1109
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@2b
    .line 1111
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2d
    monitor-enter v4

    #@2e
    .line 1112
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@31
    .line 1116
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
    .line 1117
    .local v1, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3e
    move-result-object v0

    #@3f
    .line 1119
    .local v0, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v0, :cond_1

    #@41
    .line 1120
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
    .line 1123
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
    .line 1111
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
    .line 1129
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v2

    #@4
    .line 1131
    .local v2, "userId":I
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 1132
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
    .line 1136
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 1138
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v4

    #@2a
    .line 1139
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 1143
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@2f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@32
    move-result v3

    #@33
    invoke-direct {v1, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@36
    .line 1144
    .local v1, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@39
    move-result-object v0

    #@3a
    .line 1146
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_1

    #@3c
    .line 1147
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
    .line 1150
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
    .line 1138
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
    .line 1341
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v0

    #@5
    .line 1343
    .local v0, "userId":I
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1344
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
    .line 1348
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@25
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@28
    .line 1350
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2a
    monitor-enter v3

    #@2b
    .line 1351
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2e
    .line 1356
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v2

    #@32
    .line 1355
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@35
    move-result-object v1

    #@36
    .line 1358
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
    .line 1362
    return-object v5

    #@44
    .line 1359
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
    .line 1350
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
    .line 1428
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 1430
    .local v0, "userId":I
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1431
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
    .line 1435
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 1437
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v3

    #@2a
    .line 1438
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 1443
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@30
    move-result v2

    #@31
    .line 1442
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@34
    move-result-object v1

    #@35
    .line 1445
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v1, :cond_1

    #@37
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@39
    if-eqz v2, :cond_1

    #@3b
    .line 1446
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
    .line 1449
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
    .line 1437
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
    .line 1368
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v0

    #@5
    .line 1370
    .local v0, "userId":I
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1371
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
    .line 1375
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@25
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@28
    .line 1377
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2a
    monitor-enter v3

    #@2b
    .line 1378
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2e
    .line 1383
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v2

    #@32
    .line 1382
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@35
    move-result-object v1

    #@36
    .line 1385
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v1, :cond_1

    #@38
    .line 1386
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    move-result-object v2

    #@40
    monitor-exit v3

    #@41
    return-object v2

    #@42
    :cond_1
    monitor-exit v3

    #@43
    .line 1389
    return-object v5

    #@44
    .line 1377
    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v2

    #@45
    monitor-exit v3

    #@46
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
    .line 1544
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v6

    #@4
    .line 1546
    .local v6, "userId":I
    sget-boolean v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 1547
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
    .line 1551
    :cond_0
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v7, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    #@27
    move-result v7

    #@28
    if-nez v7, :cond_1

    #@2a
    .line 1552
    const/4 v7, 0x0

    #@2b
    return-object v7

    #@2c
    .line 1555
    :cond_1
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2e
    monitor-enter v8

    #@2f
    .line 1556
    :try_start_0
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@32
    .line 1558
    new-instance v5, Ljava/util/ArrayList;

    #@34
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@37
    .line 1560
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v3

    #@3d
    .line 1561
    .local v3, "providerCount":I
    const/4 v0, 0x0

    #@3e
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_4

    #@40
    .line 1562
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v2

    #@46
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@48
    .line 1563
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@4a
    .line 1566
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
    .line 1561
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@55
    goto :goto_0

    #@56
    .line 1571
    :cond_3
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    #@5d
    move-result v4

    #@5e
    .line 1572
    .local v4, "providerProfileId":I
    if-ne v4, p2, :cond_2

    #@60
    .line 1573
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@62
    .line 1574
    iget-object v9, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@64
    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@66
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    .line 1573
    invoke-virtual {v7, v9, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    #@6d
    move-result v7

    #@6e
    .line 1572
    if-eqz v7, :cond_2

    #@70
    .line 1575
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
    .line 1555
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
    .line 1579
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
    .line 2351
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
    .line 2356
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
    .line 886
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 887
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
    .line 891
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@25
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    #@28
    .line 893
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2a
    monitor-enter v3

    #@2b
    .line 895
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2e
    .line 897
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    move-result v1

    #@32
    .line 898
    .local v1, "packageUid":I
    if-gez v1, :cond_1

    #@34
    monitor-exit v3

    #@35
    .line 899
    return v5

    #@36
    .line 902
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
    .line 903
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
    .line 893
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
    .line 2752
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    const/16 v2, 0x3e8

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 2753
    new-instance v1, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v2, "Only the system process can call this"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 2755
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@13
    monitor-enter v2

    #@14
    .line 2756
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/util/ArraySet;

    #@1c
    .line 2757
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    #@1e
    .line 2758
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
    .line 2761
    const/4 v1, 0x0

    #@26
    return v1

    #@27
    .line 2755
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
    .line 1476
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v3

    #@4
    .line 1478
    .local v3, "userId":I
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 1479
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
    .line 1483
    :cond_0
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 1485
    if-eqz p2, :cond_1

    #@29
    array-length v5, p2

    #@2a
    if-nez v5, :cond_2

    #@2c
    .line 1486
    :cond_1
    return-void

    #@2d
    .line 1489
    :cond_2
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2f
    monitor-enter v6

    #@30
    .line 1490
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@33
    .line 1492
    array-length v0, p2

    #@34
    .line 1493
    .local v0, "N":I
    const/4 v2, 0x0

    #@35
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@37
    .line 1494
    aget v1, p2, v2

    #@39
    .line 1499
    .local v1, "appWidgetId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3c
    move-result v5

    #@3d
    .line 1498
    invoke-direct {p0, v1, v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@40
    move-result-object v4

    #@41
    .line 1501
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v4, :cond_3

    #@43
    .line 1502
    invoke-direct {p0, v4, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 1493
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
    .line 1475
    return-void

    #@4b
    .line 1489
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
    .line 3344
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@2
    invoke-virtual {v9, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    #@5
    move-result v3

    #@6
    .line 3348
    .local v3, "parentId":I
    if-eq v3, p1, :cond_6

    #@8
    .line 3349
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v10

    #@b
    .line 3350
    const/4 v7, 0x0

    #@c
    .line 3352
    .local v7, "providersChanged":Z
    :try_start_0
    new-instance v4, Landroid/util/ArraySet;

    #@e
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    #@11
    .line 3353
    .local v4, "previousPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v6

    #@17
    .line 3354
    .local v6, "providerCount":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    #@1a
    .line 3355
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@22
    .line 3356
    .local v5, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@25
    move-result v9

    #@26
    if-ne v9, p1, :cond_0

    #@28
    .line 3357
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
    .line 3354
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 3361
    .end local v5    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@39
    move-result v1

    #@3a
    .line 3362
    .local v1, "packageCount":I
    const/4 v0, 0x0

    #@3b
    .end local v7    # "providersChanged":Z
    :goto_1
    if-ge v0, v1, :cond_2

    #@3d
    .line 3363
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Ljava/lang/String;

    #@43
    .line 3364
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@46
    .line 3366
    const/4 v9, 0x0

    #@47
    .line 3365
    invoke-direct {p0, v2, p1, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    #@4a
    move-result v9

    #@4b
    or-int/2addr v7, v9

    #@4c
    .line 3362
    .local v7, "providersChanged":Z
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 3370
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v7    # "providersChanged":Z
    :cond_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    #@52
    move-result v8

    #@53
    .line 3371
    .local v8, "removedCount":I
    const/4 v0, 0x0

    #@54
    :goto_2
    if-ge v0, v8, :cond_3

    #@56
    .line 3372
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@59
    move-result-object v9

    #@5a
    check-cast v9, Ljava/lang/String;

    #@5c
    invoke-direct {p0, v9, p1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetsForPackageLocked(Ljava/lang/String;II)V

    #@5f
    .line 3371
    add-int/lit8 v0, v0, 0x1

    #@61
    goto :goto_2

    #@62
    .line 3376
    :cond_3
    if-nez v7, :cond_4

    #@64
    if-lez v8, :cond_5

    #@66
    .line 3377
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    #@69
    .line 3378
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6c
    :cond_5
    monitor-exit v10

    #@6d
    .line 3343
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    .end local v4    # "previousPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "providerCount":I
    .end local v8    # "removedCount":I
    :cond_6
    return-void

    #@6e
    .line 3349
    :catchall_0
    move-exception v9

    #@6f
    monitor-exit v10

    #@70
    throw v9
.end method

.method onUserStopped(I)V
    .locals 16
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3093
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v15

    #@5
    .line 3094
    const/4 v1, 0x0

    #@6
    .line 3097
    .local v1, "crossProfileWidgetsChanged":Z
    :try_start_0
    move-object/from16 v0, p0

    #@8
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v13

    #@e
    .line 3098
    .local v13, "widgetCount":I
    add-int/lit8 v7, v13, -0x1

    #@10
    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_5

    #@12
    .line 3099
    move-object/from16 v0, p0

    #@14
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v12

    #@1a
    check-cast v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@1c
    .line 3101
    .local v12, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v14, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@1e
    invoke-virtual {v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@21
    move-result v14

    #@22
    move/from16 v0, p1

    #@24
    if-ne v14, v0, :cond_2

    #@26
    const/4 v6, 0x1

    #@27
    .line 3102
    .local v6, "hostInUser":Z
    :goto_1
    iget-object v14, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@29
    if-eqz v14, :cond_3

    #@2b
    const/4 v3, 0x1

    #@2c
    .line 3103
    .local v3, "hasProvider":Z
    :goto_2
    if-eqz v3, :cond_4

    #@2e
    iget-object v14, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@30
    invoke-virtual {v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@33
    move-result v14

    #@34
    move/from16 v0, p1

    #@36
    if-ne v14, v0, :cond_4

    #@38
    const/4 v10, 0x1

    #@39
    .line 3108
    .local v10, "providerInUser":Z
    :goto_3
    if-eqz v6, :cond_1

    #@3b
    if-eqz v3, :cond_0

    #@3d
    if-eqz v10, :cond_1

    #@3f
    .line 3109
    :cond_0
    move-object/from16 v0, p0

    #@41
    invoke-virtual {v0, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@44
    .line 3110
    iget-object v14, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@46
    iget-object v14, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@4b
    .line 3111
    const/4 v14, 0x0

    #@4c
    iput-object v14, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@4e
    .line 3112
    if-eqz v3, :cond_1

    #@50
    .line 3113
    iget-object v14, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@52
    iget-object v14, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@54
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@57
    .line 3114
    const/4 v14, 0x0

    #@58
    iput-object v14, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@5a
    .line 3098
    :cond_1
    add-int/lit8 v7, v7, -0x1

    #@5c
    goto :goto_0

    #@5d
    .line 3101
    .end local v3    # "hasProvider":Z
    .end local v6    # "hostInUser":Z
    .end local v10    # "providerInUser":Z
    :cond_2
    const/4 v6, 0x0

    #@5e
    .restart local v6    # "hostInUser":Z
    goto :goto_1

    #@5f
    .line 3102
    :cond_3
    const/4 v3, 0x0

    #@60
    goto :goto_2

    #@61
    .line 3103
    .restart local v3    # "hasProvider":Z
    :cond_4
    const/4 v10, 0x0

    #@62
    .restart local v10    # "providerInUser":Z
    goto :goto_3

    #@63
    .line 3120
    .end local v3    # "hasProvider":Z
    .end local v6    # "hostInUser":Z
    .end local v10    # "providerInUser":Z
    .end local v12    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_5
    move-object/from16 v0, p0

    #@65
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@67
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@6a
    move-result v5

    #@6b
    .line 3121
    .local v5, "hostCount":I
    add-int/lit8 v7, v5, -0x1

    #@6d
    .end local v1    # "crossProfileWidgetsChanged":Z
    :goto_4
    if-ltz v7, :cond_8

    #@6f
    .line 3122
    move-object/from16 v0, p0

    #@71
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    #@73
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@76
    move-result-object v4

    #@77
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@79
    .line 3123
    .local v4, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@7c
    move-result v14

    #@7d
    move/from16 v0, p1

    #@7f
    if-ne v14, v0, :cond_6

    #@81
    .line 3124
    iget-object v14, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@83
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    #@86
    move-result v14

    #@87
    if-eqz v14, :cond_7

    #@89
    const/4 v14, 0x0

    #@8a
    :goto_5
    or-int/2addr v1, v14

    #@8b
    .line 3125
    .local v1, "crossProfileWidgetsChanged":Z
    move-object/from16 v0, p0

    #@8d
    invoke-direct {v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@90
    .line 3121
    .end local v1    # "crossProfileWidgetsChanged":Z
    :cond_6
    add-int/lit8 v7, v7, -0x1

    #@92
    goto :goto_4

    #@93
    .line 3124
    :cond_7
    const/4 v14, 0x1

    #@94
    goto :goto_5

    #@95
    .line 3133
    .end local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_8
    move-object/from16 v0, p0

    #@97
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@99
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    #@9c
    move-result v2

    #@9d
    .line 3134
    .local v2, "grantCount":I
    add-int/lit8 v7, v2, -0x1

    #@9f
    :goto_6
    if-ltz v7, :cond_a

    #@a1
    .line 3135
    move-object/from16 v0, p0

    #@a3
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@a5
    invoke-virtual {v14, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@a8
    move-result-object v9

    #@a9
    check-cast v9, Landroid/util/Pair;

    #@ab
    .line 3136
    .local v9, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v14, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@ad
    check-cast v14, Ljava/lang/Integer;

    #@af
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    #@b2
    move-result v14

    #@b3
    move/from16 v0, p1

    #@b5
    if-ne v14, v0, :cond_9

    #@b7
    .line 3137
    move-object/from16 v0, p0

    #@b9
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@bb
    invoke-virtual {v14, v7}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@be
    .line 3134
    :cond_9
    add-int/lit8 v7, v7, -0x1

    #@c0
    goto :goto_6

    #@c1
    .line 3142
    .end local v9    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v0, p0

    #@c3
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    #@c5
    move/from16 v0, p1

    #@c7
    invoke-virtual {v14, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@ca
    move-result v11

    #@cb
    .line 3143
    .local v11, "userIndex":I
    if-ltz v11, :cond_b

    #@cd
    .line 3144
    move-object/from16 v0, p0

    #@cf
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    #@d1
    invoke-virtual {v14, v11}, Landroid/util/SparseIntArray;->removeAt(I)V

    #@d4
    .line 3148
    :cond_b
    move-object/from16 v0, p0

    #@d6
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@d8
    move/from16 v0, p1

    #@da
    invoke-virtual {v14, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@dd
    move-result v8

    #@de
    .line 3149
    .local v8, "nextIdIndex":I
    if-ltz v8, :cond_c

    #@e0
    .line 3150
    move-object/from16 v0, p0

    #@e2
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    #@e4
    invoke-virtual {v14, v8}, Landroid/util/SparseIntArray;->removeAt(I)V

    #@e7
    .line 3155
    :cond_c
    if-eqz v1, :cond_d

    #@e9
    .line 3156
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ec
    :cond_d
    monitor-exit v15

    #@ed
    .line 3092
    return-void

    #@ee
    .line 3093
    .end local v2    # "grantCount":I
    .end local v5    # "hostCount":I
    .end local v7    # "i":I
    .end local v8    # "nextIdIndex":I
    .end local v11    # "userIndex":I
    .end local v13    # "widgetCount":I
    :catchall_0
    move-exception v14

    #@ef
    monitor-exit v15

    #@f0
    throw v14
.end method

.method onUserUnlocked(I)V
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2546
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 2547
    return-void

    #@7
    .line 2549
    :cond_0
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@9
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_1

    #@f
    .line 2550
    const-string/jumbo v4, "AppWidgetServiceImpl"

    #@12
    new-instance v5, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v6, "User "

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    const-string/jumbo v6, " is no longer unlocked - exiting"

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 2551
    return-void

    #@31
    .line 2553
    :cond_1
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@33
    monitor-enter v5

    #@34
    .line 2554
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@37
    .line 2555
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@39
    invoke-virtual {v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    #@3c
    move-result v4

    #@3d
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedStateForGroup(I)V

    #@40
    .line 2557
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v0

    #@46
    .line 2558
    .local v0, "N":I
    const/4 v2, 0x0

    #@47
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@49
    .line 2559
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v3

    #@4f
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@51
    .line 2562
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@54
    move-result v4

    #@55
    if-eq v4, p1, :cond_3

    #@57
    .line 2558
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 2566
    :cond_3
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5f
    move-result v4

    #@60
    if-lez v4, :cond_2

    #@62
    .line 2567
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@65
    .line 2568
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@67
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    #@6a
    move-result-object v1

    #@6b
    .line 2569
    .local v1, "appWidgetIds":[I
    invoke-direct {p0, v3, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    #@6e
    .line 2570
    invoke-direct {p0, v3, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    goto :goto_1

    #@72
    .line 2553
    .end local v0    # "N":I
    .end local v1    # "appWidgetIds":[I
    .end local v2    # "i":I
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catchall_0
    move-exception v4

    #@73
    monitor-exit v5

    #@74
    throw v4

    #@75
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_4
    monitor-exit v5

    #@76
    .line 2545
    return-void
.end method

.method onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 2685
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2
    if-nez v2, :cond_0

    #@4
    return-void

    #@5
    .line 2687
    :cond_0
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@7
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@a
    move-result v1

    #@b
    .line 2688
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/util/ArraySet;

    #@13
    .line 2689
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    #@15
    .line 2690
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
    .line 2692
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
    .line 2696
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2e
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 2697
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@36
    invoke-direct {p0, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@39
    .line 2684
    :goto_0
    return-void

    #@3a
    .line 2699
    :cond_2
    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->-wrap0(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z

    #@3d
    goto :goto_0
.end method

.method public partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 1466
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1467
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
    .line 1470
    :cond_0
    const/4 v0, 0x1

    #@23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    #@26
    .line 1465
    return-void
.end method

.method reloadWidgetsMaskedStateForGroup(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 450
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 451
    return-void

    #@9
    .line 453
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v3

    #@c
    .line 454
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    #@f
    .line 455
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@11
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    #@14
    move-result-object v1

    #@15
    .line 456
    .local v1, "profileIds":[I
    const/4 v2, 0x0

    #@16
    array-length v4, v1

    #@17
    :goto_0
    if-ge v2, v4, :cond_1

    #@19
    aget v0, v1, v2

    #@1b
    .line 457
    .local v0, "profileId":I
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 456
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .end local v0    # "profileId":I
    :cond_1
    monitor-exit v3

    #@22
    .line 449
    return-void

    #@23
    .line 453
    .end local v1    # "profileIds":[I
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2
.end method

.method removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 1
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 2709
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 2711
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@8
    .line 2708
    return-void
.end method

.method public restoreFinished(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2371
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreFinished(I)V

    #@5
    .line 2370
    return-void
.end method

.method public restoreStarting(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2361
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreStarting(I)V

    #@5
    .line 2360
    return-void
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restoredState"    # [B
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2366
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreWidgetState(Ljava/lang/String;[BI)V

    #@5
    .line 2365
    return-void
.end method

.method public sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@0
    .prologue
    .line 2209
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2210
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@a
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@c
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@11
    .line 2211
    const-string/jumbo v1, "appWidgetId"

    #@14
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@19
    .line 2212
    const-string/jumbo v1, "appWidgetOptions"

    #@1c
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@21
    .line 2213
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
    .line 2208
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "grantId"    # I
    .param p3, "grantPermission"    # Z

    #@0
    .prologue
    .line 910
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 911
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
    .line 915
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    #@27
    .line 917
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v3

    #@2a
    .line 919
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 921
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result v1

    #@31
    .line 922
    .local v1, "packageUid":I
    if-gez v1, :cond_1

    #@33
    monitor-exit v3

    #@34
    .line 923
    return-void

    #@35
    .line 926
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
    .line 927
    .local v0, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p3, :cond_2

    #@3f
    .line 928
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    #@41
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@44
    .line 933
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    monitor-exit v3

    #@48
    .line 909
    return-void

    #@49
    .line 930
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
    .line 917
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
    .line 304
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    #@2
    .line 303
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;
    .locals 13
    .param p1, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "hostId"    # I
    .param p4, "appWidgetIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I[I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 746
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v9

    #@4
    .line 748
    .local v9, "userId":I
    sget-boolean v10, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v10, :cond_0

    #@8
    .line 749
    const-string/jumbo v10, "AppWidgetServiceImpl"

    #@b
    new-instance v11, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v12, "startListening() "

    #@13
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v11

    #@17
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v11

    #@1b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v11

    #@1f
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 753
    :cond_0
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v10, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 755
    iget-object v11, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v11

    #@2a
    .line 756
    :try_start_0
    invoke-direct {p0, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 760
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@2f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@32
    move-result v10

    #@33
    move/from16 v0, p3

    #@35
    invoke-direct {v5, v10, v0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@38
    .line 761
    .local v5, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@3b
    move-result-object v3

    #@3c
    .line 762
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput-object p1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@3e
    .line 764
    move-object/from16 v0, p4

    #@40
    array-length v2, v0

    #@41
    .line 765
    .local v2, "N":I
    new-instance v7, Ljava/util/ArrayList;

    #@43
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@46
    .line 767
    .local v7, "outUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/PendingHostUpdate;>;"
    new-instance v8, Landroid/util/LongSparseArray;

    #@48
    invoke-direct {v8}, Landroid/util/LongSparseArray;-><init>()V

    #@4b
    .line 768
    .local v8, "updatesMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/appwidget/PendingHostUpdate;>;"
    const/4 v4, 0x0

    #@4c
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    #@4e
    .line 769
    aget v10, p4, v4

    #@50
    invoke-virtual {v3, v10, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getPendingUpdatesForId(ILandroid/util/LongSparseArray;)Z

    #@53
    move-result v10

    #@54
    if-eqz v10, :cond_1

    #@56
    .line 771
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    #@59
    move-result v1

    #@5a
    .line 772
    .local v1, "M":I
    const/4 v6, 0x0

    #@5b
    .local v6, "j":I
    :goto_1
    if-ge v6, v1, :cond_1

    #@5d
    .line 773
    invoke-virtual {v8, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@60
    move-result-object v10

    #@61
    check-cast v10, Landroid/appwidget/PendingHostUpdate;

    #@63
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@66
    .line 772
    add-int/lit8 v6, v6, 0x1

    #@68
    goto :goto_1

    #@69
    .line 768
    .end local v1    # "M":I
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 777
    :cond_2
    new-instance v10, Landroid/content/pm/ParceledListSlice;

    #@6e
    invoke-direct {v10, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    monitor-exit v11

    #@72
    return-object v10

    #@73
    .line 755
    .end local v2    # "N":I
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v4    # "i":I
    .end local v5    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v7    # "outUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/PendingHostUpdate;>;"
    .end local v8    # "updatesMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/appwidget/PendingHostUpdate;>;"
    :catchall_0
    move-exception v10

    #@74
    monitor-exit v11

    #@75
    throw v10
.end method

.method public stopListening(Ljava/lang/String;I)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    #@0
    .prologue
    .line 783
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v2

    #@4
    .line 785
    .local v2, "userId":I
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 786
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
    .line 790
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 792
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v4

    #@2a
    .line 793
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 797
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@2f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@32
    move-result v3

    #@33
    invoke-direct {v1, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@36
    .line 798
    .local v1, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@39
    move-result-object v0

    #@3a
    .line 800
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_1

    #@3c
    .line 801
    const/4 v3, 0x0

    #@3d
    iput-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    #@3f
    .line 802
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    :cond_1
    monitor-exit v4

    #@43
    .line 782
    return-void

    #@44
    .line 792
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
    .line 1233
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v2

    #@4
    .line 1235
    .local v2, "userId":I
    sget-boolean v4, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 1236
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
    .line 1240
    :cond_0
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 1242
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v5

    #@2a
    .line 1243
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 1247
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v4

    #@31
    .line 1248
    new-instance v6, Landroid/content/Intent$FilterComparison;

    #@33
    invoke-direct {v6, p3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@36
    .line 1247
    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@39
    move-result-object v1

    #@3a
    .line 1249
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    #@3c
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_2

    #@42
    .line 1257
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@45
    move-result v4

    #@46
    .line 1256
    invoke-direct {p0, p2, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@49
    move-result-object v3

    #@4a
    .line 1259
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v3, :cond_1

    #@4c
    .line 1260
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
    .line 1242
    .end local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v4

    #@67
    monitor-exit v5

    #@68
    throw v4

    #@69
    .line 1264
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
    .line 1265
    .local v0, "connection":Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    #@74
    .line 1266
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    #@76
    invoke-virtual {v4, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@79
    .line 1267
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
    .line 1232
    return-void
.end method

.method public updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 1456
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1457
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
    .line 1460
    :cond_0
    const/4 v0, 0x0

    #@23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    #@26
    .line 1455
    return-void
.end method

.method public updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1395
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 1397
    .local v0, "userId":I
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1398
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
    .line 1402
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@27
    .line 1404
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@29
    monitor-enter v3

    #@2a
    .line 1405
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@2d
    .line 1410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@30
    move-result v2

    #@31
    .line 1409
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v1

    #@35
    .line 1412
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v1, :cond_1

    #@37
    monitor-exit v3

    #@38
    .line 1413
    return-void

    #@39
    .line 1417
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@3b
    invoke-virtual {v2, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@3e
    .line 1420
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@41
    .line 1422
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    monitor-exit v3

    #@45
    .line 1394
    return-void

    #@46
    .line 1404
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
    .line 1510
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v5

    #@4
    .line 1512
    .local v5, "userId":I
    sget-boolean v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 1513
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
    .line 1517
    :cond_0
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@24
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@27
    move-result-object v8

    #@28
    invoke-virtual {v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    #@2b
    .line 1519
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    #@2d
    monitor-enter v8

    #@2e
    .line 1520
    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    #@31
    .line 1524
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
    .line 1525
    .local v4, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3e
    move-result-object v3

    #@3f
    .line 1527
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v3, :cond_1

    #@41
    .line 1528
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
    .line 1529
    return-void

    #@5d
    .line 1532
    :cond_1
    :try_start_1
    iget-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@5f
    .line 1533
    .local v2, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@62
    move-result v0

    #@63
    .line 1534
    .local v0, "N":I
    const/4 v1, 0x0

    #@64
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@66
    .line 1535
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v6

    #@6a
    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@6c
    .line 1536
    .local v6, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/4 v7, 0x0

    #@6d
    invoke-direct {p0, v6, p2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@70
    .line 1534
    add-int/lit8 v1, v1, 0x1

    #@72
    goto :goto_0

    #@73
    .end local v6    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_2
    monitor-exit v8

    #@74
    .line 1509
    return-void

    #@75
    .line 1519
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
