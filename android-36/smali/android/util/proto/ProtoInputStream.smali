.class public final Landroid/util/proto/ProtoInputStream;
.super Landroid/util/proto/ProtoStream;
.source "ProtoInputStream.java"


# static fields
.field private static final blacklist DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final blacklist NO_MORE_FIELDS:I = -0x1

.field private static final blacklist STATE_FIELD_MISS:B = 0x4t

.field private static final blacklist STATE_READING_PACKED:B = 0x2t

.field private static final blacklist STATE_STARTED_FIELD_READ:B = 0x1t


# instance fields
.field private blacklist mBuffer:[B

.field private final blacklist mBufferSize:I

.field private blacklist mDepth:I

.field private blacklist mDiscardedBytes:I

.field private blacklist mEnd:I

.field private blacklist mExpectedObjectTokenStack:Landroid/util/LongArray;

.field private blacklist mFieldNumber:I

.field private blacklist mOffset:I

.field private blacklist mPackedEnd:I

.field private blacklist mState:B

.field private blacklist mStream:Ljava/io/InputStream;

.field private blacklist mWireType:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 170
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 171
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 154
    invoke-direct {p0}, Landroid/util/proto/ProtoStream;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    .line 110
    const/4 v1, -0x1

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 128
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 134
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 140
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 146
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 155
    iput-object p1, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    .line 156
    if-lez p2, :cond_1b

    .line 157
    iput p2, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    goto :goto_1f

    .line 159
    :cond_1b
    const/16 v0, 0x2000

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    .line 161
    :goto_1f
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    .line 162
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 5
    .param p1, "buffer"    # [B

    .line 178
    invoke-direct {p0}, Landroid/util/proto/ProtoStream;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    .line 110
    const/4 v2, -0x1

    iput v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 128
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 134
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 140
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 146
    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 179
    array-length v0, p1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    .line 180
    array-length v0, p1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 181
    iput-object p1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    .line 182
    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    .line 183
    return-void
.end method

.method private blacklist assertFieldNumber(J)V
    .registers 6
    .param p1, "fieldId"    # J

    .line 932
    long-to-int v0, p1

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    if-ne v0, v1, :cond_6

    .line 939
    return-void

    .line 933
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not match current field number (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    .line 934
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 936
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 937
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist assertFreshData()V
    .registers 4

    .line 961
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 966
    return-void

    .line 962
    :cond_7
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to read already read field at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 964
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    .line 963
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 964
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist assertWireType(I)V
    .registers 5
    .param p1, "wireType"    # I

    .line 948
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    if-ne p1, v0, :cond_5

    .line 955
    return-void

    .line 949
    :cond_5
    new-instance v0, Landroid/util/proto/WireTypeMismatchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 950
    invoke-static {v2}, Landroid/util/proto/ProtoInputStream;->getWireTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match expected wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 951
    invoke-static {p1}, Landroid/util/proto/ProtoInputStream;->getWireTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 952
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 953
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/WireTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkPacked(J)V
    .registers 8
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 873
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c7

    .line 875
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v2

    long-to-int v0, v2

    .line 876
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 877
    iget-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 880
    const-wide v1, 0xff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    const-string v2, ") packed length "

    const-string v3, "Requested field id ("

    packed-switch v1, :pswitch_data_c8

    .line 917
    :pswitch_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 918
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not a packable field"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 920
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 914
    :pswitch_51
    const/4 v1, 0x0

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 915
    goto :goto_c7

    .line 885
    :pswitch_55
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_5d

    .line 892
    const/4 v1, 0x5

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 893
    goto :goto_c7

    .line 886
    :cond_5d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 887
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not aligned for fixed32"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 890
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 897
    :pswitch_8e
    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_96

    .line 904
    const/4 v1, 0x1

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 905
    goto :goto_c7

    .line 898
    :cond_96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 899
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not aligned for fixed64"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 902
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 923
    .end local v0    # "length":I
    :cond_c7
    :goto_c7
    return-void

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_55
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_8e
        :pswitch_55
        :pswitch_51
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_51
        :pswitch_51
        :pswitch_55
        :pswitch_8e
        :pswitch_51
        :pswitch_51
    .end packed-switch
.end method

.method private blacklist fillBuffer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-lt v0, v1, :cond_42

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    if-eqz v0, :cond_42

    .line 790
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 791
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 792
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    if-lt v0, v1, :cond_38

    .line 793
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    div-int/2addr v1, v2

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    mul-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 794
    .local v0, "skipped":I
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 795
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 797
    .end local v0    # "skipped":I
    :cond_38
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 799
    :cond_42
    return-void
.end method

.method private blacklist incOffset(I)V
    .registers 6
    .param p1, "n"    # I

    .line 855
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 857
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    if-ltz v0, :cond_49

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 858
    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v1

    .line 857
    invoke-static {v1, v2}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v1

    if-gt v0, v1, :cond_1c

    goto :goto_49

    .line 859
    :cond_1c
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpectedly reached end of embedded object.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 860
    invoke-virtual {v2, v3}, Landroid/util/LongArray;->get(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 861
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_49
    :goto_49
    return-void
.end method

.method private blacklist readFixed32()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-gt v0, v2, :cond_3c

    .line 643
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 644
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v2, v1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, v2, -0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, v2, -0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0

    .line 652
    :cond_3c
    const/4 v0, 0x0

    .line 653
    .local v0, "value":I
    const/4 v1, 0x0

    .line 654
    .local v1, "shift":I
    const/4 v2, 0x4

    .line 655
    .local v2, "bytesLeft":I
    :goto_3f
    if-lez v2, :cond_94

    .line 656
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 658
    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v3, v4

    if-ge v3, v2, :cond_51

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v3, v4

    goto :goto_52

    :cond_51
    move v3, v2

    .line 659
    .local v3, "fragment":I
    :goto_52
    if-ltz v3, :cond_6b

    .line 665
    invoke-direct {p0, v3}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 666
    sub-int/2addr v2, v3

    .line 667
    :goto_58
    if-lez v3, :cond_6a

    .line 668
    iget-object v4, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v5, v3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    or-int/2addr v0, v4

    .line 669
    add-int/lit8 v3, v3, -0x1

    .line 670
    add-int/lit8 v1, v1, 0x8

    goto :goto_58

    .line 672
    .end local v3    # "fragment":I
    :cond_6a
    goto :goto_3f

    .line 660
    .restart local v3    # "fragment":I
    :cond_6b
    new-instance v4, Landroid/util/proto/ProtoParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete fixed32 at offset 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 662
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 663
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 673
    .end local v3    # "fragment":I
    :cond_94
    return v0
.end method

.method private blacklist readFixed64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    const-wide/16 v3, 0xff

    if-gt v0, v2, :cond_7a

    .line 685
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 686
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v2, v1

    aget-byte v0, v0, v2

    int-to-long v5, v0

    and-long/2addr v5, v3

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, v2, -0x7

    aget-byte v0, v0, v2

    int-to-long v7, v0

    and-long/2addr v7, v3

    shl-long v0, v7, v1

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x6

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x10

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x5

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x18

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x4

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x20

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x3

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x28

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x2

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x30

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long v2, v5, v3

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 698
    :cond_7a
    const-wide/16 v0, 0x0

    .line 699
    .local v0, "value":J
    const/4 v2, 0x0

    .line 700
    .local v2, "shift":I
    const/16 v5, 0x8

    .line 701
    .local v5, "bytesLeft":I
    :goto_7f
    if-lez v5, :cond_d4

    .line 702
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 704
    iget v6, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v7, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v6, v7

    if-ge v6, v5, :cond_91

    iget v6, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v7, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v6, v7

    goto :goto_92

    :cond_91
    move v6, v5

    .line 705
    .local v6, "fragment":I
    :goto_92
    if-ltz v6, :cond_ab

    .line 711
    invoke-direct {p0, v6}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 712
    sub-int/2addr v5, v6

    .line 713
    :goto_98
    if-lez v6, :cond_aa

    .line 714
    iget-object v7, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v8, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v8, v6

    aget-byte v7, v7, v8

    int-to-long v7, v7

    and-long/2addr v7, v3

    shl-long/2addr v7, v2

    or-long/2addr v0, v7

    .line 715
    add-int/lit8 v6, v6, -0x1

    .line 716
    add-int/lit8 v2, v2, 0x8

    goto :goto_98

    .line 718
    .end local v6    # "fragment":I
    :cond_aa
    goto :goto_7f

    .line 706
    .restart local v6    # "fragment":I
    :cond_ab
    new-instance v3, Landroid/util/proto/ProtoParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incomplete fixed64 at offset 0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 708
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 709
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 719
    .end local v6    # "fragment":I
    :cond_d4
    return-wide v0
.end method

.method private blacklist readRawBytes(I)[B
    .registers 8
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    new-array v0, p1, [B

    .line 730
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 731
    .local v1, "pos":I
    :goto_3
    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v2, p1

    sub-int/2addr v2, v1

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-le v2, v3, :cond_4e

    .line 732
    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v2, v3

    .line 733
    .local v2, "fragment":I
    if-lez v2, :cond_1d

    .line 734
    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 735
    invoke-direct {p0, v2}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 736
    add-int/2addr v1, v2

    .line 738
    :cond_1d
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 739
    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-ge v3, v4, :cond_27

    .line 745
    .end local v2    # "fragment":I
    goto :goto_3

    .line 740
    .restart local v2    # "fragment":I
    :cond_27
    new-instance v3, Landroid/util/proto/ProtoParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpectedly reached end of the InputStream at offset 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 742
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 743
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 746
    .end local v2    # "fragment":I
    :cond_4e
    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int v4, p1, v1

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    sub-int v2, p1, v1

    invoke-direct {p0, v2}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 748
    return-object v0
.end method

.method private blacklist readRawString(I)Ljava/lang/String;
    .registers 7
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 759
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-gt v0, v1, :cond_19

    .line 761
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 762
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 763
    return-object v0

    .line 764
    .end local v0    # "value":Ljava/lang/String;
    :cond_19
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_51

    .line 768
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v0, v2

    .line 769
    .local v0, "stringHead":I
    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget-object v4, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    sub-int v4, p1, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    .line 772
    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 773
    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 775
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 776
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 777
    return-object v1

    .line 781
    .end local v0    # "stringHead":I
    .end local v1    # "value":Ljava/lang/String;
    :cond_51
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->readRawBytes(I)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v1, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private blacklist readTag()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 564
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-lt v0, v1, :cond_d

    .line 566
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    .line 567
    return-void

    .line 569
    :cond_d
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 570
    .local v0, "tag":I
    ushr-int/lit8 v1, v0, 0x3

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    .line 571
    and-int/lit8 v1, v0, 0x7

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    .line 572
    iget-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 573
    return-void
.end method

.method private blacklist readVarint()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    const-wide/16 v0, 0x0

    .line 602
    .local v0, "value":J
    const/4 v2, 0x0

    .line 604
    .local v2, "shift":I
    :goto_3
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 607
    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v3, v4

    .line 608
    .local v3, "fragment":I
    if-ltz v3, :cond_5e

    .line 614
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v3, :cond_5a

    .line 615
    iget-object v5, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v6, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v6, v4

    aget-byte v5, v5, v6

    .line 616
    .local v5, "b":B
    int-to-long v6, v5

    const-wide/16 v8, 0x7f

    and-long/2addr v6, v8

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    .line 617
    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_27

    .line 618
    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 619
    return-wide v0

    .line 621
    :cond_27
    add-int/lit8 v2, v2, 0x7

    .line 622
    const/16 v6, 0x3f

    if-gt v2, v6, :cond_30

    .line 614
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 623
    .restart local v5    # "b":B
    :cond_30
    new-instance v6, Landroid/util/proto/ProtoParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Varint is too large at offset 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 625
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v8

    add-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 626
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 630
    .end local v4    # "i":I
    .end local v5    # "b":B
    :cond_5a
    invoke-direct {p0, v3}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 631
    .end local v3    # "fragment":I
    goto :goto_3

    .line 609
    .restart local v3    # "fragment":I
    :cond_5e
    new-instance v4, Landroid/util/proto/ProtoParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete varint at offset 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 611
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 612
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public blacklist decodeZigZag32(I)I
    .registers 4
    .param p1, "n"    # I

    .line 582
    ushr-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, p1, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist decodeZigZag64(J)J
    .registers 7
    .param p1, "n"    # J

    .line 592
    const/4 v0, 0x1

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist dumpDebugData()Ljava/lang/String;
    .registers 4

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\nmFieldNumber : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    const-string v1, "\nmWireType : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v1, "\nmState : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v1, "\nmDiscardedBytes : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-string v1, "\nmOffset : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    const-string v1, "\nmExpectedObjectTokenStack : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    .line 980
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    const-string v1, "\nmDepth : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const-string v1, "\nmBuffer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    const-string v1, "\nmBufferSize : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    const-string v1, "\nmEnd : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist end(J)V
    .registers 7
    .param p1, "token"    # J

    .line 544
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_40

    .line 550
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v0

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v1

    if-le v0, v1, :cond_32

    .line 552
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v0

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 554
    :cond_32
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 555
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 556
    return-void

    .line 545
    :cond_40
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match current message token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 547
    invoke-virtual {v2, v3}, Landroid/util/LongArray;->get(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getFieldNumber()I
    .registers 2

    .line 189
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0
.end method

.method public blacklist getOffset()I
    .registers 3

    .line 210
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getWireType()I
    .registers 3

    .line 198
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 201
    return v1

    .line 203
    :cond_7
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    return v0
.end method

.method public blacklist nextField()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    .line 224
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 225
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0

    .line 227
    :cond_10
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_20

    .line 229
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->skip()V

    .line 230
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 232
    :cond_20
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6e

    .line 233
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    if-ge v0, v2, :cond_37

    .line 236
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 237
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0

    .line 238
    :cond_37
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    if-ne v0, v1, :cond_47

    .line 240
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    goto :goto_6e

    .line 242
    :cond_47
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpectedly reached end of packed field at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_6e
    :goto_6e
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    if-ltz v0, :cond_88

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 250
    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v1

    .line 249
    invoke-static {v1, v2}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v1

    if-ne v0, v1, :cond_88

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    goto :goto_8b

    .line 254
    :cond_88
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readTag()V

    .line 256
    :goto_8b
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0
.end method

.method public blacklist nextField(J)Z
    .registers 5
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    long-to-int v1, p1

    if-ne v0, v1, :cond_9

    .line 269
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_9
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readBoolean(J)Z
    .registers 8
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 416
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 417
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 420
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_5a

    .line 427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 428
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not an boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 429
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :pswitch_41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 424
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_50

    const/4 v0, 0x1

    .line 425
    .local v0, "value":Z
    :cond_50
    nop

    .line 432
    iget-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 433
    return v0

    nop

    :pswitch_data_5a
    .packed-switch 0x8
        :pswitch_41
    .end packed-switch
.end method

.method public blacklist readBytes(J)[B
    .registers 6
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 470
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 473
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_54

    .line 481
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 482
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") cannot be read as raw bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 484
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :pswitch_3e
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 477
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 478
    .local v0, "len":I
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->readRawBytes(I)[B

    move-result-object v1

    .line 479
    .local v1, "value":[B
    nop

    .line 487
    .end local v0    # "len":I
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 488
    return-object v1

    :pswitch_data_54
    .packed-switch 0xb
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method

.method public blacklist readDouble(J)D
    .registers 6
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 284
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 285
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 288
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_56

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") cannot be read as a double"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 298
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :pswitch_41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 292
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 293
    .local v0, "value":D
    nop

    .line 301
    iget-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 302
    return-wide v0

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_41
    .end packed-switch
.end method

.method public blacklist readFloat(J)F
    .registers 6
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 313
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 314
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 317
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_56

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 325
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not a float"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 326
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :pswitch_41
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 321
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 322
    .local v0, "value":F
    nop

    .line 329
    iget-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 330
    return v0

    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_41
    .end packed-switch
.end method

.method public blacklist readInt(J)I
    .registers 6
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 341
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 342
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 345
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_6a

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not an int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :sswitch_42
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 354
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/ProtoInputStream;->decodeZigZag32(I)I

    move-result v0

    .line 355
    .local v0, "value":I
    goto :goto_61

    .line 349
    .end local v0    # "value":I
    :sswitch_4f
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 350
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed32()I

    move-result v0

    .line 351
    .restart local v0    # "value":I
    goto :goto_61

    .line 359
    .end local v0    # "value":I
    :sswitch_58
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 360
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 361
    .restart local v0    # "value":I
    nop

    .line 368
    :goto_61
    iget-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 369
    return v0

    nop

    :sswitch_data_6a
    .sparse-switch
        0x5 -> :sswitch_58
        0x7 -> :sswitch_4f
        0xd -> :sswitch_58
        0xe -> :sswitch_58
        0xf -> :sswitch_4f
        0x11 -> :sswitch_42
    .end sparse-switch
.end method

.method public blacklist readLong(J)J
    .registers 6
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 379
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 380
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 383
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_68

    .line 400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 401
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not an long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 402
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :sswitch_42
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 392
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    .line 393
    .local v0, "value":J
    goto :goto_5f

    .line 387
    .end local v0    # "value":J
    :sswitch_4e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 388
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed64()J

    move-result-wide v0

    .line 389
    .restart local v0    # "value":J
    goto :goto_5f

    .line 396
    .end local v0    # "value":J
    :sswitch_57
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 397
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    .line 398
    .restart local v0    # "value":J
    nop

    .line 405
    :goto_5f
    iget-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 406
    return-wide v0

    nop

    :sswitch_data_68
    .sparse-switch
        0x3 -> :sswitch_57
        0x4 -> :sswitch_57
        0x6 -> :sswitch_4e
        0x10 -> :sswitch_4e
        0x12 -> :sswitch_42
    .end sparse-switch
.end method

.method public blacklist readString(J)Ljava/lang/String;
    .registers 6
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 443
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 446
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_54

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 454
    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not an string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 456
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :pswitch_3e
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 449
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 450
    .local v0, "len":I
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->readRawString(I)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "value":Ljava/lang/String;
    nop

    .line 459
    .end local v0    # "len":I
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 460
    return-object v1

    :pswitch_data_54
    .packed-switch 0x9
        :pswitch_3e
    .end packed-switch
.end method

.method public blacklist skip()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    .line 807
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    goto :goto_72

    .line 809
    :cond_11
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    packed-switch v0, :pswitch_data_7a

    .line 838
    :pswitch_16
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected wire type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    .line 840
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 841
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :pswitch_49
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 836
    goto :goto_72

    .line 822
    :pswitch_4e
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 823
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 824
    .local v0, "length":I
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 825
    goto :goto_72

    .line 819
    .end local v0    # "length":I
    :pswitch_5a
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 820
    goto :goto_72

    .line 813
    :cond_60
    :pswitch_60
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    .line 814
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    aget-byte v0, v0, v1

    .line 815
    .local v0, "b":B
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    .line 816
    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_60

    .line 817
    nop

    .line 844
    .end local v0    # "b":B
    :goto_72
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 845
    return-void

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5a
        :pswitch_4e
        :pswitch_16
        :pswitch_16
        :pswitch_49
    .end packed-switch
.end method

.method public blacklist start(J)J
    .registers 12
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    .line 499
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 500
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 502
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 504
    .local v0, "messageSize":I
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    if-nez v1, :cond_1a

    .line 505
    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1}, Landroid/util/LongArray;-><init>()V

    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    .line 507
    :cond_1a
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    invoke-virtual {v3}, Landroid/util/LongArray;->size()I

    move-result v3

    const-wide v4, 0x20000000000L

    const/4 v6, 0x0

    if-ne v1, v3, :cond_49

    .line 509
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    and-long v7, p1, v4

    cmp-long v3, v7, v4

    if-nez v3, :cond_38

    move v3, v2

    goto :goto_39

    :cond_38
    move v3, v6

    :goto_39
    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    long-to-int v5, p1

    .line 511
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v7

    add-int/2addr v7, v0

    .line 509
    invoke-static {v6, v3, v4, v5, v7}, Landroid/util/proto/ProtoInputStream;->makeToken(IZIII)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/util/LongArray;->add(J)V

    goto :goto_65

    .line 515
    :cond_49
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    and-long v7, p1, v4

    cmp-long v4, v7, v4

    if-nez v4, :cond_55

    move v4, v2

    goto :goto_56

    :cond_55
    move v4, v6

    :goto_56
    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    long-to-int v7, p1

    .line 517
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v8

    add-int/2addr v8, v0

    .line 515
    invoke-static {v6, v4, v5, v7, v8}, Landroid/util/proto/ProtoInputStream;->makeToken(IZIII)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/LongArray;->set(IJ)V

    .line 521
    :goto_65
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    if-lez v1, :cond_cf

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 522
    invoke-virtual {v1, v3}, Landroid/util/LongArray;->get(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v1

    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    sub-int/2addr v4, v2

    .line 523
    invoke-virtual {v3, v4}, Landroid/util/LongArray;->get(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v3

    if-gt v1, v3, :cond_85

    goto :goto_cf

    .line 524
    :cond_85
    new-instance v1, Landroid/util/proto/ProtoParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Embedded Object ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    .line 525
    invoke-virtual {v4, v5}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ends after of parent Objects\'s ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    sub-int/2addr v5, v2

    .line 527
    invoke-virtual {v4, v5}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 529
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_cf
    :goto_cf
    iget-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    .line 532
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v1

    return-wide v1
.end method
