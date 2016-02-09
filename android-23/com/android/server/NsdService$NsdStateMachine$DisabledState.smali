.class Lcom/android/server/NsdService$NsdStateMachine$DisabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/NsdService$NsdStateMachine;

    #@0
    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@2
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Lcom/android/server/NsdService;->-wrap17(Lcom/android/server/NsdService;Z)V

    #@8
    .line 219
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 230
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@9
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@b
    invoke-static {v1}, Lcom/android/server/NsdService$NsdStateMachine;->-get1(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    #@e
    move-result-object v1

    #@f
    invoke-static {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->-wrap0(Lcom/android/server/NsdService$NsdStateMachine;Lcom/android/internal/util/IState;)V

    #@12
    .line 232
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 225
    :pswitch_data_0
    .packed-switch 0x60018
        :pswitch_0
    .end packed-switch
.end method
