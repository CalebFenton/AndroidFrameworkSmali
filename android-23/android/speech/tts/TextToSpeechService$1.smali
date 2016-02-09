.class Landroid/speech/tts/TextToSpeechService$1;
.super Landroid/speech/tts/ITextToSpeechService$Stub;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;

    #@0
    .prologue
    .line 1195
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;-><init>()V

    #@5
    return-void
.end method

.method private varargs checkNonNull([Ljava/lang/Object;)Z
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1380
    array-length v3, p1

    #@2
    move v1, v2

    #@3
    :goto_0
    if-ge v1, v3, :cond_1

    #@5
    aget-object v0, p1, v1

    #@7
    .line 1381
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@9
    return v2

    #@a
    .line 1380
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@c
    goto :goto_0

    #@d
    .line 1383
    .end local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x1

    #@e
    return v1
.end method

.method private intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "in"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1376
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public getClientDefaultLanguage()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1271
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-wrap1(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 1350
    new-array v1, v3, [Ljava/lang/Object;

    #@5
    aput-object p1, v1, v2

    #@7
    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1351
    return-object v4

    #@e
    .line 1353
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@10
    invoke-virtual {v1, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@13
    move-result v0

    #@14
    .line 1355
    .local v0, "retVal":I
    if-eqz v0, :cond_1

    #@16
    .line 1356
    if-ne v0, v3, :cond_2

    #@18
    .line 1358
    :cond_1
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@1a
    invoke-virtual {v1, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1

    #@1f
    .line 1357
    :cond_2
    const/4 v1, 0x2

    #@20
    if-eq v0, v1, :cond_1

    #@22
    .line 1360
    return-object v4
.end method

.method public getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1289
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    invoke-virtual {v2, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    .line 1290
    .local v0, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@7
    .line 1291
    .local v1, "featuresArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    .line 1292
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@c
    move-result v2

    #@d
    new-array v1, v2, [Ljava/lang/String;

    #@f
    .line 1293
    .local v1, "featuresArray":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@12
    .line 1297
    :goto_0
    return-object v1

    #@13
    .line 1295
    .local v1, "featuresArray":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    #@14
    new-array v1, v2, [Ljava/lang/String;

    #@16
    .local v1, "featuresArray":[Ljava/lang/String;
    goto :goto_0
.end method

.method public getLanguage()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1266
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService;->onGetLanguage()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVoices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1328
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService;->onGetVoices()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1280
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1281
    const/4 v0, -0x1

    #@d
    return v0

    #@e
    .line 1284
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@10
    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public isSpeaking()Z
    .locals 1

    #@0
    .prologue
    .line 1252
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-get3(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->isSpeaking()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@e
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-get0(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/speech/tts/AudioPlaybackHandler;->isSpeaking()Z

    #@15
    move-result v0

    #@16
    :goto_0
    return v0

    #@17
    :cond_0
    const/4 v0, 0x1

    #@18
    goto :goto_0
.end method

.method public loadLanguage(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 1306
    new-array v1, v9, [Ljava/lang/Object;

    #@5
    aput-object p2, v1, v2

    #@7
    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1307
    return v10

    #@e
    .line 1309
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@10
    invoke-virtual {v1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@13
    move-result v8

    #@14
    .line 1311
    .local v8, "retVal":I
    if-eqz v8, :cond_1

    #@16
    .line 1312
    if-ne v8, v9, :cond_2

    #@18
    .line 1315
    :cond_1
    new-instance v0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;

    #@1a
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v3

    #@20
    .line 1316
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@23
    move-result v4

    #@24
    move-object v2, p1

    #@25
    move-object v5, p2

    #@26
    move-object v6, p3

    #@27
    move-object v7, p4

    #@28
    .line 1315
    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 1318
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2d
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get3(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, v9, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_3

    #@37
    .line 1320
    return v10

    #@38
    .line 1313
    .end local v0    # "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :cond_2
    const/4 v1, 0x2

    #@39
    if-eq v8, v1, :cond_1

    #@3b
    .line 1323
    :cond_3
    return v8
.end method

.method public loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 9
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "voiceName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 1333
    new-array v1, v8, [Ljava/lang/Object;

    #@5
    aput-object p2, v1, v2

    #@7
    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1334
    return v7

    #@e
    .line 1336
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@10
    invoke-virtual {v1, p2}, Landroid/speech/tts/TextToSpeechService;->onIsValidVoiceName(Ljava/lang/String;)I

    #@13
    move-result v6

    #@14
    .line 1338
    .local v6, "retVal":I
    if-nez v6, :cond_1

    #@16
    .line 1339
    new-instance v0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;

    #@18
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@1a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1d
    move-result v3

    #@1e
    .line 1340
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@21
    move-result v4

    #@22
    move-object v2, p1

    #@23
    move-object v5, p2

    #@24
    .line 1339
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;)V

    #@27
    .line 1341
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@29
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get3(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, v8, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_1

    #@33
    .line 1343
    return v7

    #@34
    .line 1346
    .end local v0    # "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :cond_1
    return v6
.end method

.method public playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 8
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "audioUri"    # Landroid/net/Uri;
    .param p3, "queueMode"    # I
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1230
    const/4 v1, 0x3

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    const/4 v2, 0x0

    #@4
    aput-object p1, v1, v2

    #@6
    const/4 v2, 0x1

    #@7
    aput-object p2, v1, v2

    #@9
    const/4 v2, 0x2

    #@a
    aput-object p4, v1, v2

    #@c
    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 1231
    const/4 v1, -0x1

    #@13
    return v1

    #@14
    .line 1234
    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;

    #@16
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@18
    .line 1235
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1b
    move-result v3

    #@1c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1f
    move-result v4

    #@20
    move-object v2, p1

    #@21
    move-object v5, p4

    #@22
    move-object v6, p5

    #@23
    move-object v7, p2

    #@24
    .line 1234
    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    #@27
    .line 1236
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@29
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get3(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p3, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    #@30
    move-result v1

    #@31
    return v1
.end method

.method public playSilence(Landroid/os/IBinder;JILjava/lang/String;)I
    .locals 8
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "duration"    # J
    .param p4, "queueMode"    # I
    .param p5, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1241
    const/4 v1, 0x1

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    const/4 v2, 0x0

    #@4
    aput-object p1, v1, v2

    #@6
    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1242
    const/4 v1, -0x1

    #@d
    return v1

    #@e
    .line 1245
    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;

    #@10
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@12
    .line 1246
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v3

    #@16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@19
    move-result v4

    #@1a
    move-object v2, p1

    #@1b
    move-object v5, p5

    #@1c
    move-wide v6, p2

    #@1d
    .line 1245
    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;J)V

    #@20
    .line 1247
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@22
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get3(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p4, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    #@29
    move-result v1

    #@2a
    return v1
.end method

.method public setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V
    .locals 2
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "cb"    # Landroid/speech/tts/ITextToSpeechCallback;

    #@0
    .prologue
    .line 1367
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1368
    return-void

    #@d
    .line 1371
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@f
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    #@16
    .line 1365
    return-void
.end method

.method public speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 8
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "queueMode"    # I
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1199
    const/4 v1, 0x3

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    const/4 v2, 0x0

    #@4
    aput-object p1, v1, v2

    #@6
    const/4 v2, 0x1

    #@7
    aput-object p2, v1, v2

    #@9
    const/4 v2, 0x2

    #@a
    aput-object p4, v1, v2

    #@c
    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 1200
    const/4 v1, -0x1

    #@13
    return v1

    #@14
    .line 1203
    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;

    #@16
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@18
    .line 1204
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1b
    move-result v3

    #@1c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1f
    move-result v4

    #@20
    move-object v2, p1

    #@21
    move-object v5, p4

    #@22
    move-object v6, p5

    #@23
    move-object v7, p2

    #@24
    .line 1203
    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@27
    .line 1205
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@29
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get3(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p3, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    #@30
    move-result v1

    #@31
    return v1
.end method

.method public stop(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "caller"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1257
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1258
    const/4 v0, -0x1

    #@d
    return v0

    #@e
    .line 1261
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@10
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-get3(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 10
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1211
    const/4 v1, 0x4

    #@1
    new-array v1, v1, [Ljava/lang/Object;

    #@3
    const/4 v2, 0x0

    #@4
    aput-object p1, v1, v2

    #@6
    const/4 v2, 0x1

    #@7
    aput-object p2, v1, v2

    #@9
    const/4 v2, 0x2

    #@a
    aput-object p3, v1, v2

    #@c
    const/4 v2, 0x3

    #@d
    aput-object p4, v1, v2

    #@f
    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 1212
    const/4 v1, -0x1

    #@16
    return v1

    #@17
    .line 1219
    :cond_0
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    #@1a
    move-result v1

    #@1b
    .line 1218
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    #@1e
    move-result-object v9

    #@1f
    .line 1221
    .local v9, "sameFileDescriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;

    #@21
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@23
    .line 1222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@26
    move-result v3

    #@27
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2a
    move-result v4

    #@2b
    .line 1223
    new-instance v8, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    #@2d
    invoke-direct {v8, v9}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@30
    move-object v2, p1

    #@31
    move-object v5, p4

    #@32
    move-object v6, p5

    #@33
    move-object v7, p2

    #@34
    .line 1221
    invoke-direct/range {v0 .. v8}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/io/FileOutputStream;)V

    #@37
    .line 1224
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@39
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get3(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@3c
    move-result-object v1

    #@3d
    const/4 v2, 0x1

    #@3e
    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    #@41
    move-result v1

    #@42
    return v1
.end method
