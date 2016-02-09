.class public final Ljava/nio/channels/Channels;
.super Ljava/lang/Object;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/Channels$ChannelInputStream;,
        Ljava/nio/channels/Channels$ChannelOutputStream;,
        Ljava/nio/channels/Channels$InputStreamChannel;,
        Ljava/nio/channels/Channels$OutputStreamChannel;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static checkBlocking(Ljava/nio/channels/Channel;)V
    .locals 1
    .param p0, "channel"    # Ljava/nio/channels/Channel;

    #@0
    .prologue
    .line 278
    instance-of v0, p0, Ljava/nio/channels/SelectableChannel;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p0, Ljava/nio/channels/SelectableChannel;

    #@6
    .end local p0    # "channel":Ljava/nio/channels/Channel;
    invoke-virtual {p0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 277
    :cond_0
    return-void

    #@d
    .line 279
    :cond_1
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    #@f
    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@12
    throw v0
.end method

.method public static newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/nio/channels/Channels$InputStreamChannel;

    #@2
    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$InputStreamChannel;-><init>(Ljava/io/InputStream;)V

    #@5
    return-object v0
.end method

.method public static newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
    .locals 1
    .param p0, "outputStream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 114
    new-instance v0, Ljava/nio/channels/Channels$OutputStreamChannel;

    #@2
    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$OutputStreamChannel;-><init>(Ljava/io/OutputStream;)V

    #@5
    return-object v0
.end method

.method public static newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;
    .locals 1
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;

    #@0
    .prologue
    .line 59
    new-instance v0, Ljava/nio/channels/Channels$ChannelInputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    #@5
    return-object v0
.end method

.method public static newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "channel"    # Ljava/nio/channels/WritableByteChannel;

    #@0
    .prologue
    .line 79
    new-instance v0, Ljava/nio/channels/Channels$ChannelOutputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$ChannelOutputStream;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    #@5
    return-object v0
.end method

.method public static newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
    if-nez p1, :cond_0

    #@2
    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "charsetName == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 155
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@12
    move-result-object v0

    #@13
    const/4 v1, -0x1

    #@14
    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public static newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;
    .locals 2
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "minBufferCapacity"    # I

    #@0
    .prologue
    .line 135
    new-instance v0, Ljava/io/InputStreamReader;

    #@2
    new-instance v1, Ljava/nio/channels/Channels$ChannelInputStream;

    #@4
    invoke-direct {v1, p0}, Ljava/nio/channels/Channels$ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    #@7
    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V

    #@a
    return-object v0
.end method

.method public static newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/lang/String;)Ljava/io/Writer;
    .locals 2
    .param p0, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 195
    if-nez p1, :cond_0

    #@2
    .line 196
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "charsetName == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 198
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@12
    move-result-object v0

    #@13
    const/4 v1, -0x1

    #@14
    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public static newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;
    .locals 2
    .param p0, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "minBufferCapacity"    # I

    #@0
    .prologue
    .line 177
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    new-instance v1, Ljava/nio/channels/Channels$ChannelOutputStream;

    #@4
    invoke-direct {v1, p0}, Ljava/nio/channels/Channels$ChannelOutputStream;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    #@7
    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    #@a
    return-object v0
.end method
