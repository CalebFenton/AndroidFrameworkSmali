.class public abstract Landroid/speech/tts/TextToSpeechService;
.super Landroid/app/Service;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeechService$SynthThread;,
        Landroid/speech/tts/TextToSpeechService$SynthHandler;,
        Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;,
        Landroid/speech/tts/TextToSpeechService$AudioOutputParams;,
        Landroid/speech/tts/TextToSpeechService$SpeechItem;,
        Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$SpeechItemV1;,
        Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;,
        Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;,
        Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;,
        Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;,
        Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;,
        Landroid/speech/tts/TextToSpeechService$CallbackMap;,
        Landroid/speech/tts/TextToSpeechService$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final SYNTH_THREAD_NAME:Ljava/lang/String; = "SynthThread"

.field private static final TAG:Ljava/lang/String; = "TextToSpeechService"


# instance fields
.field private mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

.field private mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

.field private mEngineHelper:Landroid/speech/tts/TtsEngines;

.field private mPackageName:Ljava/lang/String;

.field private mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

.field private final mVoicesInfoLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/speech/tts/TextToSpeechService;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/speech/tts/TextToSpeechService;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getDefaultSpeechRate()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getSettingsLocale()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 120
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mVoicesInfoLock:Ljava/lang/Object;

    #@a
    .line 1195
    new-instance v0, Landroid/speech/tts/TextToSpeechService$1;

    #@c
    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeechService$1;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    #@f
    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

    #@11
    .line 103
    return-void
.end method

