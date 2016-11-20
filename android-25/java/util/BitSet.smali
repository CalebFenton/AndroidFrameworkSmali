.class public Ljava/util/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/BitSet$-java_util_stream_IntStream_stream__LambdaImpl0;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ADDRESS_BITS_PER_WORD:I = 0x6

.field private static final BITS_PER_WORD:I = 0x40

.field private static final BIT_INDEX_MASK:I = 0x3f

.field private static final WORD_MASK:J = -0x1L

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6efd887e3934ab21L


# instance fields
.field private transient sizeIsSticky:Z

.field private words:[J

.field private transient wordsInUse:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-class v0, Ljava/util/BitSet;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    sput-boolean v0, Ljava/util/BitSet;->-assertionsDisabled:Z

    #@d
    .line 85
    new-array v0, v2, [Ljava/io/ObjectStreamField;

    #@f
    .line 86
    new-instance v2, Ljava/io/ObjectStreamField;

    #@11
    const-string/jumbo v3, "bits"

    #@14
    const-class v4, [J

    #@16
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@19
    aput-object v2, v0, v1

    #@1b
    .line 85
    sput-object v0, Ljava/util/BitSet;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@1d
    .line 65
    return-void

    #@1e
    :cond_0
    move v0, v2

    #@1f
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 97
    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@6
    .line 103
    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    #@8
    .line 143
    const/16 v0, 0x40

    #@a
    invoke-direct {p0, v0}, Ljava/util/BitSet;->initWords(I)V

    #@d
    .line 144
    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    #@f
    .line 142
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "nbits"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 97
    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    #@6
    .line 103
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    #@8
    .line 158
    if-gez p1, :cond_0

    #@a
    .line 159
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "nbits < 0: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 161
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/BitSet;->initWords(I)V

    #@27
    .line 162
    const/4 v0, 0x1

    #@28
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    #@2a
    .line 156
    return-void
.end method

.method private constructor <init>([J)V
    .locals 1
    .param p1, "words"    # [J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 97
    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    #@6
    .line 103
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    #@8
    .line 174
    iput-object p1, p0, Ljava/util/BitSet;->words:[J

    #@a
    .line 175
    array-length v0, p1

    #@b
    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    #@d
    .line 176
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@10
    .line 173
    return-void
.end method

.method private checkInvariants()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 119
    sget-boolean v2, Ljava/util/BitSet;->-assertionsDisabled:Z

    #@6
    if-nez v2, :cond_2

    #@8
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@a
    if-eqz v2, :cond_0

    #@c
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    #@e
    iget v3, p0, Ljava/util/BitSet;->wordsInUse:I

    #@10
    add-int/lit8 v3, v3, -0x1

    #@12
    aget-wide v2, v2, v3

    #@14
    cmp-long v2, v2, v4

    #@16
    if-eqz v2, :cond_1

    #@18
    :cond_0
    move v2, v0

    #@19
    :goto_0
    if-nez v2, :cond_2

    #@1b
    new-instance v0, Ljava/lang/AssertionError;

    #@1d
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@20
    throw v0

    #@21
    :cond_1
    move v2, v1

    #@22
    goto :goto_0

    #@23
    .line 120
    :cond_2
    sget-boolean v2, Ljava/util/BitSet;->-assertionsDisabled:Z

    #@25
    if-nez v2, :cond_4

    #@27
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@29
    if-ltz v2, :cond_3

    #@2b
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@2d
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    #@2f
    array-length v3, v3

    #@30
    if-gt v2, v3, :cond_3

    #@32
    move v2, v0

    #@33
    :goto_1
    if-nez v2, :cond_4

    #@35
    new-instance v0, Ljava/lang/AssertionError;

    #@37
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@3a
    throw v0

    #@3b
    :cond_3
    move v2, v1

    #@3c
    goto :goto_1

    #@3d
    .line 121
    :cond_4
    sget-boolean v2, Ljava/util/BitSet;->-assertionsDisabled:Z

    #@3f
    if-nez v2, :cond_7

    #@41
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@43
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    #@45
    array-length v3, v3

    #@46
    if-eq v2, v3, :cond_5

    #@48
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    #@4a
    iget v3, p0, Ljava/util/BitSet;->wordsInUse:I

    #@4c
    aget-wide v2, v2, v3

    #@4e
    cmp-long v2, v2, v4

    #@50
    if-nez v2, :cond_6

    #@52
    :cond_5
    :goto_2
    if-nez v0, :cond_7

    #@54
    new-instance v0, Ljava/lang/AssertionError;

    #@56
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@59
    throw v0

    #@5a
    :cond_6
    move v0, v1

    #@5b
    goto :goto_2

    #@5c
    .line 118
    :cond_7
    return-void
.end method

.method private static checkRange(II)V
    .locals 3
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I

    #@0
    .prologue
    .line 355
    if-gez p0, :cond_0

    #@2
    .line 356
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "fromIndex < 0: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 357
    :cond_0
    if-gez p1, :cond_1

    #@1e
    .line 358
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "toIndex < 0: "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 359
    :cond_1
    if-le p0, p1, :cond_2

    #@3a
    .line 360
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@3c
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v2, "fromIndex: "

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 361
    const-string/jumbo v2, " > toIndex: "

    #@4f
    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v0

    #@5f
    .line 354
    :cond_2
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2
    .param p1, "wordsRequired"    # I

    #@0
    .prologue
    .line 328
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@2
    array-length v1, v1

    #@3
    if-ge v1, p1, :cond_0

    #@5
    .line 330
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@7
    array-length v1, v1

    #@8
    mul-int/lit8 v1, v1, 0x2

    #@a
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v0

    #@e
    .line 331
    .local v0, "request":I
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@10
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Ljava/util/BitSet;->words:[J

    #@16
    .line 332
    const/4 v1, 0x0

    #@17
    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    #@19
    .line 327
    .end local v0    # "request":I
    :cond_0
    return-void
.end method

.method private expandTo(I)V
    .locals 2
    .param p1, "wordIndex"    # I

    #@0
    .prologue
    .line 344
    add-int/lit8 v0, p1, 0x1

    #@2
    .line 345
    .local v0, "wordsRequired":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@4
    if-ge v1, v0, :cond_0

    #@6
    .line 346
    invoke-direct {p0, v0}, Ljava/util/BitSet;->ensureCapacity(I)V

    #@9
    .line 347
    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    #@b
    .line 343
    :cond_0
    return-void
.end method

.method private initWords(I)V
    .locals 1
    .param p1, "nbits"    # I

    #@0
    .prologue
    .line 166
    add-int/lit8 v0, p1, -0x1

    #@2
    invoke-static {v0}, Ljava/util/BitSet;->wordIndex(I)I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    new-array v0, v0, [J

    #@a
    iput-object v0, p0, Ljava/util/BitSet;->words:[J

    #@c
    .line 165
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1137
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@4
    move-result-object v0

    #@5
    .line 1138
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "bits"

    #@8
    const/4 v3, 0x0

    #@9
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, [J

    #@f
    iput-object v1, p0, Ljava/util/BitSet;->words:[J

    #@11
    .line 1143
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@13
    array-length v1, v1

    #@14
    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@16
    .line 1144
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    #@19
    .line 1145
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@1b
    array-length v1, v1

    #@1c
    if-lez v1, :cond_0

    #@1e
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@20
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    #@22
    array-length v3, v3

    #@23
    add-int/lit8 v3, v3, -0x1

    #@25
    aget-wide v4, v1, v3

    #@27
    const-wide/16 v6, 0x0

    #@29
    cmp-long v1, v4, v6

    #@2b
    if-nez v1, :cond_0

    #@2d
    const/4 v1, 0x1

    #@2e
    :goto_0
    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    #@30
    .line 1146
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@33
    .line 1135
    return-void

    #@34
    :cond_0
    move v1, v2

    #@35
    .line 1145
    goto :goto_0
.end method

.method private recalculateWordsInUse()V
    .locals 6

    #@0
    .prologue
    .line 132
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@2
    add-int/lit8 v0, v1, -0x1

    #@4
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@6
    .line 133
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@8
    aget-wide v2, v1, v0

    #@a
    const-wide/16 v4, 0x0

    #@c
    cmp-long v1, v2, v4

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 136
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@12
    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@14
    .line 129
    return-void

    #@15
    .line 132
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0
.end method

.method private trimToSize()V
    .locals 2

    #@0
    .prologue
    .line 1107
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    #@2
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@4
    array-length v1, v1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 1108
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    #@9
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@b
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Ljava/util/BitSet;->words:[J

    #@11
    .line 1109
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@14
    .line 1106
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;
    .locals 12
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/16 v8, 0x8

    #@2
    .line 263
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@5
    move-result-object v6

    #@6
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@8
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b
    move-result-object p0

    #@c
    .line 265
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@f
    move-result v3

    #@10
    .local v3, "n":I
    :goto_0
    if-lez v3, :cond_0

    #@12
    add-int/lit8 v6, v3, -0x1

    #@14
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    #@17
    move-result v6

    #@18
    if-nez v6, :cond_0

    #@1a
    add-int/lit8 v3, v3, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 267
    :cond_0
    add-int/lit8 v6, v3, 0x7

    #@1f
    div-int/lit8 v6, v6, 0x8

    #@21
    new-array v5, v6, [J

    #@23
    .line 268
    .local v5, "words":[J
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@26
    .line 269
    const/4 v0, 0x0

    #@27
    .line 270
    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@2a
    move-result v6

    #@2b
    if-lt v6, v8, :cond_1

    #@2d
    .line 271
    add-int/lit8 v1, v0, 0x1

    #@2f
    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    #@32
    move-result-wide v6

    #@33
    aput-wide v6, v5, v0

    #@35
    move v0, v1

    #@36
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    #@37
    .line 272
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@3a
    move-result v4

    #@3b
    .local v4, "remaining":I
    const/4 v2, 0x0

    #@3c
    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_2

    #@3e
    .line 273
    aget-wide v6, v5, v0

    #@40
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@43
    move-result v8

    #@44
    int-to-long v8, v8

    #@45
    const-wide/16 v10, 0xff

    #@47
    and-long/2addr v8, v10

    #@48
    mul-int/lit8 v10, v2, 0x8

    #@4a
    shl-long/2addr v8, v10

    #@4b
    or-long/2addr v6, v8

    #@4c
    aput-wide v6, v5, v0

    #@4e
    .line 272
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_2

    #@51
    .line 274
    :cond_2
    new-instance v6, Ljava/util/BitSet;

    #@53
    invoke-direct {v6, v5}, Ljava/util/BitSet;-><init>([J)V

    #@56
    return-object v6
.end method

.method public static valueOf(Ljava/nio/LongBuffer;)Ljava/util/BitSet;
    .locals 6
    .param p0, "lb"    # Ljava/nio/LongBuffer;

    #@0
    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->slice()Ljava/nio/LongBuffer;

    #@3
    move-result-object p0

    #@4
    .line 220
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@7
    move-result v0

    #@8
    .local v0, "n":I
    :goto_0
    if-lez v0, :cond_0

    #@a
    add-int/lit8 v2, v0, -0x1

    #@c
    invoke-virtual {p0, v2}, Ljava/nio/LongBuffer;->get(I)J

    #@f
    move-result-wide v2

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v2, v2, v4

    #@14
    if-nez v2, :cond_0

    #@16
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 222
    :cond_0
    new-array v1, v0, [J

    #@1b
    .line 223
    .local v1, "words":[J
    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    #@1e
    .line 224
    new-instance v2, Ljava/util/BitSet;

    #@20
    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>([J)V

    #@23
    return-object v2
.end method

.method public static valueOf([B)Ljava/util/BitSet;
    .locals 1
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 243
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static valueOf([J)Ljava/util/BitSet;
    .locals 6
    .param p0, "longs"    # [J

    #@0
    .prologue
    .line 196
    array-length v0, p0

    #@1
    .local v0, "n":I
    :goto_0
    if-lez v0, :cond_0

    #@3
    add-int/lit8 v1, v0, -0x1

    #@5
    aget-wide v2, p0, v1

    #@7
    const-wide/16 v4, 0x0

    #@9
    cmp-long v1, v2, v4

    #@b
    if-nez v1, :cond_0

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    goto :goto_0

    #@10
    .line 198
    :cond_0
    new-instance v1, Ljava/util/BitSet;

    #@12
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    #@15
    move-result-object v2

    #@16
    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>([J)V

    #@19
    return-object v1
.end method

.method private static wordIndex(I)I
    .locals 1
    .param p0, "bitIndex"    # I

    #@0
    .prologue
    .line 112
    shr-int/lit8 v0, p0, 0x6

    #@2
    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1120
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@3
    .line 1122
    iget-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1123
    invoke-direct {p0}, Ljava/util/BitSet;->trimToSize()V

    #@a
    .line 1125
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@d
    move-result-object v0

    #@e
    .line 1126
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "bits"

    #@11
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@16
    .line 1127
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@19
    .line 1118
    return-void
.end method


# virtual methods
.method synthetic -java_util_BitSet_lambda$1()Ljava/util/Spliterator$OfInt;
    .locals 4

    #@0
    .prologue
    .line 1231
    new-instance v0, Ljava/util/BitSet$1BitSetIterator;

    #@2
    invoke-direct {v0, p0}, Ljava/util/BitSet$1BitSetIterator;-><init>(Ljava/util/BitSet;)V

    #@5
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    #@8
    move-result v1

    #@9
    int-to-long v2, v1

    #@a
    .line 1232
    const/16 v1, 0x15

    #@c
    .line 1230
    invoke-static {v0, v2, v3, v1}, Ljava/util/Spliterators;->spliterator(Ljava/util/PrimitiveIterator$OfInt;JI)Ljava/util/Spliterator$OfInt;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public and(Ljava/util/BitSet;)V
    .locals 6
    .param p1, "set"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 904
    if-ne p0, p1, :cond_0

    #@2
    .line 905
    return-void

    #@3
    .line 907
    :cond_0
    :goto_0
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@5
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    #@7
    if-le v1, v2, :cond_1

    #@9
    .line 908
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@b
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@d
    add-int/lit8 v2, v2, -0x1

    #@f
    iput v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@11
    const-wide/16 v4, 0x0

    #@13
    aput-wide v4, v1, v2

    #@15
    goto :goto_0

    #@16
    .line 911
    :cond_1
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@19
    if-ge v0, v1, :cond_2

    #@1b
    .line 912
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@1d
    aget-wide v2, v1, v0

    #@1f
    iget-object v4, p1, Ljava/util/BitSet;->words:[J

    #@21
    aget-wide v4, v4, v0

    #@23
    and-long/2addr v2, v4

    #@24
    aput-wide v2, v1, v0

    #@26
    .line 911
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_1

    #@29
    .line 914
    :cond_2
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    #@2c
    .line 915
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@2f
    .line 903
    return-void
.end method

.method public andNot(Ljava/util/BitSet;)V
    .locals 6
    .param p1, "set"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 998
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@2
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    #@4
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    add-int/lit8 v0, v1, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@c
    .line 999
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@e
    aget-wide v2, v1, v0

    #@10
    iget-object v4, p1, Ljava/util/BitSet;->words:[J

    #@12
    aget-wide v4, v4, v0

    #@14
    not-long v4, v4

    #@15
    and-long/2addr v2, v4

    #@16
    aput-wide v2, v1, v0

    #@18
    .line 998
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1001
    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    #@1e
    .line 1002
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@21
    .line 996
    return-void
.end method

.method public cardinality()I
    .locals 4

    #@0
    .prologue
    .line 888
    const/4 v1, 0x0

    #@1
    .line 889
    .local v1, "sum":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@4
    if-ge v0, v2, :cond_0

    #@6
    .line 890
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    #@8
    aget-wide v2, v2, v0

    #@a
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    .line 889
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 891
    :cond_0
    return v1
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .line 601
    :goto_0
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 602
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    #@6
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@c
    const-wide/16 v2, 0x0

    #@e
    aput-wide v2, v0, v1

    #@10
    goto :goto_0

    #@11
    .line 600
    :cond_0
    return-void
.end method

.method public clear(I)V
    .locals 6
    .param p1, "bitIndex"    # I

    #@0
    .prologue
    .line 533
    if-gez p1, :cond_0

    #@2
    .line 534
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "bitIndex < 0: "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 536
    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    #@1f
    move-result v0

    #@20
    .line 537
    .local v0, "wordIndex":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@22
    if-lt v0, v1, :cond_1

    #@24
    .line 538
    return-void

    #@25
    .line 540
    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@27
    aget-wide v2, v1, v0

    #@29
    const-wide/16 v4, 0x1

    #@2b
    shl-long/2addr v4, p1

    #@2c
    not-long v4, v4

    #@2d
    and-long/2addr v2, v4

    #@2e
    aput-wide v2, v1, v0

    #@30
    .line 542
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    #@33
    .line 543
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@36
    .line 532
    return-void
.end method

.method public clear(II)V
    .locals 12
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    .line 558
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    #@5
    .line 560
    if-ne p1, p2, :cond_0

    #@7
    .line 561
    return-void

    #@8
    .line 563
    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    #@b
    move-result v6

    #@c
    .line 564
    .local v6, "startWordIndex":I
    iget v7, p0, Ljava/util/BitSet;->wordsInUse:I

    #@e
    if-lt v6, v7, :cond_1

    #@10
    .line 565
    return-void

    #@11
    .line 567
    :cond_1
    add-int/lit8 v7, p2, -0x1

    #@13
    invoke-static {v7}, Ljava/util/BitSet;->wordIndex(I)I

    #@16
    move-result v0

    #@17
    .line 568
    .local v0, "endWordIndex":I
    iget v7, p0, Ljava/util/BitSet;->wordsInUse:I

    #@19
    if-lt v0, v7, :cond_2

    #@1b
    .line 569
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    #@1e
    move-result p2

    #@1f
    .line 570
    iget v7, p0, Ljava/util/BitSet;->wordsInUse:I

    #@21
    add-int/lit8 v0, v7, -0x1

    #@23
    .line 573
    :cond_2
    shl-long v2, v8, p1

    #@25
    .line 574
    .local v2, "firstWordMask":J
    neg-int v7, p2

    #@26
    ushr-long v4, v8, v7

    #@28
    .line 575
    .local v4, "lastWordMask":J
    if-ne v6, v0, :cond_3

    #@2a
    .line 577
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    #@2c
    aget-wide v8, v7, v6

    #@2e
    and-long v10, v2, v4

    #@30
    not-long v10, v10

    #@31
    and-long/2addr v8, v10

    #@32
    aput-wide v8, v7, v6

    #@34
    .line 591
    :goto_0
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    #@37
    .line 592
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@3a
    .line 557
    return-void

    #@3b
    .line 581
    :cond_3
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    #@3d
    aget-wide v8, v7, v6

    #@3f
    not-long v10, v2

    #@40
    and-long/2addr v8, v10

    #@41
    aput-wide v8, v7, v6

    #@43
    .line 584
    add-int/lit8 v1, v6, 0x1

    #@45
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    #@47
    .line 585
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    #@49
    const-wide/16 v8, 0x0

    #@4b
    aput-wide v8, v7, v1

    #@4d
    .line 584
    add-int/lit8 v1, v1, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 588
    :cond_4
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    #@52
    aget-wide v8, v7, v0

    #@54
    not-long v10, v4

    #@55
    and-long/2addr v8, v10

    #@56
    aput-wide v8, v7, v0

    #@58
    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 1088
    iget-boolean v2, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1089
    invoke-direct {p0}, Ljava/util/BitSet;->trimToSize()V

    #@7
    .line 1092
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/util/BitSet;

    #@d
    .line 1093
    .local v1, "result":Ljava/util/BitSet;
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    #@f
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, [J

    #@15
    iput-object v2, v1, Ljava/util/BitSet;->words:[J

    #@17
    .line 1094
    invoke-direct {v1}, Ljava/util/BitSet;->checkInvariants()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1095
    return-object v1

    #@1b
    .line 1096
    .end local v1    # "result":Ljava/util/BitSet;
    :catch_0
    move-exception v0

    #@1c
    .line 1097
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@1e
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@21
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1057
    instance-of v2, p1, Ljava/util/BitSet;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1058
    return v6

    #@7
    .line 1059
    :cond_0
    if-ne p0, p1, :cond_1

    #@9
    .line 1060
    return v7

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 1062
    check-cast v1, Ljava/util/BitSet;

    #@d
    .line 1064
    .local v1, "set":Ljava/util/BitSet;
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@10
    .line 1065
    invoke-direct {v1}, Ljava/util/BitSet;->checkInvariants()V

    #@13
    .line 1067
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@15
    iget v3, v1, Ljava/util/BitSet;->wordsInUse:I

    #@17
    if-eq v2, v3, :cond_2

    #@19
    .line 1068
    return v6

    #@1a
    .line 1071
    :cond_2
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@1d
    if-ge v0, v2, :cond_4

    #@1f
    .line 1072
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    #@21
    aget-wide v2, v2, v0

    #@23
    iget-object v4, v1, Ljava/util/BitSet;->words:[J

    #@25
    aget-wide v4, v4, v0

    #@27
    cmp-long v2, v2, v4

    #@29
    if-eqz v2, :cond_3

    #@2b
    .line 1073
    return v6

    #@2c
    .line 1071
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1075
    :cond_4
    return v7
.end method

.method public flip(I)V
    .locals 6
    .param p1, "bitIndex"    # I

    #@0
    .prologue
    .line 373
    if-gez p1, :cond_0

    #@2
    .line 374
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "bitIndex < 0: "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 376
    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    #@1f
    move-result v0

    #@20
    .line 377
    .local v0, "wordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    #@23
    .line 379
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@25
    aget-wide v2, v1, v0

    #@27
    const-wide/16 v4, 0x1

    #@29
    shl-long/2addr v4, p1

    #@2a
    xor-long/2addr v2, v4

    #@2b
    aput-wide v2, v1, v0

    #@2d
    .line 381
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    #@30
    .line 382
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@33
    .line 372
    return-void
.end method

.method public flip(II)V
    .locals 12
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    const-wide/16 v10, -0x1

    #@2
    .line 398
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    #@5
    .line 400
    if-ne p1, p2, :cond_0

    #@7
    .line 401
    return-void

    #@8
    .line 403
    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    #@b
    move-result v6

    #@c
    .line 404
    .local v6, "startWordIndex":I
    add-int/lit8 v7, p2, -0x1

    #@e
    invoke-static {v7}, Ljava/util/BitSet;->wordIndex(I)I

    #@11
    move-result v0

    #@12
    .line 405
    .local v0, "endWordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    #@15
    .line 407
    shl-long v2, v10, p1

    #@17
    .line 408
    .local v2, "firstWordMask":J
    neg-int v7, p2

    #@18
    ushr-long v4, v10, v7

    #@1a
    .line 409
    .local v4, "lastWordMask":J
    if-ne v6, v0, :cond_1

    #@1c
    .line 411
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    #@1e
    aget-wide v8, v7, v6

    #@20
    and-long v10, v2, v4

    #@22
    xor-long/2addr v8, v10

    #@23
    aput-wide v8, v7, v6

    #@25
    .line 425
    :goto_0
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    #@28
    .line 426
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@2b
    .line 397
    return-void

    #@2c
    .line 415
    :cond_1
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    #@2e
    aget-wide v8, v7, v6

    #@30
    xor-long/2addr v8, v2

    #@31
    aput-wide v8, v7, v6

    #@33
    .line 418
    add-int/lit8 v1, v6, 0x1

    #@35
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@37
    .line 419
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    #@39
    aget-wide v8, v7, v1

    #@3b
    xor-long/2addr v8, v10

    #@3c
    aput-wide v8, v7, v1

    #@3e
    .line 418
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_1

    #@41
    .line 422
    :cond_2
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    #@43
    aget-wide v8, v7, v0

    #@45
    xor-long/2addr v8, v4

    #@46
    aput-wide v8, v7, v0

    #@48
    goto :goto_0
.end method

.method public get(II)Ljava/util/BitSet;
    .locals 17
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 639
    invoke-static/range {p1 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    #@3
    .line 641
    invoke-direct/range {p0 .. p0}, Ljava/util/BitSet;->checkInvariants()V

    #@6
    .line 643
    invoke-virtual/range {p0 .. p0}, Ljava/util/BitSet;->length()I

    #@9
    move-result v3

    #@a
    .line 646
    .local v3, "len":I
    move/from16 v0, p1

    #@c
    if-le v3, v0, :cond_0

    #@e
    move/from16 v0, p1

    #@10
    move/from16 v1, p2

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 647
    :cond_0
    new-instance v10, Ljava/util/BitSet;

    #@16
    const/4 v11, 0x0

    #@17
    invoke-direct {v10, v11}, Ljava/util/BitSet;-><init>(I)V

    #@1a
    return-object v10

    #@1b
    .line 650
    :cond_1
    move/from16 v0, p2

    #@1d
    if-le v0, v3, :cond_2

    #@1f
    .line 651
    move/from16 p2, v3

    #@21
    .line 653
    :cond_2
    new-instance v6, Ljava/util/BitSet;

    #@23
    sub-int v10, p2, p1

    #@25
    invoke-direct {v6, v10}, Ljava/util/BitSet;-><init>(I)V

    #@28
    .line 654
    .local v6, "result":Ljava/util/BitSet;
    sub-int v10, p2, p1

    #@2a
    add-int/lit8 v10, v10, -0x1

    #@2c
    invoke-static {v10}, Ljava/util/BitSet;->wordIndex(I)I

    #@2f
    move-result v10

    #@30
    add-int/lit8 v8, v10, 0x1

    #@32
    .line 655
    .local v8, "targetWords":I
    invoke-static/range {p1 .. p1}, Ljava/util/BitSet;->wordIndex(I)I

    #@35
    move-result v7

    #@36
    .line 656
    .local v7, "sourceIndex":I
    and-int/lit8 v10, p1, 0x3f

    #@38
    if-nez v10, :cond_3

    #@3a
    const/4 v9, 0x1

    #@3b
    .line 659
    .local v9, "wordAligned":Z
    :goto_0
    const/4 v2, 0x0

    #@3c
    .local v2, "i":I
    :goto_1
    add-int/lit8 v10, v8, -0x1

    #@3e
    if-ge v2, v10, :cond_5

    #@40
    .line 660
    iget-object v12, v6, Ljava/util/BitSet;->words:[J

    #@42
    if-eqz v9, :cond_4

    #@44
    move-object/from16 v0, p0

    #@46
    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    #@48
    aget-wide v10, v10, v7

    #@4a
    :goto_2
    aput-wide v10, v12, v2

    #@4c
    .line 659
    add-int/lit8 v2, v2, 0x1

    #@4e
    add-int/lit8 v7, v7, 0x1

    #@50
    goto :goto_1

    #@51
    .line 656
    .end local v2    # "i":I
    .end local v9    # "wordAligned":Z
    :cond_3
    const/4 v9, 0x0

    #@52
    .restart local v9    # "wordAligned":Z
    goto :goto_0

    #@53
    .line 661
    .restart local v2    # "i":I
    :cond_4
    move-object/from16 v0, p0

    #@55
    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    #@57
    aget-wide v10, v10, v7

    #@59
    ushr-long v10, v10, p1

    #@5b
    .line 662
    move-object/from16 v0, p0

    #@5d
    iget-object v13, v0, Ljava/util/BitSet;->words:[J

    #@5f
    add-int/lit8 v14, v7, 0x1

    #@61
    aget-wide v14, v13, v14

    #@63
    move/from16 v0, p1

    #@65
    neg-int v13, v0

    #@66
    shl-long/2addr v14, v13

    #@67
    .line 661
    or-long/2addr v10, v14

    #@68
    goto :goto_2

    #@69
    .line 665
    :cond_5
    move/from16 v0, p2

    #@6b
    neg-int v10, v0

    #@6c
    const-wide/16 v12, -0x1

    #@6e
    ushr-long v4, v12, v10

    #@70
    .line 666
    .local v4, "lastWordMask":J
    iget-object v12, v6, Ljava/util/BitSet;->words:[J

    #@72
    add-int/lit8 v13, v8, -0x1

    #@74
    .line 667
    add-int/lit8 v10, p2, -0x1

    #@76
    and-int/lit8 v10, v10, 0x3f

    #@78
    and-int/lit8 v11, p1, 0x3f

    #@7a
    if-ge v10, v11, :cond_6

    #@7c
    .line 669
    move-object/from16 v0, p0

    #@7e
    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    #@80
    aget-wide v10, v10, v7

    #@82
    ushr-long v10, v10, p1

    #@84
    .line 670
    move-object/from16 v0, p0

    #@86
    iget-object v14, v0, Ljava/util/BitSet;->words:[J

    #@88
    add-int/lit8 v15, v7, 0x1

    #@8a
    aget-wide v14, v14, v15

    #@8c
    and-long/2addr v14, v4

    #@8d
    move/from16 v0, p1

    #@8f
    neg-int v0, v0

    #@90
    move/from16 v16, v0

    #@92
    shl-long v14, v14, v16

    #@94
    .line 669
    or-long/2addr v10, v14

    #@95
    .line 666
    :goto_3
    aput-wide v10, v12, v13

    #@97
    .line 675
    iput v8, v6, Ljava/util/BitSet;->wordsInUse:I

    #@99
    .line 676
    invoke-direct {v6}, Ljava/util/BitSet;->recalculateWordsInUse()V

    #@9c
    .line 677
    invoke-direct {v6}, Ljava/util/BitSet;->checkInvariants()V

    #@9f
    .line 679
    return-object v6

    #@a0
    .line 672
    :cond_6
    move-object/from16 v0, p0

    #@a2
    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    #@a4
    aget-wide v10, v10, v7

    #@a6
    and-long/2addr v10, v4

    #@a7
    ushr-long v10, v10, p1

    #@a9
    goto :goto_3
.end method

.method public get(I)Z
    .locals 6
    .param p1, "bitIndex"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 616
    if-gez p1, :cond_0

    #@3
    .line 617
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "bitIndex < 0: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 619
    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@20
    .line 621
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    #@23
    move-result v0

    #@24
    .line 622
    .local v0, "wordIndex":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@26
    if-ge v0, v2, :cond_1

    #@28
    .line 623
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    #@2a
    aget-wide v2, v2, v0

    #@2c
    const-wide/16 v4, 0x1

    #@2e
    shl-long/2addr v4, p1

    #@2f
    and-long/2addr v2, v4

    #@30
    const-wide/16 v4, 0x0

    #@32
    cmp-long v2, v2, v4

    #@34
    if-eqz v2, :cond_1

    #@36
    const/4 v1, 0x1

    #@37
    .line 622
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 8

    #@0
    .prologue
    .line 1024
    const-wide/16 v0, 0x4d2

    #@2
    .line 1025
    .local v0, "h":J
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@4
    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    #@6
    if-ltz v2, :cond_0

    #@8
    .line 1026
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    #@a
    aget-wide v4, v3, v2

    #@c
    add-int/lit8 v3, v2, 0x1

    #@e
    int-to-long v6, v3

    #@f
    mul-long/2addr v4, v6

    #@10
    xor-long/2addr v0, v4

    #@11
    goto :goto_0

    #@12
    .line 1028
    :cond_0
    const/16 v3, 0x20

    #@14
    shr-long v4, v0, v3

    #@16
    xor-long/2addr v4, v0

    #@17
    long-to-int v3, v4

    #@18
    return v3
.end method

.method public intersects(Ljava/util/BitSet;)Z
    .locals 7
    .param p1, "set"    # Ljava/util/BitSet;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 875
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@3
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    #@5
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@8
    move-result v1

    #@9
    add-int/lit8 v0, v1, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@d
    .line 876
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@f
    aget-wide v2, v1, v0

    #@11
    iget-object v1, p1, Ljava/util/BitSet;->words:[J

    #@13
    aget-wide v4, v1, v0

    #@15
    and-long/2addr v2, v4

    #@16
    const-wide/16 v4, 0x0

    #@18
    cmp-long v1, v2, v4

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 877
    const/4 v1, 0x1

    #@1d
    return v1

    #@1e
    .line 875
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@20
    goto :goto_0

    #@21
    .line 878
    :cond_1
    return v6
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 862
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public length()I
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 847
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 848
    return v1

    #@6
    .line 850
    :cond_0
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    mul-int/lit8 v0, v0, 0x40

    #@c
    .line 851
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@e
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@10
    add-int/lit8 v2, v2, -0x1

    #@12
    aget-wide v2, v1, v2

    #@14
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@17
    move-result v1

    #@18
    rsub-int/lit8 v1, v1, 0x40

    #@1a
    .line 850
    add-int/2addr v0, v1

    #@1b
    return v0
.end method

.method public nextClearBit(I)I
    .locals 8
    .param p1, "fromIndex"    # I

    #@0
    .prologue
    .line 734
    if-gez p1, :cond_0

    #@2
    .line 735
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "fromIndex < 0: "

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-direct {v1, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 737
    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@1f
    .line 739
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    #@22
    move-result v0

    #@23
    .line 740
    .local v0, "u":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@25
    if-lt v0, v1, :cond_1

    #@27
    .line 741
    return p1

    #@28
    .line 743
    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@2a
    aget-wide v4, v1, v0

    #@2c
    not-long v4, v4

    #@2d
    const-wide/16 v6, -0x1

    #@2f
    shl-long/2addr v6, p1

    #@30
    and-long v2, v4, v6

    #@32
    .line 746
    .local v2, "word":J
    :goto_0
    const-wide/16 v4, 0x0

    #@34
    cmp-long v1, v2, v4

    #@36
    if-eqz v1, :cond_2

    #@38
    .line 747
    mul-int/lit8 v1, v0, 0x40

    #@3a
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@3d
    move-result v4

    #@3e
    add-int/2addr v1, v4

    #@3f
    return v1

    #@40
    .line 748
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@42
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@44
    if-ne v0, v1, :cond_3

    #@46
    .line 749
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@48
    mul-int/lit8 v1, v1, 0x40

    #@4a
    return v1

    #@4b
    .line 750
    :cond_3
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@4d
    aget-wide v4, v1, v0

    #@4f
    not-long v2, v4

    #@50
    goto :goto_0
.end method

.method public nextSetBit(I)I
    .locals 9
    .param p1, "fromIndex"    # I

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 702
    if-gez p1, :cond_0

    #@3
    .line 703
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@5
    new-instance v4, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v5, "fromIndex < 0: "

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-direct {v1, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 705
    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@20
    .line 707
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    #@23
    move-result v0

    #@24
    .line 708
    .local v0, "u":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@26
    if-lt v0, v1, :cond_1

    #@28
    .line 709
    return v8

    #@29
    .line 711
    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@2b
    aget-wide v4, v1, v0

    #@2d
    const-wide/16 v6, -0x1

    #@2f
    shl-long/2addr v6, p1

    #@30
    and-long v2, v4, v6

    #@32
    .line 714
    .local v2, "word":J
    :goto_0
    const-wide/16 v4, 0x0

    #@34
    cmp-long v1, v2, v4

    #@36
    if-eqz v1, :cond_2

    #@38
    .line 715
    mul-int/lit8 v1, v0, 0x40

    #@3a
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@3d
    move-result v4

    #@3e
    add-int/2addr v1, v4

    #@3f
    return v1

    #@40
    .line 716
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@42
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@44
    if-ne v0, v1, :cond_3

    #@46
    .line 717
    return v8

    #@47
    .line 718
    :cond_3
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@49
    aget-wide v2, v1, v0

    #@4b
    goto :goto_0
.end method

.method public or(Ljava/util/BitSet;)V
    .locals 8
    .param p1, "set"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 928
    if-ne p0, p1, :cond_0

    #@2
    .line 929
    return-void

    #@3
    .line 931
    :cond_0
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@5
    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    #@7
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@a
    move-result v1

    #@b
    .line 933
    .local v1, "wordsInCommon":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@d
    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    #@f
    if-ge v2, v3, :cond_1

    #@11
    .line 934
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    #@13
    invoke-direct {p0, v2}, Ljava/util/BitSet;->ensureCapacity(I)V

    #@16
    .line 935
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    #@18
    iput v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@1a
    .line 939
    :cond_1
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1d
    .line 940
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    #@1f
    aget-wide v4, v2, v0

    #@21
    iget-object v3, p1, Ljava/util/BitSet;->words:[J

    #@23
    aget-wide v6, v3, v0

    #@25
    or-long/2addr v4, v6

    #@26
    aput-wide v4, v2, v0

    #@28
    .line 939
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 943
    :cond_2
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    #@2d
    if-ge v1, v2, :cond_3

    #@2f
    .line 944
    iget-object v2, p1, Ljava/util/BitSet;->words:[J

    #@31
    .line 945
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    #@33
    .line 946
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    #@35
    sub-int/2addr v4, v1

    #@36
    .line 944
    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@39
    .line 949
    :cond_3
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@3c
    .line 927
    return-void
.end method

.method public previousClearBit(I)I
    .locals 11
    .param p1, "fromIndex"    # I

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 814
    if-gez p1, :cond_1

    #@3
    .line 815
    if-ne p1, v10, :cond_0

    #@5
    .line 816
    return v10

    #@6
    .line 817
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@8
    .line 818
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "fromIndex < -1: "

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    .line 817
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 821
    :cond_1
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@23
    .line 823
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    #@26
    move-result v0

    #@27
    .line 824
    .local v0, "u":I
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    #@29
    if-lt v0, v4, :cond_2

    #@2b
    .line 825
    return p1

    #@2c
    .line 827
    :cond_2
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    #@2e
    aget-wide v4, v4, v0

    #@30
    not-long v4, v4

    #@31
    add-int/lit8 v6, p1, 0x1

    #@33
    neg-int v6, v6

    #@34
    const-wide/16 v8, -0x1

    #@36
    ushr-long v6, v8, v6

    #@38
    and-long v2, v4, v6

    #@3a
    .local v2, "word":J
    move v1, v0

    #@3b
    .line 830
    .end local v0    # "u":I
    .local v1, "u":I
    :goto_0
    const-wide/16 v4, 0x0

    #@3d
    cmp-long v4, v2, v4

    #@3f
    if-eqz v4, :cond_3

    #@41
    .line 831
    add-int/lit8 v4, v1, 0x1

    #@43
    mul-int/lit8 v4, v4, 0x40

    #@45
    add-int/lit8 v4, v4, -0x1

    #@47
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@4a
    move-result v5

    #@4b
    sub-int/2addr v4, v5

    #@4c
    return v4

    #@4d
    .line 832
    :cond_3
    add-int/lit8 v0, v1, -0x1

    #@4f
    .end local v1    # "u":I
    .restart local v0    # "u":I
    if-nez v1, :cond_4

    #@51
    .line 833
    return v10

    #@52
    .line 834
    :cond_4
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    #@54
    aget-wide v4, v4, v0

    #@56
    not-long v2, v4

    #@57
    move v1, v0

    #@58
    .end local v0    # "u":I
    .restart local v1    # "u":I
    goto :goto_0
.end method

.method public previousSetBit(I)I
    .locals 11
    .param p1, "fromIndex"    # I

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 776
    if-gez p1, :cond_1

    #@3
    .line 777
    if-ne p1, v10, :cond_0

    #@5
    .line 778
    return v10

    #@6
    .line 779
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@8
    .line 780
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "fromIndex < -1: "

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    .line 779
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 783
    :cond_1
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@23
    .line 785
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    #@26
    move-result v0

    #@27
    .line 786
    .local v0, "u":I
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    #@29
    if-lt v0, v4, :cond_2

    #@2b
    .line 787
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    #@2e
    move-result v4

    #@2f
    add-int/lit8 v4, v4, -0x1

    #@31
    return v4

    #@32
    .line 789
    :cond_2
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    #@34
    aget-wide v4, v4, v0

    #@36
    add-int/lit8 v6, p1, 0x1

    #@38
    neg-int v6, v6

    #@39
    const-wide/16 v8, -0x1

    #@3b
    ushr-long v6, v8, v6

    #@3d
    and-long v2, v4, v6

    #@3f
    .local v2, "word":J
    move v1, v0

    #@40
    .line 792
    .end local v0    # "u":I
    .local v1, "u":I
    :goto_0
    const-wide/16 v4, 0x0

    #@42
    cmp-long v4, v2, v4

    #@44
    if-eqz v4, :cond_3

    #@46
    .line 793
    add-int/lit8 v4, v1, 0x1

    #@48
    mul-int/lit8 v4, v4, 0x40

    #@4a
    add-int/lit8 v4, v4, -0x1

    #@4c
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@4f
    move-result v5

    #@50
    sub-int/2addr v4, v5

    #@51
    return v4

    #@52
    .line 794
    :cond_3
    add-int/lit8 v0, v1, -0x1

    #@54
    .end local v1    # "u":I
    .restart local v0    # "u":I
    if-nez v1, :cond_4

    #@56
    .line 795
    return v10

    #@57
    .line 796
    :cond_4
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    #@59
    aget-wide v2, v4, v0

    #@5b
    move v1, v0

    #@5c
    .end local v0    # "u":I
    .restart local v1    # "u":I
    goto :goto_0
.end method

.method public set(I)V
    .locals 6
    .param p1, "bitIndex"    # I

    #@0
    .prologue
    .line 437
    if-gez p1, :cond_0

    #@2
    .line 438
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "bitIndex < 0: "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 440
    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    #@1f
    move-result v0

    #@20
    .line 441
    .local v0, "wordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    #@23
    .line 443
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    #@25
    aget-wide v2, v1, v0

    #@27
    const-wide/16 v4, 0x1

    #@29
    shl-long/2addr v4, p1

    #@2a
    or-long/2addr v2, v4

    #@2b
    aput-wide v2, v1, v0

    #@2d
    .line 445
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@30
    .line 436
    return-void
.end method

.method public set(II)V
    .locals 12
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    const-wide/16 v10, -0x1

    #@2
    .line 475
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    #@5
    .line 477
    if-ne p1, p2, :cond_0

    #@7
    .line 478
    return-void

    #@8
    .line 481
    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    #@b
    move-result v6

    #@c
    .line 482
    .local v6, "startWordIndex":I
    add-int/lit8 v7, p2, -0x1

    #@e
    invoke-static {v7}, Ljava/util/BitSet;->wordIndex(I)I

    #@11
    move-result v0

    #@12
    .line 483
    .local v0, "endWordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    #@15
    .line 485
    shl-long v2, v10, p1

    #@17
    .line 486
    .local v2, "firstWordMask":J
    neg-int v7, p2

    #@18
    ushr-long v4, v10, v7

    #@1a
    .line 487
    .local v4, "lastWordMask":J
    if-ne v6, v0, :cond_1

    #@1c
    .line 489
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    #@1e
    aget-wide v8, v7, v6

    #@20
    and-long v10, v2, v4

    #@22
    or-long/2addr v8, v10

    #@23
    aput-wide v8, v7, v6

    #@25
    .line 503
    :goto_0
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@28
    .line 474
    return-void

    #@29
    .line 493
    :cond_1
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    #@2b
    aget-wide v8, v7, v6

    #@2d
    or-long/2addr v8, v2

    #@2e
    aput-wide v8, v7, v6

    #@30
    .line 496
    add-int/lit8 v1, v6, 0x1

    #@32
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@34
    .line 497
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    #@36
    aput-wide v10, v7, v1

    #@38
    .line 496
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 500
    :cond_2
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    #@3d
    aget-wide v8, v7, v0

    #@3f
    or-long/2addr v8, v4

    #@40
    aput-wide v8, v7, v0

    #@42
    goto :goto_0
.end method

.method public set(IIZ)V
    .locals 0
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # Z

    #@0
    .prologue
    .line 519
    if-eqz p3, :cond_0

    #@2
    .line 520
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->set(II)V

    #@5
    .line 518
    :goto_0
    return-void

    #@6
    .line 522
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->clear(II)V

    #@9
    goto :goto_0
.end method

.method public set(IZ)V
    .locals 0
    .param p1, "bitIndex"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 457
    if-eqz p2, :cond_0

    #@2
    .line 458
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    #@5
    .line 456
    :goto_0
    return-void

    #@6
    .line 460
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->clear(I)V

    #@9
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1039
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    #@2
    array-length v0, v0

    #@3
    mul-int/lit8 v0, v0, 0x40

    #@5
    return v0
.end method

.method public stream()Ljava/util/stream/IntStream;
    .locals 3

    #@0
    .prologue
    .line 1230
    new-instance v0, Ljava/util/BitSet$-java_util_stream_IntStream_stream__LambdaImpl0;

    #@2
    invoke-direct {v0, p0}, Ljava/util/BitSet$-java_util_stream_IntStream_stream__LambdaImpl0;-><init>(Ljava/util/BitSet;)V

    #@5
    .line 1233
    const/16 v1, 0x4055

    #@7
    .line 1235
    const/4 v2, 0x0

    #@8
    .line 1229
    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public toByteArray()[B
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    const/16 v10, 0x8

    #@5
    .line 291
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    #@7
    .line 292
    .local v4, "n":I
    if-nez v4, :cond_0

    #@9
    .line 293
    new-array v5, v5, [B

    #@b
    return-object v5

    #@c
    .line 294
    :cond_0
    add-int/lit8 v5, v4, -0x1

    #@e
    mul-int/lit8 v3, v5, 0x8

    #@10
    .line 295
    .local v3, "len":I
    iget-object v5, p0, Ljava/util/BitSet;->words:[J

    #@12
    add-int/lit8 v8, v4, -0x1

    #@14
    aget-wide v6, v5, v8

    #@16
    .local v6, "x":J
    :goto_0
    cmp-long v5, v6, v12

    #@18
    if-eqz v5, :cond_1

    #@1a
    .line 296
    add-int/lit8 v3, v3, 0x1

    #@1c
    .line 295
    ushr-long/2addr v6, v10

    #@1d
    goto :goto_0

    #@1e
    .line 297
    :cond_1
    new-array v1, v3, [B

    #@20
    .line 298
    .local v1, "bytes":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@23
    move-result-object v5

    #@24
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@26
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@29
    move-result-object v0

    #@2a
    .line 299
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    #@2b
    .local v2, "i":I
    :goto_1
    add-int/lit8 v5, v4, -0x1

    #@2d
    if-ge v2, v5, :cond_2

    #@2f
    .line 300
    iget-object v5, p0, Ljava/util/BitSet;->words:[J

    #@31
    aget-wide v8, v5, v2

    #@33
    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@36
    .line 299
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_1

    #@39
    .line 301
    :cond_2
    iget-object v5, p0, Ljava/util/BitSet;->words:[J

    #@3b
    add-int/lit8 v8, v4, -0x1

    #@3d
    aget-wide v6, v5, v8

    #@3f
    :goto_2
    cmp-long v5, v6, v12

    #@41
    if-eqz v5, :cond_3

    #@43
    .line 302
    const-wide/16 v8, 0xff

    #@45
    and-long/2addr v8, v6

    #@46
    long-to-int v5, v8

    #@47
    int-to-byte v5, v5

    #@48
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@4b
    .line 301
    ushr-long/2addr v6, v10

    #@4c
    goto :goto_2

    #@4d
    .line 303
    :cond_3
    return-object v1
.end method

.method public toLongArray()[J
    .locals 2

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    #@2
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1173
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@4
    .line 1175
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    #@6
    const/16 v5, 0x80

    #@8
    if-le v4, v5, :cond_1

    #@a
    .line 1176
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    #@d
    move-result v3

    #@e
    .line 1177
    .local v3, "numBits":I
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    mul-int/lit8 v4, v3, 0x6

    #@12
    add-int/lit8 v4, v4, 0x2

    #@14
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@17
    .line 1178
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    #@19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 1180
    invoke-virtual {p0, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    #@1f
    move-result v2

    #@20
    .line 1181
    .local v2, "i":I
    const/4 v4, -0x1

    #@21
    if-eq v2, v4, :cond_2

    #@23
    .line 1182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    .line 1183
    add-int/lit8 v4, v2, 0x1

    #@28
    invoke-virtual {p0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    #@2b
    move-result v2

    #@2c
    :goto_1
    if-ltz v2, :cond_2

    #@2e
    .line 1184
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    #@31
    move-result v1

    #@32
    .line 1185
    .local v1, "endOfRun":I
    :cond_0
    const-string/jumbo v4, ", "

    #@35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    .line 1186
    add-int/lit8 v2, v2, 0x1

    #@3e
    if-lt v2, v1, :cond_0

    #@40
    .line 1183
    add-int/lit8 v4, v2, 0x1

    #@42
    invoke-virtual {p0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    #@45
    move-result v2

    #@46
    goto :goto_1

    #@47
    .line 1176
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v1    # "endOfRun":I
    .end local v2    # "i":I
    .end local v3    # "numBits":I
    :cond_1
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    #@49
    mul-int/lit8 v3, v4, 0x40

    #@4b
    .restart local v3    # "numBits":I
    goto :goto_0

    #@4c
    .line 1190
    .restart local v0    # "b":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    :cond_2
    const/16 v4, 0x7d

    #@4e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    .line 1191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    return-object v4
.end method

.method public xor(Ljava/util/BitSet;)V
    .locals 8
    .param p1, "set"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 967
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@2
    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    #@4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    .line 969
    .local v1, "wordsInCommon":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@a
    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    #@c
    if-ge v2, v3, :cond_0

    #@e
    .line 970
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    #@10
    invoke-direct {p0, v2}, Ljava/util/BitSet;->ensureCapacity(I)V

    #@13
    .line 971
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    #@15
    iput v2, p0, Ljava/util/BitSet;->wordsInUse:I

    #@17
    .line 975
    :cond_0
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@1a
    .line 976
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    #@1c
    aget-wide v4, v2, v0

    #@1e
    iget-object v3, p1, Ljava/util/BitSet;->words:[J

    #@20
    aget-wide v6, v3, v0

    #@22
    xor-long/2addr v4, v6

    #@23
    aput-wide v4, v2, v0

    #@25
    .line 975
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 979
    :cond_1
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    #@2a
    if-ge v1, v2, :cond_2

    #@2c
    .line 980
    iget-object v2, p1, Ljava/util/BitSet;->words:[J

    #@2e
    .line 981
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    #@30
    .line 982
    iget v4, p1, Ljava/util/BitSet;->wordsInUse:I

    #@32
    sub-int/2addr v4, v1

    #@33
    .line 980
    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@36
    .line 984
    :cond_2
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    #@39
    .line 985
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    #@3c
    .line 966
    return-void
.end method
