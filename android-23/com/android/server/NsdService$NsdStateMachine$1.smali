.class Lcom/android/server/NsdService$NsdStateMachine$1;
.super Landroid/database/ContentObserver;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NsdService$NsdStateMachine;->registerForNsdSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/NsdService$NsdStateMachine;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$1;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$1;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@2
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@4
    invoke-static {v0}, Lcom/android/server/NsdService;->-wrap2(Lcom/android/server/NsdService;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 120
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$1;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@c
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@e
    invoke-static {v0}, Lcom/android/server/NsdService;->-get4(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;

    #@11
    move-result-object v0

    #@12
    const v1, 0x60018

    #@15
    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    #@18
    .line 118
    :goto_0
    return-void

    #@19
    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$1;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@1b
    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@1d
    invoke-static {v0}, Lcom/android/server/NsdService;->-get4(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;

    #@20
    move-result-object v0

    #@21
    const v1, 0x60019

    #@24
    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    #@27
    goto :goto_0
.end method
