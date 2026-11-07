.class Landroid/accounts/AccountManager$Future2Task$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager$Future2Task;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/accounts/AccountManager$Future2Task;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager$Future2Task;)V
    .registers 2
    .param p1, "this$1"    # Landroid/accounts/AccountManager$Future2Task;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2555
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task$1;, "Landroid/accounts/AccountManager$Future2Task$1;"
    iput-object p1, p0, Landroid/accounts/AccountManager$Future2Task$1;->this$1:Landroid/accounts/AccountManager$Future2Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 2558
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task$1;, "Landroid/accounts/AccountManager$Future2Task$1;"
    iget-object v0, p0, Landroid/accounts/AccountManager$Future2Task$1;->this$1:Landroid/accounts/AccountManager$Future2Task;

    iget-object v0, v0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v1, p0, Landroid/accounts/AccountManager$Future2Task$1;->this$1:Landroid/accounts/AccountManager$Future2Task;

    invoke-interface {v0, v1}, Landroid/accounts/AccountManagerCallback;->run(Landroid/accounts/AccountManagerFuture;)V

    .line 2559
    return-void
.end method
