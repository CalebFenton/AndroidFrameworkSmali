.class public final Landroid/net/thread/PendingOperationalDataset;
.super Ljava/lang/Object;
.source "PendingOperationalDataset.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/thread/PendingOperationalDataset;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LENGTH_DELAY_TIMER_BYTES:I = 0x4

.field private static final blacklist TYPE_DELAY_TIMER:I = 0x34

.field private static final blacklist TYPE_PENDING_TIMESTAMP:I = 0x33


# instance fields
.field private final blacklist mActiveOpDataset:Landroid/net/thread/ActiveOperationalDataset;

.field private final blacklist mDelayTimer:Ljava/time/Duration;

.field private final blacklist mPendingTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Landroid/net/thread/PendingOperationalDataset$1;

    invoke-direct {v0}, Landroid/net/thread/PendingOperationalDataset$1;-><init>()V

    sput-object v0, Landroid/net/thread/PendingOperationalDataset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/thread/ActiveOperationalDataset;Landroid/net/thread/OperationalDatasetTimestamp;Ljava/time/Duration;)V
    .registers 5
    .param p1, "activeOpDataset"    # Landroid/net/thread/ActiveOperationalDataset;
    .param p2, "pendingTimestamp"    # Landroid/net/thread/OperationalDatasetTimestamp;
    .param p3, "delayTimer"    # Ljava/time/Duration;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "activeOpDataset cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    const-string v0, "pendingTimestamp cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    const-string v0, "delayTimer cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iput-object p1, p0, Landroid/net/thread/PendingOperationalDataset;->mActiveOpDataset:Landroid/net/thread/ActiveOperationalDataset;

    .line 93
    iput-object p2, p0, Landroid/net/thread/PendingOperationalDataset;->mPendingTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    .line 94
    iput-object p3, p0, Landroid/net/thread/PendingOperationalDataset;->mDelayTimer:Ljava/time/Duration;

    .line 95
    return-void
.end method

