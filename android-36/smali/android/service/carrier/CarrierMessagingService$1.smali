.class Landroid/service/carrier/CarrierMessagingService$1;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"

# interfaces
.implements Landroid/service/carrier/CarrierMessagingService$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/carrier/CarrierMessagingService;->onReceiveTextSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/service/carrier/CarrierMessagingService$ResultCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/carrier/CarrierMessagingService;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/service/carrier/CarrierMessagingService;
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

    .line 619
    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingService$1;->val$callback:Landroid/service/carrier/CarrierMessagingService$ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onReceiveResult(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$1;->val$callback:Landroid/service/carrier/CarrierMessagingService$ResultCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    .line 623
    :cond_a
    const/4 v1, 0x3

    .line 622
    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/service/carrier/CarrierMessagingService$ResultCallback;->onReceiveResult(Ljava/lang/Object;)V

    .line 624
    return-void
.end method

.method public bridge synthetic whitelist onReceiveResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroid/service/carrier/CarrierMessagingService$1;->onReceiveResult(Ljava/lang/Boolean;)V

    return-void
.end method
