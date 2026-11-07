.class Landroid/net/ConnectivityManager$2;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/ConnectivityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3221
    iput-object p2, p0, Landroid/net/ConnectivityManager$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 3224
    iget-object v0, p0, Landroid/net/ConnectivityManager$2;->val$handler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 3225
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    .line 3227
    :cond_8
    iget-object v0, p0, Landroid/net/ConnectivityManager$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3229
    :goto_d
    return-void
.end method
