.class final Ldalvik/system/TransactionAbortError;
.super Ljava/lang/InternalError;
.source "TransactionAbortError.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@3
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@3
    .line 50
    invoke-virtual {p0, p2}, Ldalvik/system/TransactionAbortError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@6
    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 59
    if-nez p1, :cond_0

    #@3
    :goto_0
    invoke-direct {p0, v0, p1}, Ldalvik/system/TransactionAbortError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6
    .line 58
    return-void

    #@7
    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method
