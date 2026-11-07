.class public final Landroid/os/storage/StorageVolume$Builder;
.super Ljava/lang/Object;
.source "StorageVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mEmulated:Z

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mOwner:Landroid/os/UserHandle;

.field private blacklist mPath:Ljava/io/File;

.field private blacklist mPrimary:Z

.field private blacklist mRemovable:Z

.field private blacklist mState:Ljava/lang/String;

.field private blacklist mStorageUuid:Ljava/util/UUID;

.field private blacklist mUuid:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "owner"    # Landroid/os/UserHandle;
    .param p5, "state"    # Ljava/lang/String;

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-object p1, p0, Landroid/os/storage/StorageVolume$Builder;->mId:Ljava/lang/String;

    .line 590
    iput-object p2, p0, Landroid/os/storage/StorageVolume$Builder;->mPath:Ljava/io/File;

    .line 591
    iput-object p3, p0, Landroid/os/storage/StorageVolume$Builder;->mDescription:Ljava/lang/String;

    .line 592
    iput-object p4, p0, Landroid/os/storage/StorageVolume$Builder;->mOwner:Landroid/os/UserHandle;

    .line 593
    iput-object p5, p0, Landroid/os/storage/StorageVolume$Builder;->mState:Ljava/lang/String;

    .line 594
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/os/storage/StorageVolume;
    .registers 18

    .line 628
    move-object/from16 v0, p0

    new-instance v1, Landroid/os/storage/StorageVolume;

    iget-object v2, v0, Landroid/os/storage/StorageVolume$Builder;->mId:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/storage/StorageVolume$Builder;->mPath:Ljava/io/File;

    iget-object v4, v0, Landroid/os/storage/StorageVolume$Builder;->mPath:Ljava/io/File;

    iget-object v5, v0, Landroid/os/storage/StorageVolume$Builder;->mDescription:Ljava/lang/String;

    iget-boolean v6, v0, Landroid/os/storage/StorageVolume$Builder;->mPrimary:Z

    iget-boolean v7, v0, Landroid/os/storage/StorageVolume$Builder;->mRemovable:Z

    iget-boolean v8, v0, Landroid/os/storage/StorageVolume$Builder;->mEmulated:Z

    iget-object v13, v0, Landroid/os/storage/StorageVolume$Builder;->mOwner:Landroid/os/UserHandle;

    iget-object v14, v0, Landroid/os/storage/StorageVolume$Builder;->mStorageUuid:Ljava/util/UUID;

    iget-object v15, v0, Landroid/os/storage/StorageVolume$Builder;->mUuid:Ljava/lang/String;

    iget-object v9, v0, Landroid/os/storage/StorageVolume$Builder;->mState:Ljava/lang/String;

    move-object/from16 v16, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-direct/range {v1 .. v16}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist setEmulated(Z)Landroid/os/storage/StorageVolume$Builder;
    .registers 2
    .param p1, "emulated"    # Z

    .line 622
    iput-boolean p1, p0, Landroid/os/storage/StorageVolume$Builder;->mEmulated:Z

    .line 623
    return-object p0
.end method

.method public blacklist setPrimary(Z)Landroid/os/storage/StorageVolume$Builder;
    .registers 2
    .param p1, "primary"    # Z

    .line 610
    iput-boolean p1, p0, Landroid/os/storage/StorageVolume$Builder;->mPrimary:Z

    .line 611
    return-object p0
.end method

.method public blacklist setRemovable(Z)Landroid/os/storage/StorageVolume$Builder;
    .registers 2
    .param p1, "removable"    # Z

    .line 616
    iput-boolean p1, p0, Landroid/os/storage/StorageVolume$Builder;->mRemovable:Z

    .line 617
    return-object p0
.end method

.method public blacklist setStorageUuid(Ljava/util/UUID;)Landroid/os/storage/StorageVolume$Builder;
    .registers 2
    .param p1, "storageUuid"    # Ljava/util/UUID;

    .line 598
    iput-object p1, p0, Landroid/os/storage/StorageVolume$Builder;->mStorageUuid:Ljava/util/UUID;

    .line 599
    return-object p0
.end method

.method public blacklist setUuid(Ljava/lang/String;)Landroid/os/storage/StorageVolume$Builder;
    .registers 2
    .param p1, "uuid"    # Ljava/lang/String;

    .line 604
    iput-object p1, p0, Landroid/os/storage/StorageVolume$Builder;->mUuid:Ljava/lang/String;

    .line 605
    return-object p0
.end method
