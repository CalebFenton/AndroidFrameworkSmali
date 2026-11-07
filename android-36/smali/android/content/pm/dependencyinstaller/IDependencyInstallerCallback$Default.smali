.class public Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Default;
.super Ljava/lang/Object;
.source "IDependencyInstallerCallback.java"

# interfaces
.implements Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;
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

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAllDependenciesResolved([I)V
    .registers 2
    .param p1, "sessionIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist onFailureToResolveAllDependencies()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method
