.class Lcom/android/server/pm/PackageInstallerSession$2;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->commitLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    #@0
    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$2;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@2
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$2;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-wrap1(Lcom/android/server/pm/PackageInstallerSession;)V

    #@5
    .line 566
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$2;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    #@7
    invoke-static {v0, p2, p3, p4}, Lcom/android/server/pm/PackageInstallerSession;->-wrap2(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    #@a
    .line 564
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 559
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@5
    throw v0
.end method
