.class public final synthetic Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;

.field public final synthetic blacklist f$1:Landroid/hardware/input/KeyGestureEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;Landroid/hardware/input/KeyGestureEvent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;

    iput-object p2, p0, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/input/KeyGestureEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/input/KeyGestureEvent;

    invoke-static {v0, v1}, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;->$r8$lambda$doq8YyJxNxjen4FxAsiy4hvndc8(Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;Landroid/hardware/input/KeyGestureEvent;)V

    return-void
.end method
