.class public Landroid/hardware/gnss/IGnssPsds$Default;
.super Ljava/lang/Object;
.source "IGnssPsds.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssPsds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssPsds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist injectPsdsData(I[B)V
    .registers 3
    .param p1, "psdsType"    # I
    .param p2, "psdsData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist setCallback(Landroid/hardware/gnss/IGnssPsdsCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/gnss/IGnssPsdsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method
