.class public abstract Landroid/content/pm/dependencyinstaller/DependencyInstallerService;
.super Landroid/app/Service;
.source "DependencyInstallerService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private blacklist mBinder:Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerService;->mBinder:Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Landroid/content/pm/dependencyinstaller/DependencyInstallerService$1;

    invoke-direct {v0, p0}, Landroid/content/pm/dependencyinstaller/DependencyInstallerService$1;-><init>(Landroid/content/pm/dependencyinstaller/DependencyInstallerService;)V

    iput-object v0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerService;->mBinder:Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    .line 71
    :cond_b
    iget-object v0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerService;->mBinder:Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    invoke-interface {v0}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onDependenciesRequired(Ljava/util/List;Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;)V
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
.end method
