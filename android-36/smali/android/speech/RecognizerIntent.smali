.class public Landroid/speech/RecognizerIntent;
.super Ljava/lang/Object;
.source "RecognizerIntent.java"


# static fields
.field public static final whitelist ACTION_GET_LANGUAGE_DETAILS:Ljava/lang/String; = "android.speech.action.GET_LANGUAGE_DETAILS"

.field public static final whitelist ACTION_RECOGNIZE_SPEECH:Ljava/lang/String; = "android.speech.action.RECOGNIZE_SPEECH"

.field public static final whitelist ACTION_VOICE_SEARCH_HANDS_FREE:Ljava/lang/String; = "android.speech.action.VOICE_SEARCH_HANDS_FREE"

.field public static final whitelist ACTION_WEB_SEARCH:Ljava/lang/String; = "android.speech.action.WEB_SEARCH"

.field public static final whitelist DETAILS_META_DATA:Ljava/lang/String; = "android.speech.DETAILS"

.field public static final whitelist EXTRA_AUDIO_INJECT_SOURCE:Ljava/lang/String; = "android.speech.extra.AUDIO_INJECT_SOURCE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_AUDIO_SOURCE:Ljava/lang/String; = "android.speech.extra.AUDIO_SOURCE"

.field public static final whitelist EXTRA_AUDIO_SOURCE_CHANNEL_COUNT:Ljava/lang/String; = "android.speech.extra.AUDIO_SOURCE_CHANNEL_COUNT"

.field public static final whitelist EXTRA_AUDIO_SOURCE_ENCODING:Ljava/lang/String; = "android.speech.extra.AUDIO_SOURCE_ENCODING"

.field public static final whitelist EXTRA_AUDIO_SOURCE_SAMPLING_RATE:Ljava/lang/String; = "android.speech.extra.AUDIO_SOURCE_SAMPLING_RATE"

.field public static final whitelist EXTRA_BIASING_STRINGS:Ljava/lang/String; = "android.speech.extra.BIASING_STRINGS"

.field public static final whitelist EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field public static final whitelist EXTRA_CONFIDENCE_SCORES:Ljava/lang/String; = "android.speech.extra.CONFIDENCE_SCORES"

.field public static final whitelist EXTRA_ENABLE_BIASING_DEVICE_CONTEXT:Ljava/lang/String; = "android.speech.extra.ENABLE_BIASING_DEVICE_CONTEXT"

.field public static final whitelist EXTRA_ENABLE_FORMATTING:Ljava/lang/String; = "android.speech.extra.ENABLE_FORMATTING"

.field public static final whitelist EXTRA_ENABLE_LANGUAGE_DETECTION:Ljava/lang/String; = "android.speech.extra.ENABLE_LANGUAGE_DETECTION"

.field public static final whitelist EXTRA_ENABLE_LANGUAGE_SWITCH:Ljava/lang/String; = "android.speech.extra.ENABLE_LANGUAGE_SWITCH"

.field public static final whitelist EXTRA_HIDE_PARTIAL_TRAILING_PUNCTUATION:Ljava/lang/String; = "android.speech.extra.HIDE_PARTIAL_TRAILING_PUNCTUATION"

.field public static final whitelist EXTRA_LANGUAGE:Ljava/lang/String; = "android.speech.extra.LANGUAGE"

.field public static final whitelist EXTRA_LANGUAGE_DETECTION_ALLOWED_LANGUAGES:Ljava/lang/String; = "android.speech.extra.LANGUAGE_DETECTION_ALLOWED_LANGUAGES"

.field public static final whitelist EXTRA_LANGUAGE_MODEL:Ljava/lang/String; = "android.speech.extra.LANGUAGE_MODEL"

.field public static final whitelist EXTRA_LANGUAGE_PREFERENCE:Ljava/lang/String; = "android.speech.extra.LANGUAGE_PREFERENCE"

.field public static final whitelist EXTRA_LANGUAGE_SWITCH_ALLOWED_LANGUAGES:Ljava/lang/String; = "android.speech.extra.LANGUAGE_SWITCH_ALLOWED_LANGUAGES"

.field public static final whitelist EXTRA_LANGUAGE_SWITCH_INITIAL_ACTIVE_DURATION_TIME_MILLIS:Ljava/lang/String; = "android.speech.extra.LANGUAGE_SWITCH_INITIAL_ACTIVE_DURATION_TIME_MILLIS"

.field public static final whitelist EXTRA_LANGUAGE_SWITCH_MAX_SWITCHES:Ljava/lang/String; = "android.speech.extra.LANGUAGE_SWITCH_MAX_SWITCHES"

