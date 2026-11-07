.class Ljava/lang/invoke/Transformers$InsertArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsertArguments"
.end annotation


# instance fields
.field private final greylist-max-o pos:I

.field private final greylist-max-o range1:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o range2:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o values:[Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)V
    .registers 6
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "pos"    # I
    .param p3, "values"    # [Ljava/lang/Object;

    .line 1719
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    array-length v1, p3

    add-int/2addr v1, p2

    invoke-virtual {v0, p2, v1}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1720
    iput-object p1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 1721
    iput p2, p0, Ljava/lang/invoke/Transformers$InsertArguments;->pos:I

    .line 1722
    iput-object p3, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    .line 1724
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$InsertArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1725
    .local v0, "type":Ljava/lang/invoke/MethodType;
    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1726
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    invoke-static {v0, p2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1727
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 12
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1731
    iget-object v0, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1734
    .local v0, "calleeFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1738
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1739
    .local v1, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    iget v2, p0, Ljava/lang/invoke/Transformers$InsertArguments;->pos:I

    iget-object v3, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v3, v3, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v4, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v4, v4, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v1, v0, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1742
    const/4 v2, 0x0

    .line 1743
    .local v2, "referencesCopied":I
    const/4 v3, 0x0

    .line 1744
    .local v3, "bytesCopied":I
    iget-object v4, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    .line 1745
    .local v4, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    iget-object v6, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v5, v6, :cond_ca

    .line 1746
    iget v6, p0, Ljava/lang/invoke/Transformers$InsertArguments;->pos:I

    add-int/2addr v6, v5

    aget-object v6, v4, v6

    .line 1747
    .local v6, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v6}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v7

    .line 1748
    .local v7, "typeChar":C
    const/16 v8, 0x4c

    if-ne v7, v8, :cond_4c

    .line 1749
    iget-object v8, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v8, v8, v5

    invoke-virtual {v1, v8, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1750
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c6

    .line 1752
    :cond_4c
    sparse-switch v7, :sswitch_data_e6

    goto/16 :goto_c1

    .line 1754
    :sswitch_51
    iget-object v8, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 1755
    goto :goto_c1

    .line 1763
    :sswitch_5f
    iget-object v8, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Short;

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    invoke-virtual {v1, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 1764
    goto :goto_c1

    .line 1769
    :sswitch_6d
    iget-object v8, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 1770
    goto :goto_c1

    .line 1766
    :sswitch_7b
    iget-object v8, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 1767
    goto :goto_c1

    .line 1772
    :sswitch_89
    iget-object v8, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v1, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 1773
    goto :goto_c1

    .line 1775
    :sswitch_97
    iget-object v8, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_c1

    .line 1760
    :sswitch_a5
    iget-object v8, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Character;

    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v8

    invoke-virtual {v1, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 1761
    goto :goto_c1

    .line 1757
    :sswitch_b3
    iget-object v8, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    invoke-virtual {v1, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 1758
    nop

    .line 1778
    :goto_c1
    invoke-static {v6}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v8

    add-int/2addr v3, v8

    .line 1745
    .end local v6    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "typeChar":C
    :goto_c6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2f

    .line 1783
    .end local v5    # "i":I
    :cond_ca
    iget-object v5, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    if-eqz v5, :cond_dd

    .line 1784
    iget-object v5, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    iget-object v6, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v6, v6, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    add-int/2addr v6, v2

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v7, v7, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    add-int/2addr v7, v3

    invoke-virtual {p1, v0, v5, v6, v7}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1791
    :cond_dd
    iget-object v5, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-static {v5, v0}, Ljava/lang/invoke/Transformers$InsertArguments;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 1792
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1793
    return-void

    :sswitch_data_e6
    .sparse-switch
        0x42 -> :sswitch_b3
        0x43 -> :sswitch_a5
        0x44 -> :sswitch_97
        0x46 -> :sswitch_89
        0x49 -> :sswitch_7b
        0x4a -> :sswitch_6d
        0x53 -> :sswitch_5f
        0x5a -> :sswitch_51
    .end sparse-switch
.end method
