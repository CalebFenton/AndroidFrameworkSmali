.class public Landroid/provider/internal/aconfig/storage/PackageTable;
.super Ljava/lang/Object;
.source "PackageTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/internal/aconfig/storage/PackageTable$Header;,
        Landroid/provider/internal/aconfig/storage/PackageTable$Node;
    }
.end annotation


# static fields
.field private static final blacklist FINGERPRINT_BYTES:I = 0x8

.field private static final blacklist NODE_SKIP_BYTES:I = 0xc


# instance fields
.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Ljava/nio/ByteBuffer;)Landroid/provider/internal/aconfig/storage/PackageTable;
    .registers 3
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 36
    new-instance v0, Landroid/provider/internal/aconfig/storage/PackageTable;

    invoke-direct {v0}, Landroid/provider/internal/aconfig/storage/PackageTable;-><init>()V

    .line 37
    .local v0, "packageTable":Landroid/provider/internal/aconfig/storage/PackageTable;
    iput-object p0, v0, Landroid/provider/internal/aconfig/storage/PackageTable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 38
    new-instance v1, Landroid/provider/internal/aconfig/storage/ByteBufferReader;

    invoke-direct {v1, p0}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v1}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->-$$Nest$smfromBytes(Landroid/provider/internal/aconfig/storage/ByteBufferReader;)Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/internal/aconfig/storage/PackageTable;->mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    .line 40
    return-object v0
.end method


# virtual methods
.method public blacklist get(Ljava/lang/String;)Landroid/provider/internal/aconfig/storage/PackageTable$Node;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v0}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I

    move-result v0

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v1}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 45
    .local v0, "numBuckets":I
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/internal/aconfig/storage/TableUtils;->getBucketIndex([BI)I

    move-result v1

    .line 46
    .local v1, "bucketIndex":I
    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v2}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I

    move-result v2

    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    .line 47
    .local v2, "newPosition":I
    iget-object v3, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v3}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I

    move-result v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2c

    .line 48
    return-object v4

    .line 50
    :cond_2c
    new-instance v3, Landroid/provider/internal/aconfig/storage/ByteBufferReader;

    iget-object v5, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v3, v5}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 51
    .local v3, "reader":Landroid/provider/internal/aconfig/storage/ByteBufferReader;
    invoke-virtual {v3, v2}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 52
    invoke-virtual {v3}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v5

    .line 54
    .local v5, "nodeIndex":I
    iget-object v6, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v6}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I

    move-result v6

    if-lt v5, v6, :cond_6c

    iget-object v6, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v6}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmFileSize(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I

    move-result v6

    if-lt v5, v6, :cond_4b

    goto :goto_6c

    .line 58
    :cond_4b
    :goto_4b
    const/4 v6, -0x1

    if-eq v5, v6, :cond_6b

    .line 59
    invoke-virtual {v3, v5}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 60
    iget-object v6, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v6}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmVersion(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I

    move-result v6

    invoke-static {v3, v6}, Landroid/provider/internal/aconfig/storage/PackageTable$Node;->-$$Nest$smfromBytes(Landroid/provider/internal/aconfig/storage/ByteBufferReader;I)Landroid/provider/internal/aconfig/storage/PackageTable$Node;

    move-result-object v6

    .line 61
    .local v6, "node":Landroid/provider/internal/aconfig/storage/PackageTable$Node;
    invoke-static {v6}, Landroid/provider/internal/aconfig/storage/PackageTable$Node;->-$$Nest$fgetmPackageName(Landroid/provider/internal/aconfig/storage/PackageTable$Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 62
    return-object v6

    .line 64
    :cond_66
    invoke-static {v6}, Landroid/provider/internal/aconfig/storage/PackageTable$Node;->-$$Nest$fgetmNextOffset(Landroid/provider/internal/aconfig/storage/PackageTable$Node;)I

    move-result v5

    .line 65
    .end local v6    # "node":Landroid/provider/internal/aconfig/storage/PackageTable$Node;
    goto :goto_4b

    .line 67
    :cond_6b
    return-object v4

    .line 55
    :cond_6c
    :goto_6c
    return-object v4
.end method

.method public blacklist getHeader()Landroid/provider/internal/aconfig/storage/PackageTable$Header;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    return-object v0
.end method

.method public blacklist getPackageList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v1}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNumPackages(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/provider/internal/aconfig/storage/ByteBufferReader;

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v2}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 73
    .local v1, "reader":Landroid/provider/internal/aconfig/storage/ByteBufferReader;
    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v2}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 74
    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v2}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmVersion(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    const/4 v2, 0x0

    goto :goto_28

    :cond_26
    const/16 v2, 0x8

    .line 75
    .local v2, "fingerprintBytes":I
    :goto_28
    add-int/lit8 v3, v2, 0xc

    .line 76
    .local v3, "skipBytes":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b
    iget-object v5, p0, Landroid/provider/internal/aconfig/storage/PackageTable;->mHeader:Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v5}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNumPackages(Landroid/provider/internal/aconfig/storage/PackageTable$Header;)I

    move-result v5

    if-ge v4, v5, :cond_45

    .line 77
    invoke-virtual {v1}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v1}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->position()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 80
    .end local v4    # "i":I
    :cond_45
    return-object v0
.end method
