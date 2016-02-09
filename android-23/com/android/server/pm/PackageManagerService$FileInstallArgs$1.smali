.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;
.super Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$FileInstallArgs;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    #@0
    .prologue
    .line 11019
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;->this$1:Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    #@2
    invoke-direct {p0}, Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public open(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 11022
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 11023
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "Invalid filename: "

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v3

    #@20
    .line 11026
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@22
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;->this$1:Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    #@24
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->-get0(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)Ljava/io/File;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2b
    .line 11027
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    .line 11028
    sget v4, Landroid/system/OsConstants;->O_RDWR:I

    #@31
    sget v5, Landroid/system/OsConstants;->O_CREAT:I

    #@33
    or-int/2addr v4, v5

    #@34
    const/16 v5, 0x1a4

    #@36
    .line 11027
    invoke-static {v3, v4, v5}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@39
    move-result-object v1

    #@3a
    .line 11029
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    const/16 v4, 0x1a4

    #@40
    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    #@43
    .line 11030
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    #@45
    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    return-object v3

    #@49
    .line 11031
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    #@4a
    .line 11032
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v3, Landroid/os/RemoteException;

    #@4c
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v5, "Failed to open: "

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@67
    throw v3
.end method
