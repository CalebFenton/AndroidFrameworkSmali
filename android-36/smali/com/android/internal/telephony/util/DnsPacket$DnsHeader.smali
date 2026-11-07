.class public Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;
.super Ljava/lang/Object;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/DnsPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsHeader"
.end annotation


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mId:I

.field private final blacklist mRecordCount:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRecordCount(Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mRecordCount:[I

    return-object p0
.end method

.method public constructor blacklist <init>(IIII)V
    .registers 5

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mId:I

    .line 146
    iput p2, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mFlags:I

    const/4 p1, 0x4

    .line 147
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mRecordCount:[I

    const/4 p0, 0x0

    .line 148
    aput p3, p1, p0

    const/4 p0, 0x1

    .line 149
    aput p4, p1, p0

    return-void
.end method

.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mId:I

    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mFlags:I

    const/4 v0, 0x4

    .line 122
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mRecordCount:[I

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v0, :cond_31

    .line 124
    iget-object v2, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mRecordCount:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_31
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

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
    check-cast p1, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

    .line 184
    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mId:I

    iget v2, p1, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mId:I

    if-ne v1, v2, :cond_29

    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mFlags:I

    iget v2, p1, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mFlags:I

    if-ne v1, v2, :cond_29

    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mRecordCount:[I

    iget-object p1, p1, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mRecordCount:[I

    .line 186
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_29

    return v0

    :cond_29
    return v3
.end method

.method public blacklist getBytes()[B
    .registers 4

    const/16 v0, 0xc

    .line 201
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 202
    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mId:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 203
    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mFlags:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x4

    if-ge v1, v2, :cond_21

    .line 205
    iget-object v2, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mRecordCount:[I

    aget v2, v2, v1

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 207
    :cond_21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFlags()I
    .registers 1

    .line 163
    iget p0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mFlags:I

    return p0
.end method

.method public blacklist getId()I
    .registers 1

    .line 170
    iget p0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mId:I

    return p0
.end method

.method public blacklist getRecordCount(I)I
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mRecordCount:[I

    aget p0, p0, p1

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 191
    iget v0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mFlags:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mRecordCount:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist isResponse()Z
    .registers 2

    .line 133
    iget p0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mFlags:I

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DnsHeader{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recordCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->mRecordCount:[I

    .line 176
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
