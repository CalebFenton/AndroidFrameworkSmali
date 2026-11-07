.class public final Landroid/app/appsearch/AppSearchResult;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/AppSearchResult$ResultCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final whitelist RESULT_ALREADY_EXISTS:I = 0xc

.field public static final whitelist RESULT_DENIED:I = 0x9

.field public static final whitelist RESULT_INTERNAL_ERROR:I = 0x2

.field public static final whitelist RESULT_INVALID_ARGUMENT:I = 0x3

.field public static final whitelist RESULT_INVALID_SCHEMA:I = 0x7

.field public static final whitelist RESULT_IO_ERROR:I = 0x4

.field public static final whitelist RESULT_NOT_FOUND:I = 0x6

.field public static final whitelist RESULT_OK:I = 0x0

.field public static final whitelist RESULT_OUT_OF_SPACE:I = 0x5

.field public static final whitelist RESULT_RATE_LIMITED:I = 0xa

.field public static final whitelist RESULT_SECURITY_ERROR:I = 0x8

.field public static final whitelist RESULT_UNKNOWN_ERROR:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AppSearchResult"


# instance fields
.field private final blacklist mErrorMessage:Ljava/lang/String;

.field private final blacklist mResultCode:I

.field private final blacklist mResultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TValueType;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITValueType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/app/appsearch/AppSearchResult;->mResultCode:I

    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/appsearch/AppSearchResult;->mResultValue:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/app/appsearch/AppSearchResult;->mErrorMessage:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static whitelist newFailedResult(ILjava/lang/String;)Landroid/app/appsearch/AppSearchResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueType:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/AppSearchResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Landroid/app/appsearch/AppSearchResult;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist newFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueType:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/appsearch/AppSearchResult<",
            "*>;)",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot convert a success result to a failed result"

    .line 3
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v0, p0}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(ILjava/lang/String;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueType:",
            "Ljava/lang/Object;",
            ">(TValueType;)",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/AppSearchResult;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, p0, v2}, Landroid/app/appsearch/AppSearchResult;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static blacklist throwableToFailedResult(Ljava/lang/Throwable;)Landroid/app/appsearch/AppSearchResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroid/app/appsearch/exceptions/AppSearchException;

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    move-object v1, p0

    .line 6
    check-cast v1, Landroid/app/appsearch/exceptions/AppSearchException;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/app/appsearch/exceptions/AppSearchException;->getResultCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x6

    .line 13
    if-ne v1, v2, :cond_f

    .line 14
    .line 15
    goto :goto_16

    .line 16
    :cond_f
    const-string v1, "AppSearchResult"

    .line 17
    .line 18
    const-string v2, "Converting throwable to failed result."

    .line 19
    .line 20
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :goto_16
    if-eqz v0, :cond_1f

    .line 24
    .line 25
    check-cast p0, Landroid/app/appsearch/exceptions/AppSearchException;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/appsearch/exceptions/AppSearchException;->toAppSearchResult()Landroid/app/appsearch/AppSearchResult;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    instance-of v1, p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    if-nez v1, :cond_45

    .line 43
    .line 44
    instance-of v1, p0, Ljava/lang/NullPointerException;

    .line 45
    .line 46
    if-eqz v1, :cond_30

    .line 47
    .line 48
    goto :goto_45

    .line 49
    :cond_30
    instance-of v1, p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    if-eqz v1, :cond_36

    .line 52
    .line 53
    const/4 v1, 0x3

    .line 54
    goto :goto_46

    .line 55
    :cond_36
    instance-of v1, p0, Ljava/io/IOException;

    .line 56
    .line 57
    if-eqz v1, :cond_3c

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    goto :goto_46

    .line 61
    :cond_3c
    instance-of v1, p0, Ljava/lang/SecurityException;

    .line 62
    .line 63
    if-eqz v1, :cond_43

    .line 64
    .line 65
    const/16 v1, 0x8

    .line 66
    .line 67
    goto :goto_46

    .line 68
    :cond_43
    const/4 v1, 0x1

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    :goto_45
    const/4 v1, 0x2

    .line 71
    :goto_46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, ": "

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {v1, p0}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(ILjava/lang/String;)Landroid/app/appsearch/AppSearchResult;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Landroid/app/appsearch/AppSearchResult;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    .line 12
    .line 13
    iget v1, p0, Landroid/app/appsearch/AppSearchResult;->mResultCode:I

    .line 14
    .line 15
    iget v3, p1, Landroid/app/appsearch/AppSearchResult;->mResultCode:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_27

    .line 18
    .line 19
    iget-object v1, p0, Landroid/app/appsearch/AppSearchResult;->mResultValue:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v3, p1, Landroid/app/appsearch/AppSearchResult;->mResultValue:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_27

    .line 28
    .line 29
    iget-object p0, p0, Landroid/app/appsearch/AppSearchResult;->mErrorMessage:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p1, p1, Landroid/app/appsearch/AppSearchResult;->mErrorMessage:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_27

    .line 38
    .line 39
    return v0

    .line 40
    :cond_27
    return v2
.end method

.method public whitelist getErrorMessage()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchResult;->mErrorMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getResultCode()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/AppSearchResult;->mResultCode:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getResultValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TValueType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-object p0, p0, Landroid/app/appsearch/AppSearchResult;->mResultValue:Ljava/lang/Object;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "AppSearchResult is a failure: "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Landroid/app/appsearch/AppSearchResult;->mResultCode:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/app/appsearch/AppSearchResult;->mResultValue:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Landroid/app/appsearch/AppSearchResult;->mErrorMessage:Ljava/lang/String;

    .line 10
    .line 11
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public whitelist isSuccess()Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_8

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_8
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_17

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "[SUCCESS]: "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Landroid/app/appsearch/AppSearchResult;->mResultValue:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "[FAILURE("

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v1, p0, Landroid/app/appsearch/AppSearchResult;->mResultCode:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ")]: "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Landroid/app/appsearch/AppSearchResult;->mErrorMessage:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
