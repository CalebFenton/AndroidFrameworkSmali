.class public Landroid/provider/internal/aconfig/storage/PackageTable$Header;
.super Ljava/lang/Object;
.source "PackageTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/internal/aconfig/storage/PackageTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private blacklist mBucketOffset:I

.field private blacklist mContainer:Ljava/lang/String;

.field private blacklist mFileSize:I

.field private blacklist mFileType:Landroid/provider/internal/aconfig/storage/FileType;

.field private blacklist mNodeOffset:I

.field private blacklist mNumPackages:I

.field private blacklist mVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBucketOffset(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I
    .registers 1

    iget p0, p0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mBucketOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFileSize(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I
    .registers 1

    iget p0, p0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mFileSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNodeOffset(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I
    .registers 1

    iget p0, p0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mNodeOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumPackages(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I
    .registers 1

    iget p0, p0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mNumPackages:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVersion(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I
    .registers 1

    iget p0, p0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mVersion:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfromBytes(Landroid/provider/internal/aconfig/storage/ByteBufferReader;)Landroid/provider/internal/aconfig/storage/PackageTable$Header;
    .registers 1

    invoke-static {p0}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->fromBytes(Landroid/provider/internal/aconfig/storage/ByteBufferReader;)Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist fromBytes(Landroid/provider/internal/aconfig/storage/ByteBufferReader;)Landroid/provider/internal/aconfig/storage/PackageTable$Header;
    .registers 4
    .param p0, "reader"    # Landroid/provider/internal/aconfig/storage/ByteBufferReader;

    .line 98
    new-instance v0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    invoke-direct {v0}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;-><init>()V

    .line 99
    .local v0, "header":Landroid/provider/internal/aconfig/storage/PackageTable$Header;
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mVersion:I

    .line 100
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mContainer:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->readByte()I

    move-result v1

    invoke-static {v1}, Landroid/provider/internal/aconfig/storage/FileType;->fromInt(I)Landroid/provider/internal/aconfig/storage/FileType;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mFileType:Landroid/provider/internal/aconfig/storage/FileType;

    .line 102
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mFileSize:I

    .line 103
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mNumPackages:I

    .line 104
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mBucketOffset:I

    .line 105
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mNodeOffset:I

    .line 107
    iget-object v1, v0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mFileType:Landroid/provider/internal/aconfig/storage/FileType;

    sget-object v2, Landroid/provider/internal/aconfig/storage/FileType;->PACKAGE_MAP:Landroid/provider/internal/aconfig/storage/FileType;

    if-ne v1, v2, :cond_3a

    .line 111
    return-object v0

    .line 108
    :cond_3a
    new-instance v1, Landroid/provider/internal/aconfig/storage/AconfigStorageException;

    const-string v2, "binary file is not a package map"

    invoke-direct {v1, v2}, Landroid/provider/internal/aconfig/storage/AconfigStorageException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getBucketOffset()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mBucketOffset:I

    return v0
.end method

.method public blacklist getContainer()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mContainer:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFileSize()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mFileSize:I

    return v0
.end method

.method public blacklist getFileType()Landroid/provider/internal/aconfig/storage/FileType;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mFileType:Landroid/provider/internal/aconfig/storage/FileType;

    return-object v0
.end method

.method public blacklist getNodeOffset()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mNodeOffset:I

    return v0
.end method

.method public blacklist getNumPackages()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mNumPackages:I

    return v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 115
    iget v0, p0, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->mVersion:I

    return v0
.end method
