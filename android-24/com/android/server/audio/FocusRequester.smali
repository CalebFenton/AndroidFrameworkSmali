.class public Lcom/android/server/audio/FocusRequester;
.super Ljava/lang/Object;
.source "FocusRequester.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"


# instance fields
.field private final mAttributes:Landroid/media/AudioAttributes;

.field private final mCallingUid:I

.field private final mClientId:Ljava/lang/String;

.field private mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

.field private final mFocusController:Lcom/android/server/audio/MediaFocusControl;

.field private final mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mFocusGainRequest:I

.field private mFocusLossReceived:I

.field private final mGrantFlags:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSourceRef:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;)V
    .locals 1
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusRequest"    # I
    .param p3, "grantFlags"    # I
    .param p4, "afl"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "source"    # Landroid/os/IBinder;
    .param p6, "id"    # Ljava/lang/String;
    .param p7, "hdlr"    # Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .param p8, "pn"    # Ljava/lang/String;
    .param p9, "uid"    # I
    .param p10, "ctlr"    # Lcom/android/server/audio/MediaFocusControl;

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    iput-object p1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    #@5
    .line 86
    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    #@7
    .line 87
    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    #@9
    .line 88
    iput-object p6, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    #@b
    .line 89
    iput-object p7, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    #@d
    .line 90
    iput-object p8, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    #@f
    .line 91
    iput p9, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    #@11
    .line 92
    iput p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    #@13
    .line 93
    iput p3, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    #@15
    .line 94
    const/4 v0, 0x0

    #@16
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    #@18
    .line 95
    iput-object p10, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    #@1a
    .line 84
    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    #@0
    .prologue
    .line 176
    new-instance v0, Ljava/lang/String;

    #@2
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #@5
    .line 177
    .local v0, "msg":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "DELAY_OK"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 180
    :cond_0
    and-int/lit8 v1, p0, 0x4

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_1

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string/jumbo v2, "|"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    .line 182
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    const-string/jumbo v2, "LOCK"

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    .line 184
    :cond_2
    and-int/lit8 v1, p0, 0x2

    #@51
    if-eqz v1, :cond_4

    #@53
    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@56
    move-result v1

    #@57
    if-nez v1, :cond_3

    #@59
    new-instance v1, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    const-string/jumbo v2, "|"

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    .line 186
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    const-string/jumbo v2, "PAUSES_ON_DUCKABLE_LOSS"

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v0

    #@81
    .line 188
    :cond_4
    return-object v0
.end method

.method private static focusChangeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "focus"    # I

    #@0
    .prologue
    .line 145
    packed-switch p0, :pswitch_data_0

    #@3
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "[invalid focus change"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, "]"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 147
    :pswitch_0
    const-string/jumbo v0, "none"

    #@22
    return-object v0

    #@23
    .line 149
    :pswitch_1
    const-string/jumbo v0, "GAIN"

    #@26
    return-object v0

    #@27
    .line 151
    :pswitch_2
    const-string/jumbo v0, "GAIN_TRANSIENT"

    #@2a
    return-object v0

    #@2b
    .line 153
    :pswitch_3
    const-string/jumbo v0, "GAIN_TRANSIENT_MAY_DUCK"

    #@2e
    return-object v0

    #@2f
    .line 155
    :pswitch_4
    const-string/jumbo v0, "GAIN_TRANSIENT_EXCLUSIVE"

    #@32
    return-object v0

    #@33
    .line 157
    :pswitch_5
    const-string/jumbo v0, "LOSS"

    #@36
    return-object v0

    #@37
    .line 159
    :pswitch_6
    const-string/jumbo v0, "LOSS_TRANSIENT"

    #@3a
    return-object v0

    #@3b
    .line 161
    :pswitch_7
    const-string/jumbo v0, "LOSS_TRANSIENT_CAN_DUCK"

    #@3e
    return-object v0

    #@3f
    .line 145
    nop

    #@40
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private focusGainToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 168
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    #@2
    invoke-static {v0}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private focusLossForGainRequest(I)I
    .locals 3
    .param p1, "gainRequest"    # I

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    const/4 v1, -0x1

    #@2
    .line 227
    packed-switch p1, :pswitch_data_0

    #@5
    .line 257
    :goto_0
    const-string/jumbo v0, "MediaFocusControl"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "focusLossForGainRequest() for invalid focus request "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 258
    const/4 v0, 0x0

    #@20
    return v0

    #@21
    .line 229
    :pswitch_0
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    #@23
    packed-switch v0, :pswitch_data_1

    #@26
    .line 238
    :pswitch_1
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    #@28
    packed-switch v0, :pswitch_data_2

    #@2b
    .line 247
    :pswitch_2
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    #@2d
    packed-switch v0, :pswitch_data_3

    #@30
    goto :goto_0

    #@31
    .line 250
    :pswitch_3
    const/4 v0, -0x3

    #@32
    return v0

    #@33
    .line 234
    :pswitch_4
    return v1

    #@34
    .line 242
    :pswitch_5
    return v2

    #@35
    .line 244
    :pswitch_6
    return v1

    #@36
    .line 252
    :pswitch_7
    return v2

    #@37
    .line 254
    :pswitch_8
    return v1

    #@38
    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    #@44
    .line 229
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    #@50
    .line 238
    :pswitch_data_2
    .packed-switch -0x3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch

    #@5c
    .line 247
    :pswitch_data_3
    .packed-switch -0x3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method

