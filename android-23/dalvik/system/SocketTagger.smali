.class public abstract Ldalvik/system/SocketTagger;
.super Ljava/lang/Object;
.source "SocketTagger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/SocketTagger$1;
    }
.end annotation


# static fields
.field private static tagger:Ldalvik/system/SocketTagger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    new-instance v0, Ldalvik/system/SocketTagger$1;

    #@2
    invoke-direct {v0}, Ldalvik/system/SocketTagger$1;-><init>()V

    #@5
    sput-object v0, Ldalvik/system/SocketTagger;->tagger:Ldalvik/system/SocketTagger;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized get()Ldalvik/system/SocketTagger;
    .locals 2

    #@0
    .prologue
    const-class v0, Ldalvik/system/SocketTagger;

    #@2
    monitor-enter v0

    #@3
    .line 78
    :try_start_0
    sget-object v1, Ldalvik/system/SocketTagger;->tagger:Ldalvik/system/SocketTagger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public static declared-synchronized set(Ldalvik/system/SocketTagger;)V
    .locals 3
    .param p0, "tagger"    # Ldalvik/system/SocketTagger;

    #@0
    .prologue
    const-class v1, Ldalvik/system/SocketTagger;

    #@2
    monitor-enter v1

    #@3
    .line 68
    if-nez p0, :cond_0

    #@5
    .line 69
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "tagger == null"

    #@a
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0

    #@11
    .line 71
    :cond_0
    :try_start_1
    sput-object p0, Ldalvik/system/SocketTagger;->tagger:Ldalvik/system/SocketTagger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 67
    return-void
.end method


# virtual methods
.method public abstract tag(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public final tag(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 54
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Ldalvik/system/SocketTagger;->tag(Ljava/io/FileDescriptor;)V

    #@d
    .line 52
    :cond_0
    return-void
.end method

.method public abstract untag(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public final untag(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 60
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Ldalvik/system/SocketTagger;->untag(Ljava/io/FileDescriptor;)V

    #@d
    .line 58
    :cond_0
    return-void
.end method
