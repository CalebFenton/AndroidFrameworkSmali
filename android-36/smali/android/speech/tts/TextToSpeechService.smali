.class public abstract Landroid/speech/tts/TextToSpeechService;
.super Landroid/app/Service;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeechService$SynthThread;,
        Landroid/speech/tts/TextToSpeechService$SynthHandler;,
        Landroid/speech/tts/TextToSpeechService$CallbackMap;,
        Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;,
        Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;,
        Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;,
        Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$SpeechItem;,
        Landroid/speech/tts/TextToSpeechService$AudioOutputParams;,
        Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o SYNTH_THREAD_NAME:Ljava/lang/String; = "SynthThread"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TextToSpeechService"


# instance fields
.field private greylist-max-o mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final greylist-max-o mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

.field private greylist-max-o mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

.field private greylist-max-o mEngineHelper:Landroid/speech/tts/TtsEngines;

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private greylist-max-o mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

.field private final greylist-max-o mVoicesInfoLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioPlaybackHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/speech/tts/TextToSpeechService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDefaultPitch(Landroid/speech/tts/TextToSpeechService;)I
    .registers 1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getDefaultPitch()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDefaultSpeechRate(Landroid/speech/tts/TextToSpeechService;)I
    .registers 1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getDefaultSpeechRate()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSettingsLocale(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getSettingsLocale()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mVoicesInfoLock:Ljava/lang/Object;

    .line 1274
    new-instance v0, Landroid/speech/tts/TextToSpeechService$1;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeechService$1;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

    return-void
.end method

.method private greylist-max-o getDefaultPitch()I
    .registers 3

    .line 413
    const-string/jumbo v0, "tts_default_pitch"

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService;->getSecureSettingInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getDefaultSpeechRate()I
    .registers 3

    .line 409
    const-string/jumbo v0, "tts_default_rate"

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService;->getSecureSettingInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 253
    const/4 v0, 0x2

    .line 254
    .local v0, "expectedStatus":I
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 255
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 256
    const/4 v0, 0x0

    goto :goto_18

    .line 258
    :cond_17
    const/4 v0, 0x1

    .line 261
    :cond_18
    :goto_18
    return v0
.end method

.method private greylist-max-o getSecureSettingInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 422
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getSettingsLocale()[Ljava/lang/String;
    .registers 3

    .line 417
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mEngineHelper:Landroid/speech/tts/TtsEngines;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 418
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/speech/tts/TtsEngines;->toOldLocaleStringFormat(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1261
    const-string v0, "android.intent.action.TTS_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1262
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

    invoke-virtual {v0}, Landroid/speech/tts/ITextToSpeechService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1263
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

    return-object v0

    .line 1265
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 6

    .line 126
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 128
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SynthThread;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeechService$SynthThread;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    .line 129
    .local v0, "synthThread":Landroid/speech/tts/TextToSpeechService$SynthThread;
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthThread;->start()V

    .line 130
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;-><init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    .line 132
    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler;

    invoke-direct {v1}, Landroid/speech/tts/AudioPlaybackHandler;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    .line 133
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v1}, Landroid/speech/tts/AudioPlaybackHandler;->start()V

    .line 135
    new-instance v1, Landroid/speech/tts/TtsEngines;

    invoke-direct {v1, p0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService;->mEngineHelper:Landroid/speech/tts/TtsEngines;

    .line 137
    new-instance v1, Landroid/speech/tts/TextToSpeechService$CallbackMap;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeechService$CallbackMap;-><init>(Landroid/speech/tts/TextToSpeechService;Landroid/speech/tts/TextToSpeechService-IA;)V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    .line 139
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getSettingsLocale()[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "defaultLocale":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/speech/tts/TextToSpeechService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->quit()V

    .line 154
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v0}, Landroid/speech/tts/AudioPlaybackHandler;->quit()V

    .line 156
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->kill()V

    .line 158
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 159
    return-void
.end method

.method public whitelist onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 320
    invoke-virtual {p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 321
    .local v0, "localeStatus":I
    const/4 v1, 0x0

    .line 322
    .local v1, "iso3Locale":Ljava/util/Locale;
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_2c

    .line 333
    return-object v2

    .line 330
    :pswitch_a
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p1, p2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v1    # "iso3Locale":Ljava/util/Locale;
    .local v3, "iso3Locale":Ljava/util/Locale;
    goto :goto_1c

    .line 327
    .end local v3    # "iso3Locale":Ljava/util/Locale;
    .restart local v1    # "iso3Locale":Ljava/util/Locale;
    :pswitch_10
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .end local v1    # "iso3Locale":Ljava/util/Locale;
    .restart local v3    # "iso3Locale":Ljava/util/Locale;
    goto :goto_1c

    .line 324
    .end local v3    # "iso3Locale":Ljava/util/Locale;
    .restart local v1    # "iso3Locale":Ljava/util/Locale;
    :pswitch_16
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 325
    .end local v1    # "iso3Locale":Ljava/util/Locale;
    .restart local v3    # "iso3Locale":Ljava/util/Locale;
    nop

    .line 335
    :goto_1c
    invoke-static {v3}, Landroid/speech/tts/TtsEngines;->normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 336
    .local v1, "properLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, "voiceName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/speech/tts/TextToSpeechService;->onIsValidVoiceName(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2b

    .line 338
    return-object v4

    .line 340
    :cond_2b
    return-object v2

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method protected whitelist onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .registers 5
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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected abstract whitelist onGetLanguage()[Ljava/lang/String;
.end method

.method public whitelist onGetVoices()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 281
    .local v1, "voices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/speech/tts/Voice;>;"
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v4, v0

    :goto_d
    if-ge v4, v3, :cond_5c

    aget-object v7, v2, v4

    .line 282
    .local v7, "locale":Ljava/util/Locale;
    invoke-direct {p0, v7}, Landroid/speech/tts/TextToSpeechService;->getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I

    move-result v12

    .line 284
    .local v12, "expectedStatus":I
    :try_start_15
    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-virtual {p0, v0, v5, v6}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_25
    .catch Ljava/util/MissingResourceException; {:try_start_15 .. :try_end_25} :catch_57

    .line 286
    .local v0, "localeStatus":I
    if-eq v0, v12, :cond_28

    .line 287
    goto :goto_59

    .line 292
    .end local v0    # "localeStatus":I
    :cond_28
    nop

    .line 293
    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-virtual {p0, v0, v5, v6}, Landroid/speech/tts/TextToSpeechService;->onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    .line 295
    .local v11, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-virtual {p0, v0, v5, v6}, Landroid/speech/tts/TextToSpeechService;->onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "voiceName":Ljava/lang/String;
    new-instance v5, Landroid/speech/tts/Voice;

    const/16 v9, 0x12c

    const/4 v10, 0x0

    const/16 v8, 0x12c

    invoke-direct/range {v5 .. v11}, Landroid/speech/tts/Voice;-><init>(Ljava/lang/String;Ljava/util/Locale;IIZLjava/util/Set;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 289
    .end local v6    # "voiceName":Ljava/lang/String;
    .end local v11    # "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_57
    move-exception v0

    .line 291
    .local v0, "e":Ljava/util/MissingResourceException;
    nop

    .line 281
    .end local v0    # "e":Ljava/util/MissingResourceException;
    .end local v7    # "locale":Ljava/util/Locale;
    .end local v12    # "expectedStatus":I
    :goto_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 300
    :cond_5c
    return-object v1
.end method

.method protected abstract whitelist onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public whitelist onIsValidVoiceName(Ljava/lang/String;)I
    .registers 8
    .param p1, "voiceName"    # Ljava/lang/String;

    .line 391
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 392
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 393
    return v1

    .line 395
    :cond_8
    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService;->getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I

    move-result v2

    .line 397
    .local v2, "expectedStatus":I
    :try_start_c
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 397
    invoke-virtual {p0, v3, v4, v5}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_1c
    .catch Ljava/util/MissingResourceException; {:try_start_c .. :try_end_1c} :catch_21

    .line 399
    .local v3, "localeStatus":I
    if-eq v3, v2, :cond_1f

    .line 400
    return v1

    .line 402
    :cond_1f
    const/4 v1, 0x0

    return v1

    .line 403
    .end local v3    # "localeStatus":I
    :catch_21
    move-exception v3

    .line 404
    .local v3, "e":Ljava/util/MissingResourceException;
    return v1
.end method

.method protected abstract whitelist onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public whitelist onLoadVoice(Ljava/lang/String;)I
    .registers 9
    .param p1, "voiceName"    # Ljava/lang/String;

    .line 360
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 361
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 362
    return v1

    .line 364
    :cond_8
    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService;->getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I

    move-result v2

    .line 366
    .local v2, "expectedStatus":I
    :try_start_c
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-virtual {p0, v3, v4, v5}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 368
    .local v3, "localeStatus":I
    if-eq v3, v2, :cond_1f

    .line 369
    return v1

    .line 371
    :cond_1f
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-virtual {p0, v4, v5, v6}, Landroid/speech/tts/TextToSpeechService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/util/MissingResourceException; {:try_start_c .. :try_end_2e} :catch_30

    .line 373
    const/4 v1, 0x0

    return v1

    .line 374
    .end local v3    # "localeStatus":I
    :catch_30
    move-exception v3

    .line 375
    .local v3, "e":Ljava/util/MissingResourceException;
    return v1
.end method

.method protected abstract whitelist onStop()V
.end method

.method protected abstract whitelist onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V
.end method
