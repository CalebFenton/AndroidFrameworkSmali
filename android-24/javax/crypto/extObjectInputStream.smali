.class final Ljavax/crypto/extObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "SealedObject.java"


# static fields
.field private static systemClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 461
    const/4 v0, 0x0

    #@1
    sput-object v0, Ljavax/crypto/extObjectInputStream;->systemClassLoader:Ljava/lang/ClassLoader;

    #@3
    .line 459
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 465
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 464
    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .param p1, "v"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 478
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v2

    #@4
    return-object v2

    #@5
    .line 479
    :catch_0
    move-exception v0

    #@6
    .line 483
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v1

    #@e
    .line 484
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_1

    #@10
    .line 485
    sget-object v2, Ljavax/crypto/extObjectInputStream;->systemClassLoader:Ljava/lang/ClassLoader;

    #@12
    if-nez v2, :cond_0

    #@14
    .line 486
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@17
    move-result-object v2

    #@18
    sput-object v2, Ljavax/crypto/extObjectInputStream;->systemClassLoader:Ljava/lang/ClassLoader;

    #@1a
    .line 488
    :cond_0
    sget-object v1, Ljavax/crypto/extObjectInputStream;->systemClassLoader:Ljava/lang/ClassLoader;

    #@1c
    .line 489
    if-nez v1, :cond_1

    #@1e
    .line 490
    new-instance v2, Ljava/lang/ClassNotFoundException;

    #@20
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 494
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    const/4 v3, 0x0

    #@2d
    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@30
    move-result-object v2

    #@31
    return-object v2
.end method
