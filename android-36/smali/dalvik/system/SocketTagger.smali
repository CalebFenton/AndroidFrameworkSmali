.class public abstract Ldalvik/system/SocketTagger;
.super Ljava/lang/Object;
.source "SocketTagger.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static greylist-max-o tagger:Ldalvik/system/SocketTagger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ldalvik/system/SocketTagger$1;

    invoke-direct {v0}, Ldalvik/system/SocketTagger$1;-><init>()V

    sput-object v0, Ldalvik/system/SocketTagger;->tagger:Ldalvik/system/SocketTagger;

    return-void
.end method

.method public constructor greylist-max-o test-api <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static declared-synchronized greylist test-api get()Ldalvik/system/SocketTagger;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    const-class v0, Ldalvik/system/SocketTagger;

    monitor-enter v0

    .line 181
    :try_start_3
    sget-object v1, Ldalvik/system/SocketTagger;->tagger:Ldalvik/system/SocketTagger;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 181
    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static declared-synchronized greylist-max-o test-api set(Ldalvik/system/SocketTagger;)V
    .registers 4
    .param p0, "tagger"    # Ldalvik/system/SocketTagger;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    const-class v0, Ldalvik/system/SocketTagger;

    monitor-enter v0

    .line 165
    if-eqz p0, :cond_b

    .line 168
    :try_start_5
    sput-object p0, Ldalvik/system/SocketTagger;->tagger:Ldalvik/system/SocketTagger;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_9

    .line 169
    monitor-exit v0

    return-void

    .line 164
    .end local p0    # "tagger":Ldalvik/system/SocketTagger;
    :catchall_9
    move-exception p0

    goto :goto_13

    .line 166
    .restart local p0    # "tagger":Ldalvik/system/SocketTagger;
    :cond_b
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "tagger == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    .end local p0    # "tagger":Ldalvik/system/SocketTagger;
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_9

    throw p0
.end method


# virtual methods
.method public abstract greylist-max-o test-api tag(Ljava/io/FileDescriptor;)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public final greylist-max-o test-api tag(Ljava/net/DatagramSocket;)V
    .registers 3
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 131
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldalvik/system/SocketTagger;->tag(Ljava/io/FileDescriptor;)V

    .line 133
    :cond_d
    return-void
.end method

.method public final greylist test-api tag(Ljava/net/Socket;)V
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 92
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldalvik/system/SocketTagger;->tag(Ljava/io/FileDescriptor;)V

    .line 94
    :cond_d
    return-void
.end method

.method public abstract greylist-max-o test-api untag(Ljava/io/FileDescriptor;)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public final greylist-max-o test-api untag(Ljava/net/DatagramSocket;)V
    .registers 3
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 151
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 152
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldalvik/system/SocketTagger;->untag(Ljava/io/FileDescriptor;)V

    .line 154
    :cond_d
    return-void
.end method

.method public final greylist test-api untag(Ljava/net/Socket;)V
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 114
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldalvik/system/SocketTagger;->untag(Ljava/io/FileDescriptor;)V

    .line 116
    :cond_d
    return-void
.end method
