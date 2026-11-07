.class final Lcom/android/org/conscrypt/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist badPositionIndex(IILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "index"    # I
    .param p1, "size"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 101
    if-gez p0, :cond_11

    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s (%s) must not be negative"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_11
    if-ltz p1, :cond_26

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s (%s) must not be greater than size (%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist badPositionIndexes(III)Ljava/lang/String;
    .registers 5
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "size"    # I

    .line 90
    if-ltz p0, :cond_24

    if-le p0, p2, :cond_5

    goto :goto_24

    .line 93
    :cond_5
    if-ltz p1, :cond_1d

    if-le p1, p2, :cond_a

    goto :goto_1d

    .line 97
    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "end index (%s) must not be less than start index (%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1d
    :goto_1d
    const-string v0, "end index"

    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/Preconditions;->badPositionIndex(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :cond_24
    :goto_24
    const-string v0, "start index"

    invoke-static {p0, p2, v0}, Lcom/android/org/conscrypt/Preconditions;->badPositionIndex(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist checkArgument(ZLjava/lang/String;)V
    .registers 3
    .param p0, "condition"    # Z
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 50
    if-eqz p0, :cond_3

    .line 53
    return-void

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "condition"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 65
    if-eqz p0, :cond_3

    .line 68
    return-void

    .line 66
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 36
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 39
    return-object p0

    .line 37
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist checkPositionIndexes(III)V
    .registers 5
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "size"    # I

    .line 84
    if-ltz p0, :cond_7

    if-lt p1, p0, :cond_7

    if-gt p1, p2, :cond_7

    .line 87
    return-void

    .line 85
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p0, p1, p2}, Lcom/android/org/conscrypt/Preconditions;->badPositionIndexes(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
