.class public interface abstract Landroid/telephony/mbms/MbmsGroupCallSessionCallback;
.super Ljava/lang/Object;
.source "MbmsGroupCallSessionCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/MbmsGroupCallSessionCallback$GroupCallError;
    }
.end annotation


# virtual methods
.method public whitelist onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 74
    .local p1, "currentSais":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "availableSais":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    return-void
.end method

.method public whitelist onError(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 60
    return-void
.end method

.method public whitelist onMiddlewareReady()V
    .registers 1

    .line 98
    return-void
.end method

.method public whitelist onServiceInterfaceAvailable(Ljava/lang/String;I)V
    .registers 3
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 88
    return-void
.end method
