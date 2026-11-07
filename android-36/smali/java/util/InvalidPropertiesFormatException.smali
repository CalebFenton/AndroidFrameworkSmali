.class public Ljava/util/InvalidPropertiesFormatException;
.super Ljava/io/IOException;
.source "InvalidPropertiesFormatException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x6bbbea5ee5f9cb5bL


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 59
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1}, Ljava/util/InvalidPropertiesFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 61
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "Not serializable."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "Not serializable."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
