.class Landroid/os/ZygoteProcess$ZygoteState;
.super Ljava/lang/Object;
.source "ZygoteProcess.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ZygoteProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZygoteState"
.end annotation


# instance fields
.field private final blacklist mAbiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mClosed:Z

.field final blacklist mUsapSocketAddress:Landroid/net/LocalSocketAddress;

.field final blacklist mZygoteInputStream:Ljava/io/DataInputStream;

.field final blacklist mZygoteOutputWriter:Ljava/io/BufferedWriter;

.field private final blacklist mZygoteSessionSocket:Landroid/net/LocalSocket;

.field final blacklist mZygoteSocketAddress:Landroid/net/LocalSocketAddress;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmZygoteSessionSocket(Landroid/os/ZygoteProcess$ZygoteState;)Landroid/net/LocalSocket;
    .registers 1

    iget-object p0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSessionSocket:Landroid/net/LocalSocket;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V
    .registers 7
    .param p1, "zygoteSocketAddress"    # Landroid/net/LocalSocketAddress;
    .param p2, "usapSocketAddress"    # Landroid/net/LocalSocketAddress;
    .param p3, "zygoteSessionSocket"    # Landroid/net/LocalSocket;
    .param p4, "zygoteInputStream"    # Ljava/io/DataInputStream;
    .param p5, "zygoteOutputWriter"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LocalSocketAddress;",
            "Landroid/net/LocalSocketAddress;",
            "Landroid/net/LocalSocket;",
            "Ljava/io/DataInputStream;",
            "Ljava/io/BufferedWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p6, "abiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    .line 167
    iput-object p2, p0, Landroid/os/ZygoteProcess$ZygoteState;->mUsapSocketAddress:Landroid/net/LocalSocketAddress;

    .line 168
    iput-object p3, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSessionSocket:Landroid/net/LocalSocket;

    .line 169
    iput-object p4, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    .line 170
    iput-object p5, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    .line 171
    iput-object p6, p0, Landroid/os/ZygoteProcess$ZygoteState;->mAbiList:Ljava/util/List;

    .line 172
    return-void
.end method

.method static blacklist connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;
    .registers 10
    .param p0, "zygoteSocketAddress"    # Landroid/net/LocalSocketAddress;
    .param p1, "usapSocketAddress"    # Landroid/net/LocalSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    move-object v4, v0

    .line 192
    .local v4, "zygoteSessionSocket":Landroid/net/LocalSocket;
    if-eqz p0, :cond_3c

    .line 197
    :try_start_8
    invoke-virtual {v4, p0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 198
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 199
    .local v5, "zygoteInputStream":Ljava/io/DataInputStream;
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 201
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v1, 0x100

    invoke-direct {v6, v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_24} :catch_31

    .line 209
    .local v6, "zygoteOutputWriter":Ljava/io/BufferedWriter;
    nop

    .line 211
    new-instance v1, Landroid/os/ZygoteProcess$ZygoteState;

    .line 213
    invoke-static {v6, v5}, Landroid/os/ZygoteProcess;->-$$Nest$smgetAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    .end local p0    # "zygoteSocketAddress":Landroid/net/LocalSocketAddress;
    .end local p1    # "usapSocketAddress":Landroid/net/LocalSocketAddress;
    .local v2, "zygoteSocketAddress":Landroid/net/LocalSocketAddress;
    .local v3, "usapSocketAddress":Landroid/net/LocalSocketAddress;
    invoke-direct/range {v1 .. v7}, Landroid/os/ZygoteProcess$ZygoteState;-><init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V

    .line 211
    return-object v1

    .line 203
    .end local v2    # "zygoteSocketAddress":Landroid/net/LocalSocketAddress;
    .end local v3    # "usapSocketAddress":Landroid/net/LocalSocketAddress;
    .end local v5    # "zygoteInputStream":Ljava/io/DataInputStream;
    .end local v6    # "zygoteOutputWriter":Ljava/io/BufferedWriter;
    .restart local p0    # "zygoteSocketAddress":Landroid/net/LocalSocketAddress;
    .restart local p1    # "usapSocketAddress":Landroid/net/LocalSocketAddress;
    :catch_31
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move-object p0, v0

    .line 205
    .end local p1    # "usapSocketAddress":Landroid/net/LocalSocketAddress;
    .restart local v2    # "zygoteSocketAddress":Landroid/net/LocalSocketAddress;
    .restart local v3    # "usapSocketAddress":Landroid/net/LocalSocketAddress;
    .local p0, "ex":Ljava/io/IOException;
    :try_start_35
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 206
    :goto_38
    goto :goto_3b

    :catch_39
    move-exception v0

    goto :goto_38

    .line 208
    :goto_3b
    throw p0

    .line 193
    .end local v2    # "zygoteSocketAddress":Landroid/net/LocalSocketAddress;
    .end local v3    # "usapSocketAddress":Landroid/net/LocalSocketAddress;
    .local p0, "zygoteSocketAddress":Landroid/net/LocalSocketAddress;
    .restart local p1    # "usapSocketAddress":Landroid/net/LocalSocketAddress;
    :cond_3c
    move-object v2, p0

    move-object v3, p1

    .end local p0    # "zygoteSocketAddress":Landroid/net/LocalSocketAddress;
    .end local p1    # "usapSocketAddress":Landroid/net/LocalSocketAddress;
    .restart local v2    # "zygoteSocketAddress":Landroid/net/LocalSocketAddress;
    .restart local v3    # "usapSocketAddress":Landroid/net/LocalSocketAddress;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "zygoteSocketAddress can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSessionSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 232
    goto :goto_e

    .line 230
    :catch_6
    move-exception v0

    .line 231
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ZygoteProcess"

    const-string v2, "I/O exception on routine close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mClosed:Z

    .line 235
    return-void
.end method

.method blacklist getUsapSessionSocket()Landroid/net/LocalSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 218
    .local v0, "usapSessionSocket":Landroid/net/LocalSocket;
    iget-object v1, p0, Landroid/os/ZygoteProcess$ZygoteState;->mUsapSocketAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 220
    return-object v0
.end method

.method greylist-max-o isClosed()Z
    .registers 2

    .line 238
    iget-boolean v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mClosed:Z

    return v0
.end method

.method greylist-max-o matches(Ljava/lang/String;)Z
    .registers 3
    .param p1, "abi"    # Ljava/lang/String;

    .line 224
    iget-object v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mAbiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
