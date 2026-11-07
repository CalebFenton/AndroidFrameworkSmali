.class public abstract Ljava/nio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final greylist-max-o SPLITERATOR_CHARACTERISTICS:I = 0x4050

.field static final blacklist UNSAFE:Ljdk/internal/misc/Unsafe;


# instance fields
.field final greylist _elementSizeShift:I

.field greylist address:J

.field private greylist-max-r capacity:I

.field private greylist limit:I

.field private greylist-max-o mark:I

.field greylist position:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 189
    nop

    .line 191
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/nio/Buffer;->UNSAFE:Ljdk/internal/misc/Unsafe;

    return-void
.end method

.method constructor greylist-max-o <init>(IIIII)V
    .registers 9
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "elementSizeShift"    # I

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 252
    if-ltz p4, :cond_46

    .line 254
    iput p4, p0, Ljava/nio/Buffer;->capacity:I

    .line 255
    invoke-virtual {p0, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 256
    invoke-virtual {p0, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 257
    if-ltz p1, :cond_43

    .line 258
    if-gt p1, p2, :cond_1a

    .line 261
    iput p1, p0, Ljava/nio/Buffer;->mark:I

    goto :goto_43

    .line 259
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mark > position: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_43
    :goto_43
    iput p5, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    .line 265
    return-void

    .line 253
    :cond_46
    invoke-static {p4}, Ljava/nio/Buffer;->createCapacityException(I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method static greylist-max-o checkBounds(III)V
    .registers 6
    .param p0, "off"    # I
    .param p1, "len"    # I
    .param p2, "size"    # I

    .line 778
    or-int v0, p0, p1

    add-int v1, p0, p1

    or-int/2addr v0, v1

    add-int v1, p0, p1

    sub-int v1, p2, v1

    or-int/2addr v0, v1

    if-ltz v0, :cond_d

    .line 782
    return-void

    .line 780
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of bounds (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist createCapacityException(I)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "capacity"    # I

    .line 290
    nop

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity < 0: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist createLimitException(I)Ljava/lang/IllegalArgumentException;
    .registers 5
    .param p1, "newLimit"    # I

    .line 398
    const/4 v0, 0x0

    .line 400
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Ljava/nio/Buffer;->capacity:I

    if-le p1, v1, :cond_2b

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newLimit > capacity: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/Buffer;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 403
    :cond_2b
    nop

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newLimit < 0: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    :goto_45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist createPositionException(I)Ljava/lang/IllegalArgumentException;
    .registers 5
    .param p1, "newPosition"    # I

    .line 344
    const/4 v0, 0x0

    .line 346
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le p1, v1, :cond_2b

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newPosition > limit: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 349
    :cond_2b
    nop

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newPosition < 0: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method static blacklist createSameBufferException()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The source buffer is this buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api array()Ljava/lang/Object;
.end method

.method public abstract whitelist test-api arrayOffset()I
.end method

.method abstract blacklist base()Ljava/lang/Object;
.end method

.method public final whitelist test-api capacity()I
    .registers 2

    .line 301
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    return v0
.end method

.method final greylist-max-o checkIndex(I)I
    .registers 5
    .param p1, "i"    # I

    .line 754
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/nio/Buffer;->limit:I

    if-ge p1, v0, :cond_7

    .line 758
    return p1

    .line 756
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of bounds (limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o checkIndex(II)I
    .registers 6
    .param p1, "i"    # I
    .param p2, "nb"    # I

    .line 762
    if-ltz p1, :cond_8

    iget v0, p0, Ljava/nio/Buffer;->limit:I

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_8

    .line 766
    return p1

    .line 764
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of bounds (limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist checkScope()V
    .registers 1

    .line 792
    return-void
.end method

.method public whitelist test-api clear()Ljava/nio/Buffer;
    .registers 2

    .line 457
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 458
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 460
    return-object p0
.end method

.method final greylist-max-o discardMark()V
    .registers 2

    .line 774
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 775
    return-void
.end method

.method public abstract whitelist test-api duplicate()Ljava/nio/Buffer;
.end method

.method public whitelist test-api flip()Ljava/nio/Buffer;
    .registers 2

    .line 485
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 486
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 487
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 488
    return-object p0
.end method

.method public greylist-max-o getElementSizeShift()I
    .registers 2

    .line 814
    iget v0, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    return v0
.end method

.method public abstract whitelist test-api hasArray()Z
.end method

.method public final whitelist test-api hasRemaining()Z
    .registers 3

    .line 531
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract whitelist test-api isDirect()Z
.end method

.method public abstract whitelist test-api isReadOnly()Z
.end method

.method public final whitelist test-api limit()I
    .registers 2

    .line 362
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    return v0
.end method

.method public whitelist test-api limit(I)Ljava/nio/Buffer;
    .registers 5
    .param p1, "newLimit"    # I

    .line 380
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    if-gez p1, :cond_c

    goto :goto_d

    :cond_c
    move v1, v2

    :goto_d
    or-int/2addr v0, v1

    if-nez v0, :cond_20

    .line 382
    iput p1, p0, Ljava/nio/Buffer;->limit:I

    .line 383
    iget v0, p0, Ljava/nio/Buffer;->position:I

    if-le v0, p1, :cond_18

    iput p1, p0, Ljava/nio/Buffer;->position:I

    .line 384
    :cond_18
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    if-le v0, p1, :cond_1f

    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 385
    :cond_1f
    return-object p0

    .line 381
    :cond_20
    invoke-direct {p0, p1}, Ljava/nio/Buffer;->createLimitException(I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api mark()Ljava/nio/Buffer;
    .registers 2

    .line 416
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 417
    return-object p0
.end method

.method final greylist-max-o markValue()I
    .registers 2

    .line 770
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    return v0
.end method

.method final greylist-max-o nextGetIndex()I
    .registers 3

    .line 709
    iget v0, p0, Ljava/nio/Buffer;->position:I

    .line 710
    .local v0, "p":I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ge v0, v1, :cond_b

    .line 712
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/nio/Buffer;->position:I

    .line 713
    return v0

    .line 711
    :cond_b
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1
.end method

.method final greylist-max-o nextGetIndex(I)I
    .registers 4
    .param p1, "nb"    # I

    .line 717
    iget v0, p0, Ljava/nio/Buffer;->position:I

    .line 718
    .local v0, "p":I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    sub-int/2addr v1, v0

    if-lt v1, p1, :cond_c

    .line 720
    add-int v1, v0, p1

    iput v1, p0, Ljava/nio/Buffer;->position:I

    .line 721
    return v0

    .line 719
    :cond_c
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1
.end method

.method final greylist-max-o nextPutIndex()I
    .registers 3

    .line 732
    iget v0, p0, Ljava/nio/Buffer;->position:I

    .line 733
    .local v0, "p":I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ge v0, v1, :cond_b

    .line 735
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/nio/Buffer;->position:I

    .line 736
    return v0

    .line 734
    :cond_b
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1
.end method

.method final greylist-max-o nextPutIndex(I)I
    .registers 4
    .param p1, "nb"    # I

    .line 740
    iget v0, p0, Ljava/nio/Buffer;->position:I

    .line 741
    .local v0, "p":I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    sub-int/2addr v1, v0

    if-lt v1, p1, :cond_c

    .line 743
    add-int v1, v0, p1

    iput v1, p0, Ljava/nio/Buffer;->position:I

    .line 744
    return v0

    .line 742
    :cond_c
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api position()I
    .registers 2

    .line 310
    iget v0, p0, Ljava/nio/Buffer;->position:I

    return v0
.end method

.method public whitelist test-api position(I)Ljava/nio/Buffer;
    .registers 5
    .param p1, "newPosition"    # I

    .line 327
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    if-gez p1, :cond_c

    goto :goto_d

    :cond_c
    move v1, v2

    :goto_d
    or-int/2addr v0, v1

    if-nez v0, :cond_1a

    .line 329
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    if-le v0, p1, :cond_17

    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 330
    :cond_17
    iput p1, p0, Ljava/nio/Buffer;->position:I

    .line 331
    return-object p0

    .line 328
    :cond_1a
    invoke-direct {p0, p1}, Ljava/nio/Buffer;->createPositionException(I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public final whitelist test-api remaining()I
    .registers 3

    .line 519
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    .line 520
    .local v0, "rem":I
    if-lez v0, :cond_9

    move v1, v0

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public whitelist test-api reset()Ljava/nio/Buffer;
    .registers 3

    .line 432
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    .line 433
    .local v0, "m":I
    if-ltz v0, :cond_7

    .line 435
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 436
    return-object p0

    .line 434
    :cond_7
    new-instance v1, Ljava/nio/InvalidMarkException;

    invoke-direct {v1}, Ljava/nio/InvalidMarkException;-><init>()V

    throw v1
.end method

.method public whitelist test-api rewind()Ljava/nio/Buffer;
    .registers 2

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 508
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 509
    return-object p0
.end method

.method public abstract whitelist test-api slice()Ljava/nio/Buffer;
.end method

.method public abstract whitelist test-api slice(II)Ljava/nio/Buffer;
.end method
