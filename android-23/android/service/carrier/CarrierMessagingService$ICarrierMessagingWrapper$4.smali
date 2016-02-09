.class Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$4;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"

# interfaces
.implements Landroid/service/carrier/CarrierMessagingService$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;->sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/service/carrier/CarrierMessagingService$ResultCallback",
        "<",
        "Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

.field final synthetic val$callback:Landroid/service/carrier/ICarrierMessagingCallback;


# direct methods
.method constructor <init>(Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;Landroid/service/carrier/ICarrierMessagingCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;
    .param p2, "val$callback"    # Landroid/service/carrier/ICarrierMessagingCallback;

    #@0
    .prologue
    .line 447
    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$4;->this$1:Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

    #@2
    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$4;->val$callback:Landroid/service/carrier/ICarrierMessagingCallback;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onReceiveResult(Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;)V
    .locals 3
    .param p1, "result"    # Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 451
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$4;->val$callback:Landroid/service/carrier/ICarrierMessagingCallback;

    #@2
    .line 452
    invoke-virtual {p1}, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;->getSendStatus()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p1}, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;->getMessageRefs()[I

    #@9
    move-result-object v2

    #@a
    .line 451
    invoke-interface {v0, v1, v2}, Landroid/service/carrier/ICarrierMessagingCallback;->onSendMultipartSmsComplete(I[I)V

    #@d
    .line 450
    return-void
.end method

.method public bridge synthetic onReceiveResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 449
    check-cast p1, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;

    #@2
    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$4;->onReceiveResult(Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;)V

    #@5
    return-void
.end method
