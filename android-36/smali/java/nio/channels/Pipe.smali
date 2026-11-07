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
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api open()Ljava/nio/channels/Pipe;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openPipe()Ljava/nio/channels/Pipe;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api sink()Ljava/nio/channels/Pipe$SinkChannel;
.end method

.method public abstract whitelist test-api source()Ljava/nio/channels/Pipe$SourceChannel;
.end method
