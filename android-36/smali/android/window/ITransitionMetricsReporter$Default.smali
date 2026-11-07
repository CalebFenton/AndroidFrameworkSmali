.class public Landroid/window/ITransitionMetricsReporter$Default;
.super Ljava/lang/Object;
.source "ITransitionMetricsReporter.java"

# interfaces
.implements Landroid/window/ITransitionMetricsReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITransitionMetricsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist reportAnimationStart(Landroid/os/IBinder;J)V
    .registers 4
    .param p1, "transitionToken"    # Landroid/os/IBinder;
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
