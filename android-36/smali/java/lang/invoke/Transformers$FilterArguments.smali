.class Ljava/lang/invoke/Transformers$FilterArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterArguments"
.end annotation


# instance fields
.field private final greylist-max-o filters:[Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o pos:I

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method varargs constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V
    .registers 5
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "pos"    # I
    .param p3, "filters"    # [Ljava/lang/invoke/MethodHandle;

    .line 1461
    invoke-static {p1, p2, p3}, Ljava/lang/invoke/Transformers$FilterArguments;->deriveType(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1463
    iput-object p1, p0, Ljava/lang/invoke/Transformers$FilterArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 1464
    iput p2, p0, Ljava/lang/invoke/Transformers$FilterArguments;->pos:I

    .line 1465
    iput-object p3, p0, Ljava/lang/invoke/Transformers$FilterArguments;->filters:[Ljava/lang/invoke/MethodHandle;

    .line 1466
    return-void
.end method

.method private static greylist-max-o deriveType(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filters"    # [Ljava/lang/invoke/MethodHandle;

    .line 1469
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Class;

    .line 1470
    .local v0, "filterArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_24

    .line 1471
    aget-object v2, p2, v1

    .line 1472
    .local v2, "filter":Ljava/lang/invoke/MethodHandle;
    if-eqz v2, :cond_17

    .line 1473
    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_21

    .line 1476
    :cond_17
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1470
    .end local v2    # "filter":Ljava/lang/invoke/MethodHandle;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1480
    .end local v1    # "i":I
    :cond_24
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    array-length v2, p2

    add-int/2addr v2, p1

    invoke-virtual {v1, p1, v2, v0}, Ljava/lang/invoke/MethodType;->replaceParameterTypes(II[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 13
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1485
    new-instance v0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1486
    .local v0, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1488
    iget-object v1, p0, Ljava/lang/invoke/Transformers$FilterArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v1

    .line 1489
    .local v1, "transformedFrame":Ldalvik/system/EmulatedStackFrame;
    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1490
    .local v2, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1492
    iget-object v3, p0, Ljava/lang/invoke/Transformers$FilterArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1493
    .local v3, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    array-length v5, v3

    if-ge v4, v5, :cond_7a

    .line 1496
    aget-object v5, v3, v4

    .line 1498
    .local v5, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v6, p0, Ljava/lang/invoke/Transformers$FilterArguments;->pos:I

    if-ge v4, v6, :cond_30

    .line 1499
    const/4 v6, 0x0

    .local v6, "filter":Ljava/lang/invoke/MethodHandle;
    goto :goto_42

    .line 1500
    .end local v6    # "filter":Ljava/lang/invoke/MethodHandle;
    :cond_30
    iget v6, p0, Ljava/lang/invoke/Transformers$FilterArguments;->pos:I

    iget-object v7, p0, Ljava/lang/invoke/Transformers$FilterArguments;->filters:[Ljava/lang/invoke/MethodHandle;

    array-length v7, v7

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_3a

    .line 1501
    const/4 v6, 0x0

    .restart local v6    # "filter":Ljava/lang/invoke/MethodHandle;
    goto :goto_42

    .line 1503
    .end local v6    # "filter":Ljava/lang/invoke/MethodHandle;
    :cond_3a
    iget-object v6, p0, Ljava/lang/invoke/Transformers$FilterArguments;->filters:[Ljava/lang/invoke/MethodHandle;

    iget v7, p0, Ljava/lang/invoke/Transformers$FilterArguments;->pos:I

    sub-int v7, v4, v7

    aget-object v6, v6, v7

    .line 1506
    .restart local v6    # "filter":Ljava/lang/invoke/MethodHandle;
    :goto_42
    if-eqz v6, :cond_74

    .line 1509
    invoke-virtual {v6}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-static {v7}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v7

    .line 1512
    .local v7, "filterFrame":Ldalvik/system/EmulatedStackFrame;
    new-instance v8, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1513
    .local v8, "filterWriter":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v8, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1514
    invoke-virtual {v6}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v0, v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1516
    invoke-static {v6, v7}, Ljava/lang/invoke/Transformers$FilterArguments;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 1519
    new-instance v9, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v9}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1520
    .local v9, "filterReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v9, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1521
    invoke-virtual {v9}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->makeReturnValueAccessor()V

    .line 1522
    invoke-static {v9, v2, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1523
    .end local v7    # "filterFrame":Ldalvik/system/EmulatedStackFrame;
    .end local v8    # "filterWriter":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .end local v9    # "filterReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    goto :goto_77

    .line 1526
    :cond_74
    invoke-static {v0, v2, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1493
    .end local v5    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "filter":Ljava/lang/invoke/MethodHandle;
    :goto_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 1530
    .end local v4    # "i":I
    :cond_7a
    iget-object v4, p0, Ljava/lang/invoke/Transformers$FilterArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-static {v4, v1}, Ljava/lang/invoke/Transformers$FilterArguments;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 1531
    invoke-virtual {v1, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1532
    return-void
.end method
