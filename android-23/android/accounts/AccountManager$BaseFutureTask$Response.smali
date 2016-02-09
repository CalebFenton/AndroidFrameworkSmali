.class public Landroid/accounts/AccountManager$BaseFutureTask$Response;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager$BaseFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Response"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accounts/AccountManager$BaseFutureTask;


# direct methods
.method protected constructor <init>(Landroid/accounts/AccountManager$BaseFutureTask;)V
    .locals 0

    #@0
    .prologue
    .line 2027
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask$Response;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>.Response;"
    .local p1, "this$1":Landroid/accounts/AccountManager$BaseFutureTask;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    #@2
    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2045
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask$Response;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>.Response;"
    const/4 v0, 0x4

    #@1
    if-eq p1, v0, :cond_0

    #@3
    const/16 v0, 0x64

    #@5
    if-ne p1, v0, :cond_1

    #@7
    .line 2049
    :cond_0
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    #@9
    const/4 v1, 0x1

    #@a
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager$BaseFutureTask;->cancel(Z)Z

    #@d
    .line 2050
    return-void

    #@e
    .line 2046
    :cond_1
    const/16 v0, 0x65

    #@10
    if-eq p1, v0, :cond_0

    #@12
    .line 2052
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    #@14
    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    #@16
    iget-object v1, v1, Landroid/accounts/AccountManager$BaseFutureTask;->this$0:Landroid/accounts/AccountManager;

    #@18
    invoke-static {v1, p1, p2}, Landroid/accounts/AccountManager;->-wrap0(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/accounts/AccountManager$BaseFutureTask;->-wrap0(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Throwable;)V

    #@1f
    .line 2044
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2030
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask$Response;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>.Response;"
    :try_start_0
    iget-object v3, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    #@2
    invoke-virtual {v3, p1}, Landroid/accounts/AccountManager$BaseFutureTask;->bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    .line 2031
    .local v2, "result":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    #@8
    .line 2032
    return-void

    #@9
    .line 2034
    :cond_0
    iget-object v3, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    #@b
    invoke-static {v3, v2}, Landroid/accounts/AccountManager$BaseFutureTask;->-wrap1(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1

    #@e
    .line 2035
    return-void

    #@f
    .line 2036
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    #@10
    .line 2041
    :goto_0
    const-string/jumbo v3, "no result in response"

    #@13
    const/4 v4, 0x5

    #@14
    invoke-virtual {p0, v4, v3}, Landroid/accounts/AccountManager$BaseFutureTask$Response;->onError(ILjava/lang/String;)V

    #@17
    .line 2028
    return-void

    #@18
    .line 2038
    :catch_1
    move-exception v0

    #@19
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    goto :goto_0
.end method
