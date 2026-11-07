.class Ljava/lang/invoke/Transformers$Loop;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Loop"
.end annotation


# instance fields
.field final blacklist finis:[Ljava/lang/invoke/MethodHandle;

.field final blacklist inits:[Ljava/lang/invoke/MethodHandle;

.field final blacklist loopVarsRange:Ldalvik/system/EmulatedStackFrame$Range;

.field final blacklist loopVarsType:Ljava/lang/invoke/MethodType;

.field final blacklist preds:[Ljava/lang/invoke/MethodHandle;

.field final blacklist steps:[Ljava/lang/invoke/MethodHandle;

.field final blacklist suffixRange:Ldalvik/system/EmulatedStackFrame$Range;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/util/List;[Ljava/lang/invoke/MethodHandle;[Ljava/lang/invoke/MethodHandle;[Ljava/lang/invoke/MethodHandle;[Ljava/lang/invoke/MethodHandle;)V
    .registers 8
    .param p3, "finit"    # [Ljava/lang/invoke/MethodHandle;
    .param p4, "fstep"    # [Ljava/lang/invoke/MethodHandle;
    .param p5, "fpred"    # [Ljava/lang/invoke/MethodHandle;
    .param p6, "ffini"    # [Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/invoke/MethodHandle;",
            "[",
            "Ljava/lang/invoke/MethodHandle;",
            "[",
            "Ljava/lang/invoke/MethodHandle;",
            "[",
            "Ljava/lang/invoke/MethodHandle;",
            ")V"
        }
    .end annotation

    .line 2884
    .local p1, "loopReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "commonSuffix":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p1, p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 2886
    iput-object p3, p0, Ljava/lang/invoke/Transformers$Loop;->inits:[Ljava/lang/invoke/MethodHandle;

    .line 2887
    iput-object p4, p0, Ljava/lang/invoke/Transformers$Loop;->steps:[Ljava/lang/invoke/MethodHandle;

    .line 2888
    iput-object p5, p0, Ljava/lang/invoke/Transformers$Loop;->preds:[Ljava/lang/invoke/MethodHandle;

    .line 2889
    iput-object p6, p0, Ljava/lang/invoke/Transformers$Loop;->finis:[Ljava/lang/invoke/MethodHandle;

    .line 2891
    invoke-static {p3}, Ljava/lang/invoke/Transformers$Loop;->deduceLoopVarsType([Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Loop;->loopVarsType:Ljava/lang/invoke/MethodType;

    .line 2892
    iget-object v0, p0, Ljava/lang/invoke/Transformers$Loop;->loopVarsType:Ljava/lang/invoke/MethodType;

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Loop;->loopVarsRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 2893
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Loop;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Loop;->suffixRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 2894
    return-void
.end method

.method private static blacklist deduceLoopVarsType([Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;
    .registers 7
    .param p0, "inits"    # [Ljava/lang/invoke/MethodHandle;

    .line 2920
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2921
    .local v0, "loopVarTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 2922
    .local v3, "init":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v4

    .line 2923
    .local v4, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_1b

    .line 2924
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2921
    .end local v3    # "init":Ljava/lang/invoke/MethodHandle;
    .end local v4    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2927
    :cond_1e
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method private blacklist doFinish(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V
    .registers 5
    .param p1, "fini"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p3, "loopVarsFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3007
    nop

    .line 3008
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Ljava/lang/invoke/Transformers$Loop;->prepareFrame(Ljava/lang/invoke/MethodType;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 3009
    .local v0, "finiFrame":Ldalvik/system/EmulatedStackFrame;
    invoke-virtual {p0, p1, v0}, Ljava/lang/invoke/Transformers$Loop;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 3010
    invoke-virtual {v0, p2}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 3011
    return-void
.end method

.method private blacklist doPredicate(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)Z
    .registers 7
    .param p1, "pred"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p3, "loopVarsFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2995
    nop

    .line 2996
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Ljava/lang/invoke/Transformers$Loop;->prepareFrame(Ljava/lang/invoke/MethodType;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 2997
    .local v0, "predFrame":Ldalvik/system/EmulatedStackFrame;
    invoke-virtual {p0, p1, v0}, Ljava/lang/invoke/Transformers$Loop;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 2999
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 3000
    .local v1, "predReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    .line 3001
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v2

    return v2
.end method

.method private blacklist doStep(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V
    .registers 9
    .param p1, "step"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p3, "loopVarsFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p4, "loopVarsWriter"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2980
    nop

    .line 2981
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Ljava/lang/invoke/Transformers$Loop;->prepareFrame(Ljava/lang/invoke/MethodType;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 2982
    .local v0, "stepFrame":Ldalvik/system/EmulatedStackFrame;
    invoke-virtual {p0, p1, v0}, Ljava/lang/invoke/Transformers$Loop;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 2984
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    .line 2985
    .local v1, "loopVarType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_27

    .line 2986
    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 2987
    .local v2, "stepReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    .line 2988
    invoke-static {v2, p4, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 2990
    .end local v2    # "stepReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    :cond_27
    return-void
.end method

.method private blacklist init(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V
    .registers 13
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p2, "loopVarsFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p3, "loopVarsWriter"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2933
    invoke-virtual {p3, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 2934
    iget-object v0, p0, Ljava/lang/invoke/Transformers$Loop;->inits:[Ljava/lang/invoke/MethodHandle;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_3a

    aget-object v4, v0, v3

    .line 2935
    .local v4, "init":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-static {v5}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v5

    .line 2936
    .local v5, "initFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v6, p0, Ljava/lang/invoke/Transformers$Loop;->suffixRange:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v5, v6, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 2938
    invoke-virtual {p0, v4, v5}, Ljava/lang/invoke/Transformers$Loop;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 2940
    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v6

    .line 2941
    .local v6, "loopVarType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_37

    .line 2942
    new-instance v7, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 2943
    .local v7, "initReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v7, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v8

    invoke-virtual {v8}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    .line 2944
    invoke-static {v7, p3, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 2934
    .end local v4    # "init":Ljava/lang/invoke/MethodHandle;
    .end local v5    # "initFrame":Ldalvik/system/EmulatedStackFrame;
    .end local v6    # "loopVarType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "initReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2947
    :cond_3a
    return-void
.end method

.method private blacklist prepareFrame(Ljava/lang/invoke/MethodType;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame;
    .registers 8
    .param p1, "mt"    # Ljava/lang/invoke/MethodType;
    .param p2, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p3, "loopVarsFrame"    # Ldalvik/system/EmulatedStackFrame;

    .line 2963
    invoke-static {p1}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 2966
    .local v0, "frame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$Loop;->loopVarsRange:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 2969
    iget-object v1, p0, Ljava/lang/invoke/Transformers$Loop;->suffixRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget-object v2, p0, Ljava/lang/invoke/Transformers$Loop;->loopVarsRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v2, v2, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v3, p0, Ljava/lang/invoke/Transformers$Loop;->loopVarsRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v3, v3, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {p2, v0, v1, v2, v3}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 2973
    return-object v0
.end method


# virtual methods
.method public blacklist transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 7
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2898
    iget-object v0, p0, Ljava/lang/invoke/Transformers$Loop;->loopVarsType:Ljava/lang/invoke/MethodType;

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 2899
    .local v0, "loopVarsFrame":Ldalvik/system/EmulatedStackFrame;
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 2901
    .local v1, "loopVarsWriter":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-direct {p0, p1, v0, v1}, Ljava/lang/invoke/Transformers$Loop;->init(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V

    .line 2904
    :goto_e
    invoke-virtual {v1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 2905
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Loop;->steps:[Ljava/lang/invoke/MethodHandle;

    array-length v3, v3

    if-ge v2, v3, :cond_33

    .line 2909
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Loop;->steps:[Ljava/lang/invoke/MethodHandle;

    aget-object v3, v3, v2

    invoke-direct {p0, v3, p1, v0, v1}, Ljava/lang/invoke/Transformers$Loop;->doStep(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V

    .line 2910
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Loop;->preds:[Ljava/lang/invoke/MethodHandle;

    aget-object v3, v3, v2

    invoke-direct {p0, v3, p1, v0}, Ljava/lang/invoke/Transformers$Loop;->doPredicate(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)Z

    move-result v3

    .line 2911
    .local v3, "keepGoing":Z
    if-nez v3, :cond_30

    .line 2912
    iget-object v4, p0, Ljava/lang/invoke/Transformers$Loop;->finis:[Ljava/lang/invoke/MethodHandle;

    aget-object v4, v4, v2

    invoke-direct {p0, v4, p1, v0}, Ljava/lang/invoke/Transformers$Loop;->doFinish(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V

    .line 2913
    return-void

    .line 2905
    .end local v3    # "keepGoing":Z
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .end local v2    # "i":I
    :cond_33
    goto :goto_e
.end method
