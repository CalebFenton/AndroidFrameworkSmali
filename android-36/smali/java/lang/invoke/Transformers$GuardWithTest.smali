.class Ljava/lang/invoke/Transformers$GuardWithTest;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GuardWithTest"
.end annotation


# instance fields
.field private final greylist-max-o fallback:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o test:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o testArgsRange:Ldalvik/system/EmulatedStackFrame$Range;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .registers 7
    .param p1, "test"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "fallback"    # Ljava/lang/invoke/MethodHandle;

    .line 286
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 288
    iput-object p1, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->test:Ljava/lang/invoke/MethodHandle;

    .line 289
    iput-object p2, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->target:Ljava/lang/invoke/MethodHandle;

    .line 290
    iput-object p3, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->fallback:Ljava/lang/invoke/MethodHandle;

    .line 293
    nop

    .line 294
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->testArgsRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 295
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 6
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->test:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 300
    .local v0, "testFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->testArgsRange:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 303
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 304
    .local v1, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 305
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->makeReturnValueAccessor()V

    .line 306
    iget-object v2, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->test:Ljava/lang/invoke/MethodHandle;

    invoke-static {v2, v0}, Ljava/lang/invoke/Transformers$GuardWithTest;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 307
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v2

    .line 308
    .local v2, "testResult":Z
    if-eqz v2, :cond_2c

    .line 309
    iget-object v3, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->target:Ljava/lang/invoke/MethodHandle;

    invoke-static {v3, p1}, Ljava/lang/invoke/Transformers$GuardWithTest;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    goto :goto_31

    .line 311
    :cond_2c
    iget-object v3, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->fallback:Ljava/lang/invoke/MethodHandle;

    invoke-static {v3, p1}, Ljava/lang/invoke/Transformers$GuardWithTest;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 313
    :goto_31
    return-void
.end method
