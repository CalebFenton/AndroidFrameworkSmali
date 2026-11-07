.class Ljava/lang/invoke/Transformers$TryFinally;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TryFinally"
.end annotation


# instance fields
.field private final blacklist cleanup:Ljava/lang/invoke/MethodHandle;

.field private final blacklist target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor blacklist <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "cleanup"    # Ljava/lang/invoke/MethodHandle;

    .line 222
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 223
    iput-object p1, p0, Ljava/lang/invoke/Transformers$TryFinally;->target:Ljava/lang/invoke/MethodHandle;

    .line 224
    iput-object p2, p0, Ljava/lang/invoke/Transformers$TryFinally;->cleanup:Ljava/lang/invoke/MethodHandle;

    .line 225
    return-void
.end method

.method private blacklist prepareCleanupFrame(Ldalvik/system/EmulatedStackFrame;Ljava/lang/Throwable;)Ldalvik/system/EmulatedStackFrame;
    .registers 10
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 247
    iget-object v0, p0, Ljava/lang/invoke/Transformers$TryFinally;->cleanup:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 248
    .local v0, "cleanupFrame":Ldalvik/system/EmulatedStackFrame;
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 249
    .local v1, "cleanupWriter":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 252
    const-class v2, Ljava/lang/Throwable;

    invoke-virtual {v1, p2, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 253
    const/4 v2, 0x1

    .line 256
    .local v2, "added":I
    iget-object v3, p0, Ljava/lang/invoke/Transformers$TryFinally;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v3

    .line 257
    .local v3, "targetReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 258
    .local v4, "targetReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v4, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 259
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v3, v5, :cond_39

    .line 260
    invoke-virtual {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->makeReturnValueAccessor()V

    .line 261
    invoke-static {v4, v1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 262
    add-int/lit8 v2, v2, 0x1

    .line 264
    invoke-virtual {v4, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 269
    :cond_39
    iget-object v5, p0, Ljava/lang/invoke/Transformers$TryFinally;->cleanup:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v5

    .line 270
    .local v5, "cleanupTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_43
    array-length v6, v5

    if-eq v2, v6, :cond_4e

    .line 271
    aget-object v6, v5, v2

    invoke-static {v4, v1, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 273
    :cond_4e
    return-object v0
.end method


# virtual methods
.method protected blacklist transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 7
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Ljava/lang/invoke/Transformers$TryFinally;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v1, p1}, Ljava/lang/invoke/Transformers$TryFinally;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_22

    .line 236
    invoke-direct {p0, p1, v0}, Ljava/lang/invoke/Transformers$TryFinally;->prepareCleanupFrame(Ldalvik/system/EmulatedStackFrame;Ljava/lang/Throwable;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v1

    .line 237
    .local v1, "cleanupFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v2, p0, Ljava/lang/invoke/Transformers$TryFinally;->cleanup:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v2, v1}, Ljava/lang/invoke/Transformers$TryFinally;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 238
    iget-object v2, p0, Ljava/lang/invoke/Transformers$TryFinally;->cleanup:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_20

    .line 239
    invoke-virtual {v1, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 241
    .end local v1    # "cleanupFrame":Ldalvik/system/EmulatedStackFrame;
    :cond_20
    nop

    .line 242
    return-void

    .line 232
    :catchall_22
    move-exception v1

    .line 233
    .local v1, "t":Ljava/lang/Throwable;
    move-object v0, v1

    .line 234
    nop

    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local p0    # "this":Ljava/lang/invoke/Transformers$TryFinally;
    .end local p1    # "callerFrame":Ldalvik/system/EmulatedStackFrame;
    :try_start_25
    throw v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 236
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "throwable":Ljava/lang/Throwable;
    .restart local p0    # "this":Ljava/lang/invoke/Transformers$TryFinally;
    .restart local p1    # "callerFrame":Ldalvik/system/EmulatedStackFrame;
    :catchall_26
    move-exception v1

    invoke-direct {p0, p1, v0}, Ljava/lang/invoke/Transformers$TryFinally;->prepareCleanupFrame(Ldalvik/system/EmulatedStackFrame;Ljava/lang/Throwable;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v2

    .line 237
    .local v2, "cleanupFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v3, p0, Ljava/lang/invoke/Transformers$TryFinally;->cleanup:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v3, v2}, Ljava/lang/invoke/Transformers$TryFinally;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 238
    iget-object v3, p0, Ljava/lang/invoke/Transformers$TryFinally;->cleanup:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_41

    .line 239
    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 241
    .end local v2    # "cleanupFrame":Ldalvik/system/EmulatedStackFrame;
    :cond_41
    throw v1
.end method
