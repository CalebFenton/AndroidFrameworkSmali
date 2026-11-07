.class public interface abstract Landroid/content/pm/parsing/result/ParseResult;
.super Ljava/lang/Object;
.source "ParseResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist getErrorCode()I
.end method

.method public abstract blacklist getErrorMessage()Ljava/lang/String;
.end method

.method public abstract blacklist getException()Ljava/lang/Exception;
.end method

.method public abstract blacklist getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation
.end method

.method public abstract blacklist isError()Z
.end method

.method public abstract blacklist isSuccess()Z
.end method
