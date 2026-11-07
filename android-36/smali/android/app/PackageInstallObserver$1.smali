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
.field final synthetic blacklist this$0:Landroid/app/PackageInstallObserver;


# direct methods
.method constructor blacklist <init>(Landroid/app/PackageInstallObserver;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/PackageInstallObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 31
    iput-object p1, p0, Landroid/app/PackageInstallObserver$1;->this$0:Landroid/app/PackageInstallObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 40
    iget-object v0, p0, Landroid/app/PackageInstallObserver$1;->this$0:Landroid/app/PackageInstallObserver;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/PackageInstallObserver;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method public blacklist onUserActionRequired(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 34
    iget-object v0, p0, Landroid/app/PackageInstallObserver$1;->this$0:Landroid/app/PackageInstallObserver;

    invoke-virtual {v0, p1}, Landroid/app/PackageInstallObserver;->onUserActionRequired(Landroid/content/Intent;)V

    .line 35
    return-void
.end method
