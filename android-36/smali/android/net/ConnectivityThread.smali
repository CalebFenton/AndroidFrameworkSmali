.class public final Landroid/net/ConnectivityThread;
.super Landroid/os/HandlerThread;
.source "ConnectivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityThread$Singleton;
    }
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateInstance()Landroid/net/ConnectivityThread;
    .registers 1

    invoke-static {}, Landroid/net/ConnectivityThread;->createInstance()Landroid/net/ConnectivityThread;

    move-result-object v0

    return-object v0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 40
    const-string v0, "ConnectivityThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private static greylist-max-o createInstance()Landroid/net/ConnectivityThread;
    .registers 1

    .line 44
    new-instance v0, Landroid/net/ConnectivityThread;

    invoke-direct {v0}, Landroid/net/ConnectivityThread;-><init>()V

    .line 45
    .local v0, "t":Landroid/net/ConnectivityThread;
    invoke-virtual {v0}, Landroid/net/ConnectivityThread;->start()V

    .line 46
    return-object v0
.end method

.method public static greylist-max-o get()Landroid/net/ConnectivityThread;
    .registers 1

    .line 50
    invoke-static {}, Landroid/net/ConnectivityThread$Singleton;->-$$Nest$sfgetINSTANCE()Landroid/net/ConnectivityThread;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getInstanceLooper()Landroid/os/Looper;
    .registers 1

    .line 54
    invoke-static {}, Landroid/net/ConnectivityThread$Singleton;->-$$Nest$sfgetINSTANCE()Landroid/net/ConnectivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
