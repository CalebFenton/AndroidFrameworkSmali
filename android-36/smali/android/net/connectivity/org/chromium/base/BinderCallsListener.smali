.class public Landroid/net/connectivity/org/chromium/base/BinderCallsListener;
.super Ljava/lang/Object;
.source "BinderCallsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist PROXY_TRANSACT_LISTENER_CLASS_NAME:Ljava/lang/String; = "android.os.Binder$ProxyTransactListener"

.field private static final blacklist TAG:Ljava/lang/String; = "BinderCallsListener"

.field private static blacklist sInstance:Landroid/net/connectivity/org/chromium/base/BinderCallsListener;


# instance fields
.field private blacklist mImplementation:Ljava/lang/Object;

.field private blacklist mInstalled:Z

.field private blacklist mInvocationHandler:Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 29
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    :try_start_4
    const-string v1, "android.os.Binder$ProxyTransactListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    .local v1, "interfaceClass":Ljava/lang/Class;
    new-instance v2, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;-><init>(Landroid/net/connectivity/org/chromium/base/BinderCallsListener-IA;)V

    iput-object v2, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->mInvocationHandler:Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;

    .line 52
    nop

    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v4, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->mInvocationHandler:Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;

    .line 53
    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 57
    .local v2, "implementation":Ljava/lang/Object;
    iput-object v2, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->mImplementation:Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    .line 63
    .end local v1    # "interfaceClass":Ljava/lang/Class;
    .end local v2    # "implementation":Ljava/lang/Object;
    goto :goto_2f

    .line 58
    :catch_25
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BinderCallsListener"

    const-string v3, "Failed to create the listener proxy. Has the framework changed?"

    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->mInstalled:Z

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method

.method public static blacklist getInstance()Landroid/net/connectivity/org/chromium/base/BinderCallsListener;
    .registers 1

    .line 42
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 44
    sget-object v0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->sInstance:Landroid/net/connectivity/org/chromium/base/BinderCallsListener;

    if-nez v0, :cond_e

    new-instance v0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->sInstance:Landroid/net/connectivity/org/chromium/base/BinderCallsListener;

    .line 45
    :cond_e
    sget-object v0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->sInstance:Landroid/net/connectivity/org/chromium/base/BinderCallsListener;

    return-object v0
.end method

.method private blacklist installListener(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "listener"    # Ljava/lang/Object;

    .line 84
    const-string v0, "BinderCallsListener"

    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->mInstalled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    return v2

    .line 90
    :cond_8
    :try_start_8
    const-class v1, Ljava/lang/Class;

    const-string v3, "getMethod"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    const-class v5, [Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 91
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 92
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    const-class v3, Landroid/os/Binder;

    const-string v4, "setProxyTransactListener"

    new-array v5, v6, [Ljava/lang/Class;

    const-string v7, "android.os.Binder$ProxyTransactListener"

    .line 98
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v2

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 94
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 100
    .local v3, "m":Ljava/lang/reflect/Method;
    nop

    .line 101
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_3d} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_3d} :catch_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_3d} :catch_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_3d} :catch_48

    .line 109
    nop

    .line 111
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    const-string v1, "Successfully installed the Binder listener"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iput-boolean v6, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->mInstalled:Z

    .line 113
    return v6

    .line 102
    :catch_48
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const-string v3, "Failed to install the Binder listener"

    invoke-static {v0, v3}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return v2
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/base/BinderCallsListener;)V
    .registers 3
    .param p0, "testInstance"    # Landroid/net/connectivity/org/chromium/base/BinderCallsListener;

    .line 67
    sget-object v0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->sInstance:Landroid/net/connectivity/org/chromium/base/BinderCallsListener;

    if-eqz v0, :cond_f

    if-nez p0, :cond_7

    goto :goto_f

    .line 68
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A real instance already exists."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_f
    :goto_f
    sput-object p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->sInstance:Landroid/net/connectivity/org/chromium/base/BinderCallsListener;

    .line 72
    return-void
.end method


# virtual methods
.method public blacklist installListener()Z
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->mImplementation:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->installListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method blacklist setBinderCallListenerObserverForTesting(Ljava/util/function/BiConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "observer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->mInvocationHandler:Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/BinderCallsListener;->mInvocationHandler:Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->-$$Nest$fputmObserver(Landroid/net/connectivity/org/chromium/base/BinderCallsListener$InterfaceInvocationHandler;Ljava/util/function/BiConsumer;)V

    .line 119
    :cond_9
    return-void
.end method
