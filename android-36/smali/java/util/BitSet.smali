.class public Ljava/util/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o ADDRESS_BITS_PER_WORD:I = 0x6

.field private static final greylist-max-o BITS_PER_WORD:I = 0x40

.field private static final greylist-max-o BIT_INDEX_MASK:I = 0x3f

.field private static final greylist-max-o WORD_MASK:J = -0x1L

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = 0x6efd887e3934ab21L


# instance fields
.field private transient greylist-max-o sizeIsSticky:Z

.field private greylist-max-o words:[J

.field private transient greylist-max-o wordsInUse:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetwords(Ljava/util/BitSet;)[J
    .registers 1

    iget-object p0, p0, Ljava/util/BitSet;->words:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwordsInUse(Ljava/util/BitSet;)I
    .registers 1

    iget p0, p0, Ljava/util/BitSet;->wordsInUse:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnextSetBit(Ljava/util/BitSet;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/BitSet;->nextSetBit(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smwordIndex(I)I
    .registers 1

    invoke-static {p0}, Ljava/util/BitSet;->wordIndex(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 66
    nop

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "bits"

    const-class v3, [J

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ljava/util/BitSet;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 105
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 146
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Ljava/util/BitSet;->initWords(I)V

    .line 147
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 148
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 5
    .param p1, "nbits"    # I

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 105
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 161
    if-ltz p1, :cond_11

    .line 164
    invoke-direct {p0, p1}, Ljava/util/BitSet;->initWords(I)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 166
    return-void

    .line 162
    :cond_11
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nbits < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>([J)V
    .registers 3
    .param p1, "words"    # [J

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 105
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 177
    iput-object p1, p0, Ljava/util/BitSet;->words:[J

    .line 178
    array-length v0, p1

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 179
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 180
    return-void
.end method

.method private greylist-max-o checkInvariants()V
    .registers 1

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    return-void
.end method

.method private static greylist-max-o checkRange(II)V
    .registers 5
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I

    .line 364
    if-ltz p0, :cond_43

    .line 366
    if-ltz p1, :cond_2a

    .line 368
    if-gt p0, p1, :cond_7

    .line 371
    return-void

    .line 369
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > toIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_2a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_43
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 4
    .param p1, "wordsRequired"    # I

    .line 337
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    array-length v0, v0

    if-ge v0, p1, :cond_19

    .line 339
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 340
    .local v0, "request":I
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Ljava/util/BitSet;->words:[J

    .line 341
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 343
    .end local v0    # "request":I
    :cond_19
    return-void
.end method

.method private greylist-max-o expandTo(I)V
    .registers 4
    .param p1, "wordIndex"    # I

    .line 353
    add-int/lit8 v0, p1, 0x1

    .line 354
    .local v0, "wordsRequired":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v0, :cond_b

    .line 355
    invoke-direct {p0, v0}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 356
    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 358
    :cond_b
    return-void
.end method

.method private greylist-max-o initWords(I)V
    .registers 3
    .param p1, "nbits"    # I

    .line 169
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/BitSet;->words:[J

    .line 170
    return-void
.end method

.method private blacklist nextSetBit(II)I
    .registers 9
    .param p1, "fromIndex"    # I
    .param p2, "toWordIndex"    # I

    .line 1384
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 1386
    .local v0, "u":I
    const/4 v1, -0x1

    if-le v0, p2, :cond_8

    .line 1387
    return v1

    .line 1389
    :cond_8
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, -0x1

    shl-long/2addr v4, p1

    and-long/2addr v2, v4

    .line 1392
    .local v2, "word":J
    :goto_10
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1e

    .line 1393
    mul-int/lit8 v1, v0, 0x40

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int/2addr v1, v4

    return v1

    .line 1395
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    if-le v0, p2, :cond_23

    .line 1396
    return v1

    .line 1397
    :cond_23
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v4, v0

    goto :goto_10
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1149
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1150
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "bits"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, p0, Ljava/util/BitSet;->words:[J

    .line 1155
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 1156
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 1157
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    if-lez v1, :cond_2c

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v1, v1, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    iput-boolean v3, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 1158
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1159
    return-void
.end method

.method private greylist-max-o recalculateWordsInUse()V
    .registers 6

    .line 135
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_14

    .line 136
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_11

    .line 137
    goto :goto_14

    .line 135
    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 139
    :cond_14
    :goto_14
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 140
    return-void
.end method

.method private greylist-max-o trimToSize()V
    .registers 3

    .line 1117
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    if-eq v0, v1, :cond_14

    .line 1118
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Ljava/util/BitSet;->words:[J

    .line 1119
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1121
    :cond_14
    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;
    .registers 12
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    .line 272
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .local v0, "n":I
    :goto_e
    if-lez v0, :cond_1b

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_1b

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 276
    :cond_1b
    add-int/lit8 v1, v0, 0x7

    const/16 v2, 0x8

    div-int/2addr v1, v2

    new-array v1, v1, [J

    .line 277
    .local v1, "words":[J
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 278
    const/4 v3, 0x0

    .line 279
    .local v3, "i":I
    :goto_26
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v2, :cond_36

    .line 280
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    aput-wide v5, v1, v3

    move v3, v4

    goto :goto_26

    .line 281
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_36
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .local v2, "remaining":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3b
    if-ge v4, v2, :cond_50

    .line 282
    aget-wide v5, v1, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    mul-int/lit8 v9, v4, 0x8

    shl-long/2addr v7, v9

    or-long/2addr v5, v7

    aput-wide v5, v1, v3

    .line 281
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 283
    .end local v2    # "remaining":I
    .end local v4    # "j":I
    :cond_50
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>([J)V

    return-object v2
.end method

.method public static whitelist test-api valueOf(Ljava/nio/LongBuffer;)Ljava/util/BitSet;
    .registers 6
    .param p0, "lb"    # Ljava/nio/LongBuffer;

    .line 224
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->slice()Ljava/nio/LongBuffer;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    .local v0, "n":I
    :goto_8
    if-lez v0, :cond_19

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_19

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 228
    :cond_19
    new-array v1, v0, [J

    .line 229
    .local v1, "words":[J
    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 230
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>([J)V

    return-object v2
.end method

.method public static whitelist test-api valueOf([B)Ljava/util/BitSet;
    .registers 2
    .param p0, "bytes"    # [B

    .line 250
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf([J)Ljava/util/BitSet;
    .registers 6
    .param p0, "longs"    # [J

    .line 200
    array-length v0, p0

    .local v0, "n":I
    :goto_1
    if-lez v0, :cond_10

    add-int/lit8 v1, v0, -0x1

    aget-wide v1, p0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 202
    :cond_10
    new-instance v1, Ljava/util/BitSet;

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>([J)V

    return-object v1
.end method

.method private static greylist-max-o wordIndex(I)I
    .registers 2
    .param p0, "bitIndex"    # I

    .line 115
    shr-int/lit8 v0, p0, 0x6

    return v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1131
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1133
    iget-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    if-nez v0, :cond_a

    .line 1134
    invoke-direct {p0}, Ljava/util/BitSet;->trimToSize()V

    .line 1136
    :cond_a
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1137
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "bits"

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1138
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1139
    return-void
.end method


# virtual methods
.method public whitelist test-api and(Ljava/util/BitSet;)V
    .registers 8
    .param p1, "set"    # Ljava/util/BitSet;

    .line 916
    if-ne p0, p1, :cond_3

    .line 917
    return-void

    .line 919
    :cond_3
    :goto_3
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    if-le v0, v1, :cond_16

    .line 920
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    goto :goto_3

    .line 923
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v1, :cond_29

    .line 924
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 926
    .end local v0    # "i":I
    :cond_29
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 927
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 928
    return-void
.end method

.method public whitelist test-api andNot(Ljava/util/BitSet;)V
    .registers 8
    .param p1, "set"    # Ljava/util/BitSet;

    .line 1010
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_1b

    .line 1011
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 1010
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1013
    .end local v0    # "i":I
    :cond_1b
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 1014
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1015
    return-void
.end method

.method public whitelist test-api cardinality()I
    .registers 5

    .line 900
    const/4 v0, 0x0

    .line 901
    .local v0, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v2, :cond_12

    .line 902
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 901
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 903
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public whitelist test-api clear()V
    .registers 5

    .line 610
    nop

    :goto_1
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lez v0, :cond_12

    .line 611
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    goto :goto_1

    .line 612
    :cond_12
    return-void
.end method

.method public whitelist test-api clear(I)V
    .registers 8
    .param p1, "bitIndex"    # I

    .line 542
    if-ltz p1, :cond_1d

    .line 545
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 546
    .local v0, "wordIndex":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_b

    .line 547
    return-void

    .line 549
    :cond_b
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 551
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 552
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 553
    return-void

    .line 543
    .end local v0    # "wordIndex":I
    :cond_1d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api clear(II)V
    .registers 14
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 567
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 569
    if-ne p1, p2, :cond_6

    .line 570
    return-void

    .line 572
    :cond_6
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 573
    .local v0, "startWordIndex":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_f

    .line 574
    return-void

    .line 576
    :cond_f
    add-int/lit8 v1, p2, -0x1

    invoke-static {v1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v1

    .line 577
    .local v1, "endWordIndex":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v1, v2, :cond_21

    .line 578
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result p2

    .line 579
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v1, v2, -0x1

    .line 582
    :cond_21
    const-wide/16 v2, -0x1

    shl-long v4, v2, p1

    .line 583
    .local v4, "firstWordMask":J
    neg-int v6, p2

    ushr-long/2addr v2, v6

    .line 584
    .local v2, "lastWordMask":J
    if-ne v0, v1, :cond_34

    .line 586
    iget-object v6, p0, Ljava/util/BitSet;->words:[J

    aget-wide v7, v6, v0

    and-long v9, v4, v2

    not-long v9, v9

    and-long/2addr v7, v9

    aput-wide v7, v6, v0

    goto :goto_51

    .line 590
    :cond_34
    iget-object v6, p0, Ljava/util/BitSet;->words:[J

    aget-wide v7, v6, v0

    not-long v9, v4

    and-long/2addr v7, v9

    aput-wide v7, v6, v0

    .line 593
    add-int/lit8 v6, v0, 0x1

    .local v6, "i":I
    :goto_3e
    if-ge v6, v1, :cond_49

    .line 594
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v6

    .line 593
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 597
    .end local v6    # "i":I
    :cond_49
    iget-object v6, p0, Ljava/util/BitSet;->words:[J

    aget-wide v7, v6, v1

    not-long v9, v2

    and-long/2addr v7, v9

    aput-wide v7, v6, v1

    .line 600
    :goto_51
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 601
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 602
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 1098
    iget-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    if-nez v0, :cond_7

    .line 1099
    invoke-direct {p0}, Ljava/util/BitSet;->trimToSize()V

    .line 1102
    :cond_7
    :try_start_7
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 1103
    .local v0, "result":Ljava/util/BitSet;
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Ljava/util/BitSet;->words:[J

    .line 1104
    invoke-direct {v0}, Ljava/util/BitSet;->checkInvariants()V
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_1a} :catch_1b

    .line 1105
    return-object v0

    .line 1106
    .end local v0    # "result":Ljava/util/BitSet;
    :catch_1b
    move-exception v0

    .line 1107
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1069
    instance-of v0, p1, Ljava/util/BitSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    move-object v0, p1

    check-cast v0, Ljava/util/BitSet;

    .line 1071
    .local v0, "set":Ljava/util/BitSet;
    const/4 v2, 0x1

    if-ne p0, p1, :cond_c

    .line 1072
    return v2

    .line 1074
    :cond_c
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1075
    invoke-direct {v0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1077
    iget v3, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v4, v0, Ljava/util/BitSet;->wordsInUse:I

    if-eq v3, v4, :cond_19

    .line 1078
    return v1

    .line 1081
    :cond_19
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v3, v4, :cond_2e

    .line 1082
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v3

    iget-object v6, v0, Ljava/util/BitSet;->words:[J

    aget-wide v6, v6, v3

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2b

    .line 1083
    return v1

    .line 1081
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1085
    .end local v3    # "i":I
    :cond_2e
    return v2

    .line 1070
    .end local v0    # "set":Ljava/util/BitSet;
    :cond_2f
    return v1
.end method

.method public whitelist test-api flip(I)V
    .registers 8
    .param p1, "bitIndex"    # I

    .line 382
    if-ltz p1, :cond_1a

    .line 385
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 386
    .local v0, "wordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    .line 388
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 390
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 391
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 392
    return-void

    .line 383
    .end local v0    # "wordIndex":I
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api flip(II)V
    .registers 14
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 407
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 409
    if-ne p1, p2, :cond_6

    .line 410
    return-void

    .line 412
    :cond_6
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 413
    .local v0, "startWordIndex":I
    add-int/lit8 v1, p2, -0x1

    invoke-static {v1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v1

    .line 414
    .local v1, "endWordIndex":I
    invoke-direct {p0, v1}, Ljava/util/BitSet;->expandTo(I)V

    .line 416
    const-wide/16 v2, -0x1

    shl-long v4, v2, p1

    .line 417
    .local v4, "firstWordMask":J
    neg-int v6, p2

    ushr-long/2addr v2, v6

    .line 418
    .local v2, "lastWordMask":J
    if-ne v0, v1, :cond_25

    .line 420
    iget-object v6, p0, Ljava/util/BitSet;->words:[J

    aget-wide v7, v6, v0

    and-long v9, v4, v2

    xor-long/2addr v7, v9

    aput-wide v7, v6, v0

    goto :goto_41

    .line 424
    :cond_25
    iget-object v6, p0, Ljava/util/BitSet;->words:[J

    aget-wide v7, v6, v0

    xor-long/2addr v7, v4

    aput-wide v7, v6, v0

    .line 427
    add-int/lit8 v6, v0, 0x1

    .local v6, "i":I
    :goto_2e
    if-ge v6, v1, :cond_3a

    .line 428
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    not-long v8, v8

    aput-wide v8, v7, v6

    .line 427
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 431
    .end local v6    # "i":I
    :cond_3a
    iget-object v6, p0, Ljava/util/BitSet;->words:[J

    aget-wide v7, v6, v1

    xor-long/2addr v7, v2

    aput-wide v7, v6, v1

    .line 434
    :goto_41
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 435
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 436
    return-void
.end method

.method public whitelist test-api get(II)Ljava/util/BitSet;
    .registers 19
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 648
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p1 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 650
    invoke-direct {v0}, Ljava/util/BitSet;->checkInvariants()V

    .line 652
    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v3

    .line 655
    .local v3, "len":I
    const/4 v4, 0x0

    if-le v3, v1, :cond_8b

    if-ne v1, v2, :cond_17

    goto/16 :goto_8b

    .line 659
    :cond_17
    if-le v2, v3, :cond_1a

    .line 660
    move v2, v3

    .line 662
    .end local p2    # "toIndex":I
    .local v2, "toIndex":I
    :cond_1a
    new-instance v5, Ljava/util/BitSet;

    sub-int v6, v2, v1

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    .line 663
    .local v5, "result":Ljava/util/BitSet;
    sub-int v6, v2, v1

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v6

    add-int/2addr v6, v7

    .line 664
    .local v6, "targetWords":I
    invoke-static {v1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v8

    .line 665
    .local v8, "sourceIndex":I
    and-int/lit8 v9, v1, 0x3f

    if-nez v9, :cond_33

    move v4, v7

    .line 668
    .local v4, "wordAligned":Z
    :cond_33
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_34
    add-int/lit8 v9, v6, -0x1

    if-ge v7, v9, :cond_56

    .line 669
    iget-object v9, v5, Ljava/util/BitSet;->words:[J

    if-eqz v4, :cond_41

    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v8

    goto :goto_4f

    .line 670
    :cond_41
    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v8

    ushr-long/2addr v10, v1

    iget-object v12, v0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v13, v8, 0x1

    aget-wide v12, v12, v13

    neg-int v14, v1

    shl-long/2addr v12, v14

    or-long/2addr v10, v12

    :goto_4f
    aput-wide v10, v9, v7

    .line 668
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 674
    .end local v7    # "i":I
    :cond_56
    const-wide/16 v9, -0x1

    neg-int v7, v2

    ushr-long/2addr v9, v7

    .line 675
    .local v9, "lastWordMask":J
    iget-object v7, v5, Ljava/util/BitSet;->words:[J

    add-int/lit8 v11, v6, -0x1

    .line 676
    add-int/lit8 v12, v2, -0x1

    and-int/lit8 v12, v12, 0x3f

    and-int/lit8 v13, v1, 0x3f

    if-ge v12, v13, :cond_78

    .line 678
    iget-object v12, v0, Ljava/util/BitSet;->words:[J

    aget-wide v12, v12, v8

    ushr-long/2addr v12, v1

    iget-object v14, v0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v15, v8, 0x1

    aget-wide v14, v14, v15

    and-long/2addr v14, v9

    move/from16 p2, v2

    .end local v2    # "toIndex":I
    .restart local p2    # "toIndex":I
    neg-int v2, v1

    shl-long/2addr v14, v2

    or-long/2addr v12, v14

    goto :goto_80

    .line 681
    .end local p2    # "toIndex":I
    .restart local v2    # "toIndex":I
    :cond_78
    move/from16 p2, v2

    .end local v2    # "toIndex":I
    .restart local p2    # "toIndex":I
    iget-object v2, v0, Ljava/util/BitSet;->words:[J

    aget-wide v12, v2, v8

    and-long/2addr v12, v9

    ushr-long/2addr v12, v1

    :goto_80
    aput-wide v12, v7, v11

    .line 684
    iput v6, v5, Ljava/util/BitSet;->wordsInUse:I

    .line 685
    invoke-direct {v5}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 686
    invoke-direct {v5}, Ljava/util/BitSet;->checkInvariants()V

    .line 688
    return-object v5

    .line 656
    .end local v4    # "wordAligned":Z
    .end local v5    # "result":Ljava/util/BitSet;
    .end local v6    # "targetWords":I
    .end local v8    # "sourceIndex":I
    .end local v9    # "lastWordMask":J
    :cond_8b
    :goto_8b
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5, v4}, Ljava/util/BitSet;-><init>(I)V

    return-object v5
.end method

.method public whitelist test-api get(I)Z
    .registers 7
    .param p1, "bitIndex"    # I

    .line 625
    if-ltz p1, :cond_1f

    .line 628
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 630
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 631
    .local v0, "wordIndex":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1

    .line 626
    .end local v0    # "wordIndex":I
    :cond_1f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 1036
    const-wide/16 v0, 0x4d2

    .line 1037
    .local v0, "h":J
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    .local v2, "i":I
    :goto_4
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_12

    .line 1038
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    aget-wide v3, v3, v2

    add-int/lit8 v5, v2, 0x1

    int-to-long v5, v5

    mul-long/2addr v3, v5

    xor-long/2addr v0, v3

    goto :goto_4

    .line 1040
    .end local v2    # "i":I
    :cond_12
    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public whitelist test-api intersects(Ljava/util/BitSet;)Z
    .registers 8
    .param p1, "set"    # Ljava/util/BitSet;

    .line 887
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_1f

    .line 888
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v0

    iget-object v4, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 889
    return v1

    .line 887
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 890
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 874
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api length()I
    .registers 4

    .line 859
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-nez v0, :cond_6

    .line 860
    const/4 v0, 0x0

    return v0

    .line 862
    :cond_6
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x40

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    .line 863
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x40

    add-int/2addr v0, v1

    .line 862
    return v0
.end method

.method public whitelist test-api nextClearBit(I)I
    .registers 7
    .param p1, "fromIndex"    # I

    .line 746
    if-ltz p1, :cond_36

    .line 749
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 751
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 752
    .local v0, "u":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_e

    .line 753
    return p1

    .line 755
    :cond_e
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v1, v1, v0

    not-long v1, v1

    const-wide/16 v3, -0x1

    shl-long/2addr v3, p1

    and-long/2addr v1, v3

    .line 758
    .local v1, "word":J
    :goto_17
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_25

    .line 759
    mul-int/lit8 v3, v0, 0x40

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int/2addr v3, v4

    return v3

    .line 760
    :cond_25
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ne v0, v3, :cond_30

    .line 761
    iget v3, p0, Ljava/util/BitSet;->wordsInUse:I

    mul-int/lit8 v3, v3, 0x40

    return v3

    .line 762
    :cond_30
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    aget-wide v3, v3, v0

    not-long v1, v3

    goto :goto_17

    .line 747
    .end local v0    # "u":I
    .end local v1    # "word":J
    :cond_36
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api nextSetBit(I)I
    .registers 9
    .param p1, "fromIndex"    # I

    .line 714
    if-ltz p1, :cond_31

    .line 717
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 719
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 720
    .local v0, "u":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_f

    .line 721
    return v2

    .line 723
    :cond_f
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v3, v1, v0

    const-wide/16 v5, -0x1

    shl-long/2addr v5, p1

    and-long/2addr v3, v5

    .line 726
    .local v3, "word":J
    :goto_17
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_25

    .line 727
    mul-int/lit8 v1, v0, 0x40

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 728
    :cond_25
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ne v0, v1, :cond_2c

    .line 729
    return v2

    .line 730
    :cond_2c
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v3, v1, v0

    goto :goto_17

    .line 715
    .end local v0    # "u":I
    .end local v3    # "word":J
    :cond_31
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api or(Ljava/util/BitSet;)V
    .registers 9
    .param p1, "set"    # Ljava/util/BitSet;

    .line 940
    if-ne p0, p1, :cond_3

    .line 941
    return-void

    .line 943
    :cond_3
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 945
    .local v0, "wordsInCommon":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v2, :cond_1a

    .line 946
    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 947
    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 951
    :cond_1a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-ge v1, v0, :cond_2b

    .line 952
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Ljava/util/BitSet;->words:[J

    aget-wide v5, v5, v1

    or-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 951
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 955
    .end local v1    # "i":I
    :cond_2b
    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v1, :cond_39

    .line 956
    iget-object v1, p1, Ljava/util/BitSet;->words:[J

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    iget v3, p0, Ljava/util/BitSet;->wordsInUse:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 961
    :cond_39
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 962
    return-void
.end method

.method public whitelist test-api previousClearBit(I)I
    .registers 9
    .param p1, "fromIndex"    # I

    .line 826
    const/4 v0, -0x1

    if-gez p1, :cond_1f

    .line 827
    if-ne p1, v0, :cond_6

    .line 828
    return v0

    .line 829
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < -1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_1f
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 835
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v1

    .line 836
    .local v1, "u":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v1, v2, :cond_2b

    .line 837
    return p1

    .line 839
    :cond_2b
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v1

    not-long v2, v2

    add-int/lit8 v4, p1, 0x1

    neg-int v4, v4

    const-wide/16 v5, -0x1

    ushr-long v4, v5, v4

    and-long/2addr v2, v4

    .line 842
    .local v2, "word":J
    :goto_38
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4a

    .line 843
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    sub-int/2addr v0, v4

    return v0

    .line 844
    :cond_4a
    add-int/lit8 v4, v1, -0x1

    .end local v1    # "u":I
    .local v4, "u":I
    if-nez v1, :cond_4f

    .line 845
    return v0

    .line 846
    :cond_4f
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v5, v1, v4

    not-long v2, v5

    move v1, v4

    goto :goto_38
.end method

.method public whitelist test-api previousSetBit(I)I
    .registers 9
    .param p1, "fromIndex"    # I

    .line 788
    const/4 v0, -0x1

    if-gez p1, :cond_1f

    .line 789
    if-ne p1, v0, :cond_6

    .line 790
    return v0

    .line 791
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < -1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_1f
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 797
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v1

    .line 798
    .local v1, "u":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v1, v2, :cond_31

    .line 799
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 801
    :cond_31
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v1

    add-int/lit8 v4, p1, 0x1

    neg-int v4, v4

    const-wide/16 v5, -0x1

    ushr-long v4, v5, v4

    and-long/2addr v2, v4

    .line 804
    .local v2, "word":J
    :goto_3d
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4f

    .line 805
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    sub-int/2addr v0, v4

    return v0

    .line 806
    :cond_4f
    add-int/lit8 v4, v1, -0x1

    .end local v1    # "u":I
    .local v4, "u":I
    if-nez v1, :cond_54

    .line 807
    return v0

    .line 808
    :cond_54
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v4

    move v1, v4

    goto :goto_3d
.end method

.method public whitelist test-api set(I)V
    .registers 8
    .param p1, "bitIndex"    # I

    .line 446
    if-ltz p1, :cond_17

    .line 449
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 450
    .local v0, "wordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    .line 452
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 454
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 455
    return-void

    .line 447
    .end local v0    # "wordIndex":I
    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api set(II)V
    .registers 15
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 484
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 486
    if-ne p1, p2, :cond_6

    .line 487
    return-void

    .line 490
    :cond_6
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 491
    .local v0, "startWordIndex":I
    add-int/lit8 v1, p2, -0x1

    invoke-static {v1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v1

    .line 492
    .local v1, "endWordIndex":I
    invoke-direct {p0, v1}, Ljava/util/BitSet;->expandTo(I)V

    .line 494
    const-wide/16 v2, -0x1

    shl-long v4, v2, p1

    .line 495
    .local v4, "firstWordMask":J
    neg-int v6, p2

    ushr-long v6, v2, v6

    .line 496
    .local v6, "lastWordMask":J
    if-ne v0, v1, :cond_26

    .line 498
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v2, v0

    and-long v10, v4, v6

    or-long/2addr v8, v10

    aput-wide v8, v2, v0

    goto :goto_3f

    .line 502
    :cond_26
    iget-object v8, p0, Ljava/util/BitSet;->words:[J

    aget-wide v9, v8, v0

    or-long/2addr v9, v4

    aput-wide v9, v8, v0

    .line 505
    add-int/lit8 v8, v0, 0x1

    .local v8, "i":I
    :goto_2f
    if-ge v8, v1, :cond_38

    .line 506
    iget-object v9, p0, Ljava/util/BitSet;->words:[J

    aput-wide v2, v9, v8

    .line 505
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 509
    .end local v8    # "i":I
    :cond_38
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v2, v1

    or-long/2addr v8, v6

    aput-wide v8, v2, v1

    .line 512
    :goto_3f
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 513
    return-void
.end method

.method public whitelist test-api set(IIZ)V
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # Z

    .line 528
    if-eqz p3, :cond_6

    .line 529
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->set(II)V

    goto :goto_9

    .line 531
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->clear(II)V

    .line 532
    :goto_9
    return-void
.end method

.method public whitelist test-api set(IZ)V
    .registers 3
    .param p1, "bitIndex"    # I
    .param p2, "value"    # Z

    .line 466
    if-eqz p2, :cond_6

    .line 467
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_9

    .line 469
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 470
    :goto_9
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1051
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/IntStream;
    .registers 7

    .line 1369
    new-instance v0, Ljava/util/BitSet$1BitSetSpliterator;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/BitSet$1BitSetSpliterator;-><init>(Ljava/util/BitSet;IIIZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toByteArray()[B
    .registers 12

    .line 300
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 301
    .local v0, "n":I
    if-nez v0, :cond_8

    .line 302
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 303
    :cond_8
    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x8

    mul-int/2addr v1, v2

    .line 304
    .local v1, "len":I
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v4, v0, -0x1

    aget-wide v3, v3, v4

    .local v3, "x":J
    :goto_13
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1d

    .line 305
    add-int/lit8 v1, v1, 0x1

    .line 304
    ushr-long/2addr v3, v2

    goto :goto_13

    .line 306
    .end local v3    # "x":J
    :cond_1d
    new-array v3, v1, [B

    .line 307
    .local v3, "bytes":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 308
    .local v4, "bb":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2a
    add-int/lit8 v8, v0, -0x1

    if-ge v7, v8, :cond_38

    .line 309
    iget-object v8, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v8, v7

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 308
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 310
    .end local v7    # "i":I
    :cond_38
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v8, v0, -0x1

    aget-wide v7, v7, v8

    .local v7, "x":J
    :goto_3e
    cmp-long v9, v7, v5

    if-eqz v9, :cond_4c

    .line 311
    const-wide/16 v9, 0xff

    and-long/2addr v9, v7

    long-to-int v9, v9

    int-to-byte v9, v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 310
    ushr-long/2addr v7, v2

    goto :goto_3e

    .line 312
    .end local v7    # "x":J
    :cond_4c
    return-object v3
.end method

.method public whitelist test-api toLongArray()[J
    .registers 3

    .line 329
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 1185
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1187
    const v0, 0x7ffffff7

    .line 1188
    .local v0, "MAX_INITIAL_CAPACITY":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    const/16 v2, 0x80

    if-le v1, v2, :cond_11

    .line 1189
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    goto :goto_15

    :cond_11
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    mul-int/lit8 v1, v1, 0x40

    .line 1191
    .local v1, "numBits":I
    :goto_15
    const v2, 0x15555553

    if-gt v1, v2, :cond_1f

    .line 1192
    mul-int/lit8 v2, v1, 0x6

    add-int/lit8 v2, v2, 0x2

    goto :goto_22

    :cond_1f
    const v2, 0x7ffffff7

    .line 1193
    .local v2, "initialCapacity":I
    :goto_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1194
    .local v3, "b":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1196
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    .line 1197
    .local v4, "i":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_56

    .line 1198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1200
    :goto_37
    add-int/lit8 v4, v4, 0x1

    if-gez v4, :cond_3c

    goto :goto_56

    .line 1201
    :cond_3c
    invoke-virtual {p0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    move v4, v5

    if-gez v5, :cond_44

    goto :goto_56

    .line 1202
    :cond_44
    invoke-virtual {p0, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v5

    .line 1203
    .local v5, "endOfRun":I
    :cond_48
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1204
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_48

    .line 1205
    .end local v5    # "endOfRun":I
    goto :goto_37

    .line 1208
    :cond_56
    :goto_56
    const/16 v5, 0x7d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1209
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public whitelist test-api xor(Ljava/util/BitSet;)V
    .registers 9
    .param p1, "set"    # Ljava/util/BitSet;

    .line 979
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 981
    .local v0, "wordsInCommon":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v2, :cond_17

    .line 982
    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 983
    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 987
    :cond_17
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_28

    .line 988
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Ljava/util/BitSet;->words:[J

    aget-wide v5, v5, v1

    xor-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 987
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 991
    .end local v1    # "i":I
    :cond_28
    iget v1, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v1, :cond_36

    .line 992
    iget-object v1, p1, Ljava/util/BitSet;->words:[J

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 996
    :cond_36
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 997
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 998
    return-void
.end method
