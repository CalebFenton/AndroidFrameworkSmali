.class public Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;
.super Ldalvik/system/EmulatedStackFrame$StackFrameReader;
.source "EmulatedStackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/EmulatedStackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RandomOrderStackFrameReader"
.end annotation


# instance fields
.field blacklist frameOffsets:[I

.field blacklist referencesOffsets:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 571
    invoke-direct {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    return-void
.end method

.method private blacklist buildTables(Ljava/lang/invoke/MethodType;)V
    .registers 8
    .param p1, "methodType"    # Ljava/lang/invoke/MethodType;

    .line 576
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v0

    .line 577
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;->frameOffsets:[I

    .line 578
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;->referencesOffsets:[I

    .line 579
    const/4 v1, 0x0

    .line 580
    .local v1, "frameOffset":I
    const/4 v2, 0x0

    .line 581
    .local v2, "referenceOffset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    array-length v4, v0

    if-ge v3, v4, :cond_2f

    .line 582
    iget-object v4, p0, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;->frameOffsets:[I

    aput v1, v4, v3

    .line 583
    iget-object v4, p0, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;->referencesOffsets:[I

    aput v2, v4, v3

    .line 585
    aget-object v4, v0, v3

    .line 586
    .local v4, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 587
    invoke-static {v4}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_2c

    .line 589
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    .line 581
    .end local v4    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 592
    .end local v3    # "i":I
    :cond_2f
    return-void
.end method


# virtual methods
.method public blacklist attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;
    .registers 6
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p2, "argumentIdx"    # I
    .param p3, "referencesOffset"    # I
    .param p4, "frameOffset"    # I

    .line 597
    invoke-super {p0, p1, p2, p3, p4}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 598
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;->buildTables(Ljava/lang/invoke/MethodType;)V

    .line 599
    return-object p0
.end method

.method public blacklist moveTo(I)Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;
    .registers 4
    .param p1, "argumentIndex"    # I

    .line 608
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;->referencesOffsets:[I

    aget v0, v0, p1

    iput v0, p0, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;->referencesOffset:I

    .line 609
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;->frameBuf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;->frameOffsets:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 610
    iput p1, p0, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;->argumentIdx:I

    .line 611
    return-object p0
.end method
