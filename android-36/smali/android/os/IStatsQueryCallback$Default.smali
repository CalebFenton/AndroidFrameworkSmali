.class public Landroid/os/IStatsQueryCallback$Default;
.super Ljava/lang/Object;
.source "IStatsQueryCallback.java"

# interfaces
.implements Landroid/os/IStatsQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStatsQueryCallback;
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

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendFailure(Ljava/lang/String;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist sendResults([Ljava/lang/String;[Ljava/lang/String;[II)V
    .registers 5
    .param p1, "queryData"    # [Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;
    .param p3, "columnTypes"    # [I
    .param p4, "rowCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
