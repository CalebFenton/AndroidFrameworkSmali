.class Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;
.super Landroid/os/Handler;
.source "GsmConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .param p2, "l"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 92
    :goto_0
    return-void

    #@6
    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@8
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->-wrap0(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    #@b
    goto :goto_0

    #@c
    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@e
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->-wrap1(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    #@11
    goto :goto_0

    #@12
    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
