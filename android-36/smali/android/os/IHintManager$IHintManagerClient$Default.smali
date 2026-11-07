.class public Landroid/os/IHintManager$IHintManagerClient$Default;
.super Ljava/lang/Object;
.source "IHintManager.java"

# interfaces
.implements Landroid/os/IHintManager$IHintManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintManager$IHintManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 735
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist receiveChannelConfig(Landroid/hardware/power/ChannelConfig;)V
    .registers 2
    .param p1, "config"    # Landroid/hardware/power/ChannelConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 732
    return-void
.end method
