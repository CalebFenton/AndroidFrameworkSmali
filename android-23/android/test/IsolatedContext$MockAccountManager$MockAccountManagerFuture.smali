.class Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;
.super Ljava/lang/Object;
.source "IsolatedContext.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/IsolatedContext$MockAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MockAccountManagerFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$1:Landroid/test/IsolatedContext$MockAccountManager;


# direct methods
.method public constructor <init>(Landroid/test/IsolatedContext$MockAccountManager;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Landroid/test/IsolatedContext$MockAccountManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    .local p0, "this":Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;, "Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;->this$1:Landroid/test/IsolatedContext$MockAccountManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 160
    iput-object p2, p0, Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;->mResult:Ljava/lang/Object;

    #@7
    .line 159
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    #@0
    .prologue
    .line 164
    .local p0, "this":Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;, "Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture<TT;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 177
    .local p0, "this":Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;, "Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture<TT;>;"
    iget-object v0, p0, Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;->mResult:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    .local p0, "this":Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;, "Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture<TT;>;"
    invoke-virtual {p0}, Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;->getResult()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    #@0
    .prologue
    .line 168
    .local p0, "this":Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;, "Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture<TT;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isDone()Z
    .locals 1

    #@0
    .prologue
    .line 172
    .local p0, "this":Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;, "Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture<TT;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method
