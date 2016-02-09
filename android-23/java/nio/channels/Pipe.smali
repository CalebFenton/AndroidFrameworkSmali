.class public abstract Ljava/nio/channels/Pipe;
.super Ljava/lang/Object;
.source "Pipe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/Pipe$SinkChannel;,
        Ljava/nio/channels/Pipe$SourceChannel;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static open()Ljava/nio/channels/Pipe;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openPipe()Ljava/nio/channels/Pipe;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public abstract sink()Ljava/nio/channels/Pipe$SinkChannel;
.end method

.method public abstract source()Ljava/nio/channels/Pipe$SourceChannel;
.end method
