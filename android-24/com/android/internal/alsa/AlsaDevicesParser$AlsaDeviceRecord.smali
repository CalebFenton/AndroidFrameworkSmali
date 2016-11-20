.class public Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
.super Ljava/lang/Object;
.source "AlsaDevicesParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/alsa/AlsaDevicesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlsaDeviceRecord"
.end annotation


# static fields
.field public static final kDeviceDir_Capture:I = 0x0

.field public static final kDeviceDir_Playback:I = 0x1

.field public static final kDeviceDir_Unknown:I = -0x1

.field public static final kDeviceType_Audio:I = 0x0

.field public static final kDeviceType_Control:I = 0x1

.field public static final kDeviceType_MIDI:I = 0x2

.field public static final kDeviceType_Unknown:I = -0x1


# instance fields
.field mCardNum:I

.field mDeviceDir:I

.field mDeviceNum:I

.field mDeviceType:I

.field final synthetic this$0:Lcom/android/internal/alsa/AlsaDevicesParser;


# direct methods
.method public constructor <init>(Lcom/android/internal/alsa/AlsaDevicesParser;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/alsa/AlsaDevicesParser;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 64
    iput-object p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 59
    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    #@8
    .line 60
    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    #@a
    .line 61
    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    #@c
    .line 62
    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    #@e
    .line 64
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Z
    .locals 14
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    const/4 v4, 0x0

    #@1
    .line 74
    .local v4, "kToken_LineNum":I
    const/4 v2, 0x1

    #@2
    .line 75
    .local v2, "kToken_CardNum":I
    const/4 v3, 0x2

    #@3
    .line 76
    .local v3, "kToken_DeviceNum":I
    const/4 v5, 0x3

    #@4
    .line 77
    .local v5, "kToken_Type0":I
    const/4 v6, 0x4

    #@5
    .line 78
    .local v6, "kToken_Type1":I
    const/4 v7, 0x5

    #@6
    .line 80
    .local v7, "kToken_Type2":I
    const/4 v10, 0x0

    #@7
    .line 81
    .local v10, "tokenOffset":I
    const/4 v0, 0x0

    #@8
    .line 82
    .local v0, "delimOffset":I
    const/4 v9, 0x0

    #@9
    .line 84
    .local v9, "tokenIndex":I
    :goto_0
    invoke-static {}, Lcom/android/internal/alsa/AlsaDevicesParser;->-get0()Lcom/android/internal/alsa/LineTokenizer;

    #@c
    move-result-object v11

    #@d
    invoke-virtual {v11, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    #@10
    move-result v10

    #@11
    .line 85
    const/4 v11, -0x1

    #@12
    if-ne v10, v11, :cond_0

    #@14
    .line 149
    const/4 v11, 0x1

    #@15
    return v11

    #@16
    .line 88
    :cond_0
    invoke-static {}, Lcom/android/internal/alsa/AlsaDevicesParser;->-get0()Lcom/android/internal/alsa/LineTokenizer;

    #@19
    move-result-object v11

    #@1a
    invoke-virtual {v11, p1, v10}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    #@1d
    move-result v0

    #@1e
    .line 89
    const/4 v11, -0x1

    #@1f
    if-ne v0, v11, :cond_1

    #@21
    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@24
    move-result v0

    #@25
    .line 92
    :cond_1
    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v8

    #@29
    .line 95
    .local v8, "token":Ljava/lang/String;
    packed-switch v9, :pswitch_data_0

    #@2c
    .line 146
    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 101
    :pswitch_1
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@32
    move-result v11

    #@33
    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    #@35
    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v11

    #@39
    const/16 v12, 0x2d

    #@3b
    if-eq v11, v12, :cond_2

    #@3d
    .line 103
    add-int/lit8 v9, v9, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 108
    :pswitch_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@43
    move-result v11

    #@44
    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    goto :goto_1

    #@47
    .line 140
    :catch_0
    move-exception v1

    #@48
    .line 141
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v11, "AlsaDevicesParser"

    #@4b
    new-instance v12, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v13, "Failed to parse token "

    #@53
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v12

    #@57
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v12

    #@5b
    const-string/jumbo v13, " of "

    #@5e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v12

    #@62
    const-string/jumbo v13, "/proc/asound/devices"

    #@65
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v12

    #@69
    .line 142
    const-string/jumbo v13, " token: "

    #@6c
    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v12

    #@70
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v12

    #@74
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v12

    #@78
    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 143
    const/4 v11, 0x0

    #@7c
    return v11

    #@7d
    .line 112
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :pswitch_3
    :try_start_1
    const-string/jumbo v11, "digital"

    #@80
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v11

    #@84
    if-nez v11, :cond_2

    #@86
    .line 114
    const-string/jumbo v11, "control"

    #@89
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v11

    #@8d
    if-eqz v11, :cond_3

    #@8f
    .line 115
    const/4 v11, 0x1

    #@90
    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    #@92
    goto :goto_1

    #@93
    .line 116
    :cond_3
    const-string/jumbo v11, "raw"

    #@96
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v11

    #@9a
    if-eqz v11, :cond_2

    #@9c
    goto :goto_1

    #@9d
    .line 122
    :pswitch_4
    const-string/jumbo v11, "audio"

    #@a0
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v11

    #@a4
    if-eqz v11, :cond_4

    #@a6
    .line 123
    const/4 v11, 0x0

    #@a7
    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    #@a9
    goto :goto_1

    #@aa
    .line 124
    :cond_4
    const-string/jumbo v11, "midi"

    #@ad
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v11

    #@b1
    if-eqz v11, :cond_2

    #@b3
    .line 125
    const/4 v11, 0x2

    #@b4
    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    #@b6
    .line 126
    iget-object v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    #@b8
    const/4 v12, 0x1

    #@b9
    invoke-static {v11, v12}, Lcom/android/internal/alsa/AlsaDevicesParser;->-set1(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z

    #@bc
    goto/16 :goto_1

    #@be
    .line 131
    :pswitch_5
    const-string/jumbo v11, "capture"

    #@c1
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c4
    move-result v11

    #@c5
    if-eqz v11, :cond_5

    #@c7
    .line 132
    const/4 v11, 0x0

    #@c8
    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    #@ca
    .line 133
    iget-object v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    #@cc
    const/4 v12, 0x1

    #@cd
    invoke-static {v11, v12}, Lcom/android/internal/alsa/AlsaDevicesParser;->-set0(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z

    #@d0
    goto/16 :goto_1

    #@d2
    .line 134
    :cond_5
    const-string/jumbo v11, "playback"

    #@d5
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d8
    move-result v11

    #@d9
    if-eqz v11, :cond_2

    #@db
    .line 135
    const/4 v11, 0x1

    #@dc
    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    #@de
    .line 136
    iget-object v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    #@e0
    const/4 v12, 0x1

    #@e1
    invoke-static {v11, v12}, Lcom/android/internal/alsa/AlsaDevicesParser;->-set2(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@e4
    goto/16 :goto_1

    #@e6
    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public textFormat()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 154
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, ":"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "]"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 156
    iget v1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    #@27
    packed-switch v1, :pswitch_data_0

    #@2a
    .line 171
    :goto_0
    iget v1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    #@2c
    packed-switch v1, :pswitch_data_1

    #@2f
    .line 183
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    return-object v1

    #@34
    .line 158
    :pswitch_0
    const-string/jumbo v1, " N/A"

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    goto :goto_0

    #@3b
    .line 161
    :pswitch_1
    const-string/jumbo v1, " Audio"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    goto :goto_0

    #@42
    .line 164
    :pswitch_2
    const-string/jumbo v1, " Control"

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    goto :goto_0

    #@49
    .line 167
    :pswitch_3
    const-string/jumbo v1, " MIDI"

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    goto :goto_0

    #@50
    .line 173
    :pswitch_4
    const-string/jumbo v1, " N/A"

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    goto :goto_1

    #@57
    .line 176
    :pswitch_5
    const-string/jumbo v1, " Capture"

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    goto :goto_1

    #@5e
    .line 179
    :pswitch_6
    const-string/jumbo v1, " Playback"

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    goto :goto_1

    #@65
    .line 156
    nop

    #@66
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@72
    .line 171
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
