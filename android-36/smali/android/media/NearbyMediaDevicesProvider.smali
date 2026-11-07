.class public interface abstract Landroid/media/NearbyMediaDevicesProvider;
.super Ljava/lang/Object;
.source "NearbyMediaDevicesProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist registerNearbyDevicesCallback(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/NearbyDevice;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract whitelist unregisterNearbyDevicesCallback(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/NearbyDevice;",
            ">;>;)V"
        }
    .end annotation
.end method
