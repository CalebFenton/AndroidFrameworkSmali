.class public Landroid/os/instrumentation/IOffsetCallback$Default;
.super Ljava/lang/Object;
.source "IOffsetCallback.java"

# interfaces
.implements Landroid/os/instrumentation/IOffsetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/instrumentation/IOffsetCallback;
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

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V
    .registers 2
    .param p1, "offsets"    # Landroid/os/instrumentation/ExecutableMethodFileOffsets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
