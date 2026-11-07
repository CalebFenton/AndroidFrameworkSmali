.class public final synthetic Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/accessibilityservice/TouchInteractionController$Callback;

.field public final synthetic blacklist f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/accessibilityservice/TouchInteractionController$Callback;Landroid/view/MotionEvent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;->f$0:Landroid/accessibilityservice/TouchInteractionController$Callback;

    iput-object p2, p0, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;->f$0:Landroid/accessibilityservice/TouchInteractionController$Callback;

    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;->f$1:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Landroid/accessibilityservice/TouchInteractionController;->lambda$sendEventToAllListeners$0(Landroid/accessibilityservice/TouchInteractionController$Callback;Landroid/view/MotionEvent;)V

    return-void
.end method
