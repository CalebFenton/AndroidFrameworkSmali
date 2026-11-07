.class public final Landroid/view/InputApplicationHandle;
.super Ljava/lang/Object;
.source "InputApplicationHandle.java"


# instance fields
.field public final blacklist dispatchingTimeoutMillis:J

.field public final blacklist name:Ljava/lang/String;

.field private blacklist ptr:J

.field public final blacklist token:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "dispatchingTimeoutMillis"    # J

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    .line 47
    iput-object p2, p0, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 48
    iput-wide p3, p0, Landroid/view/InputApplicationHandle;->dispatchingTimeoutMillis:J

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InputApplicationHandle;)V
    .registers 4
    .param p1, "handle"    # Landroid/view/InputApplicationHandle;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-object v0, p1, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    .line 53
    iget-wide v0, p1, Landroid/view/InputApplicationHandle;->dispatchingTimeoutMillis:J

    iput-wide v0, p0, Landroid/view/InputApplicationHandle;->dispatchingTimeoutMillis:J

    .line 54
    iget-object v0, p1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private native blacklist nativeDispose()V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    :try_start_0
    invoke-direct {p0}, Landroid/view/InputApplicationHandle;->nativeDispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    nop

    .line 64
    return-void

    .line 62
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    throw v0
.end method
