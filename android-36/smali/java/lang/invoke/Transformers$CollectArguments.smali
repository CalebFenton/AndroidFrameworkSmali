.class Ljava/lang/invoke/Transformers$CollectArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollectArguments"
.end annotation


# instance fields
.field private final greylist-max-o collector:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o collectorRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o pos:I

.field private final greylist-max-o range1:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o range2:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o referencesOffset:I

.field private final greylist-max-o stackFrameOffset:I

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodType;)V
    .registers 9
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "collector"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "pos"    # I
    .param p4, "adapterType"    # Ljava/lang/invoke/MethodType;

    .line 1561
    invoke-direct {p0, p4}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1563
    iput-object p1, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 1564
    iput-object p2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collector:Ljava/lang/invoke/MethodHandle;

    .line 1565
    iput p3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->pos:I

    .line 1567
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 1568
    .local v0, "numFilterArgs":I
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    add-int v2, p3, v0

    invoke-static {v1, p3, v2}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collectorRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1570
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p3}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1571
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    add-int v3, p3, v0

    invoke-static {v1, v3}, Ldalvik/system/EmulatedStackFrame$Range;->from(Ljava/lang/invoke/MethodType;I)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1575
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v1

    .line 1576
    .local v1, "collectorRType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_45

    .line 1577
    iput v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    .line 1578
    iput v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    goto :goto_59

    .line 1579
    :cond_45
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 1580
    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v3

    iput v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    .line 1581
    iput v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    goto :goto_59

    .line 1583
    :cond_54
    iput v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    .line 1584
    const/4 v2, 0x1

    iput v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    .line 1586
    :goto_59
    return-void
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

    .line 1591
    iget-object v0, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collector:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1592
    .local v0, "filterFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collectorRange:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1593
    iget-object v1, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collector:Ljava/lang/invoke/MethodHandle;

    invoke-static {v1, v0}, Ljava/lang/invoke/Transformers$CollectArguments;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 1596
    iget-object v1, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v1

    .line 1597
    .local v1, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v1, v3, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1600
    iget v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    if-nez v2, :cond_2c

    iget v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    if-eqz v2, :cond_5b

    .line 1601
    :cond_2c
    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1602
    .local v2, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    .line 1603
    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1604
    .local v3, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    iget v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->pos:I

    iget-object v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v5, v5, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v6, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v6, v6, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v3, v1, v4, v5, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1605
    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    iget v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->pos:I

    aget-object v4, v4, v5

    invoke-static {v2, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1608
    .end local v2    # "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .end local v3    # "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    :cond_5b
    iget-object v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    iget-object v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v3, v3, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v4, v4, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    iget v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1614
    iget-object v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-static {v2, v1}, Ljava/lang/invoke/Transformers$CollectArguments;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 1615
    invoke-virtual {v1, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1616
    return-void
.end method
