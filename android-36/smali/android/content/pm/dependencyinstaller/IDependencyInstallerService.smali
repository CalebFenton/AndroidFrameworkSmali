.class public interface abstract Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;
.super Ljava/lang/Object;
.source "IDependencyInstallerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/dependencyinstaller/IDependencyInstallerService$Stub;,
        Landroid/content/pm/dependencyinstaller/IDependencyInstallerService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.pm.dependencyinstaller.IDependencyInstallerService"


# virtual methods
.method public abstract blacklist onDependenciesRequired(Ljava/util/List;Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;)V
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
.end method
