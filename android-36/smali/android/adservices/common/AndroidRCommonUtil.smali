.class public final Landroid/adservices/common/AndroidRCommonUtil;
.super Ljava/lang/Object;
.source "AndroidRCommonUtil.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "TT;",
            "Ljava/lang/Exception;",
            ">;)Z"
        }
    .end annotation

    .line 39
    .local p0, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<TT;Ljava/lang/Exception;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_12

    .line 40
    new-instance v0, Landroid/adservices/exceptions/AdServicesException;

    const-string v1, "AdServices is not supported on Android R"

    invoke-direct {v0, v1}, Landroid/adservices/exceptions/AdServicesException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 41
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_12
    const/4 v0, 0x0

    return v0
.end method
