.class public final synthetic Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/hardware/input/IKeyboardBacklightState;

.field public final synthetic blacklist f$3:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;ILandroid/hardware/input/IKeyboardBacklightState;Z)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

    iput p2, p0, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/input/IKeyboardBacklightState;

    iput-boolean p4, p0, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

    iget v1, p0, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/input/IKeyboardBacklightState;

    iget-boolean v3, p0, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->$r8$lambda$9qrYCXHrVho_o4sfUesRxWY4kqM(Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;ILandroid/hardware/input/IKeyboardBacklightState;Z)V

    return-void
.end method
