.class public abstract Landroid/os/storage/StorageManagerInternal;
.super Ljava/lang/Object;
.source "StorageManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;,
        Landroid/os/storage/StorageManagerInternal$ResetListener;
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addResetListener(Landroid/os/storage/StorageManagerInternal$ResetListener;)V
.end method

.method public abstract blacklist createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist freeCache(Ljava/lang/String;J)V
.end method

.method public abstract greylist-max-o getExternalStorageMountMode(ILjava/lang/String;)I
.end method

.method public abstract blacklist getPrimaryVolumeIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist hasExternalStorageAccess(ILjava/lang/String;)Z
.end method

.method public abstract blacklist hasLegacyExternalStorage(I)Z
.end method

.method public abstract blacklist isCeStoragePrepared(I)Z
.end method

.method public abstract blacklist isExternalStorageService(I)Z
.end method

.method public abstract blacklist isFuseMounted(I)Z
.end method

.method public abstract blacklist markCeStoragePrepared(I)V
.end method

.method public abstract blacklist onAppOpsChanged(IILjava/lang/String;II)V
.end method

.method public abstract blacklist prepareAppDataAfterInstall(Ljava/lang/String;I)V
.end method

.method public abstract blacklist prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract blacklist prepareUserStorageForMove(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist registerCloudProviderChangeListener(Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V
.end method

.method public abstract blacklist registerStorageLockEventListener(Landroid/os/storage/ICeStorageLockEventListener;)V
.end method

.method public abstract blacklist resetUser(I)V
.end method

.method public abstract blacklist unregisterStorageLockEventListener(Landroid/os/storage/ICeStorageLockEventListener;)V
.end method
