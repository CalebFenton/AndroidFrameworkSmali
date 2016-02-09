.class final Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyEventDispatcher"
.end annotation


# static fields
.field private static final ON_KEY_EVENT_TIMEOUT_MILLIS:J = 0x1f4L


# instance fields
.field private mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

.field private final mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 3
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@0
    .prologue
    .line 2976
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2983
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2984
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    #@d
    .line 2985
    const-class v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    #@f
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x0

    #@14
    .line 2984
    invoke-direct {v0, p0, v2, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    #@17
    .line 2982
    :goto_0
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@19
    .line 2976
    return-void

    #@1a
    .line 2985
    :cond_0
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    #@3
    return-void
.end method

.method private addPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 3031
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSequenceNumber()I

    #@3
    move-result v1

    #@4
    .line 3032
    .local v1, "sequence":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@6
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@8
    invoke-static {v2, p1, p2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap11(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@b
    move-result-object v0

    #@c
    .line 3033
    .local v0, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@e
    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@10
    .line 3034
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@12
    .line 3035
    return-object v0
.end method

.method private cancelAllPendingEventsLocked()V
    .locals 3

    #@0
    .prologue
    .line 3081
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3082
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@6
    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    #@8
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->removePendingEventLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@b
    move-result-object v0

    #@c
    .line 3083
    .local v0, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    const/4 v1, 0x0

    #@d
    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->handled:Z

    #@f
    .line 3084
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@11
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    #@13
    const/4 v2, 0x4

    #@14
    invoke-virtual {v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->removeMessages(ILjava/lang/Object;)V

    #@17
    .line 3086
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->finishPendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V

    #@1a
    goto :goto_0

    #@1b
    .line 3080
    .end local v0    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :cond_0
    return-void
.end method

.method private finishPendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V
    .locals 2
    .param p1, "pendingEvent"    # Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@0
    .prologue
    .line 3059
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->handled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3060
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    #@6
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->policyFlags:I

    #@8
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->sendKeyEventToInputFilter(Landroid/view/KeyEvent;I)V

    #@b
    .line 3064
    :cond_0
    const/4 v0, 0x0

    #@c
    iput-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    #@e
    .line 3065
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@10
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@12
    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap19(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V

    #@15
    .line 3058
    return-void
.end method

.method private removePendingEventLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    .locals 4
    .param p1, "sequence"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3039
    const/4 v1, 0x0

    #@2
    .line 3040
    .local v1, "previous":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@4
    .line 3042
    .end local v1    # "previous":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    .local v0, "current":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :goto_0
    if-eqz v0, :cond_2

    #@6
    .line 3043
    iget v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    #@8
    if-ne v2, p1, :cond_1

    #@a
    .line 3044
    if-eqz v1, :cond_0

    #@c
    .line 3045
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@e
    iput-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@10
    .line 3049
    :goto_1
    iput-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@12
    .line 3050
    return-object v0

    #@13
    .line 3047
    :cond_0
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@15
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@17
    goto :goto_1

    #@18
    .line 3052
    :cond_1
    move-object v1, v0

    #@19
    .line 3053
    .local v1, "previous":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@1b
    goto :goto_0

    #@1c
    .line 3055
    .end local v1    # "previous":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :cond_2
    return-object v3
.end method

.method private sendKeyEventToInputFilter(Landroid/view/KeyEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3072
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 3073
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@7
    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    #@a
    .line 3075
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    #@c
    or-int/2addr p2, v0

    #@d
    .line 3076
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@f
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@11
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@14
    move-result-object v0

    #@15
    const/16 v1, 0x8

    #@17
    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1e
    .line 3068
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    #@0
    .prologue
    .line 3022
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@2
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@4
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    monitor-enter v1

    #@9
    .line 3023
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->cancelAllPendingEventsLocked()V

    #@c
    .line 3024
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 3025
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@12
    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit v1

    #@16
    .line 3021
    return-void

    #@17
    .line 3022
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 2990
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@2
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@4
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    monitor-enter v3

    #@9
    .line 2991
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->addPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    .local v1, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    monitor-exit v3

    #@e
    .line 2994
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@10
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    #@12
    .line 2995
    const/4 v4, 0x4

    #@13
    .line 2994
    invoke-virtual {v3, v4, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@16
    move-result-object v0

    #@17
    .line 2996
    .local v0, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@19
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    #@1b
    const-wide/16 v4, 0x1f4

    #@1d
    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@20
    .line 3002
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@22
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@24
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    #@26
    iget v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    #@28
    invoke-interface {v3, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2b
    .line 2987
    :goto_0
    return-void

    #@2c
    .line 2990
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :catchall_0
    move-exception v4

    #@2d
    monitor-exit v3

    #@2e
    throw v4

    #@2f
    .line 3003
    .restart local v0    # "message":Landroid/os/Message;
    .restart local v1    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :catch_0
    move-exception v2

    #@30
    .line 3004
    .local v2, "re":Landroid/os/RemoteException;
    iget v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    #@32
    const/4 v4, 0x0

    #@33
    invoke-virtual {p0, v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->setOnKeyEventResult(ZI)V

    #@36
    goto :goto_0
.end method

.method public setOnKeyEventResult(ZI)V
    .locals 4
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I

    #@0
    .prologue
    .line 3009
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@2
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@4
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    monitor-enter v2

    #@9
    .line 3010
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->removePendingEventLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@c
    move-result-object v0

    #@d
    .line 3011
    .local v0, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    if-eqz v0, :cond_0

    #@f
    .line 3012
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@11
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    #@13
    .line 3013
    const/4 v3, 0x4

    #@14
    .line 3012
    invoke-virtual {v1, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->removeMessages(ILjava/lang/Object;)V

    #@17
    .line 3015
    iput-boolean p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->handled:Z

    #@19
    .line 3016
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->finishPendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    :cond_0
    monitor-exit v2

    #@1d
    .line 3008
    return-void

    #@1e
    .line 3009
    .end local v0    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method
