.class public interface abstract Lcom/android/ims/rcs/uce/options/OptionsController;
.super Ljava/lang/Object;
.source "OptionsController.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/ControllerBase;


# virtual methods
.method public abstract blacklist sendCapabilitiesRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
