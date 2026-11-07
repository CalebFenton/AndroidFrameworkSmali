.class public Landroid/provider/internal/aconfig/storage/FlagTable;
.super Ljava/lang/Object;
.source "FlagTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/internal/aconfig/storage/FlagTable$Header;,
        Landroid/provider/internal/aconfig/storage/FlagTable$Node;
    }
.end annotation


# instance fields
.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mHeader:Landroid/provider/internal/aconfig/storage/FlagTable$Header;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Ljava/nio/ByteBuffer;)Landroid/provider/internal/aconfig/storage/FlagTable;
    .registers 3
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 30
    new-instance v0, Landroid/provider/internal/aconfig/storage/FlagTable;

    invoke-direct {v0}, Landroid/provider/internal/aconfig/storage/FlagTable;-><init>()V

    .line 31
    .local v0, "flagTable":Landroid/provider/internal/aconfig/storage/FlagTable;
    iput-object p0, v0, Landroid/provider/internal/aconfig/storage/FlagTable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 32
    new-instance v1, Landroid/provider/internal/aconfig/storage/ByteBufferReader;

    invoke-direct {v1, p0}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v1}, Landroid/provider/internal/aconfig/storage/FlagTable$Header;->fromBytes(Landroid/provider/internal/aconfig/storage/ByteBufferReader;)Landroid/provider/internal/aconfig/storage/FlagTable$Header;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/internal/aconfig/storage/FlagTable;->mHeader:Landroid/provider/internal/aconfig/storage/FlagTable$Header;

    .line 34
    return-object v0
.end method

.method private static blacklist makeKey(ILjava/lang/String;)[B
    .registers 5
    .param p0, "packageId"    # I
    .param p1, "flagName"    # Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist get(ILjava/lang/String;)Landroid/provider/internal/aconfig/storage/FlagTable$Node;
    .registers 11
    .param p1, "packageId"    # I
    .param p2, "flagName"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/FlagTable;->mHeader:Landroid/provider/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v0}, Landroid/provider/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/provider/internal/aconfig/storage/FlagTable$Header;)I

    move-result v0

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/FlagTable;->mHeader:Landroid/provider/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v1}, Landroid/provider/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/provider/internal/aconfig/storage/FlagTable$Header;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 39
    .local v0, "numBuckets":I
    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/FlagTable;->makeKey(ILjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/internal/aconfig/storage/TableUtils;->getBucketIndex([BI)I

    move-result v1

    .line 40
    .local v1, "bucketIndex":I
    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/FlagTable;->mHeader:Landroid/provider/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v2}, Landroid/provider/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/provider/internal/aconfig/storage/FlagTable$Header;)I

    move-result v2

    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    .line 41
    .local v2, "newPosition":I
    iget-object v3, p0, Landroid/provider/internal/aconfig/storage/FlagTable;->mHeader:Landroid/provider/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v3}, Landroid/provider/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/provider/internal/aconfig/storage/FlagTable$Header;)I

    move-result v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2a

    .line 42
    return-object v4

    .line 44
    :cond_2a
    new-instance v3, Landroid/provider/internal/aconfig/storage/ByteBufferReader;

    iget-object v5, p0, Landroid/provider/internal/aconfig/storage/FlagTable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v3, v5}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 45
    .local v3, "reader":Landroid/provider/internal/aconfig/storage/ByteBufferReader;
    invoke-virtual {v3, v2}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 46
    invoke-virtual {v3}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v5

    .line 47
    .local v5, "nodeIndex":I
    iget-object v6, p0, Landroid/provider/internal/aconfig/storage/FlagTable;->mHeader:Landroid/provider/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v6}, Landroid/provider/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/provider/internal/aconfig/storage/FlagTable$Header;)I

    move-result v6

    if-lt v5, v6, :cond_6a

    iget-object v6, p0, Landroid/provider/internal/aconfig/storage/FlagTable;->mHeader:Landroid/provider/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v6}, Landroid/provider/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmFileSize(Landroid/provider/internal/aconfig/storage/FlagTable$Header;)I

    move-result v6

    if-lt v5, v6, :cond_49

    goto :goto_6a

    .line 51
    :cond_49
    :goto_49
    const/4 v6, -0x1

    if-eq v5, v6, :cond_69

    .line 52
    invoke-virtual {v3, v5}, Landroid/provider/internal/aconfig/storage/ByteBufferReader;->position(I)V

    .line 53
    invoke-static {v3}, Landroid/provider/internal/aconfig/storage/FlagTable$Node;->fromBytes(Landroid/provider/internal/aconfig/storage/ByteBufferReader;)Landroid/provider/internal/aconfig/storage/FlagTable$Node;

    move-result-object v6

    .line 54
    .local v6, "node":Landroid/provider/internal/aconfig/storage/FlagTable$Node;
    invoke-static {v6}, Landroid/provider/internal/aconfig/storage/FlagTable$Node;->-$$Nest$fgetmFlagName(Landroid/provider/internal/aconfig/storage/FlagTable$Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-static {v6}, Landroid/provider/internal/aconfig/storage/FlagTable$Node;->-$$Nest$fgetmPackageId(Landroid/provider/internal/aconfig/storage/FlagTable$Node;)I

    move-result v7

    if-ne p1, v7, :cond_64

    .line 55
    return-object v6

    .line 57
    :cond_64
    invoke-static {v6}, Landroid/provider/internal/aconfig/storage/FlagTable$Node;->-$$Nest$fgetmNextOffset(Landroid/provider/internal/aconfig/storage/FlagTable$Node;)I

    move-result v5

    .line 58
    .end local v6    # "node":Landroid/provider/internal/aconfig/storage/FlagTable$Node;
    goto :goto_49

    .line 60
    :cond_69
    return-object v4

    .line 48
    :cond_6a
    :goto_6a
    return-object v4
.end method

.method public blacklist getHeader()Landroid/provider/internal/aconfig/storage/FlagTable$Header;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/FlagTable;->mHeader:Landroid/provider/internal/aconfig/storage/FlagTable$Header;

    return-object v0
.end method
