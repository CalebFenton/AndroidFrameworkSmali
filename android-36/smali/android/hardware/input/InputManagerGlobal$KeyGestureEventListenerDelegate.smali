.class final Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;
.super Ljava/lang/Object;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyGestureEventListenerDelegate"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mListener:Landroid/hardware/input/InputManager$KeyGestureEventListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$doq8YyJxNxjen4FxAsiy4hvndc8(Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;Landroid/hardware/input/KeyGestureEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;->lambda$onKeyGestureEvent$0(Landroid/hardware/input/KeyGestureEvent;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/input/InputManager$KeyGestureEventListener;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$KeyGestureEventListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyGestureEventListener;

    .line 1100
    iput-object p2, p0, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1101
    return-void
.end method

.method private synthetic blacklist lambda$onKeyGestureEvent$0(Landroid/hardware/input/KeyGestureEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/hardware/input/KeyGestureEvent;

    .line 1104
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyGestureEventListener;

    invoke-interface {v0, p1}, Landroid/hardware/input/InputManager$KeyGestureEventListener;->onKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)V

    return-void
.end method


# virtual methods
.method blacklist onKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/hardware/input/KeyGestureEvent;

    .line 1104
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;Landroid/hardware/input/KeyGestureEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1105
    return-void
.end method
