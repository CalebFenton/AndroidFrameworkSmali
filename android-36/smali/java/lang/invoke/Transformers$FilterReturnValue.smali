.class Ljava/lang/invoke/Transformers$FilterReturnValue;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterReturnValue"
.end annotation


# instance fields
.field private final greylist-max-o allArgs:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o filter:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .registers 5
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "filter"    # Ljava/lang/invoke/MethodHandle;

    .line 460
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 462
    iput-object p1, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->target:Ljava/lang/invoke/MethodHandle;

    .line 463
    iput-object p2, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->filter:Ljava/lang/invoke/MethodHandle;

    .line 465
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$FilterReturnValue;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->allArgs:Ldalvik/system/EmulatedStackFrame$Range;

    .line 466
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 7
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 474
    .local v0, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->allArgs:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 475
    iget-object v1, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->target:Ljava/lang/invoke/MethodHandle;

    invoke-static {v1, v0}, Ljava/lang/invoke/Transformers$FilterReturnValue;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 479
    iget-object v1, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->filter:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v1

    .line 480
    .local v1, "filterFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v2, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v2

    .line 481
    .local v2, "filterArgumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_44

    .line 482
    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 483
    .local v3, "returnValueReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v3, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    .line 485
    new-instance v4, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 486
    .local v4, "filterWriter":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v4, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 487
    invoke-static {v3, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 491
    .end local v3    # "returnValueReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .end local v4    # "filterWriter":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    :cond_44
    iget-object v3, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->filter:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v3, v1}, Ljava/lang/invoke/Transformers$FilterReturnValue;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 492
    invoke-virtual {v1, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 493
    return-void
.end method
