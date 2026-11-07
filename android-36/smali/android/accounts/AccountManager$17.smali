.class Landroid/accounts/AccountManager$17;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/accounts/AccountManagerCallback;

.field final synthetic blacklist val$future:Landroid/accounts/AccountManagerFuture;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
    .registers 4
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2298
    iput-object p2, p0, Landroid/accounts/AccountManager$17;->val$callback:Landroid/accounts/AccountManagerCallback;

    iput-object p3, p0, Landroid/accounts/AccountManager$17;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 2301
    iget-object v0, p0, Landroid/accounts/AccountManager$17;->val$callback:Landroid/accounts/AccountManagerCallback;

    iget-object v1, p0, Landroid/accounts/AccountManager$17;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v0, v1}, Landroid/accounts/AccountManagerCallback;->run(Landroid/accounts/AccountManagerFuture;)V

    .line 2302
    return-void
.end method
