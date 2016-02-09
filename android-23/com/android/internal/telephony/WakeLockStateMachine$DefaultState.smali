.class Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WakeLockStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/WakeLockStateMachine;

    #@0
    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 114
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "processMessage: unhandled message type "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget v2, p1, Landroid/os/Message;->what:I

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 122
    .local v0, "errorText":Ljava/lang/String;
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 123
    new-instance v1, Ljava/lang/RuntimeException;

    #@21
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 116
    .end local v0    # "errorText":Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@27
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    #@2b
    iput-object v1, v2, Lcom/android/internal/telephony/WakeLockStateMachine;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2d
    .line 117
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v3, "updatePhoneObject: phone="

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    iget-object v3, p0, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@3d
    iget-object v3, v3, Lcom/android/internal/telephony/WakeLockStateMachine;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3f
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getClass()Ljava/lang/Class;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    #@52
    .line 130
    :goto_0
    const/4 v1, 0x1

    #@53
    return v1

    #@54
    .line 125
    .restart local v0    # "errorText":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@56
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->loge(Ljava/lang/String;)V

    #@59
    goto :goto_0

    #@5a
    .line 114
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
