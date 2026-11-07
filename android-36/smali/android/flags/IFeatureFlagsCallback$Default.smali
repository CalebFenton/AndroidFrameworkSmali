.class public Landroid/flags/IFeatureFlagsCallback$Default;
.super Ljava/lang/Object;
.source "IFeatureFlagsCallback.java"

# interfaces
.implements Landroid/flags/IFeatureFlagsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/flags/IFeatureFlagsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onFlagChange(Landroid/flags/SyncableFlag;)V
    .registers 2
    .param p1, "flag"    # Landroid/flags/SyncableFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
