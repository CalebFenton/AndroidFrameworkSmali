.class final Lcom/android/server/PinnerService$PinnerHandler;
.super Landroid/os/Handler;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PinnerHandler"
.end annotation


# static fields
.field static final PIN_CAMERA_MSG:I = 0xfa0

.field static final PIN_ONSTART_MSG:I = 0xfa1


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/PinnerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    #@2
    .line 363
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 362
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 368
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 383
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@8
    .line 367
    :goto_0
    return-void

    #@9
    .line 372
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    #@b
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@d
    invoke-static {v0, v1}, Lcom/android/server/PinnerService;->-wrap0(Lcom/android/server/PinnerService;I)V

    #@10
    goto :goto_0

    #@11
    .line 378
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    #@13
    invoke-static {v0}, Lcom/android/server/PinnerService;->-wrap1(Lcom/android/server/PinnerService;)V

    #@16
    goto :goto_0

    #@17
    .line 368
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
