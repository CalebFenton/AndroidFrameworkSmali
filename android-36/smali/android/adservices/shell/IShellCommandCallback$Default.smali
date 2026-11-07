.class public Landroid/adservices/shell/IShellCommandCallback$Default;
.super Ljava/lang/Object;
.source "IShellCommandCallback.java"

# interfaces
.implements Landroid/adservices/shell/IShellCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/shell/IShellCommandCallback;
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

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onResult(Landroid/adservices/shell/ShellCommandResult;)V
    .registers 2
    .param p1, "result"    # Landroid/adservices/shell/ShellCommandResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
