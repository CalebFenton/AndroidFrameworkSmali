.class Landroid/media/midi/MidiOutputPort$1;
.super Ljava/lang/Thread;
.source "MidiOutputPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiOutputPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/midi/MidiOutputPort;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiOutputPort;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/midi/MidiOutputPort;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 9

    .line 57
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 62
    .local v2, "buffer":[B
    :goto_4
    :try_start_4
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-$$Nest$fgetmInputStream(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 63
    .local v0, "count":I
    if-gez v0, :cond_11

    .line 66
    goto :goto_69

    .line 70
    :cond_11
    invoke-static {v2, v0}, Landroid/media/midi/MidiPortImpl;->getPacketType([BI)I

    move-result v1

    move v7, v1

    .line 71
    .local v7, "packetType":I
    packed-switch v7, :pswitch_data_74

    .line 85
    const-string v1, "MidiOutputPort"

    goto :goto_3c

    .line 82
    :pswitch_1c
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->-$$Nest$fgetmDispatcher(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->flush()V

    .line 83
    goto :goto_52

    .line 73
    :pswitch_26
    invoke-static {v2, v0}, Landroid/media/midi/MidiPortImpl;->getDataOffset([BI)I

    move-result v3

    .line 74
    .local v3, "offset":I
    invoke-static {v2, v0}, Landroid/media/midi/MidiPortImpl;->getDataSize([BI)I

    move-result v4

    .line 75
    .local v4, "size":I
    invoke-static {v2, v0}, Landroid/media/midi/MidiPortImpl;->getPacketTimestamp([BI)J

    move-result-wide v5

    .line 78
    .local v5, "timestamp":J
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->-$$Nest$fgetmDispatcher(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/midi/MidiDispatcher;->send([BIIJ)V

    .line 79
    goto :goto_52

    .line 85
    .end local v3    # "offset":I
    .end local v4    # "size":I
    .end local v5    # "timestamp":J
    :goto_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown packet type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_52
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->-$$Nest$fgetmTotalBytes(Landroid/media/midi/MidiOutputPort;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_5b} :catch_68
    .catchall {:try_start_4 .. :try_end_5b} :catchall_5d

    .line 89
    nop

    .end local v0    # "count":I
    .end local v7    # "packetType":I
    goto :goto_4

    .line 99
    :catchall_5d
    move-exception v0

    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->-$$Nest$fgetmInputStream(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 100
    throw v0

    .line 90
    :catch_68
    move-exception v0

    .line 99
    :goto_69
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-$$Nest$fgetmInputStream(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 100
    nop

    .line 101
    return-void

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_26
        :pswitch_1c
    .end packed-switch
.end method
