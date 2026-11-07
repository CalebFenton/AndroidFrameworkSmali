.class public interface abstract Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;
.super Ljava/lang/Object;
.source "HubEndpointDiscoveryCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onEndpointsStarted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubDiscoveryInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onEndpointsStopped(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubDiscoveryInfo;",
            ">;I)V"
        }
    .end annotation
.end method
