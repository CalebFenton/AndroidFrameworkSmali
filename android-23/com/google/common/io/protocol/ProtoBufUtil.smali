.class public final Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;
.super Ljava/lang/Object;
.source "ProtoBufUtil.java"


# static fields
.field public static isGzipResponseSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 23
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->isGzipResponseSeen:Z

    #@3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    return-void
.end method

.method public static getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;
    .locals 3
    .param p0, "dataInput"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    #@3
    move-result v1

    #@4
    .line 199
    .local v1, "size":I
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;

    #@6
    check-cast p0, Ljava/io/InputStream;

    #@8
    .end local p0    # "dataInput":Ljava/io/DataInput;
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@b
    move-result v2

    #@c
    invoke-direct {v0, p0, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;-><init>(Ljava/io/InputStream;I)V

    #@f
    .line 202
    .local v0, "is":Ljava/io/InputStream;
    if-ltz v1, :cond_0

    #@11
    .line 206
    :goto_0
    return-object v0

    #@12
    .line 203
    :cond_0
    const/4 v2, 0x1

    #@13
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->isGzipResponseSeen:Z

    #@15
    .line 204
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    #@18
    move-result-object v0

    #@19
    goto :goto_0
.end method

.method public static getProtoLongValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J
    .locals 5
    .param p0, "proto"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 138
    if-nez p0, :cond_1

    #@4
    :cond_0
    :goto_0
    return-wide v2

    #@5
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    #@e
    move-result-wide v2

    #@f
    goto :goto_0

    #@10
    :catch_0
    move-exception v1

    #@11
    .line 140
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-wide v2

    #@12
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    #@13
    .line 142
    .local v0, "e":Ljava/lang/ClassCastException;
    return-wide v2
.end method

.method public static getProtoValueOrDefault(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)I
    .locals 3
    .param p0, "proto"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 85
    if-nez p0, :cond_1

    #@2
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    #@3
    .restart local p2    # "defaultValue":I
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    #@c
    move-result p2

    #@d
    goto :goto_0

    #@e
    :catch_0
    move-exception v1

    #@f
    .line 88
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return p2

    #@10
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    #@11
    .line 90
    .local v0, "e":Ljava/lang/ClassCastException;
    return p2
.end method

.method public static getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    .locals 2
    .param p0, "proto"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 32
    if-nez p0, :cond_1

    #@2
    :cond_0
    :try_start_0
    const-string/jumbo v1, ""

    #@5
    :goto_0
    return-object v1

    #@6
    :cond_1
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    goto :goto_0

    #@11
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, ""

    #@15
    .line 34
    return-object v1
.end method

.method public static getProtoValueOrFalse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Z
    .locals 4
    .param p0, "proto"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 176
    if-nez p0, :cond_1

    #@3
    :cond_0
    :goto_0
    return v2

    #@4
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getBool(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    #@d
    move-result v2

    #@e
    goto :goto_0

    #@f
    :catch_0
    move-exception v1

    #@10
    .line 178
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return v2

    #@11
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    #@12
    .line 180
    .local v0, "e":Ljava/lang/ClassCastException;
    return v2
.end method

.method public static getProtoValueOrNegativeOne(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J
    .locals 5
    .param p0, "proto"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 157
    if-nez p0, :cond_1

    #@4
    :cond_0
    :goto_0
    return-wide v2

    #@5
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    #@e
    move-result-wide v2

    #@f
    goto :goto_0

    #@10
    :catch_0
    move-exception v1

    #@11
    .line 159
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-wide v2

    #@12
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    #@13
    .line 161
    .local v0, "e":Ljava/lang/ClassCastException;
    return-wide v2
.end method

.method public static getProtoValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)I
    .locals 1
    .param p0, "proto"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 124
    invoke-static {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrDefault(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static getSubProtoOrNull(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 2
    .param p0, "proto"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .param p1, "sub"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 69
    if-nez p0, :cond_1

    #@3
    :cond_0
    :goto_0
    return-object v0

    #@4
    :cond_1
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@d
    move-result-object v0

    #@e
    goto :goto_0
.end method

.method public static getSubProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)Ljava/lang/String;
    .locals 2
    .param p0, "proto"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .param p1, "sub"    # I
    .param p2, "tag"    # I

    #@0
    .prologue
    .line 61
    :try_start_0
    invoke-static {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, ""

    #@d
    .line 63
    return-object v1
.end method

.method public static readProtoBufResponse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 4
    .param p0, "protoBufType"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;
    .param p1, "dataInput"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 255
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@2
    invoke-direct {v1, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    #@5
    .line 256
    .local v1, "response":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;

    #@8
    move-result-object v0

    #@9
    .line 257
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@c
    .line 258
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    #@f
    move-result v2

    #@10
    const/4 v3, -0x1

    #@11
    if-ne v2, v3, :cond_0

    #@13
    .line 261
    return-object v1

    #@14
    .line 259
    :cond_0
    new-instance v2, Ljava/io/IOException;

    #@16
    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    #@19
    throw v2
.end method

.method public static writeProtoBufToOutput(Ljava/io/DataOutput;Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 3
    .param p0, "output"    # Ljava/io/DataOutput;
    .param p1, "protoBuf"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 349
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 350
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    #@8
    .line 351
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@b
    move-result-object v1

    #@c
    .line 352
    .local v1, "bytes":[B
    array-length v2, v1

    #@d
    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    #@10
    .line 353
    invoke-interface {p0, v1}, Ljava/io/DataOutput;->write([B)V

    #@13
    .line 354
    return-void
.end method
