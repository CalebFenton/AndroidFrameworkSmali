.class Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;
.super Landroid/os/Handler;
.source "TelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    #@2
    .line 128
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 127
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 132
    :goto_0
    return-void

    #@6
    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    #@8
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->-wrap0(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    #@b
    goto :goto_0

    #@c
    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    #@e
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->-wrap4(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    #@11
    goto :goto_0

    #@12
    .line 143
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    #@14
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->-wrap1(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    #@17
    goto :goto_0

    #@18
    .line 147
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    #@1a
    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->-wrap2(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V

    #@1d
    goto :goto_0

    #@1e
    .line 151
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    #@20
    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->-wrap3(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V

    #@23
    goto :goto_0

    #@24
    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
