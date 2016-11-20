.class public Landroid/app/PackageInstallObserver;
.super Ljava/lang/Object;
.source "PackageInstallObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PackageInstallObserver$1;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/content/pm/IPackageInstallObserver2$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    new-instance v0, Landroid/app/PackageInstallObserver$1;

    #@5
    invoke-direct {v0, p0}, Landroid/app/PackageInstallObserver$1;-><init>(Landroid/app/PackageInstallObserver;)V

    #@8
    iput-object v0, p0, Landroid/app/PackageInstallObserver;->mBinder:Landroid/content/pm/IPackageInstallObserver2$Stub;

    #@a
    .line 24
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/content/pm/IPackageInstallObserver2;
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Landroid/app/PackageInstallObserver;->mBinder:Landroid/content/pm/IPackageInstallObserver2$Stub;

    #@2
    return-object v0
.end method

.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 63
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 44
    return-void
.end method
