.class final Lcom/android/server/policy/ImmersiveModeConfirmation$H;
.super Landroid/os/Handler;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final HIDE:I = 0x2

.field private static final SHOW:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@0
    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Lcom/android/server/policy/ImmersiveModeConfirmation$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    #@3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 345
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 344
    :goto_0
    return-void

    #@6
    .line 347
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@8
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-wrap1(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    #@b
    goto :goto_0

    #@c
    .line 350
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@e
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-wrap0(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    #@11
    goto :goto_0

    #@12
    .line 345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
