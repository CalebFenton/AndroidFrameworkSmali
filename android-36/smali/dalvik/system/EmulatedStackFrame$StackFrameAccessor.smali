.class public Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;
.super Ljava/lang/Object;
.source "EmulatedStackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/EmulatedStackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackFrameAccessor"
.end annotation


# static fields
.field private static final greylist-max-o RETURN_VALUE_IDX:I = -0x2


# instance fields
.field protected greylist-max-o argumentIdx:I

.field protected greylist-max-o frame:Ldalvik/system/EmulatedStackFrame;

.field protected greylist-max-o frameBuf:Ljava/nio/ByteBuffer;

.field private greylist-max-o numArgs:I

.field protected greylist-max-o referencesOffset:I


# direct methods
.method protected constructor greylist-max-o <init>()V
    .registers 3

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->referencesOffset:I

    .line 341
    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->argumentIdx:I

    .line 343
    const/4 v1, 0x0

    iput-object v1, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->frameBuf:Ljava/nio/ByteBuffer;

    .line 344
    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->numArgs:I

    .line 345
    return-void
.end method

.method private static blacklist checkAssignable(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 381
    .local p0, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "actualType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 385
    return-void

    .line 382
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 5
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 415
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    sparse-switch v0, :sswitch_data_52

    goto :goto_50

    .line 420
    :sswitch_8
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 421
    goto :goto_50

    .line 429
    :sswitch_10
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 430
    goto :goto_50

    .line 417
    :sswitch_18
    invoke-virtual {p0, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 418
    goto :goto_50

    .line 435
    :sswitch_20
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 436
    goto :goto_50

    .line 432
    :sswitch_28
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 433
    goto :goto_50

    .line 438
    :sswitch_30
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 439
    goto :goto_50

    .line 441
    :sswitch_38
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_50

    .line 426
    :sswitch_40
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 427
    goto :goto_50

    .line 423
    :sswitch_48
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 424
    nop

    .line 444
    :goto_50
    return-void

    nop

    :sswitch_data_52
    .sparse-switch
        0x42 -> :sswitch_48
        0x43 -> :sswitch_40
        0x44 -> :sswitch_38
        0x46 -> :sswitch_30
        0x49 -> :sswitch_28
        0x4a -> :sswitch_20
        0x4c -> :sswitch_18
        0x53 -> :sswitch_10
        0x5a -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist getCurrentArgumentType()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 373
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->argumentIdx:I

    iget v1, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->numArgs:I

    if-ge v0, v1, :cond_2a

    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->argumentIdx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    .line 376
    iget v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->argumentIdx:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1b

    .line 377
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->frame:Ldalvik/system/EmulatedStackFrame;

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->-$$Nest$fgettype(Ldalvik/system/EmulatedStackFrame;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    goto :goto_29

    :cond_1b
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->frame:Ldalvik/system/EmulatedStackFrame;

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->-$$Nest$fgettype(Ldalvik/system/EmulatedStackFrame;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->argumentIdx:I

    aget-object v0, v0, v1

    .line 376
    :goto_29
    return-object v0

    .line 374
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->argumentIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;
    .registers 3
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;
    .registers 7
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p2, "argumentIdx"    # I
    .param p3, "referencesOffset"    # I
    .param p4, "frameOffset"    # I

    .line 358
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->frame:Ldalvik/system/EmulatedStackFrame;

    if-eq v0, p1, :cond_25

    .line 360
    iput-object p1, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->frame:Ldalvik/system/EmulatedStackFrame;

    .line 361
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->frame:Ldalvik/system/EmulatedStackFrame;

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->-$$Nest$fgetstackFrame(Ldalvik/system/EmulatedStackFrame;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->frameBuf:Ljava/nio/ByteBuffer;

    .line 362
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->frame:Ldalvik/system/EmulatedStackFrame;

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->-$$Nest$fgettype(Ldalvik/system/EmulatedStackFrame;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->numArgs:I

    .line 365
    :cond_25
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 366
    iput p3, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->referencesOffset:I

    .line 367
    iput p2, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->argumentIdx:I

    .line 369
    return-object p0
.end method

.method protected blacklist checkReadType(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 392
    .local p1, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->getCurrentArgumentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->checkAssignable(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 393
    return-void
.end method

.method protected blacklist checkWriteType(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 388
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->getCurrentArgumentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->checkAssignable(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 389
    return-void
.end method

.method public greylist-max-o makeReturnValueAccessor()V
    .registers 5

    .line 401
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->frame:Ldalvik/system/EmulatedStackFrame;

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->-$$Nest$fgettype(Ldalvik/system/EmulatedStackFrame;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    .line 402
    .local v0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, -0x2

    iput v1, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->argumentIdx:I

    .line 406
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 407
    iget-object v1, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->frameBuf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->frameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2f

    .line 409
    :cond_24
    iget-object v1, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->frame:Ldalvik/system/EmulatedStackFrame;

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame;->-$$Nest$fgetreferences(Ldalvik/system/EmulatedStackFrame;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->referencesOffset:I

    .line 411
    :goto_2f
    return-void
.end method
