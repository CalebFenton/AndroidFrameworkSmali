.class public Lcom/android/server/accessibility/KeyEventDispatcher;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/KeyEventDispatcher$Callback;,
        Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "KeyEventDispatcher"

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final MSG_ON_KEY_EVENT_TIMEOUT:I = 0x1

.field private static final ON_KEY_EVENT_TIMEOUT_MILLIS:J = 0x1f4L


# instance fields
.field private final mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

.field private final mKeyEventTimeoutHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mMessageTypeForSendKeyEvent:I

.field private final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Service;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/KeyEventDispatcher;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/KeyEventDispatcher;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/KeyEventDispatcher;Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z
    .locals 1
    .param p1, "pendingEvent"    # Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V
    .locals 4
    .param p1, "handlerToSendKeyEventsToInputFilter"    # Landroid/os/Handler;
    .param p2, "messageTypeForSendKeyEvent"    # I
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "powerManager"    # Landroid/os/PowerManager;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 58
    new-instance v0, Landroid/util/Pools$SimplePool;

    #@6
    const/16 v1, 0xa

    #@8
    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    #@b
    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    #@d
    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    #@f
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    #@14
    .line 89
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 90
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    #@1c
    .line 91
    const-class v1, Lcom/android/server/accessibility/KeyEventDispatcher;

    #@1e
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    const/4 v2, 0x0

    #@23
    .line 90
    invoke-direct {v0, p0, v2, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    #@26
    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@28
    .line 95
    :goto_0
    iput-object p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

    #@2a
    .line 96
    iput p2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mMessageTypeForSendKeyEvent:I

    #@2c
    .line 98
    new-instance v0, Landroid/os/Handler;

    #@2e
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

    #@30
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@33
    move-result-object v1

    #@34
    new-instance v2, Lcom/android/server/accessibility/KeyEventDispatcher$Callback;

    #@36
    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/KeyEventDispatcher$Callback;-><init>(Lcom/android/server/accessibility/KeyEventDispatcher;Lcom/android/server/accessibility/KeyEventDispatcher$Callback;)V

    #@39
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@3c
    .line 97
    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    #@3e
    .line 99
    iput-object p3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    #@40
    .line 100
    iput-object p4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPowerManager:Landroid/os/PowerManager;

    #@42
    .line 88
    return-void

    #@43
    .line 93
    :cond_0
    iput-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@45
    goto :goto_0
.end method

.method private obtainPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 209
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    #@4
    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    #@a
    .line 210
    .local v0, "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    if-nez v0, :cond_0

    #@c
    .line 211
    new-instance v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    #@e
    .end local v0    # "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    invoke-direct {v0, v3}, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;-><init>(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)V

    #@11
    .line 213
    .restart local v0    # "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    :cond_0
    iput-object p1, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    #@13
    .line 214
    iput p2, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->policyFlags:I

    #@15
    .line 215
    iput v2, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    #@17
    .line 216
    iput-boolean v2, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    #@19
    .line 217
    return-object v0
.end method

.method private static removeEventFromListLocked(Ljava/util/List;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    .locals 3
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;I)",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;"
        }
    .end annotation

    #@0
    .prologue
    .line 223
    .local p0, "listOfEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@4
    move-result v2

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 224
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    #@d
    .line 225
    .local v1, "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    iget-object v2, v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    #@f
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSequenceNumber()I

    #@12
    move-result v2

    #@13
    if-ne v2, p1, :cond_0

    #@15
    .line 233
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@18
    .line 234
    return-object v1

    #@19
    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 237
    .end local v1    # "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    :cond_1
    const/4 v2, 0x0

    #@1d
    return-object v2
.end method

