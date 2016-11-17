.class public Lcom/android/server/accessibility/MotionEventInjector;
.super Ljava/lang/Object;
.source "MotionEventInjector.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MotionEventInjector$Callback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MotionEventInjector"

.field private static final MAX_POINTERS:I = 0xb

.field private static final MESSAGE_INJECT_EVENTS:I = 0x2

.field private static final MESSAGE_SEND_MOTION_EVENT:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mOpenGesturesInProgress:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mSequenceForCurrentGesture:I

.field private mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mSourceOfInjectedGesture:I


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MotionEventInjector;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/MotionEventInjector;Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 0
    .param p1, "events"    # Ljava/util/List;
    .param p2, "serviceInterface"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "sequence"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MotionEventInjector;->injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/MotionEventInjector;Z)V
    .locals 0
    .param p1, "success"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accessibility/MotionEventInjector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/16 v2, 0xb

    #@2
    const/4 v1, 0x0

    #@3
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 50
    new-instance v0, Landroid/util/SparseArray;

    #@8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    #@d
    .line 54
    new-array v0, v2, [Landroid/view/MotionEvent$PointerProperties;

    #@f
    .line 53
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@11
    .line 56
    new-array v0, v2, [Landroid/view/MotionEvent$PointerCoords;

    #@13
    .line 55
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@15
    .line 60
    iput v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSourceOfInjectedGesture:I

    #@17
    .line 61
    iput-boolean v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    #@19
    .line 67
    new-instance v0, Landroid/os/Handler;

    #@1b
    new-instance v1, Lcom/android/server/accessibility/MotionEventInjector$Callback;

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/MotionEventInjector$Callback;-><init>(Lcom/android/server/accessibility/MotionEventInjector;Lcom/android/server/accessibility/MotionEventInjector$Callback;)V

    #@21
    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@24
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    #@26
    .line 66
    return-void
.end method

.method private cancelAnyGestureInProgress(I)V
    .locals 9
    .param p1, "source"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 198
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    #@8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/lang/Boolean;

    #@12
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1b
    move-result-wide v0

    #@1c
    .line 201
    .local v0, "now":J
    const/4 v4, 0x3

    #@1d
    move-wide v2, v0

    #@1e
    move v6, v5

    #@1f
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@22
    move-result-object v8

    #@23
    .line 203
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    const/high16 v2, 0x40000000    # 2.0f

    #@25
    .line 202
    invoke-direct {p0, v8, v8, v2}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@28
    .line 197
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private cancelAnyPendingInjectedEvents()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 208
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 209
    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSourceOfInjectedGesture:I

    #@b
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    #@e
    .line 210
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@13
    .line 211
    const/4 v0, 0x0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Z)V

    #@17
    .line 207
    :cond_0
    return-void
.end method

.method private injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 26
    .param p2, "serviceInterface"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 132
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 134
    const/4 v2, 0x0

    #@7
    :try_start_0
    move-object/from16 v0, p2

    #@9
    move/from16 v1, p3

    #@b
    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 139
    :goto_0
    return-void

    #@f
    .line 135
    :catch_0
    move-exception v23

    #@10
    .line 136
    .local v23, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "MotionEventInjector"

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Error sending status with mIsDestroyed to "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    move-object/from16 v0, p2

    #@21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    move-object/from16 v0, v23

    #@2b
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_0

    #@2f
    .line 141
    .end local v23    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    #@32
    .line 142
    const/4 v2, 0x0

    #@33
    move-object/from16 v0, p1

    #@35
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    check-cast v2, Landroid/view/MotionEvent;

    #@3b
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    #@3e
    move-result v2

    #@3f
    move-object/from16 v0, p0

    #@41
    iput v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSourceOfInjectedGesture:I

    #@43
    .line 143
    move-object/from16 v0, p0

    #@45
    iget v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSourceOfInjectedGesture:I

    #@47
    move-object/from16 v0, p0

    #@49
    invoke-direct {v0, v2}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    #@4c
    .line 144
    move-object/from16 v0, p2

    #@4e
    move-object/from16 v1, p0

    #@50
    iput-object v0, v1, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@52
    .line 145
    move/from16 v0, p3

    #@54
    move-object/from16 v1, p0

    #@56
    iput v0, v1, Lcom/android/server/accessibility/MotionEventInjector;->mSequenceForCurrentGesture:I

    #@58
    .line 146
    move-object/from16 v0, p0

    #@5a
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@5c
    if-nez v2, :cond_1

    #@5e
    .line 147
    const/4 v2, 0x0

    #@5f
    move-object/from16 v0, p0

    #@61
    invoke-direct {v0, v2}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Z)V

    #@64
    .line 148
    return-void

    #@65
    .line 151
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@68
    move-result-wide v24

    #@69
    .line 152
    .local v24, "startTime":J
    const/16 v19, 0x0

    #@6b
    .local v19, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    #@6e
    move-result v2

    #@6f
    move/from16 v0, v19

    #@71
    if-ge v0, v2, :cond_5

    #@73
    .line 153
    move-object/from16 v0, p1

    #@75
    move/from16 v1, v19

    #@77
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v18

    #@7b
    check-cast v18, Landroid/view/MotionEvent;

    #@7d
    .line 154
    .local v18, "event":Landroid/view/MotionEvent;
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getPointerCount()I

    #@80
    move-result v7

    #@81
    .line 155
    .local v7, "numPointers":I
    move-object/from16 v0, p0

    #@83
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@85
    array-length v2, v2

    #@86
    if-le v7, v2, :cond_2

    #@88
    .line 156
    new-array v2, v7, [Landroid/view/MotionEvent$PointerCoords;

    #@8a
    move-object/from16 v0, p0

    #@8c
    iput-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@8e
    .line 157
    new-array v2, v7, [Landroid/view/MotionEvent$PointerProperties;

    #@90
    move-object/from16 v0, p0

    #@92
    iput-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@94
    .line 159
    :cond_2
    const/16 v20, 0x0

    #@96
    .local v20, "j":I
    :goto_2
    move/from16 v0, v20

    #@98
    if-ge v0, v7, :cond_4

    #@9a
    .line 160
    move-object/from16 v0, p0

    #@9c
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@9e
    aget-object v2, v2, v20

    #@a0
    if-nez v2, :cond_3

    #@a2
    .line 161
    move-object/from16 v0, p0

    #@a4
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@a6
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    #@a8
    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@ab
    aput-object v3, v2, v20

    #@ad
    .line 162
    move-object/from16 v0, p0

    #@af
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@b1
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    #@b3
    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    #@b6
    aput-object v3, v2, v20

    #@b8
    .line 164
    :cond_3
    move-object/from16 v0, p0

    #@ba
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@bc
    aget-object v2, v2, v20

    #@be
    move-object/from16 v0, v18

    #@c0
    move/from16 v1, v20

    #@c2
    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    #@c5
    .line 165
    move-object/from16 v0, p0

    #@c7
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@c9
    aget-object v2, v2, v20

    #@cb
    move-object/from16 v0, v18

    #@cd
    move/from16 v1, v20

    #@cf
    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    #@d2
    .line 159
    add-int/lit8 v20, v20, 0x1

    #@d4
    goto :goto_2

    #@d5
    .line 172
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getDownTime()J

    #@d8
    move-result-wide v2

    #@d9
    add-long v2, v2, v24

    #@db
    .line 173
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEventTime()J

    #@de
    move-result-wide v4

    #@df
    add-long v4, v4, v24

    #@e1
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getAction()I

    #@e4
    move-result v6

    #@e5
    .line 174
    move-object/from16 v0, p0

    #@e7
    iget-object v8, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget-object v9, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@ed
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getMetaState()I

    #@f0
    move-result v10

    #@f1
    .line 175
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getButtonState()I

    #@f4
    move-result v11

    #@f5
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getXPrecision()F

    #@f8
    move-result v12

    #@f9
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getYPrecision()F

    #@fc
    move-result v13

    #@fd
    .line 176
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getDeviceId()I

    #@100
    move-result v14

    #@101
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEdgeFlags()I

    #@104
    move-result v15

    #@105
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getSource()I

    #@108
    move-result v16

    #@109
    .line 177
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getFlags()I

    #@10c
    move-result v17

    #@10d
    .line 172
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@110
    move-result-object v22

    #@111
    .line 178
    .local v22, "offsetEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    #@113
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    #@115
    const/4 v3, 0x1

    #@116
    move-object/from16 v0, v22

    #@118
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11b
    move-result-object v21

    #@11c
    .line 179
    .local v21, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    #@11e
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    #@120
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEventTime()J

    #@123
    move-result-wide v4

    #@124
    move-object/from16 v0, v21

    #@126
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@129
    .line 152
    add-int/lit8 v19, v19, 0x1

    #@12b
    goto/16 :goto_1

    #@12d
    .line 131
    .end local v7    # "numPointers":I
    .end local v18    # "event":Landroid/view/MotionEvent;
    .end local v20    # "j":I
    .end local v21    # "message":Landroid/os/Message;
    .end local v22    # "offsetEvent":Landroid/view/MotionEvent;
    :cond_5
    return-void
.end method

.method private notifyService(Z)V
    .locals 4
    .param p1, "success"    # Z

    #@0
    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@2
    .line 219
    iget v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequenceForCurrentGesture:I

    #@4
    .line 218
    invoke-interface {v1, v2, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 216
    :goto_0
    return-void

    #@8
    .line 220
    :catch_0
    move-exception v0

    #@9
    .line 221
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "MotionEventInjector"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Error sending motion event injection status to "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 222
    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@1a
    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    goto :goto_0
.end method

.method private sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 185
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@4
    if-eqz v0, :cond_2

    #@6
    .line 186
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@8
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@b
    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    .line 188
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    #@13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@16
    move-result v1

    #@17
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1e
    .line 190
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@21
    move-result v0

    #@22
    if-eq v0, v4, :cond_1

    #@24
    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@27
    move-result v0

    #@28
    const/4 v1, 0x3

    #@29
    if-ne v0, v1, :cond_2

    #@2b
    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@30
    move-result v1

    #@31
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@38
    .line 184
    :cond_2
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 2
    .param p1, "inputSource"    # I

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 120
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@13
    .line 114
    :cond_0
    return-void
.end method

.method public injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 4
    .param p2, "serviceInterface"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 81
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 82
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 83
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 84
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@a
    .line 85
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    #@c
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    #@e
    const/4 v3, 0x2

    #@f
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 80
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 104
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@6
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@9
    .line 102
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    #@3
    .line 127
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    #@6
    .line 125
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 97
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@6
    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    #@9
    .line 95
    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    #@3
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@6
    .line 89
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    .line 109
    return-void
.end method
