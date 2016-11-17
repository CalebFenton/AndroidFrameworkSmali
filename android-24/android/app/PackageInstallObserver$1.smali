.class Landroid/app/PackageInstallObserver$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageInstallObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PackageInstallObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/PackageInstallObserver;


# direct methods
.method constructor <init>(Landroid/app/PackageInstallObserver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/PackageInstallObserver;

    #@0
    .prologue
    .line 25
    iput-object p1, p0, Landroid/app/PackageInstallObserver$1;->this$0:Landroid/app/PackageInstallObserver;

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
    .line 34
    iget-object v0, p0, Landroid/app/PackageInstallObserver$1;->this$0:Landroid/app/PackageInstallObserver;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/PackageInstallObserver;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    #@5
    .line 33
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 28
    iget-object v0, p0, Landroid/app/PackageInstallObserver$1;->this$0:Landroid/app/PackageInstallObserver;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/PackageInstallObserver;->onUserActionRequired(Landroid/content/Intent;)V

    #@5
    .line 27
    return-void
.end method
