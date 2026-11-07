.class Ldalvik/system/SocketTagger$1;
.super Ldalvik/system/SocketTagger;
.source "SocketTagger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SocketTagger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ldalvik/system/SocketTagger;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist test-api tag(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "socketDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist test-api untag(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "socketDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 38
    return-void
.end method
