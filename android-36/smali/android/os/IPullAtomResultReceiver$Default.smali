.class public Landroid/os/IPullAtomResultReceiver$Default;
.super Ljava/lang/Object;
.source "IPullAtomResultReceiver.java"

# interfaces
.implements Landroid/os/IPullAtomResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPullAtomResultReceiver;
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

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist pullFinished(IZ[Landroid/util/StatsEventParcel;)V
    .registers 4
    .param p1, "atomTag"    # I
    .param p2, "success"    # Z
    .param p3, "output"    # [Landroid/util/StatsEventParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
