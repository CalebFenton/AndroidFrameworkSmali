.class public final Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;
.super Ljava/lang/Object;
.source "GetLatestMetadataForBackupResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCurrentVersion:I

.field private final blacklist mMetadata:Landroid/health/connect/backuprestore/BackupMetadata;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse$1;

    invoke-direct {v0}, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse$1;-><init>()V

    sput-object v0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/health/connect/backuprestore/BackupMetadata;)V
    .registers 3
    .param p1, "currentVersion"    # I
    .param p2, "metadata"    # Landroid/health/connect/backuprestore/BackupMetadata;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mCurrentVersion:I

    .line 52
    iput-object p2, p0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mMetadata:Landroid/health/connect/backuprestore/BackupMetadata;

    .line 53
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mCurrentVersion:I

    .line 57
    const-class v0, Landroid/health/connect/backuprestore/BackupMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/health/connect/backuprestore/BackupMetadata;

    iput-object v0, p0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mMetadata:Landroid/health/connect/backuprestore/BackupMetadata;

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 63
    :cond_4
    instance-of v1, p1, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    move-object v1, p1

    check-cast v1, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;

    .line 64
    .local v1, "that":Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;
    iget v3, p0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mCurrentVersion:I

    iget v4, v1, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mCurrentVersion:I

    if-ne v3, v4, :cond_1d

    iget-object v3, p0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mMetadata:Landroid/health/connect/backuprestore/BackupMetadata;

    iget-object v4, v1, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mMetadata:Landroid/health/connect/backuprestore/BackupMetadata;

    invoke-virtual {v3, v4}, Landroid/health/connect/backuprestore/BackupMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0

    .line 63
    .end local v1    # "that":Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;
    :cond_1f
    return v2
.end method

.method public blacklist getCurrentVersion()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mCurrentVersion:I

    return v0
.end method

.method public blacklist getMetadata()Landroid/health/connect/backuprestore/BackupMetadata;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mMetadata:Landroid/health/connect/backuprestore/BackupMetadata;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 69
    iget v0, p0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mCurrentVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 70
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mMetadata:Landroid/health/connect/backuprestore/BackupMetadata;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 71
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    iget v0, p0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mCurrentVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;->mMetadata:Landroid/health/connect/backuprestore/BackupMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    return-void
.end method
