.class Landroid/hardware/location/ContextHubTransactionHelper$1;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubTransactionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/location/ContextHubTransactionHelper;->createNanoAppQueryCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$transaction:Landroid/hardware/location/ContextHubTransaction;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/location/ContextHubTransaction;)V
    .registers 2

    .line 42
    iput-object p1, p0, Landroid/hardware/location/ContextHubTransactionHelper$1;->val$transaction:Landroid/hardware/location/ContextHubTransaction;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onQueryResponse(ILjava/util/List;)V
    .registers 5
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p2, "nanoappList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    iget-object v0, p0, Landroid/hardware/location/ContextHubTransactionHelper$1;->val$transaction:Landroid/hardware/location/ContextHubTransaction;

    new-instance v1, Landroid/hardware/location/ContextHubTransaction$Response;

    invoke-direct {v1, p1, p2}, Landroid/hardware/location/ContextHubTransaction$Response;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/hardware/location/ContextHubTransaction;->setResponse(Landroid/hardware/location/ContextHubTransaction$Response;)V

    .line 47
    return-void
.end method

.method public blacklist onTransactionComplete(I)V
    .registers 6
    .param p1, "result"    # I

    .line 51
    const-string v0, "ContextHubTransactionHelper"

    const-string v1, "Received a non-query callback on a query request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Landroid/hardware/location/ContextHubTransactionHelper$1;->val$transaction:Landroid/hardware/location/ContextHubTransaction;

    new-instance v1, Landroid/hardware/location/ContextHubTransaction$Response;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/hardware/location/ContextHubTransaction$Response;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/hardware/location/ContextHubTransaction;->setResponse(Landroid/hardware/location/ContextHubTransaction$Response;)V

    .line 54
    return-void
.end method
