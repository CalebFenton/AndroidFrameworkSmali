.class Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;
.super Landroid/app/IScreenCaptureObserver$Stub;
.source "ScreenCaptureCallbackHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ScreenCaptureCallbackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenCaptureObserver"
.end annotation


# instance fields
.field blacklist mRegistrations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity$ScreenCaptureCallback;",
            "Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity$ScreenCaptureCallback;",
            "Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "registrations":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/Activity$ScreenCaptureCallback;Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;>;"
    invoke-direct {p0}, Landroid/app/IScreenCaptureObserver$Stub;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;->mRegistrations:Landroid/util/ArrayMap;

    .line 59
    return-void
.end method

.method static synthetic blacklist lambda$onScreenCaptured$0(Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;)V
    .registers 2
    .param p0, "registration"    # Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;

    .line 66
    iget-object v0, p0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;->mCallback:Landroid/app/Activity$ScreenCaptureCallback;

    invoke-interface {v0}, Landroid/app/Activity$ScreenCaptureCallback;->onScreenCaptured()V

    .line 67
    return-void
.end method


# virtual methods
.method public blacklist onScreenCaptured()V
    .registers 5

    .line 63
    iget-object v0, p0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;

    .line 64
    .local v1, "registration":Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;
    iget-object v2, v1, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver$$ExternalSyntheticLambda0;-><init>(Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    .end local v1    # "registration":Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;
    goto :goto_a

    .line 69
    :cond_21
    return-void
.end method
