.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Idle"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1196
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 1

    .line 1199
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->maybeNotifyIkeSessionStateMachine()V

    .line 1200
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 1242
    const/16 v0, 0x68

    return v0
.end method

.method protected blacklist maybeNotifyIkeSessionStateMachine()V
    .registers 3

    .line 1203
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-interface {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onProcedureFinished(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    .line 1204
    return-void
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 1208
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_58

    .line 1236
    return v1

    .line 1219
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;

    .line 1220
    .local v0, "req":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;
    iget v3, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->exchangeSubtype:I

    packed-switch v3, :pswitch_data_6e

    .line 1230
    :pswitch_11
    return v1

    .line 1226
    :pswitch_12
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1227
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRekeyChildRemoteCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v1, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1228
    return v2

    .line 1222
    :pswitch_21
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1223
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mDeleteChildRemoteDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v1, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1224
    return v2

    .line 1233
    .end local v0    # "req":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;
    :sswitch_30
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1234
    return v2

    .line 1216
    :sswitch_3a
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mMobikeRekeyChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1217
    return v2

    .line 1213
    :sswitch_44
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRekeyChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1214
    return v2

    .line 1210
    :sswitch_4e
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mDeleteChildLocalDelete:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1211
    return v2

    :sswitch_data_58
    .sparse-switch
        0x2 -> :sswitch_4e
        0x3 -> :sswitch_44
        0x4 -> :sswitch_3a
        0xc9 -> :sswitch_30
        0x12e -> :sswitch_8
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x5
        :pswitch_21
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
