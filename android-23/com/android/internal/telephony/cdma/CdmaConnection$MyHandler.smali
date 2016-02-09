.class Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;
.super Landroid/os/Handler;
.source "CdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cdma/CdmaConnection;
    .param p2, "l"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

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
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 90
    :goto_0
    return-void

    #@6
    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    #@b
    goto :goto_0

    #@c
    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@e
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->-wrap0(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    #@11
    goto :goto_0

    #@12
    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
