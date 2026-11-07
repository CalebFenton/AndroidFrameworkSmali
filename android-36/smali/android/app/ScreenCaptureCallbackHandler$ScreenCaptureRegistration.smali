.class Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;
.super Ljava/lang/Object;
.source "ScreenCaptureCallbackHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ScreenCaptureCallbackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenCaptureRegistration"
.end annotation


# instance fields
.field blacklist mCallback:Landroid/app/Activity$ScreenCaptureCallback;

.field blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/Activity$ScreenCaptureCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/app/Activity$ScreenCaptureCallback;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 48
    iput-object p2, p0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;->mCallback:Landroid/app/Activity$ScreenCaptureCallback;

    .line 49
    return-void
.end method
