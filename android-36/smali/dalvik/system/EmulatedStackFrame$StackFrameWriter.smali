.class public Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
.super Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;
.source "EmulatedStackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/EmulatedStackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackFrameWriter"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 451
    invoke-direct {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o putNextBoolean(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 477
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->checkWriteType(Ljava/lang/Class;)V

    .line 478
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    .line 479
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 480
    return-void
.end method

.method public greylist-max-o putNextByte(B)V
    .registers 3
    .param p1, "value"    # B

    .line 453
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->checkWriteType(Ljava/lang/Class;)V

    .line 454
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    .line 455
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 456
    return-void
.end method

.method public greylist-max-o putNextChar(C)V
    .registers 3
    .param p1, "value"    # C

    .line 471
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->checkWriteType(Ljava/lang/Class;)V

    .line 472
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    .line 473
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 474
    return-void
.end method

.method public greylist-max-o putNextDouble(D)V
    .registers 4
    .param p1, "value"    # D

    .line 495
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->checkWriteType(Ljava/lang/Class;)V

    .line 496
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    .line 497
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 498
    return-void
.end method

.method public greylist-max-o putNextFloat(F)V
    .registers 3
    .param p1, "value"    # F

    .line 489
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->checkWriteType(Ljava/lang/Class;)V

    .line 490
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    .line 491
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 492
    return-void
.end method

.method public greylist-max-o putNextInt(I)V
    .registers 3
    .param p1, "value"    # I

    .line 459
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->checkWriteType(Ljava/lang/Class;)V

    .line 460
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    .line 461
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 462
    return-void
.end method

.method public greylist-max-o putNextLong(J)V
    .registers 4
    .param p1, "value"    # J

    .line 465
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->checkWriteType(Ljava/lang/Class;)V

    .line 466
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    .line 467
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 468
    return-void
.end method

.method public greylist-max-o putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 501
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->checkWriteType(Ljava/lang/Class;)V

    .line 502
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    .line 503
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->frame:Ldalvik/system/EmulatedStackFrame;

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->-$$Nest$fgetreferences(Ldalvik/system/EmulatedStackFrame;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->referencesOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->referencesOffset:I

    aput-object p1, v0, v1

    .line 504
    return-void
.end method

.method public greylist-max-o putNextShort(S)V
    .registers 3
    .param p1, "value"    # S

    .line 483
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->checkWriteType(Ljava/lang/Class;)V

    .line 484
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->argumentIdx:I

    .line 485
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 486
    return-void
.end method
