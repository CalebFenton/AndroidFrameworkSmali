.class Ljava/lang/invoke/Transformers$FoldArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FoldArguments"
.end annotation


# instance fields
.field private final greylist-max-o combiner:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o combinerArgs:Ldalvik/system/EmulatedStackFrame$Range;

.field private final blacklist leadingArgs:Ldalvik/system/EmulatedStackFrame$Range;

.field private final blacklist position:I

.field private final greylist-max-o referencesOffset:I

.field private final greylist-max-o stackFrameOffset:I

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;

.field private final blacklist trailingArgs:Ldalvik/system/EmulatedStackFrame$Range;


# direct methods
.method constructor blacklist <init>(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)V
    .registers 7
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "position"    # I
    .param p3, "combiner"    # Ljava/lang/invoke/MethodHandle;

    .line 1638
    invoke-static {p1, p2, p3}, Ljava/lang/invoke/Transformers$FoldArguments;->deriveType(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1640
    iput-object p1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 1641
    iput-object p3, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combiner:Ljava/lang/invoke/MethodHandle;

    .line 1642
    iput p2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->position:I

    .line 1644
    nop

    .line 1645
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$FoldArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, p2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combinerArgs:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1646
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$FoldArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$FoldArguments;->leadingArgs:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1647
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$FoldArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0, p2}, Ldalvik/system/EmulatedStackFrame$Range;->from(Ljava/lang/invoke/MethodType;I)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$FoldArguments;->trailingArgs:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1649
    invoke-virtual {p3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    .line 1650
    .local v0, "combinerRType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_47

    .line 1651
    iput v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    .line 1652
    iput v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    goto :goto_5b

    .line 1653
    :cond_47
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1654
    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v2

    iput v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    .line 1655
    iput v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    goto :goto_5b

    .line 1658
    :cond_56
    iput v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    .line 1659
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    .line 1661
    :goto_5b
    return-void
.end method

.method private static blacklist deriveType(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "position"    # I
    .param p2, "combiner"    # Ljava/lang/invoke/MethodHandle;

    .line 1702
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_11

    .line 1703
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0

    .line 1705
    :cond_11
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 9
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1666
    iget-object v0, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combiner:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1667
    .local v0, "combinerFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combinerArgs:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1668
    iget-object v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combiner:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v1, v0}, Ljava/lang/invoke/Transformers$FoldArguments;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 1671
    iget-object v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v1

    .line 1672
    .local v1, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v3, p0, Ljava/lang/invoke/Transformers$FoldArguments;->leadingArgs:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v1, v3, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1676
    iget v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    if-nez v2, :cond_2c

    iget v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    if-eqz v2, :cond_5b

    .line 1677
    :cond_2c
    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1678
    .local v2, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    .line 1679
    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1680
    .local v3, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    iget v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->position:I

    iget-object v5, p0, Ljava/lang/invoke/Transformers$FoldArguments;->leadingArgs:Ldalvik/system/EmulatedStackFrame$Range;

    iget v5, v5, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v6, p0, Ljava/lang/invoke/Transformers$FoldArguments;->leadingArgs:Ldalvik/system/EmulatedStackFrame$Range;

    iget v6, v6, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v3, v1, v4, v5, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1684
    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    iget v5, p0, Ljava/lang/invoke/Transformers$FoldArguments;->position:I

    aget-object v4, v4, v5

    invoke-static {v2, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1688
    .end local v2    # "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .end local v3    # "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    :cond_5b
    iget-object v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->trailingArgs:Ldalvik/system/EmulatedStackFrame$Range;

    iget-object v3, p0, Ljava/lang/invoke/Transformers$FoldArguments;->leadingArgs:Ldalvik/system/EmulatedStackFrame$Range;

    iget v3, v3, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->leadingArgs:Ldalvik/system/EmulatedStackFrame$Range;

    iget v4, v4, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    iget v5, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1695
    iget-object v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v2, v1}, Ljava/lang/invoke/Transformers$FoldArguments;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 1696
    invoke-virtual {v1, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1697
    return-void
.end method
