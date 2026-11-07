.class public final Ljava/nio/file/DirectoryIteratorException;
.super Ljava/util/ConcurrentModificationException;
.source "DirectoryIteratorException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x537166b093334d0aL


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/IOException;)V
    .registers 3
    .param p1, "cause"    # Ljava/io/IOException;

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/Throwable;)V

    .line 60
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

    .line 82
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 83
    invoke-super {p0}, Ljava/util/ConcurrentModificationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 84
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_c

    .line 86
    return-void

    .line 85
    :cond_c
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Cause must be an IOException"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/io/IOException;
    .registers 2

    .line 69
    invoke-super {p0}, Ljava/util/ConcurrentModificationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 43
    invoke-virtual {p0}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
