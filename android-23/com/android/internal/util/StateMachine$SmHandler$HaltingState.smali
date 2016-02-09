.class Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;
.super Lcom/android/internal/util/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HaltingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/util/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/util/StateMachine$SmHandler;

    #@0
    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;->this$1:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/util/StateMachine$SmHandler;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;)V

    #@3
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;->this$1:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-get4(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->haltedProcessMessage(Landroid/os/Message;)V

    #@9
    .line 758
    const/4 v0, 0x1

    #@a
    return v0
.end method
