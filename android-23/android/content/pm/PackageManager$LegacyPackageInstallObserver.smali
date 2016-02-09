.class public Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;
.super Landroid/app/PackageInstallObserver;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegacyPackageInstallObserver"
.end annotation


# instance fields
.field private final mLegacy:Landroid/content/pm/IPackageInstallObserver;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageInstallObserver;)V
    .locals 0
    .param p1, "legacy"    # Landroid/content/pm/IPackageInstallObserver;

    #@0
    .prologue
    .line 4668
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    #@3
    .line 4669
    iput-object p1, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy:Landroid/content/pm/IPackageInstallObserver;

    #@5
    .line 4668
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4675
    iget-object v1, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy:Landroid/content/pm/IPackageInstallObserver;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 4677
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy:Landroid/content/pm/IPackageInstallObserver;

    #@7
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 4674
    :goto_0
    return-void

    #@b
    .line 4678
    :catch_0
    move-exception v0

    #@c
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method
