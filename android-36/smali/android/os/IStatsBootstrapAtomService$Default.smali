.class public Landroid/os/IStatsBootstrapAtomService$Default;
.super Ljava/lang/Object;
.source "IStatsBootstrapAtomService.java"

# interfaces
.implements Landroid/os/IStatsBootstrapAtomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStatsBootstrapAtomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist reportBootstrapAtom(Landroid/os/StatsBootstrapAtom;)V
    .registers 2
    .param p1, "atom"    # Landroid/os/StatsBootstrapAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