.method private focusLossToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 172
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    #@2
    invoke-static {v0}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "  source:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 193
    const-string/jumbo v1, " -- pack: "

    #@15
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 193
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    #@1b
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 194
    const-string/jumbo v1, " -- client: "

    #@22
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 194
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    #@28
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 195
    const-string/jumbo v1, " -- gain: "

    #@2f
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 195
    invoke-direct {p0}, Lcom/android/server/audio/FocusRequester;->focusGainToString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 196
    const-string/jumbo v1, " -- flags: "

    #@3e
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 196
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    #@44
    invoke-static {v1}, Lcom/android/server/audio/FocusRequester;->flagsToString(I)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 197
    const-string/jumbo v1, " -- loss: "

    #@4f
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 197
    invoke-direct {p0}, Lcom/android/server/audio/FocusRequester;->focusLossToString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 198
    const-string/jumbo v1, " -- uid: "

    #@5e
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    .line 198
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    #@64
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    .line 199
    const-string/jumbo v1, " -- attr: "

    #@6b
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    .line 199
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    #@71
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7c
    .line 191
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->release()V

    #@3
    .line 217
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 215
    return-void
.end method

.method getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    #@2
    return-object v0
.end method

.method getClientId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getGainRequest()I
    .locals 1

    #@0
    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    #@2
    return v0
.end method

.method getGrantFlags()I
    .locals 1

    #@0
    .prologue
    .line 136
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    #@2
    return v0
.end method

.method handleExternalFocusGain(I)V
    .locals 1
    .param p1, "focusGain"    # I

    #@0
    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/server/audio/FocusRequester;->focusLossForGainRequest(I)I

    #@3
    move-result v0

    #@4
    .line 267
    .local v0, "focusLoss":I
    invoke-virtual {p0, v0}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(I)V

    #@7
    .line 265
    return-void
.end method

.method handleFocusGain(I)V
    .locals 4
    .param p1, "focusGain"    # I

    #@0
    .prologue
    .line 275
    const/4 v1, 0x0

    #@1
    :try_start_0
    iput v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    #@3
    .line 276
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    #@5
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    #@8
    move-result-object v2

    #@9
    .line 277
    const/4 v3, 0x1

    #@a
    .line 276
    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    #@d
    .line 278
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 283
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    #@13
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    #@15
    invoke-interface {v1, p1, v2}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 273
    :cond_0
    :goto_0
    return-void

    #@19
    .line 285
    :catch_0
    move-exception v0

    #@1a
    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaFocusControl"

    #@1d
    const-string/jumbo v2, "Failure to signal gain of audio focus due to: "

    #@20
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    goto :goto_0
.end method

.method handleFocusLoss(I)V
    .locals 4
    .param p1, "focusLoss"    # I

    #@0
    .prologue
    .line 295
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    #@2
    if-eq p1, v1, :cond_1

    #@4
    .line 296
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    #@6
    .line 302
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    #@8
    invoke-virtual {v1}, Lcom/android/server/audio/MediaFocusControl;->mustNotifyFocusOwnerOnDuck()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 303
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    #@10
    const/4 v2, -0x3

    #@11
    if-ne v1, v2, :cond_0

    #@13
    .line 304
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    #@15
    and-int/lit8 v1, v1, 0x2

    #@17
    if-nez v1, :cond_0

    #@19
    .line 310
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    #@1b
    .line 311
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    #@1e
    move-result-object v2

    #@1f
    const/4 v3, 0x0

    #@20
    .line 310
    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    #@23
    .line 312
    return-void

    #@24
    .line 314
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 319
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    #@2a
    .line 320
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    #@2d
    move-result-object v2

    #@2e
    const/4 v3, 0x1

    #@2f
    .line 319
    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    #@32
    .line 321
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    #@34
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    #@36
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    #@38
    invoke-interface {v1, v2, v3}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 293
    :cond_1
    :goto_0
    return-void

    #@3c
    .line 324
    :catch_0
    move-exception v0

    #@3d
    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaFocusControl"

    #@40
    const-string/jumbo v2, "Failure to signal loss of audio focus due to:"

    #@43
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@46
    goto :goto_0
.end method

.method hasSameBinder(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "ib"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method hasSameClient(Ljava/lang/String;)Z
    .locals 3
    .param p1, "otherClient"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    #@3
    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :cond_0
    return v1

    #@b
    .line 102
    :catch_0
    move-exception v0

    #@c
    .line 103
    .local v0, "e":Ljava/lang/NullPointerException;
    return v1
.end method

.method hasSamePackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pack"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    #@3
    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :cond_0
    return v1

    #@b
    .line 118
    :catch_0
    move-exception v0

    #@c
    .line 119
    .local v0, "e":Ljava/lang/NullPointerException;
    return v1
.end method

.method hasSameUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method isLockedFocusOwner()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 108
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method release()V
    .locals 4

    #@0
    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 206
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    #@a
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    #@c
    const/4 v3, 0x0

    #@d
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@10
    .line 207
    const/4 v1, 0x0

    #@11
    iput-object v1, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 203
    :cond_0
    :goto_0
    return-void

    #@14
    .line 209
    :catch_0
    move-exception v0

    #@15
    .line 210
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v1, "MediaFocusControl"

    #@18
    const-string/jumbo v2, "FocusRequester.release() hit "

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    goto :goto_0
.end method

.method toAudioFocusInfo()Landroid/media/AudioFocusInfo;
    .locals 7

    #@0
    .prologue
    .line 330
    new-instance v0, Landroid/media/AudioFocusInfo;

    #@2
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    #@4
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    #@6
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    #@8
    .line 331
    iget v4, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    #@a
    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    #@c
    iget v6, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    #@e
    .line 330
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;Ljava/lang/String;Ljava/lang/String;III)V

    #@11
    return-object v0
.end method
