.class public Landroid/nearby/aidl/IOffloadCallback$Default;
.super Ljava/lang/Object;
.source "IOffloadCallback.java"

# interfaces
.implements Landroid/nearby/aidl/IOffloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/aidl/IOffloadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onQueryComplete(Landroid/nearby/OffloadCapability;)V
    .registers 2
    .param p1, "capability"    # Landroid/nearby/OffloadCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
