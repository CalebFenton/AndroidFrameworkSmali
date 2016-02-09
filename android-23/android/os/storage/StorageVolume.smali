.class public Landroid/os/storage/StorageVolume;
.super Ljava/lang/Object;
.source "StorageVolume.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageVolume$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_STORAGE_VOLUME:Ljava/lang/String; = "storage_volume"

.field public static final STORAGE_ID_INVALID:I = 0x0

.field public static final STORAGE_ID_PRIMARY:I = 0x10001


# instance fields
.field private final mAllowMassStorage:Z

.field private final mDescription:Ljava/lang/String;

.field private final mEmulated:Z

.field private final mFsUuid:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mMaxFileSize:J

.field private final mMtpReserveSize:J

.field private final mOwner:Landroid/os/UserHandle;

.field private final mPath:Ljava/io/File;

.field private final mPrimary:Z

.field private final mRemovable:Z

.field private final mState:Ljava/lang/String;

.field private final mStorageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 261
    new-instance v0, Landroid/os/storage/StorageVolume$1;

    #@2
    invoke-direct {v0}, Landroid/os/storage/StorageVolume$1;-><init>()V

    #@5
    sput-object v0, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    #@b
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    #@11
    .line 85
    new-instance v0, Ljava/io/File;

    #@13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1a
    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    #@1c
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    #@22
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    move v0, v1

    #@29
    :goto_0
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    #@2b
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_1

    #@31
    move v0, v1

    #@32
    :goto_1
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    #@34
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_2

    #@3a
    move v0, v1

    #@3b
    :goto_2
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    #@3d
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@40
    move-result-wide v4

    #@41
    iput-wide v4, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    #@43
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_3

    #@49
    :goto_3
    iput-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    #@4b
    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@4e
    move-result-wide v0

    #@4f
    iput-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    #@51
    .line 93
    const/4 v0, 0x0

    #@52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Landroid/os/UserHandle;

    #@58
    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    #@5a
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    #@60
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    #@66
    .line 82
    return-void

    #@67
    :cond_0
    move v0, v2

    #@68
    .line 87
    goto :goto_0

    #@69
    :cond_1
    move v0, v2

    #@6a
    .line 88
    goto :goto_1

    #@6b
    :cond_2
    move v0, v2

    #@6c
    .line 89
    goto :goto_2

    #@6d
    :cond_3
    move v1, v2

    #@6e
    .line 91
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/storage/StorageVolume;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/storage/StorageVolume;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "storageId"    # I
    .param p3, "path"    # Ljava/io/File;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "primary"    # Z
    .param p6, "removable"    # Z
    .param p7, "emulated"    # Z
    .param p8, "mtpReserveSize"    # J
    .param p10, "allowMassStorage"    # Z
    .param p11, "maxFileSize"    # J
    .param p13, "owner"    # Landroid/os/UserHandle;
    .param p14, "fsUuid"    # Ljava/lang/String;
    .param p15, "state"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    #@b
    .line 68
    iput p2, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    #@d
    .line 69
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/io/File;

    #@13
    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    #@15
    .line 70
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    #@1d
    .line 71
    iput-boolean p5, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    #@1f
    .line 72
    iput-boolean p6, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    #@21
    .line 73
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    #@23
    .line 74
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    #@25
    .line 75
    iput-boolean p10, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    #@27
    .line 76
    iput-wide p11, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    #@29
    .line 77
    invoke-static {p13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/os/UserHandle;

    #@2f
    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    #@31
    .line 78
    iput-object p14, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    #@33
    .line 79
    invoke-static/range {p15 .. p15}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Ljava/lang/String;

    #@39
    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    #@3b
    .line 66
    return-void
.end method


# virtual methods
.method public allowMassStorage()Z
    .locals 1

    #@0
    .prologue
    .line 178
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    #@2
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 275
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 243
    const-string/jumbo v0, "StorageVolume:"

    #@3
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 244
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@9
    .line 245
    const-string/jumbo v0, "mId"

    #@c
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@11
    .line 246
    const-string/jumbo v0, "mStorageId"

    #@14
    iget v1, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    #@16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@1d
    .line 247
    const-string/jumbo v0, "mPath"

    #@20
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    #@22
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@25
    .line 248
    const-string/jumbo v0, "mDescription"

    #@28
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    #@2a
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@2d
    .line 249
    const-string/jumbo v0, "mPrimary"

    #@30
    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    #@32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@39
    .line 250
    const-string/jumbo v0, "mRemovable"

    #@3c
    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    #@3e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@45
    .line 251
    const-string/jumbo v0, "mEmulated"

    #@48
    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    #@4a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@51
    .line 252
    const-string/jumbo v0, "mMtpReserveSize"

    #@54
    iget-wide v2, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    #@56
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@5d
    .line 253
    const-string/jumbo v0, "mAllowMassStorage"

    #@60
    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    #@62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@69
    .line 254
    const-string/jumbo v0, "mMaxFileSize"

    #@6c
    iget-wide v2, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    #@6e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@75
    .line 255
    const-string/jumbo v0, "mOwner"

    #@78
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    #@7a
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@7d
    .line 256
    const-string/jumbo v0, "mFsUuid"

    #@80
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    #@82
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@85
    .line 257
    const-string/jumbo v0, "mState"

    #@88
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    #@8a
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@8d
    .line 258
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@90
    .line 242
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 223
    instance-of v1, p1, Landroid/os/storage/StorageVolume;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    #@6
    if-eqz v1, :cond_0

    #@8
    move-object v0, p1

    #@9
    .line 224
    check-cast v0, Landroid/os/storage/StorageVolume;

    #@b
    .line 225
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    #@d
    iget-object v2, v0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    #@f
    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 227
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFatVolumeId()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 203
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@a
    move-result v1

    #@b
    const/16 v2, 0x9

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 204
    :cond_0
    return v4

    #@10
    .line 207
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    #@12
    const-string/jumbo v2, "-"

    #@15
    const-string/jumbo v3, ""

    #@18
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    const/16 v2, 0x10

    #@1e
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-wide v2

    #@22
    long-to-int v1, v2

    #@23
    return v1

    #@24
    .line 208
    :catch_0
    move-exception v0

    #@25
    .line 209
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v4
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    #@0
    .prologue
    .line 187
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    #@2
    return-wide v0
.end method

.method public getMtpReserveSpace()I
    .locals 4

    #@0
    .prologue
    .line 169
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    #@2
    const-wide/32 v2, 0x100000

    #@5
    div-long/2addr v0, v2

    #@6
    long-to-int v0, v0

    #@7
    return v0
.end method

.method public getOwner()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPathFile()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStorageId()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    #@2
    return v0
.end method

.method public getUserLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmulated()Z
    .locals 1

    #@0
    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    #@2
    return v0
.end method

.method public isPrimary()Z
    .locals 1

    #@0
    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    #@2
    return v0
.end method

.method public isRemovable()Z
    .locals 1

    #@0
    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 237
    new-instance v0, Ljava/io/CharArrayWriter;

    #@2
    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    #@5
    .line 238
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    #@7
    const-string/jumbo v2, "    "

    #@a
    const/16 v3, 0x50

    #@c
    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    #@f
    invoke-virtual {p0, v1}, Landroid/os/storage/StorageVolume;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@12
    .line 239
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 280
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 281
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 282
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    #@e
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 283
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 284
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    #@1c
    if-eqz v0, :cond_0

    #@1e
    move v0, v1

    #@1f
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 285
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    #@24
    if-eqz v0, :cond_1

    #@26
    move v0, v1

    #@27
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 286
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    #@2c
    if-eqz v0, :cond_2

    #@2e
    move v0, v1

    #@2f
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 287
    iget-wide v4, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    #@34
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@37
    .line 288
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    #@39
    if-eqz v0, :cond_3

    #@3b
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 289
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    #@40
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@43
    .line 290
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    #@45
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@48
    .line 291
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    #@4a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4d
    .line 292
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    #@4f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@52
    .line 279
    return-void

    #@53
    :cond_0
    move v0, v2

    #@54
    .line 284
    goto :goto_0

    #@55
    :cond_1
    move v0, v2

    #@56
    .line 285
    goto :goto_1

    #@57
    :cond_2
    move v0, v2

    #@58
    .line 286
    goto :goto_2

    #@59
    :cond_3
    move v1, v2

    #@5a
    .line 288
    goto :goto_3
.end method
