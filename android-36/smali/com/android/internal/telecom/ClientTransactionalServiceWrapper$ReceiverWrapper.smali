.class Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;
.super Ljava/lang/Object;
.source "ClientTransactionalServiceWrapper.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiverWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mRepeaterReceiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;Landroid/os/ResultReceiver;)V
    .registers 3
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;->mRepeaterReceiver:Landroid/os/ResultReceiver;

    .line 126
    return-void
.end method


# virtual methods
.method public blacklist accept(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "clientCompletedCallbackSuccessfully"    # Ljava/lang/Boolean;

    .line 130
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 131
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;->mRepeaterReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_14

    .line 133
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;->mRepeaterReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 135
    :goto_14
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 121
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;->accept(Ljava/lang/Boolean;)V

    return-void
.end method

.method public whitelist test-api andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 139
    .local p1, "after":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Boolean;>;"
    invoke-super {p0, p1}, Ljava/util/function/Consumer;->andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0
.end method
