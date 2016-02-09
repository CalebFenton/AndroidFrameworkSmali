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
.field final synthetic this$0:Landroid/media/midi/MidiOutputPort;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiOutputPort;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/midi/MidiOutputPort;

    #@0
    .prologue
    .line 51
    iput-object p1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    #@0
    .prologue
    .line 54
    const/16 v0, 0x400

    #@2
    new-array v1, v0, [B

    #@4
    .line 59
    .local v1, "buffer":[B
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    #@6
    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get1(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v6

    #@e
    .line 60
    .local v6, "count":I
    if-gez v6, :cond_0

    #@10
    .line 88
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    #@12
    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get1(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    #@15
    move-result-object v0

    #@16
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@19
    .line 53
    .end local v6    # "count":I
    :goto_1
    return-void

    #@1a
    .line 65
    .restart local v6    # "count":I
    :cond_0
    :try_start_1
    invoke-static {v1, v6}, Landroid/media/midi/MidiPortImpl;->getPacketType([BI)I

    #@1d
    move-result v8

    #@1e
    .line 66
    .local v8, "packetType":I
    packed-switch v8, :pswitch_data_0

    #@21
    .line 80
    const-string/jumbo v0, "MidiOutputPort"

    #@24
    new-instance v9, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v10, "Unknown packet type "

    #@2c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v9

    #@30
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v9

    #@34
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v9

    #@38
    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 84
    .end local v6    # "count":I
    .end local v8    # "packetType":I
    :catch_0
    move-exception v7

    #@3d
    .line 86
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v0, "MidiOutputPort"

    #@40
    const-string/jumbo v9, "read failed"

    #@43
    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    .line 88
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    #@48
    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get1(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    #@4b
    move-result-object v0

    #@4c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4f
    goto :goto_1

    #@50
    .line 68
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v6    # "count":I
    .restart local v8    # "packetType":I
    :pswitch_0
    :try_start_3
    invoke-static {v1, v6}, Landroid/media/midi/MidiPortImpl;->getDataOffset([BI)I

    #@53
    move-result v2

    #@54
    .line 69
    .local v2, "offset":I
    invoke-static {v1, v6}, Landroid/media/midi/MidiPortImpl;->getDataSize([BI)I

    #@57
    move-result v3

    #@58
    .line 70
    .local v3, "size":I
    invoke-static {v1, v6}, Landroid/media/midi/MidiPortImpl;->getPacketTimestamp([BI)J

    #@5b
    move-result-wide v4

    #@5c
    .line 73
    .local v4, "timestamp":J
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    #@5e
    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get0(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    #@61
    move-result-object v0

    #@62
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/midi/MidiDispatcher;->send([BIIJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@65
    goto :goto_0

    #@66
    .line 87
    .end local v2    # "offset":I
    .end local v3    # "size":I
    .end local v4    # "timestamp":J
    .end local v6    # "count":I
    .end local v8    # "packetType":I
    :catchall_0
    move-exception v0

    #@67
    .line 88
    iget-object v9, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    #@69
    invoke-static {v9}, Landroid/media/midi/MidiOutputPort;->-get1(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    #@6c
    move-result-object v9

    #@6d
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@70
    .line 87
    throw v0

    #@71
    .line 77
    .restart local v6    # "count":I
    .restart local v8    # "packetType":I
    :pswitch_1
    :try_start_4
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    #@73
    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get0(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0}, Lcom/android/internal/midi/MidiDispatcher;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7a
    goto :goto_0

    #@7b
    .line 66
    nop

    #@7c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
