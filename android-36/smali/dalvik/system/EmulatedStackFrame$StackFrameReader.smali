.class public Ldalvik/system/EmulatedStackFrame$StackFrameReader;
.super Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;
.source "EmulatedStackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/EmulatedStackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackFrameReader"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 511
    invoke-direct {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o nextBoolean()Z
    .registers 3

    .line 537
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->checkReadType(Ljava/lang/Class;)V

    .line 538
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    .line 539
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public greylist-max-o nextByte()B
    .registers 2

    .line 513
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->checkReadType(Ljava/lang/Class;)V

    .line 514
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    .line 515
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public greylist-max-o nextChar()C
    .registers 2

    .line 531
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->checkReadType(Ljava/lang/Class;)V

    .line 532
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    .line 533
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public greylist-max-o nextDouble()D
    .registers 3

    .line 555
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->checkReadType(Ljava/lang/Class;)V

    .line 556
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    .line 557
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o nextFloat()F
    .registers 2

    .line 549
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->checkReadType(Ljava/lang/Class;)V

    .line 550
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    .line 551
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public greylist-max-o nextInt()I
    .registers 2

    .line 519
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->checkReadType(Ljava/lang/Class;)V

    .line 520
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    .line 521
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public greylist-max-o nextLong()J
    .registers 3

    .line 525
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->checkReadType(Ljava/lang/Class;)V

    .line 526
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    .line 527
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o nextReference(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 561
    .local p1, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->checkReadType(Ljava/lang/Class;)V

    .line 562
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    .line 563
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->frame:Ldalvik/system/EmulatedStackFrame;

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->-$$Nest$fgetreferences(Ldalvik/system/EmulatedStackFrame;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->referencesOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->referencesOffset:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public greylist-max-o nextShort()S
    .registers 2

    .line 543
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->checkReadType(Ljava/lang/Class;)V

    .line 544
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->argumentIdx:I

    .line 545
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method
