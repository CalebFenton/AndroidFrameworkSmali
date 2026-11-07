.class public Landroid/content/pm/PackageInstaller$InstallInfo;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$InstallInfo$InstallLocation;
    }
.end annotation


# instance fields
.field private blacklist mPkg:Landroid/content/pm/parsing/PackageLite;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/parsing/result/ParseResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;)V"
        }
    .end annotation

    .line 2568
    .local p1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2569
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/PackageLite;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$InstallInfo;->mPkg:Landroid/content/pm/parsing/PackageLite;

    .line 2570
    return-void
.end method


# virtual methods
.method public whitelist calculateInstalledSize(Landroid/content/pm/PackageInstaller$SessionParams;)J
    .registers 4
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2596
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$InstallInfo;->mPkg:Landroid/content/pm/parsing/PackageLite;

    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist calculateInstalledSize(Landroid/content/pm/PackageInstaller$SessionParams;Landroid/os/ParcelFileDescriptor;)J
    .registers 6
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2610
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$InstallInfo;->mPkg:Landroid/content/pm/parsing/PackageLite;

    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2611
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 2610
    invoke-static {v0, v1, v2}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInstallLocation()I
    .registers 2

    .line 2585
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$InstallInfo;->mPkg:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result v0

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 2577
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$InstallInfo;->mPkg:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
