.class final Ljavax/crypto/extObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "SealedObject.java"


# static fields
.field private static blacklist systemClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 457
    const/4 v0, 0x0

    sput-object v0, Ljavax/crypto/extObjectInputStream;->systemClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 461
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 462
    return-void
.end method


# virtual methods
.method protected whitelist test-api resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 6
    .param p1, "v"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 474
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 475
    :catch_5
    move-exception v0

    .line 479
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 480
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_29

    .line 481
    sget-object v2, Ljavax/crypto/extObjectInputStream;->systemClassLoader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_1a

    .line 482
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    sput-object v2, Ljavax/crypto/extObjectInputStream;->systemClassLoader:Ljava/lang/ClassLoader;

    .line 484
    :cond_1a
    sget-object v1, Ljavax/crypto/extObjectInputStream;->systemClassLoader:Ljava/lang/ClassLoader;

    .line 485
    if-eqz v1, :cond_1f

    goto :goto_29

    .line 486
    :cond_1f
    new-instance v2, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 490
    :cond_29
    :goto_29
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method
