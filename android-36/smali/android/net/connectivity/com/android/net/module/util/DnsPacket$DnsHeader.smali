.class public Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;
.super Ljava/lang/Object;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/DnsPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsHeader"
.end annotation


# static fields
.field private static final blacklist FLAGS_SECTION_QR_BIT:I = 0xf

.field private static final blacklist SIZE_IN_BYTES:I = 0xc

.field private static final blacklist TAG:Ljava/lang/String; = "DnsHeader"


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mId:I

.field private final blacklist mRecordCount:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRecordCount(Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;)[I
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    return-object p0
.end method

.method public constructor blacklist <init>(IIII)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "qdcount"    # I
    .param p4, "ancount"    # I

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mId:I

    .line 146
    iput p2, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mFlags:I

    .line 147
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    .line 148
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 149
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    const/4 v1, 0x1

    aput p4, v0, v1

    .line 150
    return-void
.end method

.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mId:I

    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mFlags:I

    .line 122
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v0, :cond_31

    .line 124
    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    aput v3, v2, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 126
    .end local v1    # "i":I
    :cond_31
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 181
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 182
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    .line 183
    :cond_10
    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;

    .line 184
    .local v1, "other":Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;
    iget v2, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mId:I

    iget v4, v1, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mId:I

    if-ne v2, v4, :cond_2a

    iget v2, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mFlags:I

    iget v4, v1, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mFlags:I

    if-ne v2, v4, :cond_2a

    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    iget-object v4, v1, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    .line 186
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v3

    .line 184
    :goto_2b
    return v0
.end method

.method public blacklist getBytes()[B
    .registers 4

    .line 201
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 202
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mId:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 203
    iget v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mFlags:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    const/4 v2, 0x4

    if-ge v1, v2, :cond_21

    .line 205
    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    aget v2, v2, v1

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 207
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mFlags:I

    return v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mId:I

    return v0
.end method

.method public blacklist getRecordCount(I)I
    .registers 3
    .param p1, "type"    # I

    .line 156
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 191
    iget v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mFlags:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist isResponse()Z
    .registers 3

    .line 133
    iget v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DnsHeader{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    .line 176
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    return-object v0
.end method
