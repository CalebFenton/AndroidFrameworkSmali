.class public final Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;
.super Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoStream;
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

.field private blacklist mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

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

    .line 174
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 175
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 158
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoStream;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    .line 114
    const/4 v1, -0x1

    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    .line 132
    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 138
    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    .line 144
    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    .line 150
    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 159
    iput-object p1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    .line 160
    if-lez p2, :cond_1b

    .line 161
    iput p2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBufferSize:I

    goto :goto_1f

    .line 163
    :cond_1b
    const/16 v0, 0x2000

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBufferSize:I

    .line 165
    :goto_1f
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    .line 166
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 5
    .param p1, "buffer"    # [B

    .line 182
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoStream;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    .line 114
    const/4 v2, -0x1

    iput v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    .line 132
    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 138
    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    .line 144
    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    .line 150
    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 183
    array-length v0, p1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBufferSize:I

    .line 184
    array-length v0, p1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    .line 185
    iput-object p1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    .line 186
    iput-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    .line 187
    return-void
.end method

.method private blacklist assertFieldNumber(J)V
    .registers 6
    .param p1, "fieldId"    # J

    .line 936
    long-to-int v0, p1

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mFieldNumber:I

    if-ne v0, v1, :cond_6

    .line 943
    return-void

    .line 937
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not match current field number (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mFieldNumber:I

    .line 938
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 940
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 941
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

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

    .line 965
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 970
    return-void

    .line 966
    :cond_7
    new-instance v0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to read already read field at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 968
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    .line 967
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 968
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist assertWireType(I)V
    .registers 5
    .param p1, "wireType"    # I

    .line 952
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mWireType:I

    if-ne p1, v0, :cond_5

    .line 959
    return-void

    .line 953
    :cond_5
    new-instance v0, Landroid/provider/internal/aconfig/storage/android/util/proto/WireTypeMismatchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mWireType:I

    .line 954
    invoke-static {v2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getWireTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match expected wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 955
    invoke-static {p1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getWireTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 956
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 957
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/WireTypeMismatchException;-><init>(Ljava/lang/String;)V

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

    .line 877
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mWireType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c7

    .line 879
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v2

    long-to-int v0, v2

    .line 880
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 881
    iget-byte v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 884
    const-wide v1, 0xff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    const-string v2, ") packed length "

    const-string v3, "Requested field id ("

    packed-switch v1, :pswitch_data_c8

    .line 921
    :pswitch_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 922
    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not a packable field"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 924
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 918
    :pswitch_51
    const/4 v1, 0x0

    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mWireType:I

    .line 919
    goto :goto_c7

    .line 889
    :pswitch_55
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_5d

    .line 896
    const/4 v1, 0x5

    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mWireType:I

    .line 897
    goto :goto_c7

    .line 890
    :cond_5d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 891
    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

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

    .line 894
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 901
    :pswitch_8e
    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_96

    .line 908
    const/4 v1, 0x1

    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mWireType:I

    .line 909
    goto :goto_c7

    .line 902
    :cond_96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 903
    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

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

    .line 906
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 927
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

    .line 793
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    if-lt v0, v1, :cond_42

    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    if-eqz v0, :cond_42

    .line 794
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    .line 795
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDiscardedBytes:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 796
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBufferSize:I

    if-lt v0, v1, :cond_38

    .line 797
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBufferSize:I

    div-int/2addr v1, v2

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBufferSize:I

    mul-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 798
    .local v0, "skipped":I
    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDiscardedBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 799
    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    .line 801
    .end local v0    # "skipped":I
    :cond_38
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    .line 803
    :cond_42
    return-void
.end method

.method private blacklist incOffset(I)V
    .registers 6
    .param p1, "n"    # I

    .line 859
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    .line 861
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    if-ltz v0, :cond_49

    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    .line 862
    invoke-virtual {v1, v2}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v1

    .line 861
    invoke-static {v1, v2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v1

    if-gt v0, v1, :cond_1c

    goto :goto_49

    .line 863
    :cond_1c
    new-instance v0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpectedly reached end of embedded object.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    .line 864
    invoke-virtual {v2, v3}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 865
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
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

    .line 645
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    if-gt v0, v2, :cond_3c

    .line 647
    invoke-direct {p0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 648
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v2, v1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, v2, -0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, v2, -0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0

    .line 656
    :cond_3c
    const/4 v0, 0x0

    .line 657
    .local v0, "value":I
    const/4 v1, 0x0

    .line 658
    .local v1, "shift":I
    const/4 v2, 0x4

    .line 659
    .local v2, "bytesLeft":I
    :goto_3f
    if-lez v2, :cond_94

    .line 660
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->fillBuffer()V

    .line 662
    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    iget v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v3, v4

    if-ge v3, v2, :cond_51

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    iget v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v3, v4

    goto :goto_52

    :cond_51
    move v3, v2

    .line 663
    .local v3, "fragment":I
    :goto_52
    if-ltz v3, :cond_6b

    .line 669
    invoke-direct {p0, v3}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 670
    sub-int/2addr v2, v3

    .line 671
    :goto_58
    if-lez v3, :cond_6a

    .line 672
    iget-object v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v5, v3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    or-int/2addr v0, v4

    .line 673
    add-int/lit8 v3, v3, -0x1

    .line 674
    add-int/lit8 v1, v1, 0x8

    goto :goto_58

    .line 676
    .end local v3    # "fragment":I
    :cond_6a
    goto :goto_3f

    .line 664
    .restart local v3    # "fragment":I
    :cond_6b
    new-instance v4, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete fixed32 at offset 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 666
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 667
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 677
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

    .line 687
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    const-wide/16 v3, 0xff

    if-gt v0, v2, :cond_7a

    .line 689
    invoke-direct {p0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 690
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v2, v1

    aget-byte v0, v0, v2

    int-to-long v5, v0

    and-long/2addr v5, v3

    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, v2, -0x7

    aget-byte v0, v0, v2

    int-to-long v7, v0

    and-long/2addr v7, v3

    shl-long v0, v7, v1

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x6

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x10

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x5

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x18

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x4

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x20

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x3

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x28

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x2

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x30

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v2, v2, v5

    int-to-long v5, v2

    and-long v2, v5, v3

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 702
    :cond_7a
    const-wide/16 v0, 0x0

    .line 703
    .local v0, "value":J
    const/4 v2, 0x0

    .line 704
    .local v2, "shift":I
    const/16 v5, 0x8

    .line 705
    .local v5, "bytesLeft":I
    :goto_7f
    if-lez v5, :cond_d4

    .line 706
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->fillBuffer()V

    .line 708
    iget v6, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    iget v7, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v6, v7

    if-ge v6, v5, :cond_91

    iget v6, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    iget v7, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v6, v7

    goto :goto_92

    :cond_91
    move v6, v5

    .line 709
    .local v6, "fragment":I
    :goto_92
    if-ltz v6, :cond_ab

    .line 715
    invoke-direct {p0, v6}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 716
    sub-int/2addr v5, v6

    .line 717
    :goto_98
    if-lez v6, :cond_aa

    .line 718
    iget-object v7, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v8, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v8, v6

    aget-byte v7, v7, v8

    int-to-long v7, v7

    and-long/2addr v7, v3

    shl-long/2addr v7, v2

    or-long/2addr v0, v7

    .line 719
    add-int/lit8 v6, v6, -0x1

    .line 720
    add-int/lit8 v2, v2, 0x8

    goto :goto_98

    .line 722
    .end local v6    # "fragment":I
    :cond_aa
    goto :goto_7f

    .line 710
    .restart local v6    # "fragment":I
    :cond_ab
    new-instance v3, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incomplete fixed64 at offset 0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 712
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 713
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 723
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

    .line 733
    new-array v0, p1, [B

    .line 734
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 735
    .local v1, "pos":I
    :goto_3
    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v2, p1

    sub-int/2addr v2, v1

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    if-le v2, v3, :cond_4e

    .line 736
    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v2, v3

    .line 737
    .local v2, "fragment":I
    if-lez v2, :cond_1d

    .line 738
    iget-object v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    invoke-direct {p0, v2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 740
    add-int/2addr v1, v2

    .line 742
    :cond_1d
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->fillBuffer()V

    .line 743
    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    iget v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    if-ge v3, v4, :cond_27

    .line 749
    .end local v2    # "fragment":I
    goto :goto_3

    .line 744
    .restart local v2    # "fragment":I
    :cond_27
    new-instance v3, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpectedly reached end of the InputStream at offset 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    .line 746
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 747
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 750
    .end local v2    # "fragment":I
    :cond_4e
    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sub-int v4, p1, v1

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    sub-int v2, p1, v1

    invoke-direct {p0, v2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 752
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

    .line 762
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->fillBuffer()V

    .line 763
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    if-gt v0, v1, :cond_19

    .line 765
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 766
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 767
    return-object v0

    .line 768
    .end local v0    # "value":Ljava/lang/String;
    :cond_19
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBufferSize:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_51

    .line 772
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v0, v2

    .line 773
    .local v0, "stringHead":I
    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    iget-object v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    iget-object v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    sub-int v4, p1, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    .line 776
    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDiscardedBytes:I

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDiscardedBytes:I

    .line 777
    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    .line 779
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 780
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 781
    return-object v1

    .line 785
    .end local v0    # "stringHead":I
    .end local v1    # "value":Ljava/lang/String;
    :cond_51
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readRawBytes(I)[B

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

    .line 567
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->fillBuffer()V

    .line 568
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    if-lt v0, v1, :cond_d

    .line 570
    const/4 v0, -0x1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mFieldNumber:I

    .line 571
    return-void

    .line 573
    :cond_d
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 574
    .local v0, "tag":I
    ushr-int/lit8 v1, v0, 0x3

    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mFieldNumber:I

    .line 575
    and-int/lit8 v1, v0, 0x7

    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mWireType:I

    .line 576
    iget-byte v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 577
    return-void
.end method

.method private blacklist readVarint()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    const-wide/16 v0, 0x0

    .line 606
    .local v0, "value":J
    const/4 v2, 0x0

    .line 608
    .local v2, "shift":I
    :goto_3
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->fillBuffer()V

    .line 611
    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    iget v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v3, v4

    .line 612
    .local v3, "fragment":I
    if-ltz v3, :cond_5e

    .line 618
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v3, :cond_5a

    .line 619
    iget-object v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v6, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v6, v4

    aget-byte v5, v5, v6

    .line 620
    .local v5, "b":B
    int-to-long v6, v5

    const-wide/16 v8, 0x7f

    and-long/2addr v6, v8

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    .line 621
    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_27

    .line 622
    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 623
    return-wide v0

    .line 625
    :cond_27
    add-int/lit8 v2, v2, 0x7

    .line 626
    const/16 v6, 0x3f

    if-gt v2, v6, :cond_30

    .line 618
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 627
    .restart local v5    # "b":B
    :cond_30
    new-instance v6, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Varint is too large at offset 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 629
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v8

    add-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 630
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 634
    .end local v4    # "i":I
    .end local v5    # "b":B
    :cond_5a
    invoke-direct {p0, v3}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 635
    .end local v3    # "fragment":I
    goto :goto_3

    .line 613
    .restart local v3    # "fragment":I
    :cond_5e
    new-instance v4, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete varint at offset 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 615
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 616
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public blacklist decodeZigZag32(I)I
    .registers 4
    .param p1, "n"    # I

    .line 586
    ushr-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, p1, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist decodeZigZag64(J)J
    .registers 7
    .param p1, "n"    # J

    .line 596
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

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 978
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\nmFieldNumber : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mFieldNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    const-string v1, "\nmWireType : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mWireType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    const-string v1, "\nmState : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    const-string v1, "\nmDiscardedBytes : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDiscardedBytes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const-string v1, "\nmOffset : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    const-string v1, "\nmExpectedObjectTokenStack : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    .line 984
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    const-string v1, "\nmDepth : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    const-string v1, "\nmBuffer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    const-string v1, "\nmBufferSize : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBufferSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    const-string v1, "\nmEnd : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist end(J)V
    .registers 7
    .param p1, "token"    # J

    .line 548
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_40

    .line 554
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v0

    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v1

    if-le v0, v1, :cond_32

    .line 556
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v0

    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 558
    :cond_32
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    .line 559
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 560
    return-void

    .line 549
    :cond_40
    new-instance v0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;

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

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    .line 551
    invoke-virtual {v2, v3}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 552
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getFieldNumber()I
    .registers 2

    .line 193
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0
.end method

.method public blacklist getOffset()I
    .registers 3

    .line 214
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDiscardedBytes:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getWireType()I
    .registers 3

    .line 202
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 205
    return v1

    .line 207
    :cond_7
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mWireType:I

    return v0
.end method

.method public blacklist nextField()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    .line 228
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 229
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0

    .line 231
    :cond_10
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_20

    .line 233
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->skip()V

    .line 234
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 236
    :cond_20
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6e

    .line 237
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mPackedEnd:I

    if-ge v0, v2, :cond_37

    .line 240
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 241
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mFieldNumber:I

    return v0

    .line 242
    :cond_37
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mPackedEnd:I

    if-ne v0, v1, :cond_47

    .line 244
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    goto :goto_6e

    .line 246
    :cond_47
    new-instance v0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpectedly reached end of packed field at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mPackedEnd:I

    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 249
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_6e
    :goto_6e
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    if-ltz v0, :cond_88

    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    .line 254
    invoke-virtual {v1, v2}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v1

    .line 253
    invoke-static {v1, v2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v1

    if-ne v0, v1, :cond_88

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mFieldNumber:I

    goto :goto_8b

    .line 258
    :cond_88
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readTag()V

    .line 260
    :goto_8b
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mFieldNumber:I

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

    .line 272
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    long-to-int v1, p1

    if-ne v0, v1, :cond_9

    .line 273
    const/4 v0, 0x1

    return v0

    .line 276
    :cond_9
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 277
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

    .line 419
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFreshData()V

    .line 420
    invoke-direct {p0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 421
    invoke-direct {p0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 424
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_5a

    .line 431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 432
    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not an boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 433
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :pswitch_41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 428
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_50

    const/4 v0, 0x1

    .line 429
    .local v0, "value":Z
    :cond_50
    nop

    .line 436
    iget-byte v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 437
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

    .line 473
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFreshData()V

    .line 474
    invoke-direct {p0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 477
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_54

    .line 485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 486
    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") cannot be read as raw bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 488
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :pswitch_3e
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 481
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 482
    .local v0, "len":I
    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readRawBytes(I)[B

    move-result-object v1

    .line 483
    .local v1, "value":[B
    nop

    .line 491
    .end local v0    # "len":I
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 492
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

    .line 287
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFreshData()V

    .line 288
    invoke-direct {p0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 289
    invoke-direct {p0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 292
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_56

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 300
    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") cannot be read as a double"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :pswitch_41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 296
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 297
    .local v0, "value":D
    nop

    .line 305
    iget-byte v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 306
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

    .line 316
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFreshData()V

    .line 317
    invoke-direct {p0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 318
    invoke-direct {p0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 321
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_56

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 329
    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not a float"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 330
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :pswitch_41
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 325
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 326
    .local v0, "value":F
    nop

    .line 333
    iget-byte v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 334
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

    .line 344
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFreshData()V

    .line 345
    invoke-direct {p0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 346
    invoke-direct {p0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 349
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_6a

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 368
    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not an int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 369
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :sswitch_42
    invoke-direct {p0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 358
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->decodeZigZag32(I)I

    move-result v0

    .line 359
    .local v0, "value":I
    goto :goto_61

    .line 353
    .end local v0    # "value":I
    :sswitch_4f
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 354
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readFixed32()I

    move-result v0

    .line 355
    .restart local v0    # "value":I
    goto :goto_61

    .line 363
    .end local v0    # "value":I
    :sswitch_58
    invoke-direct {p0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 364
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 365
    .restart local v0    # "value":I
    nop

    .line 372
    :goto_61
    iget-byte v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 373
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

    .line 382
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFreshData()V

    .line 383
    invoke-direct {p0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 384
    invoke-direct {p0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->checkPacked(J)V

    .line 387
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_68

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 405
    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not an long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 406
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :sswitch_42
    invoke-direct {p0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 396
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    .line 397
    .local v0, "value":J
    goto :goto_5f

    .line 391
    .end local v0    # "value":J
    :sswitch_4e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 392
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readFixed64()J

    move-result-wide v0

    .line 393
    .restart local v0    # "value":J
    goto :goto_5f

    .line 400
    .end local v0    # "value":J
    :sswitch_57
    invoke-direct {p0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 401
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    .line 402
    .restart local v0    # "value":J
    nop

    .line 409
    :goto_5f
    iget-byte v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 410
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

    .line 446
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFreshData()V

    .line 447
    invoke-direct {p0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 450
    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_54

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested field id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 458
    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not an string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 460
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :pswitch_3e
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 453
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 454
    .local v0, "len":I
    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readRawString(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "value":Ljava/lang/String;
    nop

    .line 463
    .end local v0    # "len":I
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 464
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

    .line 810
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    .line 811
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mPackedEnd:I

    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    goto :goto_72

    .line 813
    :cond_11
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mWireType:I

    packed-switch v0, :pswitch_data_7a

    .line 842
    :pswitch_16
    new-instance v0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected wire type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mWireType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    .line 844
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 845
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :pswitch_49
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 840
    goto :goto_72

    .line 826
    :pswitch_4e
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->fillBuffer()V

    .line 827
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 828
    .local v0, "length":I
    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 829
    goto :goto_72

    .line 823
    .end local v0    # "length":I
    :pswitch_5a
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 824
    goto :goto_72

    .line 817
    :cond_60
    :pswitch_60
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->fillBuffer()V

    .line 818
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mBuffer:[B

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mOffset:I

    aget-byte v0, v0, v1

    .line 819
    .local v0, "b":B
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->incOffset(I)V

    .line 820
    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_60

    .line 821
    nop

    .line 848
    .end local v0    # "b":B
    :goto_72
    iget-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 849
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

    .line 502
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFreshData()V

    .line 503
    invoke-direct {p0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    .line 504
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->assertWireType(I)V

    .line 506
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    .line 508
    .local v0, "messageSize":I
    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    if-nez v1, :cond_1a

    .line 509
    new-instance v1, Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    invoke-direct {v1}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;-><init>()V

    iput-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    .line 511
    :cond_1a
    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    iget-object v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    invoke-virtual {v3}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->size()I

    move-result v3

    const-wide v4, 0x20000000000L

    const/4 v6, 0x0

    if-ne v1, v3, :cond_49

    .line 513
    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    and-long v7, p1, v4

    cmp-long v3, v7, v4

    if-nez v3, :cond_38

    move v3, v2

    goto :goto_39

    :cond_38
    move v3, v6

    :goto_39
    iget v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    long-to-int v5, p1

    .line 515
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v7

    add-int/2addr v7, v0

    .line 513
    invoke-static {v6, v3, v4, v5, v7}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->makeToken(IZIII)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->add(J)V

    goto :goto_65

    .line 519
    :cond_49
    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    and-long v7, p1, v4

    cmp-long v4, v7, v4

    if-nez v4, :cond_55

    move v4, v2

    goto :goto_56

    :cond_55
    move v4, v6

    :goto_56
    iget v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    long-to-int v7, p1

    .line 521
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffset()I

    move-result v8

    add-int/2addr v8, v0

    .line 519
    invoke-static {v6, v4, v5, v7, v8}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->makeToken(IZIII)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->set(IJ)V

    .line 525
    :goto_65
    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    if-lez v1, :cond_cf

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    .line 526
    invoke-virtual {v1, v3}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v1

    iget-object v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    iget v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    sub-int/2addr v4, v2

    .line 527
    invoke-virtual {v3, v4}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v3

    if-gt v1, v3, :cond_85

    goto :goto_cf

    .line 528
    :cond_85
    new-instance v1, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Embedded Object ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    iget v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    .line 529
    invoke-virtual {v4, v5}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ends after of parent Objects\'s ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    iget v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    sub-int/2addr v5, v2

    .line 531
    invoke-virtual {v4, v5}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 533
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 535
    :cond_cf
    :goto_cf
    iget-byte v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mState:B

    .line 536
    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v1, v2}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v1

    return-wide v1
.end method
