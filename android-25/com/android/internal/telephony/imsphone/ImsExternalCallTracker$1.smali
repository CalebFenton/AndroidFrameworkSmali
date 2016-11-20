.class Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;
.super Landroid/os/Handler;
.source "ImsExternalCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@0
    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 140
    :goto_0
    return-void

    #@6
    .line 143
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Landroid/os/AsyncResult;

    #@c
    invoke-static {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;Landroid/os/AsyncResult;)V

    #@f
    goto :goto_0

    #@10
    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
