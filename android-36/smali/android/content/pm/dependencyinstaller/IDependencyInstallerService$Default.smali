.class public Landroid/content/pm/dependencyinstaller/IDependencyInstallerService$Default;
.super Ljava/lang/Object;
.source "IDependencyInstallerService.java"

# interfaces
.implements Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;
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

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDependenciesRequired(Ljava/util/List;Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;)V
    .registers 3
    .param p2, "callback"    # Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    .local p1, "neededLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    return-void
.end method
