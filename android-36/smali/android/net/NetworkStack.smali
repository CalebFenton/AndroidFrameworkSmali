.class public Landroid/net/NetworkStack;
.super Ljava/lang/Object;
.source "NetworkStack.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist PERMISSION_MAINLINE_NETWORK_STACK:Ljava/lang/String; = "android.permission.MAINLINE_NETWORK_STACK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static volatile blacklist sMockService:Landroid/os/IBinder;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkNetworkStackPermission(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-static {p0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public static varargs blacklist checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "otherPermissions"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-static {p0, p1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static whitelist getService()Landroid/os/IBinder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 52
    sget-object v0, Landroid/net/NetworkStack;->sMockService:Landroid/os/IBinder;

    .line 53
    .local v0, "mockService":Landroid/os/IBinder;
    if-eqz v0, :cond_5

    return-object v0

    .line 54
    :cond_5
    const-string/jumbo v1, "network_stack"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist setServiceForTest(Landroid/os/IBinder;)V
    .registers 1
    .param p0, "mockService"    # Landroid/os/IBinder;

    .line 66
    sput-object p0, Landroid/net/NetworkStack;->sMockService:Landroid/os/IBinder;

    .line 67
    return-void
.end method
