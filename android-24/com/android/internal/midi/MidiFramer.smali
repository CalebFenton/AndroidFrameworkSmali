.class public Lcom/android/internal/midi/MidiFramer;
.super Landroid/media/midi/MidiReceiver;
.source "MidiFramer.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private mBuffer:[B

.field private mCount:I

.field private mInSysEx:Z

.field private mNeeded:I

.field private mReceiver:Landroid/media/midi/MidiReceiver;

.field private mRunningStatus:B


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    #@3
    .line 36
    const-string/jumbo v0, "MidiFramer"

    #@6
    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->TAG:Ljava/lang/String;

    #@8
    .line 38
    const/4 v0, 0x3

    #@9
    new-array v0, v0, [B

    #@b
    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    #@d
    .line 45
    iput-object p1, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    #@f
    .line 44
    return-void
.end method

.method public static formatMidiData([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "MIDI+"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v3, " : "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 50
    .local v1, "text":Ljava/lang/String;
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@1e
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, "0x%02X, "

    #@2a
    const/4 v4, 0x1

    #@2b
    new-array v4, v4, [Ljava/lang/Object;

    #@2d
    add-int v5, p1, v0

    #@2f
    aget-byte v5, p0, v5

    #@31
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@34
    move-result-object v5

    #@35
    const/4 v6, 0x0

    #@36
    aput-object v5, v4, v6

    #@38
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 50
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 53
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 16
    .param p1, "data"    # [B
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
    .line 62
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    #@4
    if-eqz v2, :cond_1

    #@6
    move/from16 v4, p2

    #@8
    .line 64
    .local v4, "sysExStartOffset":I
    :goto_0
    const/4 v14, 0x0

    #@9
    .local v14, "i":I
    :goto_1
    move/from16 v0, p3

    #@b
    if-ge v14, v0, :cond_9

    #@d
    .line 65
    aget-byte v12, p1, p2

    #@f
    .line 66
    .local v12, "currentByte":B
    and-int/lit16 v13, v12, 0xff

    #@11
    .line 67
    .local v13, "currentInt":I
    const/16 v2, 0x80

    #@13
    if-lt v13, v2, :cond_7

    #@15
    .line 68
    const/16 v2, 0xf0

    #@17
    if-ge v13, v2, :cond_2

    #@19
    .line 69
    move-object/from16 v0, p0

    #@1b
    iput-byte v12, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    #@1d
    .line 70
    const/4 v2, 0x1

    #@1e
    move-object/from16 v0, p0

    #@20
    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    #@22
    .line 71
    invoke-static {v12}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    #@25
    move-result v2

    #@26
    add-int/lit8 v2, v2, -0x1

    #@28
    move-object/from16 v0, p0

    #@2a
    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    #@2c
    .line 113
    :cond_0
    :goto_2
    add-int/lit8 p2, p2, 0x1

    #@2e
    .line 64
    add-int/lit8 v14, v14, 0x1

    #@30
    goto :goto_1

    #@31
    .line 62
    .end local v4    # "sysExStartOffset":I
    .end local v12    # "currentByte":B
    .end local v13    # "currentInt":I
    .end local v14    # "i":I
    :cond_1
    const/4 v4, -0x1

    #@32
    .restart local v4    # "sysExStartOffset":I
    goto :goto_0

    #@33
    .line 72
    .restart local v12    # "currentByte":B
    .restart local v13    # "currentInt":I
    .restart local v14    # "i":I
    :cond_2
    const/16 v2, 0xf8

    #@35
    if-ge v13, v2, :cond_5

    #@37
    .line 73
    const/16 v2, 0xf0

    #@39
    if-ne v13, v2, :cond_3

    #@3b
    .line 75
    const/4 v2, 0x1

    #@3c
    move-object/from16 v0, p0

    #@3e
    iput-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    #@40
    .line 76
    move/from16 v4, p2

    #@42
    goto :goto_2

    #@43
    .line 77
    :cond_3
    const/16 v2, 0xf7

    #@45
    if-ne v13, v2, :cond_4

    #@47
    .line 79
    move-object/from16 v0, p0

    #@49
    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    #@4b
    if-eqz v2, :cond_0

    #@4d
    .line 80
    move-object/from16 v0, p0

    #@4f
    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    #@51
    .line 81
    sub-int v3, p2, v4

    #@53
    add-int/lit8 v5, v3, 0x1

    #@55
    move-object/from16 v3, p1

    #@57
    move-wide/from16 v6, p4

    #@59
    .line 80
    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    #@5c
    .line 82
    const/4 v2, 0x0

    #@5d
    move-object/from16 v0, p0

    #@5f
    iput-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    #@61
    .line 83
    const/4 v4, -0x1

    #@62
    goto :goto_2

    #@63
    .line 86
    :cond_4
    move-object/from16 v0, p0

    #@65
    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    #@67
    const/4 v3, 0x0

    #@68
    aput-byte v12, v2, v3

    #@6a
    .line 87
    const/4 v2, 0x0

    #@6b
    move-object/from16 v0, p0

    #@6d
    iput-byte v2, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    #@6f
    .line 88
    const/4 v2, 0x1

    #@70
    move-object/from16 v0, p0

    #@72
    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    #@74
    .line 89
    invoke-static {v12}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    #@77
    move-result v2

    #@78
    add-int/lit8 v2, v2, -0x1

    #@7a
    move-object/from16 v0, p0

    #@7c
    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    #@7e
    goto :goto_2

    #@7f
    .line 93
    :cond_5
    move-object/from16 v0, p0

    #@81
    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    #@83
    if-eqz v2, :cond_6

    #@85
    .line 94
    move-object/from16 v0, p0

    #@87
    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    #@89
    .line 95
    sub-int v5, p2, v4

    #@8b
    move-object/from16 v3, p1

    #@8d
    move-wide/from16 v6, p4

    #@8f
    .line 94
    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    #@92
    .line 96
    add-int/lit8 v4, p2, 0x1

    #@94
    .line 98
    :cond_6
    move-object/from16 v0, p0

    #@96
    iget-object v6, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    #@98
    const/4 v9, 0x1

    #@99
    move-object/from16 v7, p1

    #@9b
    move/from16 v8, p2

    #@9d
    move-wide/from16 v10, p4

    #@9f
    invoke-virtual/range {v6 .. v11}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    #@a2
    goto :goto_2

    #@a3
    .line 101
    :cond_7
    move-object/from16 v0, p0

    #@a5
    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    #@a7
    if-nez v2, :cond_0

    #@a9
    .line 102
    move-object/from16 v0, p0

    #@ab
    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    #@ad
    move-object/from16 v0, p0

    #@af
    iget v3, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    #@b1
    add-int/lit8 v5, v3, 0x1

    #@b3
    move-object/from16 v0, p0

    #@b5
    iput v5, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    #@b7
    aput-byte v12, v2, v3

    #@b9
    .line 103
    move-object/from16 v0, p0

    #@bb
    iget v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    #@bd
    add-int/lit8 v2, v2, -0x1

    #@bf
    move-object/from16 v0, p0

    #@c1
    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    #@c3
    if-nez v2, :cond_0

    #@c5
    .line 104
    move-object/from16 v0, p0

    #@c7
    iget-byte v2, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    #@c9
    if-eqz v2, :cond_8

    #@cb
    .line 105
    move-object/from16 v0, p0

    #@cd
    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget-byte v3, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    #@d3
    const/4 v5, 0x0

    #@d4
    aput-byte v3, v2, v5

    #@d6
    .line 107
    :cond_8
    move-object/from16 v0, p0

    #@d8
    iget-object v6, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    #@da
    move-object/from16 v0, p0

    #@dc
    iget-object v7, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    #@de
    move-object/from16 v0, p0

    #@e0
    iget v9, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    #@e2
    const/4 v8, 0x0

    #@e3
    move-wide/from16 v10, p4

    #@e5
    invoke-virtual/range {v6 .. v11}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    #@e8
    .line 108
    move-object/from16 v0, p0

    #@ea
    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    #@ec
    const/4 v3, 0x0

    #@ed
    aget-byte v2, v2, v3

    #@ef
    invoke-static {v2}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    #@f2
    move-result v2

    #@f3
    add-int/lit8 v2, v2, -0x1

    #@f5
    move-object/from16 v0, p0

    #@f7
    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    #@f9
    .line 109
    const/4 v2, 0x1

    #@fa
    move-object/from16 v0, p0

    #@fc
    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    #@fe
    goto/16 :goto_2

    #@100
    .line 117
    .end local v12    # "currentByte":B
    .end local v13    # "currentInt":I
    :cond_9
    if-ltz v4, :cond_a

    #@102
    move/from16 v0, p2

    #@104
    if-ge v4, v0, :cond_a

    #@106
    .line 118
    move-object/from16 v0, p0

    #@108
    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    #@10a
    .line 119
    sub-int v5, p2, v4

    #@10c
    move-object/from16 v3, p1

    #@10e
    move-wide/from16 v6, p4

    #@110
    .line 118
    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    #@113
    .line 61
    :cond_a
    return-void
.end method
