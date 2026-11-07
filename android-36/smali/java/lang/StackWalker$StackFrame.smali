.class public interface abstract Ljava/lang/StackWalker$StackFrame;
.super Ljava/lang/Object;
.source "StackWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StackWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StackFrame"
.end annotation


# virtual methods
.method public abstract whitelist test-api getByteCodeIndex()I
.end method

.method public abstract whitelist test-api getClassName()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public whitelist test-api getDescriptor()Ljava/lang/String;
    .registers 2

    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api getFileName()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getLineNumber()I
.end method

.method public abstract whitelist test-api getMethodName()Ljava/lang/String;
.end method

.method public whitelist test-api getMethodType()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api isNativeMethod()Z
.end method

.method public abstract whitelist test-api toStackTraceElement()Ljava/lang/StackTraceElement;
.end method
