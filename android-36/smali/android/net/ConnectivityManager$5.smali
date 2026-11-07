.class Landroid/net/ConnectivityManager$5;
.super Landroid/os/ResultReceiver;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager;->getLatestTetheringEntitlementResult(IZLjava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;


# direct methods
.method constructor blacklist <init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;)V
    .registers 5
    .param p1, "this$0"    # Landroid/net/ConnectivityManager;
    .param p2, "arg1"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3611
    iput-object p3, p0, Landroid/net/ConnectivityManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/net/ConnectivityManager$5;->val$listener:Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;
    .param p1, "resultCode"    # I

    .line 3617
    invoke-interface {p0, p1}, Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;->onTetheringEntitlementResult(I)V

    .line 3618
    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 3614
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3616
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/ConnectivityManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/net/ConnectivityManager$5;->val$listener:Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;

    new-instance v4, Landroid/net/ConnectivityManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/net/ConnectivityManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 3620
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3621
    nop

    .line 3622
    return-void

    .line 3620
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3621
    throw v2
.end method
