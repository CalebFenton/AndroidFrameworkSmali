.class Ljava/lang/StackFrameInfo;
.super Ljava/lang/Object;
.source "StackFrameInfo.java"

# interfaces
.implements Ljava/lang/StackWalker$StackFrame;


# instance fields
.field private blacklist bci:I

.field private blacklist declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist fileName:Ljava/lang/String;

.field private blacklist lineNumber:I

.field private blacklist methodName:Ljava/lang/String;

.field private blacklist methodType:Ljava/lang/invoke/MethodType;

.field private final blacklist retainClassRef:Z

.field private volatile blacklist ste:Ljava/lang/StackTraceElement;


# direct methods
.method constructor blacklist <init>(Ljava/lang/StackWalker;)V
    .registers 3
    .param p1, "walker"    # Ljava/lang/StackWalker;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget-boolean v0, p1, Ljava/lang/StackWalker;->retainClassRef:Z

    iput-boolean v0, p0, Ljava/lang/StackFrameInfo;->retainClassRef:Z

    .line 61
    return-void
.end method

.method constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "retainClassRef"    # Z

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean p1, p0, Ljava/lang/StackFrameInfo;->retainClassRef:Z

    .line 66
    return-void
.end method

.method private blacklist ensureRetainClassRefEnabled()V
    .registers 3

    .line 168
    iget-boolean v0, p0, Ljava/lang/StackFrameInfo;->retainClassRef:Z

    if-eqz v0, :cond_5

    .line 171
    return-void

    .line 169
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No access to RETAIN_CLASS_REFERENCE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist declaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Ljava/lang/StackFrameInfo;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api getByteCodeIndex()I
    .registers 2

    .line 115
    invoke-virtual {p0}, Ljava/lang/StackFrameInfo;->isNativeMethod()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 116
    const/4 v0, -0x1

    return v0

    .line 118
    :cond_8
    iget v0, p0, Ljava/lang/StackFrameInfo;->bci:I

    return v0
.end method

.method public whitelist test-api getClassName()Ljava/lang/String;
    .registers 2

    .line 81
    invoke-virtual {p0}, Ljava/lang/StackFrameInfo;->declaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/StackFrameInfo;->ensureRetainClassRefEnabled()V

    .line 87
    invoke-virtual {p0}, Ljava/lang/StackFrameInfo;->declaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDescriptor()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Ljava/lang/StackFrameInfo;->methodType:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->toMethodDescriptorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFileName()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Ljava/lang/StackFrameInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 131
    invoke-virtual {p0}, Ljava/lang/StackFrameInfo;->isNativeMethod()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 132
    const/4 v0, -0x2

    return v0

    .line 136
    :cond_8
    iget v0, p0, Ljava/lang/StackFrameInfo;->lineNumber:I

    return v0
.end method

.method public whitelist test-api getMethodName()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Ljava/lang/StackFrameInfo;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMethodType()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 99
    invoke-direct {p0}, Ljava/lang/StackFrameInfo;->ensureRetainClassRefEnabled()V

    .line 102
    iget-object v0, p0, Ljava/lang/StackFrameInfo;->methodType:Ljava/lang/invoke/MethodType;

    return-object v0
.end method

.method public whitelist test-api isNativeMethod()Z
    .registers 3

    .line 145
    iget v0, p0, Ljava/lang/StackFrameInfo;->lineNumber:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api toStackTraceElement()Ljava/lang/StackTraceElement;
    .registers 3

    .line 155
    iget-object v0, p0, Ljava/lang/StackFrameInfo;->ste:Ljava/lang/StackTraceElement;

    .line 156
    .local v0, "s":Ljava/lang/StackTraceElement;
    if-nez v0, :cond_16

    .line 157
    monitor-enter p0

    .line 158
    :try_start_5
    iget-object v1, p0, Ljava/lang/StackFrameInfo;->ste:Ljava/lang/StackTraceElement;

    move-object v0, v1

    .line 159
    if-nez v0, :cond_11

    .line 160
    invoke-static {p0}, Ljava/lang/StackTraceElement;->of(Ljava/lang/StackFrameInfo;)Ljava/lang/StackTraceElement;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Ljava/lang/StackFrameInfo;->ste:Ljava/lang/StackTraceElement;

    .line 162
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1

    .line 164
    :cond_16
    :goto_16
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 150
    invoke-virtual {p0}, Ljava/lang/StackFrameInfo;->toStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
