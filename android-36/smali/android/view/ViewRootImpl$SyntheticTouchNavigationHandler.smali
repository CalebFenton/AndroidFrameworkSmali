.class final Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTouchNavigationHandler"
.end annotation


# static fields
.field private static final greylist-max-o LOCAL_TAG:Ljava/lang/String; = "SyntheticTouchNavigationHandler"


# instance fields
.field private greylist-max-o mCurrentDeviceId:I

.field private greylist-max-o mCurrentSource:I

.field private final blacklist mGestureDetector:Landroid/view/GestureDetector;

.field private greylist-max-o mPendingKeyMetaState:I

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdispatchFling(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;FFJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->dispatchFling(FFJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchTap(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->dispatchTap(J)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 7
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 9017
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 9018
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    .line 9010
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    .line 9019
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;

    invoke-direct {v2, p0, p1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;-><init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Landroid/view/ViewRootImpl;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;I)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 9059
    return-void
.end method

.method private blacklist dispatchEvent(JI)V
    .registers 32
    .param p1, "time"    # J
    .param p3, "keyCode"    # I

    .line 9100
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v2, Landroid/view/KeyEvent;

    iget v10, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/16 v13, 0x400

    iget v14, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-wide/from16 v5, p1

    move-wide/from16 v3, p1

    move/from16 v8, p3

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 9104
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v15, Landroid/view/KeyEvent;

    iget v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget v3, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/16 v26, 0x400

    iget v4, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    const/16 v20, 0x1

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-wide/from16 v18, p1

    move-wide/from16 v16, p1

    move/from16 v21, p3

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v27, v4

    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 9108
    return-void
.end method

.method private blacklist dispatchFling(FFJ)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .line 9088
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1b

    .line 9089
    nop

    .line 9090
    cmpl-float v0, p1, v1

    if-lez v0, :cond_15

    const/16 v0, 0x16

    goto :goto_17

    :cond_15
    const/16 v0, 0x15

    .line 9089
    :goto_17
    invoke-direct {p0, p3, p4, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->dispatchEvent(JI)V

    goto :goto_27

    .line 9092
    :cond_1b
    cmpl-float v0, p2, v1

    if-lez v0, :cond_22

    const/16 v0, 0x14

    goto :goto_24

    :cond_22
    const/16 v0, 0x13

    :goto_24
    invoke-direct {p0, p3, p4, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->dispatchEvent(JI)V

    .line 9094
    :goto_27
    return-void
.end method

.method private blacklist dispatchTap(J)V
    .registers 4
    .param p1, "time"    # J

    .line 9084
    const/16 v0, 0x17

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->dispatchEvent(JI)V

    .line 9085
    return-void
.end method


# virtual methods
.method public greylist-max-o process(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 9062
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_7

    .line 9068
    return-void

    .line 9070
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    .line 9072
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    .line 9073
    .local v0, "deviceId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 9074
    .local v1, "source":I
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    if-ne v2, v0, :cond_1d

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    if-eq v2, v1, :cond_21

    .line 9075
    :cond_1d
    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    .line 9076
    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    .line 9080
    :cond_21
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9081
    return-void
.end method
