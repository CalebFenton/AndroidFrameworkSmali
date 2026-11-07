.class public interface abstract Landroid/app/servertransaction/BaseClientRequest;
.super Ljava/lang/Object;
.source "BaseClientRequest.java"


# virtual methods
.method public abstract blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public blacklist postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 3
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 56
    return-void
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .registers 2
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;

    .line 37
    return-void
.end method