.method public static whitelist fromThreadTlvs([B)Landroid/net/thread/PendingOperationalDataset;
    .registers 12
    .param p0, "tlvs"    # [B

    .line 109
    const-string v0, "tlvs cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 112
    .local v0, "newUnknownTlvs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    const/4 v1, 0x0

    .line 113
    .local v1, "pendingTimestamp":Landroid/net/thread/OperationalDatasetTimestamp;
    const/4 v2, 0x0

    .line 114
    .local v2, "delayTimer":Ljava/time/Duration;
    invoke-static {p0}, Landroid/net/thread/ActiveOperationalDataset;->fromThreadTlvs([B)Landroid/net/thread/ActiveOperationalDataset;

    move-result-object v3

    .line 115
    .local v3, "activeDataset":Landroid/net/thread/ActiveOperationalDataset;
    invoke-virtual {v3}, Landroid/net/thread/ActiveOperationalDataset;->getUnknownTlvs()Landroid/util/SparseArray;

    move-result-object v4

    .line 116
    .local v4, "unknownTlvs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_5e

    .line 117
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 118
    .local v6, "key":I
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 119
    .local v7, "value":[B
    packed-switch v6, :pswitch_data_86

    .line 133
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5b

    .line 124
    :pswitch_2c
    array-length v8, v7

    const/4 v9, 0x4

    if-ne v8, v9, :cond_32

    const/4 v8, 0x1

    goto :goto_33

    :cond_32
    const/4 v8, 0x0

    :goto_33
    array-length v10, v7

    .line 127
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 128
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v10, v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 124
    const-string v10, "Invalid delay timer (length = %d, expectedLength = %d)"

    invoke-static {v8, v10, v9}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 130
    .local v8, "millis":I
    invoke-static {v8}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    .line 131
    goto :goto_5b

    .line 121
    .end local v8    # "millis":I
    :pswitch_56
    invoke-static {v7}, Landroid/net/thread/OperationalDatasetTimestamp;->fromTlvValue([B)Landroid/net/thread/OperationalDatasetTimestamp;

    move-result-object v1

    .line 122
    nop

    .line 116
    .end local v6    # "key":I
    .end local v7    # "value":[B
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 138
    .end local v5    # "i":I
    :cond_5e
    if-eqz v1, :cond_7d

    .line 141
    if-eqz v2, :cond_75

    .line 145
    new-instance v5, Landroid/net/thread/ActiveOperationalDataset$Builder;

    invoke-direct {v5, v3}, Landroid/net/thread/ActiveOperationalDataset$Builder;-><init>(Landroid/net/thread/ActiveOperationalDataset;)V

    .line 147
    invoke-virtual {v5, v0}, Landroid/net/thread/ActiveOperationalDataset$Builder;->setUnknownTlvs(Landroid/util/SparseArray;)Landroid/net/thread/ActiveOperationalDataset$Builder;

    move-result-object v5

    .line 148
    invoke-virtual {v5}, Landroid/net/thread/ActiveOperationalDataset$Builder;->build()Landroid/net/thread/ActiveOperationalDataset;

    move-result-object v3

    .line 149
    new-instance v5, Landroid/net/thread/PendingOperationalDataset;

    invoke-direct {v5, v3, v1, v2}, Landroid/net/thread/PendingOperationalDataset;-><init>(Landroid/net/thread/ActiveOperationalDataset;Landroid/net/thread/OperationalDatasetTimestamp;Ljava/time/Duration;)V

    return-object v5

    .line 142
    :cond_75
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Delay Timer is missing"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :cond_7d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Pending Timestamp is missing"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    :pswitch_data_86
    .packed-switch 0x33
        :pswitch_56
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 199
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 200
    return v0

    .line 201
    :cond_4
    instance-of v1, p1, Landroid/net/thread/PendingOperationalDataset;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 202
    return v2

    .line 204
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/thread/PendingOperationalDataset;

    .line 205
    .local v1, "otherDataset":Landroid/net/thread/PendingOperationalDataset;
    iget-object v3, p0, Landroid/net/thread/PendingOperationalDataset;->mActiveOpDataset:Landroid/net/thread/ActiveOperationalDataset;

    iget-object v4, v1, Landroid/net/thread/PendingOperationalDataset;->mActiveOpDataset:Landroid/net/thread/ActiveOperationalDataset;

    invoke-virtual {v3, v4}, Landroid/net/thread/ActiveOperationalDataset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Landroid/net/thread/PendingOperationalDataset;->mPendingTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    iget-object v4, v1, Landroid/net/thread/PendingOperationalDataset;->mPendingTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    .line 206
    invoke-virtual {v3, v4}, Landroid/net/thread/OperationalDatasetTimestamp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Landroid/net/thread/PendingOperationalDataset;->mDelayTimer:Ljava/time/Duration;

    iget-object v4, v1, Landroid/net/thread/PendingOperationalDataset;->mDelayTimer:Ljava/time/Duration;

    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    .line 205
    :goto_2d
    return v0
.end method

.method public whitelist getActiveOperationalDataset()Landroid/net/thread/ActiveOperationalDataset;
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/net/thread/PendingOperationalDataset;->mActiveOpDataset:Landroid/net/thread/ActiveOperationalDataset;

    return-object v0
.end method

.method public whitelist getDelayTimer()Ljava/time/Duration;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/net/thread/PendingOperationalDataset;->mDelayTimer:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getPendingTimestamp()Landroid/net/thread/OperationalDatasetTimestamp;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/net/thread/PendingOperationalDataset;->mPendingTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 213
    iget-object v0, p0, Landroid/net/thread/PendingOperationalDataset;->mActiveOpDataset:Landroid/net/thread/ActiveOperationalDataset;

    iget-object v1, p0, Landroid/net/thread/PendingOperationalDataset;->mPendingTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    iget-object v2, p0, Landroid/net/thread/PendingOperationalDataset;->mDelayTimer:Ljava/time/Duration;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{activeDataset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    invoke-virtual {p0}, Landroid/net/thread/PendingOperationalDataset;->getActiveOperationalDataset()Landroid/net/thread/ActiveOperationalDataset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    const-string v2, ", pendingTimestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {p0}, Landroid/net/thread/PendingOperationalDataset;->getPendingTimestamp()Landroid/net/thread/OperationalDatasetTimestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 223
    const-string v2, ", delayTimer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    invoke-virtual {p0}, Landroid/net/thread/PendingOperationalDataset;->getDelayTimer()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist toThreadTlvs()[B
    .registers 9

    .line 178
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    .local v0, "dataset":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Landroid/net/thread/PendingOperationalDataset;->mActiveOpDataset:Landroid/net/thread/ActiveOperationalDataset;

    invoke-virtual {v1}, Landroid/net/thread/ActiveOperationalDataset;->toThreadTlvs()[B

    move-result-object v1

    .line 181
    .local v1, "activeDatasetBytes":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 183
    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 184
    iget-object v2, p0, Landroid/net/thread/PendingOperationalDataset;->mPendingTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    invoke-virtual {v2}, Landroid/net/thread/OperationalDatasetTimestamp;->toTlvValue()[B

    move-result-object v2

    .line 185
    .local v2, "pendingTimestampBytes":[B
    array-length v4, v2

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 186
    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 188
    const/16 v4, 0x34

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 189
    const/4 v4, 0x4

    new-array v4, v4, [B

    .line 190
    .local v4, "delayTimerBytes":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, p0, Landroid/net/thread/PendingOperationalDataset;->mDelayTimer:Ljava/time/Duration;

    invoke-virtual {v6}, Ljava/time/Duration;->toMillis()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 191
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 192
    array-length v5, v4

    invoke-virtual {v0, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 194
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 236
    invoke-virtual {p0}, Landroid/net/thread/PendingOperationalDataset;->toThreadTlvs()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 237
    return-void
.end method
