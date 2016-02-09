.class final Lcom/android/server/am/LockTaskNotify$H;
.super Landroid/os/Handler;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LockTaskNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final SHOW_TOAST:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LockTaskNotify;


# direct methods
.method private constructor <init>(Lcom/android/server/am/LockTaskNotify;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/LockTaskNotify;

    #@0
    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/am/LockTaskNotify$H;->this$0:Lcom/android/server/am/LockTaskNotify;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/LockTaskNotify;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;)V

    #@3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 89
    :goto_0
    return-void

    #@6
    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskNotify$H;->this$0:Lcom/android/server/am/LockTaskNotify;

    #@8
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@a
    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskNotify;->handleShowToast(I)V

    #@d
    goto :goto_0

    #@e
    .line 90
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
