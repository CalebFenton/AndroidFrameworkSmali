.class Lcom/android/server/pm/PackageManagerService$PostInstallData;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PostInstallData"
.end annotation


# instance fields
.field public args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field public res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .locals 0
    .param p1, "_a"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .param p2, "_r"    # Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@0
    .prologue
    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1092
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@5
    .line 1093
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@7
    .line 1091
    return-void
.end method