.method private removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z
    .locals 6
    .param p1, "pendingEvent"    # Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 245
    iget v1, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    #@8
    if-lez v1, :cond_0

    #@a
    .line 246
    return v4

    #@b
    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    #@d
    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@10
    .line 249
    iget-boolean v1, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    #@12
    if-nez v1, :cond_2

    #@14
    .line 254
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 255
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@1a
    iget-object v2, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    #@1c
    invoke-virtual {v1, v2, v4}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    #@1f
    .line 257
    :cond_1
    iget v1, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->policyFlags:I

    #@21
    const/high16 v2, 0x40000000    # 2.0f

    #@23
    or-int v0, v1, v2

    #@25
    .line 258
    .local v0, "policyFlags":I
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

    #@27
    .line 259
    iget v2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mMessageTypeForSendKeyEvent:I

    #@29
    iget-object v3, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    #@2b
    .line 258
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@32
    .line 264
    .end local v0    # "policyFlags":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    #@34
    invoke-interface {v1, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@37
    .line 265
    return v5

    #@38
    .line 262
    :cond_2
    iget-object v1, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    #@3a
    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    #@3d
    goto :goto_0
.end method


# virtual methods
.method public flush(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@0
    .prologue
    .line 196
    iget-object v4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 197
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    #@5
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Ljava/util/List;

    #@b
    .line 198
    .local v2, "pendingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    if-eqz v2, :cond_1

    #@d
    .line 199
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@11
    move-result v3

    #@12
    if-ge v0, v3, :cond_0

    #@14
    .line 200
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    #@1a
    .line 201
    .local v1, "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    #@1d
    .line 199
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 203
    .end local v1    # "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    #@22
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .end local v0    # "i":I
    :cond_1
    monitor-exit v4

    #@26
    .line 195
    return-void

    #@27
    .line 196
    .end local v2    # "pendingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    :catchall_0
    move-exception v3

    #@28
    monitor-exit v4

    #@29
    throw v3
.end method

.method public notifyKeyEventLocked(Landroid/view/KeyEvent;ILjava/util/List;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Service;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 118
    .local p3, "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    const/4 v5, 0x0

    #@1
    .line 119
    .local v5, "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    #@4
    move-result-object v2

    #@5
    .line 120
    .local v2, "localClone":Landroid/view/KeyEvent;
    const/4 v1, 0x0

    #@6
    .end local v5    # "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    .local v1, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@9
    move-result v8

    #@a
    if-ge v1, v8, :cond_4

    #@c
    .line 121
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v7

    #@10
    check-cast v7, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@12
    .line 124
    .local v7, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v8, v7, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestFilterKeyEvents:Z

    #@14
    if-nez v8, :cond_1

    #@16
    .line 120
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 127
    :cond_1
    iget-object v8, v7, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@1b
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    #@1e
    move-result v8

    #@1f
    and-int/lit8 v0, v8, 0x8

    #@21
    .line 129
    .local v0, "filterKeyEventBit":I
    if-eqz v0, :cond_0

    #@23
    .line 135
    :try_start_0
    iget-object v8, v7, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@25
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSequenceNumber()I

    #@28
    move-result v9

    #@29
    invoke-interface {v8, v2, v9}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 140
    if-nez v5, :cond_2

    #@2e
    .line 141
    invoke-direct {p0, v2, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->obtainPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    #@31
    move-result-object v5

    #@32
    .line 143
    :cond_2
    iget-object v8, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    #@34
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    check-cast v4, Ljava/util/ArrayList;

    #@3a
    .line 144
    .local v4, "pendingEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    if-nez v4, :cond_3

    #@3c
    .line 145
    new-instance v4, Ljava/util/ArrayList;

    #@3e
    .end local v4    # "pendingEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@41
    .line 146
    .restart local v4    # "pendingEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    iget-object v8, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    #@43
    invoke-interface {v8, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 148
    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@49
    .line 149
    iget v8, v5, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    #@4b
    add-int/lit8 v8, v8, 0x1

    #@4d
    iput v8, v5, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    #@4f
    goto :goto_1

    #@50
    .line 152
    .end local v0    # "filterKeyEventBit":I
    .end local v4    # "pendingEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    .end local v7    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_4
    if-nez v5, :cond_5

    #@52
    .line 153
    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V

    #@55
    .line 154
    const/4 v8, 0x0

    #@56
    return v8

    #@57
    .line 157
    :cond_5
    iget-object v8, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    #@59
    .line 158
    const/4 v9, 0x1

    #@5a
    .line 157
    invoke-virtual {v8, v9, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@5d
    move-result-object v3

    #@5e
    .line 159
    .local v3, "message":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    #@60
    const-wide/16 v10, 0x1f4

    #@62
    invoke-virtual {v8, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@65
    .line 160
    const/4 v8, 0x1

    #@66
    return v8

    #@67
    .line 136
    .end local v3    # "message":Landroid/os/Message;
    .restart local v0    # "filterKeyEventBit":I
    .restart local v7    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :catch_0
    move-exception v6

    #@68
    .local v6, "re":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public setOnKeyEventResult(Lcom/android/server/accessibility/AccessibilityManagerService$Service;ZI)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "handled"    # Z
    .param p3, "sequence"    # I

    #@0
    .prologue
    .line 171
    iget-object v4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 173
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    #@5
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    check-cast v3, Ljava/util/List;

    #@b
    invoke-static {v3, p3}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeEventFromListLocked(Ljava/util/List;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    #@e
    move-result-object v2

    #@f
    .line 174
    .local v2, "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    if-eqz v2, :cond_1

    #@11
    .line 175
    if-eqz p2, :cond_0

    #@13
    iget-boolean v3, v2, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    #@15
    if-eqz v3, :cond_2

    #@17
    .line 185
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_1
    monitor-exit v4

    #@1b
    .line 170
    return-void

    #@1c
    .line 176
    :cond_2
    :try_start_1
    iput-boolean p2, v2, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    #@1e
    .line 177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    move-result-wide v0

    #@22
    .line 179
    .local v0, "identity":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPowerManager:Landroid/os/PowerManager;

    #@24
    iget-object v5, v2, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    #@26
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getEventTime()J

    #@29
    move-result-wide v6

    #@2a
    .line 180
    const/4 v5, 0x3

    #@2b
    const/4 v8, 0x0

    #@2c
    .line 179
    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/os/PowerManager;->userActivity(JII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2f
    .line 182
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 171
    .end local v0    # "identity":J
    .end local v2    # "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    :catchall_0
    move-exception v3

    #@34
    monitor-exit v4

    #@35
    throw v3

    #@36
    .line 181
    .restart local v0    # "identity":J
    .restart local v2    # "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    :catchall_1
    move-exception v3

    #@37
    .line 182
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 181
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
