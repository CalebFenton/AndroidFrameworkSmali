.class Landroid/net/ipsec/ike/IkeSession$IkeThreadHolder;
.super Ljava/lang/Object;
.source "IkeSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/IkeSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IkeThreadHolder"
.end annotation


# static fields
.field static final blacklist IKE_WORKER_THREAD:Landroid/os/HandlerThread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 206
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IkeWorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/ipsec/ike/IkeSession$IkeThreadHolder;->IKE_WORKER_THREAD:Landroid/os/HandlerThread;

    .line 207
    sget-object v0, Landroid/net/ipsec/ike/IkeSession$IkeThreadHolder;->IKE_WORKER_THREAD:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 208
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
