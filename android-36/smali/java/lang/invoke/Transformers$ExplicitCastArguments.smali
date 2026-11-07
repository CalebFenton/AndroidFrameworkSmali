.class Ljava/lang/invoke/Transformers$ExplicitCastArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExplicitCastArguments"
.end annotation


# instance fields
.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;

    .line 2191
    invoke-direct {p0, p2}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 2192
    iput-object p1, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 2193
    return-void
.end method

.method private static blacklist badCast(Ljava/lang/Class;Ljava/lang/Class;)V
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

    .line 2248
    .local p0, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o box(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 7
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2785
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 2786
    .local v0, "boxed":Ljava/lang/Object;
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v1

    sparse-switch v1, :sswitch_data_5c

    .line 2812
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    goto :goto_54

    .line 2788
    :sswitch_c
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2789
    goto :goto_54

    .line 2797
    :sswitch_15
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 2798
    goto :goto_54

    .line 2803
    :sswitch_1e
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2804
    goto :goto_54

    .line 2800
    :sswitch_27
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2801
    goto :goto_54

    .line 2806
    :sswitch_30
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 2807
    goto :goto_54

    .line 2809
    :sswitch_39
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 2810
    goto :goto_54

    .line 2794
    :sswitch_42
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 2795
    goto :goto_54

    .line 2791
    :sswitch_4b
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 2792
    nop

    .line 2815
    :goto_54
    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2816
    return-void

    :sswitch_data_5c
    .sparse-switch
        0x42 -> :sswitch_4b
        0x43 -> :sswitch_42
        0x44 -> :sswitch_39
        0x46 -> :sswitch_30
        0x49 -> :sswitch_27
        0x4a -> :sswitch_1e
        0x53 -> :sswitch_15
        0x5a -> :sswitch_c
    .end sparse-switch
.end method

.method private static greylist-max-o explicitCast(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 6
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2823
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2824
    invoke-static {p0, p2, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 2825
    return-void

    .line 2828
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2829
    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2831
    invoke-static {p0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastPrimitives(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_3d

    .line 2834
    :cond_1a
    invoke-static {p0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->box(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_3d

    .line 2838
    :cond_1e
    invoke-virtual {p0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2839
    .local v0, "ref":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2841
    invoke-static {v0, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unbox(Ljava/lang/Object;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_3d

    .line 2842
    :cond_2c
    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 2845
    invoke-virtual {p2, v0, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_3d

    .line 2848
    :cond_36
    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2851
    .end local v0    # "ref":Ljava/lang/Object;
    :goto_3d
    return-void
.end method

.method private greylist-max-o explicitCastArguments(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V
    .registers 10
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p2, "targetFrame"    # Ldalvik/system/EmulatedStackFrame;

    .line 2207
    new-instance v0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 2208
    .local v0, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 2209
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 2210
    .local v1, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v1, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 2212
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    .line 2213
    .local v2, "fromTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v3, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    .line 2214
    .local v3, "toTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    array-length v5, v2

    if-ge v4, v5, :cond_30

    .line 2215
    aget-object v5, v2, v4

    aget-object v6, v3, v4

    invoke-static {v0, v5, v1, v6}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCast(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 2214
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 2217
    .end local v4    # "i":I
    :cond_30
    return-void
.end method

.method private static greylist-max-o explicitCastPrimitives(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 6
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2438
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p3}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    sparse-switch v0, :sswitch_data_50

    .line 2464
    invoke-static {p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    goto :goto_4f

    .line 2461
    :sswitch_b
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsByte(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->toBoolean(B)Z

    move-result v0

    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2462
    goto :goto_4f

    .line 2446
    :sswitch_17
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsShort(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)S

    move-result v0

    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 2447
    goto :goto_4f

    .line 2452
    :sswitch_1f
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsLong(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 2453
    goto :goto_4f

    .line 2449
    :sswitch_27
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsInt(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)I

    move-result v0

    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 2450
    goto :goto_4f

    .line 2455
    :sswitch_2f
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsFloat(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)F

    move-result v0

    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 2456
    goto :goto_4f

    .line 2458
    :sswitch_37
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsDouble(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 2459
    goto :goto_4f

    .line 2443
    :sswitch_3f
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsChar(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)C

    move-result v0

    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 2444
    goto :goto_4f

    .line 2440
    :sswitch_47
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsByte(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)B

    move-result v0

    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 2441
    nop

    .line 2467
    :goto_4f
    return-void

    :sswitch_data_50
    .sparse-switch
        0x42 -> :sswitch_47
        0x43 -> :sswitch_3f
        0x44 -> :sswitch_37
        0x46 -> :sswitch_2f
        0x49 -> :sswitch_27
        0x4a -> :sswitch_1f
        0x53 -> :sswitch_17
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method private greylist-max-o explicitCastReturnValue(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V
    .registers 9
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p2, "targetFrame"    # Ldalvik/system/EmulatedStackFrame;

    .line 2221
    iget-object v0, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    .line 2222
    .local v0, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v1

    .line 2223
    .local v1, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_54

    .line 2224
    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 2225
    .local v2, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 2226
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->makeReturnValueAccessor()V

    .line 2227
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_34

    .line 2228
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2229
    invoke-static {v2, v1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unboxNull(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_54

    .line 2231
    :cond_2f
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_54

    .line 2234
    :cond_34
    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 2235
    .local v3, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v3, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 2236
    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->makeReturnValueAccessor()V

    .line 2237
    iget-object v4, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCast(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 2240
    .end local v2    # "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .end local v3    # "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    :cond_54
    :goto_54
    return-void
.end method

.method private static greylist-max-o readPrimitiveAsByte(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)B
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)B"
        }
    .end annotation

    .line 2261
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    sparse-switch v0, :sswitch_data_3e

    .line 2279
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 2280
    const/4 v0, 0x0

    return v0

    .line 2277
    :sswitch_c
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    return v0

    .line 2267
    :sswitch_11
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 2271
    :sswitch_17
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 2269
    :sswitch_1e
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 2273
    :sswitch_24
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 2275
    :sswitch_2b
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 2265
    :sswitch_32
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 2263
    :sswitch_38
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    return v0

    nop

    :sswitch_data_3e
    .sparse-switch
        0x42 -> :sswitch_38
        0x43 -> :sswitch_32
        0x44 -> :sswitch_2b
        0x46 -> :sswitch_24
        0x49 -> :sswitch_1e
        0x4a -> :sswitch_17
        0x53 -> :sswitch_11
        0x5a -> :sswitch_c
    .end sparse-switch
.end method

.method private static greylist-max-o readPrimitiveAsChar(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)C
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)C"
        }
    .end annotation

    .line 2286
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    sparse-switch v0, :sswitch_data_3e

    .line 2304
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 2305
    const/4 v0, 0x0

    return v0

    .line 2302
    :sswitch_c
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    return v0

    .line 2292
    :sswitch_11
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-char v0, v0

    return v0

    .line 2296
    :sswitch_17
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 2294
    :sswitch_1e
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-char v0, v0

    return v0

    .line 2298
    :sswitch_24
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 2300
    :sswitch_2b
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 2290
    :sswitch_32
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    return v0

    .line 2288
    :sswitch_37
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-char v0, v0

    return v0

    nop

    :sswitch_data_3e
    .sparse-switch
        0x42 -> :sswitch_37
        0x43 -> :sswitch_32
        0x44 -> :sswitch_2b
        0x46 -> :sswitch_24
        0x49 -> :sswitch_1e
        0x4a -> :sswitch_17
        0x53 -> :sswitch_11
        0x5a -> :sswitch_c
    .end sparse-switch
.end method

.method private static greylist-max-o readPrimitiveAsDouble(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)D
    .registers 5
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)D"
        }
    .end annotation

    .line 2410
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    const-wide/16 v1, 0x0

    sparse-switch v0, :sswitch_data_40

    .line 2428
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 2429
    return-wide v1

    .line 2426
    :sswitch_d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :cond_15
    return-wide v1

    .line 2416
    :sswitch_16
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 2420
    :sswitch_1c
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 2418
    :sswitch_22
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 2422
    :sswitch_28
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 2424
    :sswitch_2e
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    return-wide v0

    .line 2414
    :sswitch_33
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 2412
    :sswitch_39
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-double v0, v0

    return-wide v0

    nop

    :sswitch_data_40
    .sparse-switch
        0x42 -> :sswitch_39
        0x43 -> :sswitch_33
        0x44 -> :sswitch_2e
        0x46 -> :sswitch_28
        0x49 -> :sswitch_22
        0x4a -> :sswitch_1c
        0x53 -> :sswitch_16
        0x5a -> :sswitch_d
    .end sparse-switch
.end method

.method private static greylist-max-o readPrimitiveAsFloat(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)F
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    .line 2385
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_3e

    .line 2403
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 2404
    return v1

    .line 2401
    :sswitch_c
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_14

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_14
    return v1

    .line 2391
    :sswitch_15
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-float v0, v0

    return v0

    .line 2395
    :sswitch_1b
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-float v0, v0

    return v0

    .line 2393
    :sswitch_21
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 2397
    :sswitch_27
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    return v0

    .line 2399
    :sswitch_2c
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 2389
    :sswitch_32
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-float v0, v0

    return v0

    .line 2387
    :sswitch_38
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-float v0, v0

    return v0

    :sswitch_data_3e
    .sparse-switch
        0x42 -> :sswitch_38
        0x43 -> :sswitch_32
        0x44 -> :sswitch_2c
        0x46 -> :sswitch_27
        0x49 -> :sswitch_21
        0x4a -> :sswitch_1b
        0x53 -> :sswitch_15
        0x5a -> :sswitch_c
    .end sparse-switch
.end method

.method private static greylist-max-o readPrimitiveAsInt(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)I
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2335
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    sparse-switch v0, :sswitch_data_38

    .line 2353
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 2354
    const/4 v0, 0x0

    return v0

    .line 2351
    :sswitch_c
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    return v0

    .line 2341
    :sswitch_11
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    return v0

    .line 2345
    :sswitch_16
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 2343
    :sswitch_1c
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    return v0

    .line 2347
    :sswitch_21
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 2349
    :sswitch_27
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 2339
    :sswitch_2d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    return v0

    .line 2337
    :sswitch_32
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    return v0

    nop

    :sswitch_data_38
    .sparse-switch
        0x42 -> :sswitch_32
        0x43 -> :sswitch_2d
        0x44 -> :sswitch_27
        0x46 -> :sswitch_21
        0x49 -> :sswitch_1c
        0x4a -> :sswitch_16
        0x53 -> :sswitch_11
        0x5a -> :sswitch_c
    .end sparse-switch
.end method

.method private static greylist-max-o readPrimitiveAsLong(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)J
    .registers 5
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)J"
        }
    .end annotation

    .line 2360
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    const-wide/16 v1, 0x0

    sparse-switch v0, :sswitch_data_40

    .line 2378
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 2379
    return-wide v1

    .line 2376
    :sswitch_d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v1, 0x1

    :cond_15
    return-wide v1

    .line 2366
    :sswitch_16
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 2370
    :sswitch_1c
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    return-wide v0

    .line 2368
    :sswitch_21
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 2372
    :sswitch_27
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-long v0, v0

    return-wide v0

    .line 2374
    :sswitch_2d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 2364
    :sswitch_33
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 2362
    :sswitch_39
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-long v0, v0

    return-wide v0

    nop

    :sswitch_data_40
    .sparse-switch
        0x42 -> :sswitch_39
        0x43 -> :sswitch_33
        0x44 -> :sswitch_2d
        0x46 -> :sswitch_27
        0x49 -> :sswitch_21
        0x4a -> :sswitch_1c
        0x53 -> :sswitch_16
        0x5a -> :sswitch_d
    .end sparse-switch
.end method

.method private static greylist-max-o readPrimitiveAsShort(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)S
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)S"
        }
    .end annotation

    .line 2311
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    sparse-switch v0, :sswitch_data_3e

    .line 2329
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 2330
    const/4 v0, 0x0

    return v0

    .line 2327
    :sswitch_c
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    return v0

    .line 2317
    :sswitch_11
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    return v0

    .line 2321
    :sswitch_16
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 2319
    :sswitch_1d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-short v0, v0

    return v0

    .line 2323
    :sswitch_23
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 2325
    :sswitch_2a
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 2315
    :sswitch_31
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-short v0, v0

    return v0

    .line 2313
    :sswitch_37
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-short v0, v0

    return v0

    nop

    :sswitch_data_3e
    .sparse-switch
        0x42 -> :sswitch_37
        0x43 -> :sswitch_31
        0x44 -> :sswitch_2a
        0x46 -> :sswitch_23
        0x49 -> :sswitch_1d
        0x4a -> :sswitch_16
        0x53 -> :sswitch_11
        0x5a -> :sswitch_c
    .end sparse-switch
.end method

.method private static greylist-max-o throwUnexpectedType(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2243
    .local p0, "unexpectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o toBoolean(B)Z
    .registers 3
    .param p0, "value"    # B

    .line 2256
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private static blacklist unbox(Ljava/lang/Object;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 3
    .param p0, "ref"    # Ljava/lang/Object;
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2773
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_6

    .line 2774
    invoke-static {p1, p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unboxNull(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_9

    .line 2776
    :cond_6
    invoke-static {p0, p1, p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unboxNonNull(Ljava/lang/Object;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 2778
    :goto_9
    return-void
.end method

.method private static blacklist unboxNonNull(Ljava/lang/Object;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 14
    .param p0, "ref"    # Ljava/lang/Object;
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2505
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2506
    .local v0, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->asPrimitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 2507
    .local v1, "unboxedFromType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v2

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_248

    .line 2764
    invoke-static {v0, p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_247

    .line 2509
    :sswitch_18
    move-object v2, p0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2510
    .local v2, "z":Z
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v5

    sparse-switch v5, :sswitch_data_26a

    .line 2536
    invoke-static {v0, p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2537
    goto/16 :goto_247

    .line 2512
    :sswitch_2b
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2513
    goto/16 :goto_247

    .line 2518
    :sswitch_30
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 2519
    goto/16 :goto_247

    .line 2527
    :sswitch_35
    if-eqz v2, :cond_38

    goto :goto_3a

    :cond_38
    const-wide/16 v3, 0x0

    :goto_3a
    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 2528
    goto/16 :goto_247

    .line 2524
    :sswitch_3f
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 2525
    goto/16 :goto_247

    .line 2530
    :sswitch_44
    if-eqz v2, :cond_49

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 2531
    goto/16 :goto_247

    .line 2533
    :sswitch_4f
    if-eqz v2, :cond_54

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_56

    :cond_54
    const-wide/16 v3, 0x0

    :goto_56
    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 2534
    goto/16 :goto_247

    .line 2521
    :sswitch_5b
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 2522
    goto/16 :goto_247

    .line 2515
    :sswitch_60
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 2516
    goto/16 :goto_247

    .line 2573
    .end local v2    # "z":Z
    :sswitch_65
    move-object v2, p0

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    .line 2574
    .local v2, "s":S
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_28c

    .line 2600
    invoke-static {v0, p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2601
    goto/16 :goto_247

    .line 2576
    :sswitch_78
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v6, :cond_7d

    move v5, v6

    :cond_7d
    invoke-virtual {p1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2577
    goto/16 :goto_247

    .line 2582
    :sswitch_82
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 2583
    goto/16 :goto_247

    .line 2591
    :sswitch_87
    int-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 2592
    goto/16 :goto_247

    .line 2588
    :sswitch_8d
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 2589
    goto/16 :goto_247

    .line 2594
    :sswitch_92
    int-to-float v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 2595
    goto/16 :goto_247

    .line 2597
    :sswitch_98
    int-to-double v3, v2

    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 2598
    goto/16 :goto_247

    .line 2585
    :sswitch_9e
    int-to-char v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 2586
    goto/16 :goto_247

    .line 2579
    :sswitch_a4
    int-to-byte v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 2580
    goto/16 :goto_247

    .line 2668
    .end local v2    # "s":S
    :sswitch_aa
    move-object v2, p0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2669
    .local v7, "j":J
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v2

    sparse-switch v2, :sswitch_data_2ae

    .line 2695
    invoke-static {v0, p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2696
    goto/16 :goto_247

    .line 2671
    :sswitch_bd
    and-long v9, v7, v3

    cmp-long v2, v9, v3

    if-nez v2, :cond_c4

    move v5, v6

    :cond_c4
    invoke-virtual {p1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2672
    goto/16 :goto_247

    .line 2677
    :sswitch_c9
    long-to-int v2, v7

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 2678
    goto/16 :goto_247

    .line 2686
    :sswitch_d0
    invoke-virtual {p1, v7, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 2687
    goto/16 :goto_247

    .line 2683
    :sswitch_d5
    long-to-int v2, v7

    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 2684
    goto/16 :goto_247

    .line 2689
    :sswitch_db
    long-to-float v2, v7

    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 2690
    goto/16 :goto_247

    .line 2692
    :sswitch_e1
    long-to-double v2, v7

    invoke-virtual {p1, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 2693
    goto/16 :goto_247

    .line 2680
    :sswitch_e7
    long-to-int v2, v7

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 2681
    goto/16 :goto_247

    .line 2674
    :sswitch_ee
    long-to-int v2, v7

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 2675
    goto/16 :goto_247

    .line 2637
    .end local v7    # "j":J
    :sswitch_f5
    move-object v2, p0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2638
    .local v2, "i":I
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_2d0

    .line 2664
    invoke-static {v0, p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2666
    goto/16 :goto_247

    .line 2640
    :sswitch_108
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v6, :cond_10d

    move v5, v6

    :cond_10d
    invoke-virtual {p1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2641
    goto/16 :goto_247

    .line 2646
    :sswitch_112
    int-to-short v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 2647
    goto/16 :goto_247

    .line 2655
    :sswitch_118
    int-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 2656
    goto/16 :goto_247

    .line 2652
    :sswitch_11e
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 2653
    goto/16 :goto_247

    .line 2658
    :sswitch_123
    int-to-float v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 2659
    goto/16 :goto_247

    .line 2661
    :sswitch_129
    int-to-double v3, v2

    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 2662
    goto/16 :goto_247

    .line 2649
    :sswitch_12f
    int-to-char v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 2650
    goto/16 :goto_247

    .line 2643
    :sswitch_135
    int-to-byte v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 2644
    goto/16 :goto_247

    .line 2700
    .end local v2    # "i":I
    :sswitch_13b
    move-object v2, p0

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2701
    .local v2, "f":F
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_2f2

    .line 2727
    invoke-static {v0, p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2728
    goto/16 :goto_247

    .line 2703
    :sswitch_14e
    float-to-int v3, v2

    int-to-byte v3, v3

    and-int/2addr v3, v6

    if-eqz v3, :cond_154

    move v5, v6

    :cond_154
    invoke-virtual {p1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2704
    goto/16 :goto_247

    .line 2709
    :sswitch_159
    float-to-int v3, v2

    int-to-short v3, v3

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 2710
    goto/16 :goto_247

    .line 2718
    :sswitch_160
    float-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 2719
    goto/16 :goto_247

    .line 2715
    :sswitch_166
    float-to-int v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 2716
    goto/16 :goto_247

    .line 2721
    :sswitch_16c
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 2722
    goto/16 :goto_247

    .line 2724
    :sswitch_171
    float-to-double v3, v2

    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 2725
    goto/16 :goto_247

    .line 2712
    :sswitch_177
    float-to-int v3, v2

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 2713
    goto/16 :goto_247

    .line 2706
    :sswitch_17e
    float-to-int v3, v2

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 2707
    goto/16 :goto_247

    .line 2732
    .end local v2    # "f":F
    :sswitch_185
    move-object v2, p0

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 2733
    .local v2, "d":D
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_314

    .line 2759
    invoke-static {v0, p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2760
    goto/16 :goto_247

    .line 2735
    :sswitch_198
    double-to-int v4, v2

    int-to-byte v4, v4

    and-int/2addr v4, v6

    if-eqz v4, :cond_19e

    move v5, v6

    :cond_19e
    invoke-virtual {p1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2736
    goto/16 :goto_247

    .line 2741
    :sswitch_1a3
    double-to-int v4, v2

    int-to-short v4, v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 2742
    goto/16 :goto_247

    .line 2750
    :sswitch_1aa
    double-to-long v4, v2

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 2751
    goto/16 :goto_247

    .line 2747
    :sswitch_1b0
    double-to-int v4, v2

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 2748
    goto/16 :goto_247

    .line 2753
    :sswitch_1b6
    double-to-float v4, v2

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 2754
    goto/16 :goto_247

    .line 2756
    :sswitch_1bc
    invoke-virtual {p1, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 2757
    goto/16 :goto_247

    .line 2744
    :sswitch_1c1
    double-to-int v4, v2

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 2745
    goto/16 :goto_247

    .line 2738
    :sswitch_1c8
    double-to-int v4, v2

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 2739
    goto/16 :goto_247

    .line 2605
    .end local v2    # "d":D
    :sswitch_1cf
    move-object v2, p0

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 2606
    .local v2, "c":C
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_336

    .line 2632
    invoke-static {v0, p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2633
    goto/16 :goto_247

    .line 2608
    :sswitch_1e2
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v6, :cond_1e7

    move v5, v6

    :cond_1e7
    invoke-virtual {p1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2609
    goto :goto_247

    .line 2614
    :sswitch_1eb
    int-to-short v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 2615
    goto :goto_247

    .line 2623
    :sswitch_1f0
    int-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 2624
    goto :goto_247

    .line 2620
    :sswitch_1f5
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 2621
    goto :goto_247

    .line 2626
    :sswitch_1f9
    int-to-float v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 2627
    goto :goto_247

    .line 2629
    :sswitch_1fe
    int-to-double v3, v2

    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 2630
    goto :goto_247

    .line 2617
    :sswitch_203
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 2618
    goto :goto_247

    .line 2611
    :sswitch_207
    int-to-byte v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 2612
    goto :goto_247

    .line 2541
    .end local v2    # "c":C
    :sswitch_20c
    move-object v2, p0

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 2542
    .local v2, "b":B
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_358

    .line 2568
    invoke-static {v0, p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2569
    goto :goto_247

    .line 2547
    :sswitch_21e
    invoke-static {v2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->toBoolean(B)Z

    move-result v3

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2548
    goto :goto_247

    .line 2550
    :sswitch_226
    int-to-short v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 2551
    goto :goto_247

    .line 2559
    :sswitch_22b
    int-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 2560
    goto :goto_247

    .line 2556
    :sswitch_230
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 2557
    goto :goto_247

    .line 2562
    :sswitch_234
    int-to-float v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 2563
    goto :goto_247

    .line 2565
    :sswitch_239
    int-to-double v3, v2

    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 2566
    goto :goto_247

    .line 2553
    :sswitch_23e
    int-to-char v3, v2

    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 2554
    goto :goto_247

    .line 2544
    :sswitch_243
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 2545
    nop

    .line 2767
    .end local v2    # "b":B
    :goto_247
    return-void

    :sswitch_data_248
    .sparse-switch
        0x42 -> :sswitch_20c
        0x43 -> :sswitch_1cf
        0x44 -> :sswitch_185
        0x46 -> :sswitch_13b
        0x49 -> :sswitch_f5
        0x4a -> :sswitch_aa
        0x53 -> :sswitch_65
        0x5a -> :sswitch_18
    .end sparse-switch

    :sswitch_data_26a
    .sparse-switch
        0x42 -> :sswitch_60
        0x43 -> :sswitch_5b
        0x44 -> :sswitch_4f
        0x46 -> :sswitch_44
        0x49 -> :sswitch_3f
        0x4a -> :sswitch_35
        0x53 -> :sswitch_30
        0x5a -> :sswitch_2b
    .end sparse-switch

    :sswitch_data_28c
    .sparse-switch
        0x42 -> :sswitch_a4
        0x43 -> :sswitch_9e
        0x44 -> :sswitch_98
        0x46 -> :sswitch_92
        0x49 -> :sswitch_8d
        0x4a -> :sswitch_87
        0x53 -> :sswitch_82
        0x5a -> :sswitch_78
    .end sparse-switch

    :sswitch_data_2ae
    .sparse-switch
        0x42 -> :sswitch_ee
        0x43 -> :sswitch_e7
        0x44 -> :sswitch_e1
        0x46 -> :sswitch_db
        0x49 -> :sswitch_d5
        0x4a -> :sswitch_d0
        0x53 -> :sswitch_c9
        0x5a -> :sswitch_bd
    .end sparse-switch

    :sswitch_data_2d0
    .sparse-switch
        0x42 -> :sswitch_135
        0x43 -> :sswitch_12f
        0x44 -> :sswitch_129
        0x46 -> :sswitch_123
        0x49 -> :sswitch_11e
        0x4a -> :sswitch_118
        0x53 -> :sswitch_112
        0x5a -> :sswitch_108
    .end sparse-switch

    :sswitch_data_2f2
    .sparse-switch
        0x42 -> :sswitch_17e
        0x43 -> :sswitch_177
        0x44 -> :sswitch_171
        0x46 -> :sswitch_16c
        0x49 -> :sswitch_166
        0x4a -> :sswitch_160
        0x53 -> :sswitch_159
        0x5a -> :sswitch_14e
    .end sparse-switch

    :sswitch_data_314
    .sparse-switch
        0x42 -> :sswitch_1c8
        0x43 -> :sswitch_1c1
        0x44 -> :sswitch_1bc
        0x46 -> :sswitch_1b6
        0x49 -> :sswitch_1b0
        0x4a -> :sswitch_1aa
        0x53 -> :sswitch_1a3
        0x5a -> :sswitch_198
    .end sparse-switch

    :sswitch_data_336
    .sparse-switch
        0x42 -> :sswitch_207
        0x43 -> :sswitch_203
        0x44 -> :sswitch_1fe
        0x46 -> :sswitch_1f9
        0x49 -> :sswitch_1f5
        0x4a -> :sswitch_1f0
        0x53 -> :sswitch_1eb
        0x5a -> :sswitch_1e2
    .end sparse-switch

    :sswitch_data_358
    .sparse-switch
        0x42 -> :sswitch_243
        0x43 -> :sswitch_23e
        0x44 -> :sswitch_239
        0x46 -> :sswitch_234
        0x49 -> :sswitch_230
        0x4a -> :sswitch_22b
        0x53 -> :sswitch_226
        0x5a -> :sswitch_21e
    .end sparse-switch
.end method

.method private static greylist-max-o unboxNull(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 4
    .param p0, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2470
    .local p1, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_32

    .line 2496
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    goto :goto_31

    .line 2472
    :sswitch_c
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2473
    goto :goto_31

    .line 2481
    :sswitch_10
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 2482
    goto :goto_31

    .line 2487
    :sswitch_14
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 2488
    goto :goto_31

    .line 2484
    :sswitch_1a
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 2485
    goto :goto_31

    .line 2490
    :sswitch_1e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 2491
    goto :goto_31

    .line 2493
    :sswitch_23
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 2494
    goto :goto_31

    .line 2478
    :sswitch_29
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 2479
    goto :goto_31

    .line 2475
    :sswitch_2d
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 2476
    nop

    .line 2499
    :goto_31
    return-void

    :sswitch_data_32
    .sparse-switch
        0x42 -> :sswitch_2d
        0x43 -> :sswitch_29
        0x44 -> :sswitch_23
        0x46 -> :sswitch_1e
        0x49 -> :sswitch_1a
        0x4a -> :sswitch_14
        0x53 -> :sswitch_10
        0x5a -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 4
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2198
    iget-object v0, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 2200
    .local v0, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    invoke-direct {p0, p1, v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastArguments(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V

    .line 2201
    iget-object v1, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-static {v1, v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 2202
    invoke-direct {p0, p1, v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastReturnValue(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V

    .line 2203
    return-void
.end method
