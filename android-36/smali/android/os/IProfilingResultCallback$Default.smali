.class public Landroid/os/IProfilingResultCallback$Default;
.super Ljava/lang/Object;
.source "IProfilingResultCallback.java"

# interfaces
.implements Landroid/os/IProfilingResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IProfilingResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
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

.method public blacklist deleteFile(Ljava/lang/String;)V
    .registers 2
    .param p1, "relativeFilePathAndName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist generateFile(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 7
    .param p1, "filePathRelative"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "keyMostSigBits"    # J
    .param p5, "keyLeastSigBits"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist sendResult(Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "resultFile"    # Ljava/lang/String;
    .param p2, "keyMostSigBits"    # J
    .param p4, "keyLeastSigBits"    # J
    .param p6, "status"    # I
    .param p7, "tag"    # Ljava/lang/String;
    .param p8, "error"    # Ljava/lang/String;
    .param p9, "triggerType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
