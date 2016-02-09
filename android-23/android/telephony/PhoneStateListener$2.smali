.class Landroid/telephony/PhoneStateListener$2;
.super Landroid/os/Handler;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/PhoneStateListener;-><init>(ILandroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>(Landroid/telephony/PhoneStateListener;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/PhoneStateListener;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 272
    iput-object p1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 278
    iget v2, p1, Landroid/os/Message;->what:I

    #@4
    sparse-switch v2, :sswitch_data_0

    #@7
    .line 273
    :goto_0
    return-void

    #@8
    .line 280
    :sswitch_0
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v0, Landroid/telephony/ServiceState;

    #@e
    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    #@11
    goto :goto_0

    #@12
    .line 283
    :sswitch_1
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@14
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@16
    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    #@19
    goto :goto_0

    #@1a
    .line 286
    :sswitch_2
    iget-object v2, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@1c
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@1e
    if-eqz v3, :cond_0

    #@20
    :goto_1
    invoke-virtual {v2, v0}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    #@23
    goto :goto_0

    #@24
    :cond_0
    move v0, v1

    #@25
    goto :goto_1

    #@26
    .line 289
    :sswitch_3
    iget-object v2, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@28
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@2a
    if-eqz v3, :cond_1

    #@2c
    :goto_2
    invoke-virtual {v2, v0}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    #@2f
    goto :goto_0

    #@30
    :cond_1
    move v0, v1

    #@31
    goto :goto_2

    #@32
    .line 292
    :sswitch_4
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@34
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@36
    check-cast v0, Landroid/telephony/CellLocation;

    #@38
    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    #@3b
    goto :goto_0

    #@3c
    .line 295
    :sswitch_5
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@3e
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@42
    check-cast v0, Ljava/lang/String;

    #@44
    invoke-virtual {v1, v2, v0}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    #@47
    goto :goto_0

    #@48
    .line 298
    :sswitch_6
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@4a
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@4c
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@4e
    invoke-virtual {v0, v1, v2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    #@51
    .line 299
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@53
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@55
    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    #@58
    goto :goto_0

    #@59
    .line 302
    :sswitch_7
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@5b
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@5d
    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    #@60
    goto :goto_0

    #@61
    .line 305
    :sswitch_8
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@65
    check-cast v0, Landroid/telephony/SignalStrength;

    #@67
    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    #@6a
    goto :goto_0

    #@6b
    .line 308
    :sswitch_9
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@6d
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@6f
    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onOtaspChanged(I)V

    #@72
    goto :goto_0

    #@73
    .line 311
    :sswitch_a
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@77
    check-cast v0, Ljava/util/List;

    #@79
    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    #@7c
    goto :goto_0

    #@7d
    .line 314
    :sswitch_b
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@7f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@81
    check-cast v0, Landroid/telephony/PreciseCallState;

    #@83
    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    #@86
    goto :goto_0

    #@87
    .line 317
    :sswitch_c
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@89
    .line 318
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8b
    check-cast v0, Landroid/telephony/PreciseDataConnectionState;

    #@8d
    .line 317
    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    #@90
    goto/16 :goto_0

    #@92
    .line 321
    :sswitch_d
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@94
    .line 322
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@96
    check-cast v0, Landroid/telephony/DataConnectionRealTimeInfo;

    #@98
    .line 321
    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    #@9b
    goto/16 :goto_0

    #@9d
    .line 325
    :sswitch_e
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@9f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a1
    check-cast v0, Landroid/telephony/VoLteServiceState;

    #@a3
    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    #@a6
    goto/16 :goto_0

    #@a8
    .line 328
    :sswitch_f
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@aa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ac
    check-cast v0, [B

    #@ae
    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onOemHookRawEvent([B)V

    #@b1
    goto/16 :goto_0

    #@b3
    .line 331
    :sswitch_10
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    #@b5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b7
    check-cast v0, Ljava/lang/Boolean;

    #@b9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@bc
    move-result v0

    #@bd
    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onCarrierNetworkChange(Z)V

    #@c0
    goto/16 :goto_0

    #@c2
    .line 278
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_10
    .end sparse-switch
.end method
