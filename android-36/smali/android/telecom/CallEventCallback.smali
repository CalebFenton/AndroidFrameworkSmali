.class public interface abstract Landroid/telecom/CallEventCallback;
.super Ljava/lang/Object;
.source "CallEventCallback.java"


# virtual methods
.method public abstract whitelist onAvailableCallEndpointsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V
.end method

.method public abstract whitelist onCallStreamingFailed(I)V
.end method

.method public abstract whitelist onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onMuteStateChanged(Z)V
.end method

.method public whitelist onVideoStateChanged(I)V
    .registers 2
    .param p1, "videoState"    # I

    .line 62
    return-void
.end method
