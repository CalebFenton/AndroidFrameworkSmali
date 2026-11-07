.class public Ljava/io/UncheckedIOException;
.super Ljava/lang/RuntimeException;
.source "UncheckedIOException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x70e2db5b2e06cae9L


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/IOException;)V
    .registers 3
    .param p1, "cause"    # Ljava/io/IOException;

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/io/IOException;

    .line 50
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 91
    invoke-super {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 92
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_c

    .line 94
    return-void

    .line 93
    :cond_c
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Cause must be an IOException"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/io/IOException;
    .registers 2

    .line 73
    invoke-super {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 34
    invoke-virtual {p0}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
