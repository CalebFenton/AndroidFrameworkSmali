.class Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallParams"
.end annotation


# instance fields
.field installerPackageName:Ljava/lang/String;

.field sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

.field userId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 991
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    #@6
    .line 988
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>()V

    #@3
    return-void
.end method