.method private getDefaultSpeechRate()I
    .locals 2

    #@0
    .prologue
    .line 411
    const-string/jumbo v0, "tts_default_rate"

    #@3
    const/16 v1, 0x64

    #@5
    invoke-direct {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService;->getSecureSettingInt(Ljava/lang/String;I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method private getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 255
    const/4 v0, 0x2

    #@1
    .line 256
    .local v0, "expectedStatus":I
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 257
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 258
    const/4 v0, 0x0

    #@16
    .line 263
    :cond_0
    :goto_0
    return v0

    #@17
    .line 260
    :cond_1
    const/4 v0, 0x1

    #@18
    goto :goto_0
.end method

.method private getSecureSettingInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 420
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private getSettingsLocale()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 415
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService;->mEngineHelper:Landroid/speech/tts/TtsEngines;

    #@2
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    #@4
    invoke-virtual {v1, v2}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    .line 416
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/speech/tts/TtsEngines;->toOldLocaleStringFormat(Ljava/util/Locale;)[Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1183
    const-string/jumbo v0, "android.intent.action.TTS_SERVICE"

    #@3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1184
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

    #@f
    return-object v0

    #@10
    .line 1186
    :cond_0
    const/4 v0, 0x0

    #@11
    return-object v0
.end method

.method public onCreate()V
    .locals 5

    #@0
    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #@3
    .line 127
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthThread;

    #@5
    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeechService$SynthThread;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    #@8
    .line 128
    .local v1, "synthThread":Landroid/speech/tts/TextToSpeechService$SynthThread;
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService$SynthThread;->start()V

    #@b
    .line 129
    new-instance v2, Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@d
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService$SynthThread;->getLooper()Landroid/os/Looper;

    #@10
    move-result-object v3

    #@11
    invoke-direct {v2, p0, v3}, Landroid/speech/tts/TextToSpeechService$SynthHandler;-><init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V

    #@14
    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@16
    .line 131
    new-instance v2, Landroid/speech/tts/AudioPlaybackHandler;

    #@18
    invoke-direct {v2}, Landroid/speech/tts/AudioPlaybackHandler;-><init>()V

    #@1b
    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    #@1d
    .line 132
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    #@1f
    invoke-virtual {v2}, Landroid/speech/tts/AudioPlaybackHandler;->start()V

    #@22
    .line 134
    new-instance v2, Landroid/speech/tts/TtsEngines;

    #@24
    invoke-direct {v2, p0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    #@27
    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mEngineHelper:Landroid/speech/tts/TtsEngines;

    #@29
    .line 136
    new-instance v2, Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@2b
    const/4 v3, 0x0

    #@2c
    invoke-direct {v2, p0, v3}, Landroid/speech/tts/TextToSpeechService$CallbackMap;-><init>(Landroid/speech/tts/TextToSpeechService;Landroid/speech/tts/TextToSpeechService$CallbackMap;)V

    #@2f
    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@31
    .line 138
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@34
    move-result-object v2

    #@35
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@37
    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    #@39
    .line 140
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getSettingsLocale()[Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    .line 143
    .local v0, "defaultLocale":[Ljava/lang/String;
    const/4 v2, 0x0

    #@3e
    aget-object v2, v0, v2

    #@40
    const/4 v3, 0x1

    #@41
    aget-object v3, v0, v3

    #@43
    const/4 v4, 0x2

    #@44
    aget-object v4, v0, v4

    #@46
    invoke-virtual {p0, v2, v3, v4}, Landroid/speech/tts/TextToSpeechService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 123
    return-void
.end method

.method public onDestroy()V
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@2
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->quit()V

    #@5
    .line 153
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    #@7
    invoke-virtual {v0}, Landroid/speech/tts/AudioPlaybackHandler;->quit()V

    #@a
    .line 155
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    #@c
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->kill()V

    #@f
    .line 157
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    #@12
    .line 147
    return-void
.end method

.method public onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 322
    invoke-virtual {p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@4
    move-result v1

    #@5
    .line 323
    .local v1, "localeStatus":I
    const/4 v0, 0x0

    #@6
    .line 324
    .local v0, "iso3Locale":Ljava/util/Locale;
    packed-switch v1, :pswitch_data_0

    #@9
    .line 335
    return-object v5

    #@a
    .line 326
    :pswitch_0
    new-instance v0, Ljava/util/Locale;

    #@c
    .end local v0    # "iso3Locale":Ljava/util/Locale;
    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@f
    .line 337
    .local v0, "iso3Locale":Ljava/util/Locale;
    :goto_0
    invoke-static {v0}, Landroid/speech/tts/TtsEngines;->normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;

    #@12
    move-result-object v2

    #@13
    .line 338
    .local v2, "properLocale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 339
    .local v3, "voiceName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/speech/tts/TextToSpeechService;->onIsValidVoiceName(Ljava/lang/String;)I

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_0

    #@1d
    .line 340
    return-object v3

    #@1e
    .line 329
    .end local v2    # "properLocale":Ljava/util/Locale;
    .end local v3    # "voiceName":Ljava/lang/String;
    .local v0, "iso3Locale":Ljava/util/Locale;
    :pswitch_1
    new-instance v0, Ljava/util/Locale;

    #@20
    .end local v0    # "iso3Locale":Ljava/util/Locale;
    invoke-direct {v0, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 330
    .local v0, "iso3Locale":Ljava/util/Locale;
    goto :goto_0

    #@24
    .line 332
    .local v0, "iso3Locale":Ljava/util/Locale;
    :pswitch_2
    new-instance v0, Ljava/util/Locale;

    #@26
    .end local v0    # "iso3Locale":Ljava/util/Locale;
    invoke-direct {v0, p1, p2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 333
    .local v0, "iso3Locale":Ljava/util/Locale;
    goto :goto_0

    #@2a
    .line 342
    .restart local v2    # "properLocale":Ljava/util/Locale;
    .restart local v3    # "voiceName":Ljava/lang/String;
    :cond_0
    return-object v5

    #@2b
    .line 324
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 251
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    return-object v0
.end method

.method protected abstract onGetLanguage()[Ljava/lang/String;
.end method

.method public onGetVoices()Ljava/util/List;
    .locals 15
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
    const/16 v3, 0x12c

    #@2
    const/4 v5, 0x0

    #@3
    .line 282
    new-instance v10, Ljava/util/ArrayList;

    #@5
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 283
    .local v10, "voices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/speech/tts/Voice;>;"
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    #@b
    move-result-object v12

    #@c
    array-length v13, v12

    #@d
    move v11, v5

    #@e
    :goto_0
    if-ge v11, v13, :cond_1

    #@10
    aget-object v2, v12, v11

    #@12
    .line 284
    .local v2, "locale":Ljava/util/Locale;
    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService;->getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I

    #@15
    move-result v8

    #@16
    .line 286
    .local v8, "expectedStatus":I
    :try_start_0
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 287
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@21
    move-result-object v14

    #@22
    .line 286
    invoke-virtual {p0, v0, v4, v14}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result v9

    #@26
    .line 288
    .local v9, "localeStatus":I
    if-eq v9, v8, :cond_0

    #@28
    .line 283
    .end local v9    # "localeStatus":I
    :goto_1
    add-int/lit8 v0, v11, 0x1

    #@2a
    move v11, v0

    #@2b
    goto :goto_0

    #@2c
    .line 295
    .restart local v9    # "localeStatus":I
    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 296
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@37
    move-result-object v14

    #@38
    .line 295
    invoke-virtual {p0, v0, v4, v14}, Landroid/speech/tts/TextToSpeechService;->onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    #@3b
    move-result-object v6

    #@3c
    .line 297
    .local v6, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 298
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@47
    move-result-object v14

    #@48
    .line 297
    invoke-virtual {p0, v0, v4, v14}, Landroid/speech/tts/TextToSpeechService;->onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    .line 299
    .local v1, "voiceName":Ljava/lang/String;
    new-instance v0, Landroid/speech/tts/Voice;

    #@4e
    move v4, v3

    #@4f
    invoke-direct/range {v0 .. v6}, Landroid/speech/tts/Voice;-><init>(Ljava/lang/String;Ljava/util/Locale;IIZLjava/util/Set;)V

    #@52
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@55
    goto :goto_1

    #@56
    .line 302
    .end local v1    # "voiceName":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v6    # "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "expectedStatus":I
    .end local v9    # "localeStatus":I
    :cond_1
    return-object v10

    #@57
    .line 291
    .restart local v2    # "locale":Ljava/util/Locale;
    .restart local v8    # "expectedStatus":I
    :catch_0
    move-exception v7

    #@58
    .local v7, "e":Ljava/util/MissingResourceException;
    goto :goto_1
.end method

.method protected abstract onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onIsValidVoiceName(Ljava/lang/String;)I
    .locals 8
    .param p1, "voiceName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 393
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@4
    move-result-object v2

    #@5
    .line 394
    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_0

    #@7
    .line 395
    return v7

    #@8
    .line 397
    :cond_0
    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService;->getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I

    #@b
    move-result v1

    #@c
    .line 399
    .local v1, "expectedStatus":I
    :try_start_0
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 400
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    .line 399
    invoke-virtual {p0, v4, v5, v6}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v3

    #@1c
    .line 401
    .local v3, "localeStatus":I
    if-eq v3, v1, :cond_1

    #@1e
    .line 402
    return v7

    #@1f
    .line 404
    :cond_1
    const/4 v4, 0x0

    #@20
    return v4

    #@21
    .line 405
    .end local v3    # "localeStatus":I
    :catch_0
    move-exception v0

    #@22
    .line 406
    .local v0, "e":Ljava/util/MissingResourceException;
    return v7
.end method

.method protected abstract onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onLoadVoice(Ljava/lang/String;)I
    .locals 8
    .param p1, "voiceName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 362
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@4
    move-result-object v2

    #@5
    .line 363
    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_0

    #@7
    .line 364
    return v7

    #@8
    .line 366
    :cond_0
    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService;->getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I

    #@b
    move-result v1

    #@c
    .line 368
    .local v1, "expectedStatus":I
    :try_start_0
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 369
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    .line 368
    invoke-virtual {p0, v4, v5, v6}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    move-result v3

    #@1c
    .line 370
    .local v3, "localeStatus":I
    if-eq v3, v1, :cond_1

    #@1e
    .line 371
    return v7

    #@1f
    .line 373
    :cond_1
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    .line 374
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    .line 373
    invoke-virtual {p0, v4, v5, v6}, Landroid/speech/tts/TextToSpeechService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 375
    const/4 v4, 0x0

    #@2f
    return v4

    #@30
    .line 376
    .end local v3    # "localeStatus":I
    :catch_0
    move-exception v0

    #@31
    .line 377
    .local v0, "e":Ljava/util/MissingResourceException;
    return v7
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V
.end method
