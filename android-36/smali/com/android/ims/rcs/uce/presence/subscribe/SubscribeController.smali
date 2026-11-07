.class public interface abstract Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;
.super Ljava/lang/Object;
.source "SubscribeController.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/ControllerBase;


# virtual methods
.method public abstract blacklist requestCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/ISubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
