.class Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;
.super Ljava/lang/Object;
.source "ExceptionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExceptionInfoElement"
.end annotation


# instance fields
.field blacklist mExceptionClass:Ljava/lang/String;

.field blacklist mMessage:Ljava/lang/String;

.field blacklist mStackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;->mExceptionClass:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;->mMessage:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;->mStackTrace:[Ljava/lang/StackTraceElement;

    .line 45
    return-void
.end method
