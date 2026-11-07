.class Ljava/lang/invoke/Transformers$PermuteArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermuteArguments"
.end annotation


# instance fields
.field private final greylist-max-o reorder:[I

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;[I)V
    .registers 4
    .param p1, "type"    # Ljava/lang/invoke/MethodType;
    .param p2, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "reorder"    # [I

    .line 502
    invoke-direct {p0, p1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 504
    iput-object p2, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 505
    iput-object p3, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->reorder:[I

    .line 506
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 9
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 510
    new-instance v0, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;

    invoke-direct {v0}, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;-><init>()V

    .line 511
    .local v0, "reader":Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 513
    iget-object v1, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v1

    .line 514
    .local v1, "calleeFrame":Ldalvik/system/EmulatedStackFrame;
    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 515
    .local v2, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 517
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v3

    .line 518
    .local v3, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    iget-object v5, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->reorder:[I

    array-length v5, v5

    if-ge v4, v5, :cond_37

    .line 519
    iget-object v5, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->reorder:[I

    aget v5, v5, v4

    .line 520
    .local v5, "readerIndex":I
    invoke-virtual {v0, v5}, Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;->moveTo(I)Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;

    .line 521
    aget-object v6, v3, v5

    invoke-static {v0, v2, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 518
    .end local v5    # "readerIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 524
    .end local v4    # "i":I
    :cond_37
    iget-object v4, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-static {v4, v1}, Ljava/lang/invoke/Transformers$PermuteArguments;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 525
    invoke-virtual {v1, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 526
    return-void
.end method