.field public static final whitelist EXTRA_MASK_OFFENSIVE_WORDS:Ljava/lang/String; = "android.speech.extra.MASK_OFFENSIVE_WORDS"

.field public static final whitelist EXTRA_MAX_RESULTS:Ljava/lang/String; = "android.speech.extra.MAX_RESULTS"

.field public static final whitelist EXTRA_ONLY_RETURN_LANGUAGE_PREFERENCE:Ljava/lang/String; = "android.speech.extra.ONLY_RETURN_LANGUAGE_PREFERENCE"

.field public static final whitelist EXTRA_ORIGIN:Ljava/lang/String; = "android.speech.extra.ORIGIN"

.field public static final whitelist EXTRA_PARTIAL_RESULTS:Ljava/lang/String; = "android.speech.extra.PARTIAL_RESULTS"

.field public static final whitelist EXTRA_PREFER_OFFLINE:Ljava/lang/String; = "android.speech.extra.PREFER_OFFLINE"

.field public static final whitelist EXTRA_PROMPT:Ljava/lang/String; = "android.speech.extra.PROMPT"

.field public static final whitelist EXTRA_REQUEST_WORD_CONFIDENCE:Ljava/lang/String; = "android.speech.extra.REQUEST_WORD_CONFIDENCE"

.field public static final whitelist EXTRA_REQUEST_WORD_TIMING:Ljava/lang/String; = "android.speech.extra.REQUEST_WORD_TIMING"

.field public static final whitelist EXTRA_RESULTS:Ljava/lang/String; = "android.speech.extra.RESULTS"

.field public static final whitelist EXTRA_RESULTS_PENDINGINTENT:Ljava/lang/String; = "android.speech.extra.RESULTS_PENDINGINTENT"

.field public static final whitelist EXTRA_RESULTS_PENDINGINTENT_BUNDLE:Ljava/lang/String; = "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

.field public static final whitelist EXTRA_SECURE:Ljava/lang/String; = "android.speech.extras.EXTRA_SECURE"

.field public static final whitelist EXTRA_SEGMENTED_SESSION:Ljava/lang/String; = "android.speech.extra.SEGMENTED_SESSION"

.field public static final whitelist EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

.field public static final whitelist EXTRA_SPEECH_INPUT_MINIMUM_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

.field public static final whitelist EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

.field public static final whitelist EXTRA_SUPPORTED_LANGUAGES:Ljava/lang/String; = "android.speech.extra.SUPPORTED_LANGUAGES"

.field public static final whitelist EXTRA_WEB_SEARCH_ONLY:Ljava/lang/String; = "android.speech.extra.WEB_SEARCH_ONLY"

.field public static final whitelist FORMATTING_OPTIMIZE_LATENCY:Ljava/lang/String; = "latency"

.field public static final whitelist FORMATTING_OPTIMIZE_QUALITY:Ljava/lang/String; = "quality"

.field public static final whitelist LANGUAGE_MODEL_FREE_FORM:Ljava/lang/String; = "free_form"

.field public static final whitelist LANGUAGE_MODEL_WEB_SEARCH:Ljava/lang/String; = "web_search"

.field public static final whitelist LANGUAGE_SWITCH_BALANCED:Ljava/lang/String; = "balanced"

.field public static final whitelist LANGUAGE_SWITCH_HIGH_PRECISION:Ljava/lang/String; = "high_precision"

.field public static final whitelist LANGUAGE_SWITCH_QUICK_RESPONSE:Ljava/lang/String; = "quick_response"

.field public static final whitelist RESULT_AUDIO_ERROR:I = 0x5

.field public static final whitelist RESULT_CLIENT_ERROR:I = 0x2

.field public static final whitelist RESULT_NETWORK_ERROR:I = 0x4

.field public static final whitelist RESULT_NO_MATCH:I = 0x1

.field public static final whitelist RESULT_SERVER_ERROR:I = 0x3


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static final whitelist getVoiceDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, "voiceSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 461
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_40

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_40

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1f

    goto :goto_40

    .line 463
    :cond_1f
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.speech.DETAILS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "className":Ljava/lang/String;
    if-nez v3, :cond_2c

    return-object v2

    .line 466
    :cond_2c
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.speech.action.GET_LANGUAGE_DETAILS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v2, "detailsIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 468
    return-object v2

    .line 461
    .end local v2    # "detailsIntent":Landroid/content/Intent;
    .end local v3    # "className":Ljava/lang/String;
    :cond_40
    :goto_40
    return-object v2
.end method
