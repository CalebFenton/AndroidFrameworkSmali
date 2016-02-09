.class public Landroid/os/Process$ZygoteState;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Process;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZygoteState"
.end annotation


# instance fields
.field final abiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final inputStream:Ljava/io/DataInputStream;

.field mClosed:Z

.field final socket:Landroid/net/LocalSocket;

.field final writer:Ljava/io/BufferedWriter;


# direct methods
.method private constructor <init>(Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V
    .locals 0
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "inputStream"    # Ljava/io/DataInputStream;
    .param p3, "writer"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LocalSocket;",
            "Ljava/io/DataInputStream;",
            "Ljava/io/BufferedWriter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 381
    .local p4, "abiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 383
    iput-object p1, p0, Landroid/os/Process$ZygoteState;->socket:Landroid/net/LocalSocket;

    #@5
    .line 384
    iput-object p2, p0, Landroid/os/Process$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    #@7
    .line 385
    iput-object p3, p0, Landroid/os/Process$ZygoteState;->writer:Ljava/io/BufferedWriter;

    #@9
    .line 386
    iput-object p4, p0, Landroid/os/Process$ZygoteState;->abiList:Ljava/util/List;

    #@b
    .line 382
    return-void
.end method

.method public static connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    .locals 10
    .param p0, "socketAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 390
    const/4 v3, 0x0

    #@1
    .line 391
    .local v3, "zygoteInputStream":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    #@2
    .line 392
    .local v6, "zygoteWriter":Ljava/io/BufferedWriter;
    new-instance v5, Landroid/net/LocalSocket;

    #@4
    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    #@7
    .line 395
    .local v5, "zygoteSocket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v7, Landroid/net/LocalSocketAddress;

    #@9
    .line 396
    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@b
    .line 395
    invoke-direct {v7, p0, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    #@e
    invoke-virtual {v5, v7}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    #@11
    .line 398
    new-instance v4, Ljava/io/DataInputStream;

    #@13
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    #@16
    move-result-object v7

    #@17
    invoke-direct {v4, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 400
    .local v4, "zygoteInputStream":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedWriter;

    #@1c
    .end local v3    # "zygoteInputStream":Ljava/io/DataInputStream;
    .end local v6    # "zygoteWriter":Ljava/io/BufferedWriter;
    new-instance v7, Ljava/io/OutputStreamWriter;

    #@1e
    .line 401
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@21
    move-result-object v8

    #@22
    .line 400
    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@25
    .line 401
    const/16 v8, 0x100

    #@27
    .line 400
    invoke-direct {v6, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@2a
    .line 411
    .local v6, "zygoteWriter":Ljava/io/BufferedWriter;
    invoke-static {v6, v4}, Landroid/os/Process;->-wrap0(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 412
    .local v0, "abiListString":Ljava/lang/String;
    const-string/jumbo v7, "Zygote"

    #@31
    new-instance v8, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v9, "Process: zygote socket opened, supported ABIS: "

    #@39
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v8

    #@3d
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 414
    new-instance v7, Landroid/os/Process$ZygoteState;

    #@4a
    .line 415
    const-string/jumbo v8, ","

    #@4d
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@50
    move-result-object v8

    #@51
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@54
    move-result-object v8

    #@55
    .line 414
    invoke-direct {v7, v5, v4, v6, v8}, Landroid/os/Process$ZygoteState;-><init>(Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V

    #@58
    return-object v7

    #@59
    .line 402
    .end local v0    # "abiListString":Ljava/lang/String;
    .end local v4    # "zygoteInputStream":Ljava/io/DataInputStream;
    .restart local v3    # "zygoteInputStream":Ljava/io/DataInputStream;
    .local v6, "zygoteWriter":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    #@5a
    .line 404
    .end local v3    # "zygoteInputStream":Ljava/io/DataInputStream;
    .end local v6    # "zygoteWriter":Ljava/io/BufferedWriter;
    .local v1, "ex":Ljava/io/IOException;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@5d
    .line 408
    :goto_1
    throw v1

    #@5e
    .line 405
    :catch_1
    move-exception v2

    #@5f
    .local v2, "ignore":Ljava/io/IOException;
    goto :goto_1

    #@60
    .line 402
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "ignore":Ljava/io/IOException;
    .restart local v4    # "zygoteInputStream":Ljava/io/DataInputStream;
    :catch_2
    move-exception v1

    #@61
    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v3, v4

    #@62
    .end local v4    # "zygoteInputStream":Ljava/io/DataInputStream;
    .local v3, "zygoteInputStream":Ljava/io/DataInputStream;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    #@0
    .prologue
    .line 424
    :try_start_0
    iget-object v1, p0, Landroid/os/Process$ZygoteState;->socket:Landroid/net/LocalSocket;

    #@2
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 429
    :goto_0
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Landroid/os/Process$ZygoteState;->mClosed:Z

    #@8
    .line 422
    return-void

    #@9
    .line 425
    :catch_0
    move-exception v0

    #@a
    .line 426
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v1, "Process"

    #@d
    const-string/jumbo v2, "I/O exception on routine close"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 433
    iget-boolean v0, p0, Landroid/os/Process$ZygoteState;->mClosed:Z

    #@2
    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "abi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 419
    iget-object v0, p0, Landroid/os/Process$ZygoteState;->abiList:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
