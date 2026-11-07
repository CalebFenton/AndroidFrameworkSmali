.class public final synthetic Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver$$ExternalSyntheticLambda0;->f$0:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver$$ExternalSyntheticLambda0;->f$0:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;

    invoke-static {v0}, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;->lambda$onScreenCaptured$0(Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;)V

    return-void
.end method
