.class public Llibcore/internal/Java9LanguageFeatures;
.super Ljava/lang/Object;
.source "Java9LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/internal/Java9LanguageFeatures$Person;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist copy([B)[B
    .registers 6
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 75
    .local v1, "inputStream":Ljava/io/InputStream;
    nop

    .line 77
    :goto_b
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    move v3, v2

    .local v3, "value":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_17

    .line 78
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1f

    goto :goto_b

    .line 80
    .end local v3    # "value":I
    :cond_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 81
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 75
    :catchall_1f
    move-exception v2

    :try_start_20
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_28
    throw v2
.end method

.method public static varargs blacklist toListString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 54
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Llibcore/internal/Java9LanguageFeatures;->toString([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs blacklist toString([Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 60
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 62
    .local v3, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 64
    :cond_15
    return-object v0
.end method


# virtual methods
.method public blacklist createReference(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation

    .line 69
    .local p1, "content":Ljava/lang/Object;, "TT;"
    new-instance v0, Llibcore/internal/Java9LanguageFeatures$1;

    invoke-direct {v0, p0, p1}, Llibcore/internal/Java9LanguageFeatures$1;-><init>(Llibcore/internal/Java9LanguageFeatures;Ljava/lang/Object;)V

    return-object v0
.end method
