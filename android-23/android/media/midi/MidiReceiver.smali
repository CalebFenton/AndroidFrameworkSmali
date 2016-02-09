.class public abstract Landroid/media/midi/MidiReceiver;
.super Ljava/lang/Object;
.source "MidiReceiver.java"


# instance fields
.field private final mMaxMessageSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    const v0, 0x7fffffff

    #@6
    iput v0, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    #@8
    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxMessageSize"    # I

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput p1, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    #@5
    .line 40
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->onFlush()V

    #@3
    .line 68
    return-void
.end method

.method public final getMaxMessageSize()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    #@2
    return v0
.end method

.method public onFlush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    return-void
.end method

.method public abstract onSend([BIIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send([BII)V
    .locals 6
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    const-wide/16 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    #@9
    .line 103
    return-void
.end method

.method public send([BIIJ)V
    .locals 8
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->getMaxMessageSize()I

    #@3
    move-result v6

    #@4
    .line 126
    .local v6, "messageSize":I
    :goto_0
    if-lez p3, :cond_1

    #@6
    .line 127
    if-le p3, v6, :cond_0

    #@8
    move v3, v6

    #@9
    .local v3, "length":I
    :goto_1
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move v2, p2

    #@c
    move-wide v4, p4

    #@d
    .line 128
    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->onSend([BIIJ)V

    #@10
    .line 129
    add-int/2addr p2, v3

    #@11
    .line 130
    sub-int/2addr p3, v3

    #@12
    goto :goto_0

    #@13
    .line 127
    .end local v3    # "length":I
    :cond_0
    move v3, p3

    #@14
    .restart local v3    # "length":I
    goto :goto_1

    #@15
    .line 124
    .end local v3    # "length":I
    :cond_1
    return-void
.end method
