.class public Landroid/speech/tts/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$OnInitListener;,
        Landroid/speech/tts/TextToSpeech$Engine;,
        Landroid/speech/tts/TextToSpeech$Action;,
        Landroid/speech/tts/TextToSpeech$Connection;,
        Landroid/speech/tts/TextToSpeech$SystemConnection;,
        Landroid/speech/tts/TextToSpeech$DirectConnection;,
        Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;,
        Landroid/speech/tts/TextToSpeech$EngineInfo;,
        Landroid/speech/tts/TextToSpeech$Error;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field private static final blacklist DEBUG:Z = false

.field public static final whitelist ERROR:I = -0x1

.field public static final whitelist ERROR_INVALID_REQUEST:I = -0x8

.field public static final whitelist ERROR_NETWORK:I = -0x6

.field public static final whitelist ERROR_NETWORK_TIMEOUT:I = -0x7

.field public static final whitelist ERROR_NOT_INSTALLED_YET:I = -0x9

.field public static final whitelist ERROR_OUTPUT:I = -0x5

.field public static final whitelist ERROR_SERVICE:I = -0x4

.field public static final whitelist ERROR_SYNTHESIS:I = -0x3

.field public static final whitelist LANG_AVAILABLE:I = 0x0

.field public static final whitelist LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final whitelist LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final whitelist LANG_MISSING_DATA:I = -0x1

.field public static final whitelist LANG_NOT_SUPPORTED:I = -0x2

.field public static final whitelist QUEUE_ADD:I = 0x1

.field static final greylist-max-o QUEUE_DESTROY:I = 0x2

.field public static final whitelist QUEUE_FLUSH:I = 0x0

.field public static final whitelist STOPPED:I = -0x2

.field public static final whitelist SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TextToSpeech"


# instance fields
.field private greylist mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private volatile greylist mCurrentEngine:Ljava/lang/String;

.field private final greylist-max-o mEarcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final blacklist mInitExecutor:Ljava/util/concurrent/Executor;

.field private greylist mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final blacklist mIsSystem:Z

.field private final greylist-max-o mParams:Landroid/os/Bundle;

.field private greylist-max-o mRequestedEngine:Ljava/lang/String;

.field private greylist-max-o mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

.field private final greylist-max-o mStartLock:Ljava/lang/Object;

.field private final greylist-max-o mUseFallback:Z

.field private volatile greylist-max-o mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final greylist-max-o mUtterances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$3grdpLsKoQXOGt2m4k1XLuQUQQQ(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/speech/tts/TextToSpeech;->lambda$speak$2(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$46ZpBqGR5xvxPnzxO0g2Ad5Kexs(Landroid/speech/tts/TextToSpeech;JILjava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/speech/tts/TextToSpeech;->lambda$playSilentUtterance$4(JILjava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$DUhUxxqkiUIj1YfH03PX1xBObgo(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/speech/tts/TextToSpeech;->lambda$synthesizeToFile$17(Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$LPjtNDB7yiYIcJp0pk41yQop3RY(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/speech/tts/TextToSpeech;->lambda$playEarcon$3(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Npv3sDG4oG1v8iWAdeyB5q60pKA(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->lambda$shutdown$1(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$V8w1IYdC5oFdCq0pLYeRpv8CSbw(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Locale;
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->lambda$getLanguage$10(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$X8uyMQUNGUKY59lmFl-yRz1_7Fo(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->lambda$stop$7(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$amUMl1sMCV65T89ROegv6XNskBw(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/speech/tts/TextToSpeech;->lambda$setLanguage$9(Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$irRiF91UbCp9cF2wM0WDNWMVHkM(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->lambda$getVoice$14(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$lpQZq9AayT4whbr0MqjeZw50fjE(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/Voice;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/speech/tts/TextToSpeech;->lambda$setVoice$13(Landroid/speech/tts/Voice;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$y-uaMPlobiYouiY_T7xFoJSwPww(Landroid/speech/tts/TextToSpeech;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->lambda$dispatchOnInit$0(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/speech/tts/TextToSpeech;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParams(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceConnection(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartLock(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectingServiceConnection(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceConnection(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchOnInit(Landroid/speech/tts/TextToSpeech;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitTts(Landroid/speech/tts/TextToSpeech;)I
    .registers 1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 746
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p3, "engine"    # Ljava/lang/String;

    .line 762
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "listener":Landroid/speech/tts/TextToSpeech$OnInitListener;
    .end local p3    # "engine":Ljava/lang/String;
    .local v1, "context":Landroid/content/Context;
    .local v2, "listener":Landroid/speech/tts/TextToSpeech$OnInitListener;
    .local v3, "engine":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 763
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p3, "engine"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "useFallback"    # Z

    .line 773
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "listener":Landroid/speech/tts/TextToSpeech$OnInitListener;
    .end local p3    # "engine":Ljava/lang/String;
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "useFallback":Z
    .local v1, "context":Landroid/content/Context;
    .local v3, "listener":Landroid/speech/tts/TextToSpeech$OnInitListener;
    .local v4, "engine":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    .local v6, "useFallback":Z
    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 775
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "initListener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p4, "engine"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "useFallback"    # Z
    .param p7, "isSystem"    # Z

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    .line 726
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 785
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 786
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mInitExecutor:Ljava/util/concurrent/Executor;

    .line 787
    iput-object p3, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 788
    iput-object p4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    .line 789
    iput-boolean p6, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    .line 791
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    .line 792
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    .line 793
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 795
    new-instance v0, Landroid/speech/tts/TtsEngines;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 797
    iput-boolean p7, p0, Landroid/speech/tts/TextToSpeech;->mIsSystem:Z

    .line 799
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->addDeviceSpecificSessionIdToParams(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 800
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    .line 801
    return-void
.end method

.method private static blacklist addDeviceSpecificSessionIdToParams(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/os/Bundle;

    .line 813
    invoke-static {p0}, Landroid/speech/tts/TextToSpeech;->getDeviceSpecificPlaybackSessionId(Landroid/content/Context;)I

    move-result v0

    .line 814
    .local v0, "audioSessionId":I
    if-eqz v0, :cond_c

    .line 815
    const-string/jumbo v1, "sessionId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 817
    :cond_c
    return-void
.end method

.method private greylist-max-o connectToEngine(Ljava/lang/String;)Z
    .registers 7
    .param p1, "engine"    # Ljava/lang/String;

    .line 913
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mIsSystem:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 914
    new-instance v0, Landroid/speech/tts/TextToSpeech$SystemConnection;

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeech$SystemConnection;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech-IA;)V

    .local v0, "connection":Landroid/speech/tts/TextToSpeech$Connection;
    goto :goto_10

    .line 916
    .end local v0    # "connection":Landroid/speech/tts/TextToSpeech$Connection;
    :cond_b
    new-instance v0, Landroid/speech/tts/TextToSpeech$DirectConnection;

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeech$DirectConnection;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech-IA;)V

    .line 919
    .restart local v0    # "connection":Landroid/speech/tts/TextToSpeech$Connection;
    :goto_10
    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech$Connection;->connect(Ljava/lang/String;)Z

    move-result v1

    .line 920
    .local v1, "bound":Z
    const-string v2, "TextToSpeech"

    if-nez v1, :cond_30

    .line 921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v2, 0x0

    return v2

    .line 924
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sucessfully bound to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    .line 926
    const/4 v2, 0x1

    return v2
.end method

.method private greylist-max-o convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1993
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_79

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    .line 1994
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1995
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "streamType"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1996
    const-string/jumbo v1, "sessionId"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1997
    const-string/jumbo v1, "utteranceId"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1998
    const-string/jumbo v1, "volume"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1999
    const-string/jumbo v1, "pan"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2002
    const-string/jumbo v1, "networkTts"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2003
    const-string v1, "embeddedTts"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2004
    const-string/jumbo v1, "networkTimeoutMs"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2005
    const-string/jumbo v1, "networkRetriesCount"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2010
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 2011
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2012
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2013
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_77

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 2014
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_77
    goto :goto_52

    .line 2019
    :cond_78
    return-object v0

    .line 2021
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_79
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2119
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2120
    .local v0, "valueString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2122
    :try_start_c
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 2123
    .local v1, "value":F
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_13} :catch_14

    .line 2126
    .end local v1    # "value":F
    goto :goto_15

    .line 2124
    :catch_14
    move-exception v1

    .line 2128
    :cond_15
    :goto_15
    return-void
.end method

.method private greylist-max-o copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2107
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2108
    .local v0, "valueString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2110
    :try_start_c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2111
    .local v1, "value":I
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_13} :catch_14

    .line 2114
    .end local v1    # "value":I
    goto :goto_15

    .line 2112
    :catch_14
    move-exception v1

    .line 2116
    :cond_15
    :goto_15
    return-void
.end method

.method private greylist-max-o copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2100
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2101
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 2102
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    :cond_b
    return-void
.end method

.method private greylist-max-o dispatchOnInit(I)V
    .registers 4
    .param p1, "result"    # I

    .line 931
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda13;-><init>(Landroid/speech/tts/TextToSpeech;I)V

    .line 940
    .local v0, "onInitCommand":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_f

    .line 941
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_12

    .line 943
    :cond_f
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 945
    :goto_12
    return-void
.end method

.method private greylist-max-o getCallerIdentity()Landroid/os/IBinder;
    .registers 2

    .line 948
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech$Connection;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDeviceSpecificPlaybackSessionId(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 830
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    .line 831
    .local v0, "deviceId":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 832
    return v1

    .line 834
    :cond_8
    const-class v2, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager;

    .line 835
    .local v2, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    if-nez v2, :cond_13

    .line 836
    return v1

    .line 838
    :cond_13
    invoke-virtual {v2, v0}, Landroid/companion/virtual/VirtualDeviceManager;->getAudioPlaybackSessionId(I)I

    move-result v1

    return v1
.end method

.method public static whitelist getMaxSpeechInputLength()I
    .registers 1

    .line 2554
    const/16 v0, 0xfa0

    return v0
.end method

.method private greylist-max-o getParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "params"    # Landroid/os/Bundle;

    .line 2025
    if-eqz p1, :cond_48

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 2026
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2027
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2029
    const-string/jumbo v1, "streamType"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 2030
    const-string/jumbo v1, "sessionId"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 2031
    const-string/jumbo v1, "utteranceId"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyStringBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 2032
    const-string/jumbo v1, "volume"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 2033
    const-string/jumbo v1, "pan"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 2036
    const-string/jumbo v1, "networkTts"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 2037
    const-string v1, "embeddedTts"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 2038
    const-string/jumbo v1, "networkTimeoutMs"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 2039
    const-string/jumbo v1, "networkRetriesCount"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 2041
    return-object v0

    .line 2043
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_48
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method private greylist-max-o getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;
    .registers 9
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .param p2, "voiceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1798
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v0

    .line 1799
    .local v0, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    const/4 v1, 0x0

    const-string v2, "TextToSpeech"

    if-nez v0, :cond_10

    .line 1800
    const-string/jumbo v3, "getVoices returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    return-object v1

    .line 1803
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/speech/tts/Voice;

    .line 1804
    .local v4, "voice":Landroid/speech/tts/Voice;
    invoke-virtual {v4}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1805
    return-object v4

    .line 1807
    .end local v4    # "voice":Landroid/speech/tts/Voice;
    :cond_2b
    goto :goto_14

    .line 1808
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find voice "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in voice list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    return-object v1
.end method

.method private greylist-max-o initTts()I
    .registers 7

    .line 864
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_4c

    .line 865
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 866
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 867
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 868
    return v1

    .line 869
    :cond_1e
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    if-nez v0, :cond_4c

    .line 870
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 871
    invoke-direct {p0, v3}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    .line 872
    return v3

    .line 874
    :cond_28
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    if-nez v0, :cond_4c

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested engine not installed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 877
    invoke-direct {p0, v3}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    .line 878
    return v3

    .line 883
    :cond_4c
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "defaultEngine":Ljava/lang/String;
    if-eqz v0, :cond_63

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 885
    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 886
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 887
    return v1

    .line 893
    :cond_63
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    move-result-object v4

    .line 894
    .local v4, "highestRanked":Ljava/lang/String;
    if-eqz v4, :cond_82

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 895
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 896
    invoke-direct {p0, v4}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 897
    iput-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 898
    return v1

    .line 906
    :cond_82
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 907
    invoke-direct {p0, v3}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    .line 908
    return v3
.end method

.method private synthetic blacklist lambda$dispatchOnInit$0(I)V
    .registers 4
    .param p1, "result"    # I

    .line 932
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    if-eqz v1, :cond_f

    .line 934
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-interface {v1, p1}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    .line 935
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 937
    :cond_f
    monitor-exit v0

    .line 938
    return-void

    .line 937
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method static synthetic blacklist lambda$getAvailableLanguages$11(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/HashSet;
    .registers 6
    .param p0, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1700
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v0

    .line 1701
    .local v0, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    if-nez v0, :cond_c

    .line 1702
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    .line 1704
    :cond_c
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1705
    .local v1, "locales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/speech/tts/Voice;

    .line 1706
    .local v3, "voice":Landroid/speech/tts/Voice;
    invoke-virtual {v3}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1707
    .end local v3    # "voice":Landroid/speech/tts/Voice;
    goto :goto_15

    .line 1708
    :cond_29
    return-object v1
.end method

.method static synthetic blacklist lambda$getDefaultLanguage$8(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Locale;
    .registers 6
    .param p0, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1557
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 1559
    .local v0, "defaultLanguage":[Ljava/lang/String;
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$getDefaultVoice$15(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;
    .registers 12
    .param p0, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1820
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 1822
    .local v0, "defaultLanguage":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_54

    array-length v2, v0

    if-nez v2, :cond_b

    goto :goto_54

    .line 1826
    :cond_b
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 1827
    .local v2, "language":Ljava/lang/String;
    array-length v3, v0

    const-string v4, ""

    const/4 v5, 0x1

    if-le v3, v5, :cond_17

    aget-object v3, v0, v5

    goto :goto_18

    :cond_17
    move-object v3, v4

    .line 1828
    .local v3, "country":Ljava/lang/String;
    :goto_18
    array-length v5, v0

    const/4 v6, 0x2

    if-le v5, v6, :cond_1e

    aget-object v4, v0, v6

    .line 1831
    .local v4, "variant":Ljava/lang/String;
    :cond_1e
    invoke-interface {p0, v2, v3, v4}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1832
    .local v5, "result":I
    if-gez v5, :cond_25

    .line 1834
    return-object v1

    .line 1838
    :cond_25
    invoke-interface {p0, v2, v3, v4}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1839
    .local v6, "voiceName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 1840
    return-object v1

    .line 1844
    :cond_30
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v7

    .line 1845
    .local v7, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    if-nez v7, :cond_37

    .line 1846
    return-object v1

    .line 1848
    :cond_37
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_53

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/speech/tts/Voice;

    .line 1849
    .local v9, "voice":Landroid/speech/tts/Voice;
    invoke-virtual {v9}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 1850
    return-object v9

    .line 1852
    .end local v9    # "voice":Landroid/speech/tts/Voice;
    :cond_52
    goto :goto_3b

    .line 1853
    :cond_53
    return-object v1

    .line 1823
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "country":Ljava/lang/String;
    .end local v4    # "variant":Ljava/lang/String;
    .end local v5    # "result":I
    .end local v6    # "voiceName":Ljava/lang/String;
    .end local v7    # "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    :cond_54
    :goto_54
    const-string v2, "TextToSpeech"

    const-string/jumbo v3, "service.getClientDefaultLanguage() returned empty array"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    return-object v1
.end method

.method static synthetic blacklist lambda$getFeatures$5(Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Set;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1421
    const/4 v0, 0x0

    .line 1423
    .local v0, "features":[Ljava/lang/String;
    nop

    .line 1424
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 1423
    invoke-interface {p1, v2, v3, v4}, Landroid/speech/tts/ITextToSpeechService;->getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_13} :catch_20

    .line 1429
    .end local v0    # "features":[Ljava/lang/String;
    .local v2, "features":[Ljava/lang/String;
    nop

    .line 1431
    if-eqz v2, :cond_1f

    .line 1432
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1433
    .local v0, "featureSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1434
    return-object v0

    .line 1436
    .end local v0    # "featureSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1f
    return-object v1

    .line 1425
    .end local v2    # "features":[Ljava/lang/String;
    .local v0, "features":[Ljava/lang/String;
    :catch_20
    move-exception v2

    .line 1426
    .local v2, "e":Ljava/util/MissingResourceException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t retrieve 3 letter ISO 639-2/T language and/or ISO 3166 country code for locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextToSpeech"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1428
    return-object v1
.end method

.method private synthetic blacklist lambda$getLanguage$10(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Locale;
    .registers 7
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1688
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "language"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1689
    .local v0, "lang":Ljava/lang/String;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v3, "country"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1690
    .local v1, "country":Ljava/lang/String;
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v4, "variant"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1691
    .local v2, "variant":Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private synthetic blacklist lambda$getVoice$14(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;
    .registers 5
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1781
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "voiceName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1782
    .local v0, "voiceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1783
    const/4 v1, 0x0

    return-object v1

    .line 1785
    :cond_13
    invoke-direct {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getVoices$12(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/HashSet;
    .registers 3
    .param p0, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1723
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v0

    .line 1724
    .local v0, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    new-instance v1, Ljava/util/HashSet;

    if-eqz v0, :cond_c

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_f

    :cond_c
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_f
    return-object v1
.end method

.method static synthetic blacklist lambda$isLanguageAvailable$16(Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 9
    .param p0, "loc"    # Ljava/util/Locale;
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1870
    const-string v0, "TextToSpeech"

    const/4 v1, 0x0

    .local v1, "language":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1873
    .local v2, "country":Ljava/lang/String;
    const/4 v3, -0x2

    :try_start_5
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4
    :try_end_9
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_9} :catch_38

    .line 1877
    .end local v1    # "language":Ljava/lang/String;
    .local v4, "language":Ljava/lang/String;
    nop

    .line 1880
    :try_start_a
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/util/MissingResourceException; {:try_start_a .. :try_end_e} :catch_1c

    .line 1884
    .end local v2    # "country":Ljava/lang/String;
    .local v0, "country":Ljava/lang/String;
    nop

    .line 1886
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 1881
    .end local v0    # "country":Ljava/lang/String;
    .restart local v2    # "country":Ljava/lang/String;
    :catch_1c
    move-exception v1

    .line 1882
    .local v1, "e":Ljava/util/MissingResourceException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t retrieve ISO 3166 country code for locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1883
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1874
    .end local v4    # "language":Ljava/lang/String;
    .local v1, "language":Ljava/lang/String;
    :catch_38
    move-exception v4

    .line 1875
    .local v4, "e":Ljava/util/MissingResourceException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1876
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isSpeaking$6(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1450
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->isSpeaking()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$playEarcon$3(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 13
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;
    .param p5, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1303
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 1304
    .local v3, "earconUri":Landroid/net/Uri;
    if-nez v3, :cond_11

    .line 1305
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1307
    :cond_11
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v2

    .line 1308
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 1307
    move v4, p2

    move-object v6, p4

    move-object v1, p5

    .end local p2    # "queueMode":I
    .end local p4    # "utteranceId":Ljava/lang/String;
    .end local p5    # "service":Landroid/speech/tts/ITextToSpeechService;
    .local v1, "service":Landroid/speech/tts/ITextToSpeechService;
    .local v4, "queueMode":I
    .local v6, "utteranceId":Ljava/lang/String;
    invoke-interface/range {v1 .. v6}, Landroid/speech/tts/ITextToSpeechService;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    return-object p2
.end method

.method private synthetic blacklist lambda$playSilentUtterance$4(JILjava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 12
    .param p1, "durationInMs"    # J
    .param p3, "queueMode"    # I
    .param p4, "utteranceId"    # Ljava/lang/String;
    .param p5, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1364
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v0, p5

    .end local p1    # "durationInMs":J
    .end local p3    # "queueMode":I
    .end local p4    # "utteranceId":Ljava/lang/String;
    .end local p5    # "service":Landroid/speech/tts/ITextToSpeechService;
    .local v0, "service":Landroid/speech/tts/ITextToSpeechService;
    .local v2, "durationInMs":J
    .local v4, "queueMode":I
    .local v5, "utteranceId":Ljava/lang/String;
    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->playSilence(Landroid/os/IBinder;JILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$setLanguage$9(Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 15
    .param p1, "loc"    # Ljava/util/Locale;
    .param p2, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1581
    const-string v0, "Couldn\'t retrieve ISO 3166 country code for locale: "

    const-string v1, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    const-string v2, "TextToSpeech"

    const/4 v3, -0x2

    .line 1582
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1581
    if-nez p1, :cond_e

    .line 1582
    return-object v3

    .line 1584
    :cond_e
    const/4 v4, 0x0

    .local v4, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1586
    .local v5, "country":Ljava/lang/String;
    :try_start_10
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6
    :try_end_14
    .catch Ljava/util/MissingResourceException; {:try_start_10 .. :try_end_14} :catch_162

    .line 1590
    .end local v4    # "language":Ljava/lang/String;
    .local v6, "language":Ljava/lang/String;
    nop

    .line 1593
    :try_start_15
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4
    :try_end_19
    .catch Ljava/util/MissingResourceException; {:try_start_15 .. :try_end_19} :catch_14c

    .line 1597
    .end local v5    # "country":Ljava/lang/String;
    .local v4, "country":Ljava/lang/String;
    nop

    .line 1599
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 1606
    .local v5, "variant":Ljava/lang/String;
    invoke-interface {p2, v6, v4, v5}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1607
    .local v7, "result":I
    if-ltz v7, :cond_147

    .line 1609
    invoke-interface {p2, v6, v4, v5}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1610
    .local v8, "voiceName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "-"

    if-eqz v9, :cond_57

    .line 1611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find the default voice for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    return-object v3

    .line 1617
    :cond_57
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {p2, v9, v8}, Landroid/speech/tts/ITextToSpeechService;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-ne v9, v11, :cond_99

    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The service claimed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was available with voice name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but loadVoice returned ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    return-object v3

    .line 1626
    :cond_99
    invoke-direct {p0, p2, v8}, Landroid/speech/tts/TextToSpeech;->getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;

    move-result-object v9

    .line 1627
    .local v9, "voice":Landroid/speech/tts/Voice;
    if-nez v9, :cond_d6

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultVoiceNameFor returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for locale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but getVoice returns null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    return-object v3

    .line 1633
    :cond_d6
    const-string v3, ""

    .line 1635
    .local v3, "voiceLanguage":Ljava/lang/String;
    :try_start_d8
    invoke-virtual {v9}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1
    :try_end_e0
    .catch Ljava/util/MissingResourceException; {:try_start_d8 .. :try_end_e0} :catch_e2

    move-object v3, v1

    .line 1639
    goto :goto_fb

    .line 1636
    :catch_e2
    move-exception v10

    .line 1637
    .local v10, "e":Ljava/util/MissingResourceException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1638
    invoke-virtual {v9}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1637
    invoke-static {v2, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1641
    .end local v10    # "e":Ljava/util/MissingResourceException;
    :goto_fb
    const-string v1, ""

    .line 1643
    .local v1, "voiceCountry":Ljava/lang/String;
    :try_start_fd
    invoke-virtual {v9}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0
    :try_end_105
    .catch Ljava/util/MissingResourceException; {:try_start_fd .. :try_end_105} :catch_107

    move-object v1, v0

    .line 1647
    goto :goto_120

    .line 1644
    :catch_107
    move-exception v10

    .line 1645
    .restart local v10    # "e":Ljava/util/MissingResourceException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1646
    invoke-virtual {v9}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1645
    invoke-static {v2, v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1648
    .end local v10    # "e":Ljava/util/MissingResourceException;
    :goto_120
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v2, "voiceName"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v2, "language"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "variant"

    invoke-virtual {v0, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    .end local v1    # "voiceCountry":Ljava/lang/String;
    .end local v3    # "voiceLanguage":Ljava/lang/String;
    .end local v8    # "voiceName":Ljava/lang/String;
    .end local v9    # "voice":Landroid/speech/tts/Voice;
    :cond_147
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1594
    .end local v4    # "country":Ljava/lang/String;
    .end local v7    # "result":I
    .local v5, "country":Ljava/lang/String;
    :catch_14c
    move-exception v1

    .line 1595
    .local v1, "e":Ljava/util/MissingResourceException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1596
    return-object v3

    .line 1587
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .end local v6    # "language":Ljava/lang/String;
    .local v4, "language":Ljava/lang/String;
    :catch_162
    move-exception v0

    .line 1588
    .local v0, "e":Ljava/util/MissingResourceException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1589
    return-object v3
.end method

.method private synthetic blacklist lambda$setVoice$13(Landroid/speech/tts/Voice;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 10
    .param p1, "voice"    # Landroid/speech/tts/Voice;
    .param p2, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1740
    const-string v0, "TextToSpeech"

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Landroid/speech/tts/ITextToSpeechService;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v1

    .line 1741
    .local v1, "result":I
    if-nez v1, :cond_89

    .line 1742
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v3, "voiceName"

    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    const-string v2, ""

    .line 1748
    .local v2, "language":Ljava/lang/String;
    :try_start_1e
    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catch Ljava/util/MissingResourceException; {:try_start_1e .. :try_end_26} :catch_28

    move-object v2, v3

    .line 1752
    goto :goto_43

    .line 1749
    :catch_28
    move-exception v3

    .line 1750
    .local v3, "e":Ljava/util/MissingResourceException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1751
    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1750
    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1754
    .end local v3    # "e":Ljava/util/MissingResourceException;
    :goto_43
    const-string v3, ""

    .line 1756
    .local v3, "country":Ljava/lang/String;
    :try_start_45
    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0
    :try_end_4d
    .catch Ljava/util/MissingResourceException; {:try_start_45 .. :try_end_4d} :catch_4f

    move-object v3, v0

    .line 1760
    goto :goto_6a

    .line 1757
    :catch_4f
    move-exception v4

    .line 1758
    .local v4, "e":Ljava/util/MissingResourceException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t retrieve ISO 3166 country code for locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1759
    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1758
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1761
    .end local v4    # "e":Ljava/util/MissingResourceException;
    :goto_6a
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v4, "language"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v4, "country"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "variant"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "country":Ljava/lang/String;
    :cond_89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$shutdown$1(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 4
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 968
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/speech/tts/ITextToSpeechService;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    .line 969
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/speech/tts/ITextToSpeechService;->stop(Landroid/os/IBinder;)I

    .line 970
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech$Connection;->disconnect()V

    .line 978
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    .line 979
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 980
    return-object v1
.end method

.method private synthetic blacklist lambda$speak$2(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 16
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;
    .param p5, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1233
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 1234
    .local v3, "utteranceUri":Landroid/net/Uri;
    if-eqz v3, :cond_1f

    .line 1235
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v2

    .line 1236
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 1235
    move v4, p2

    move-object v6, p4

    move-object v1, p5

    .end local p2    # "queueMode":I
    .end local p4    # "utteranceId":Ljava/lang/String;
    .end local p5    # "service":Landroid/speech/tts/ITextToSpeechService;
    .local v1, "service":Landroid/speech/tts/ITextToSpeechService;
    .local v4, "queueMode":I
    .local v6, "utteranceId":Ljava/lang/String;
    invoke-interface/range {v1 .. v6}, Landroid/speech/tts/ITextToSpeechService;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    return-object p2

    .line 1238
    .end local v1    # "service":Landroid/speech/tts/ITextToSpeechService;
    .end local v4    # "queueMode":I
    .end local v6    # "utteranceId":Ljava/lang/String;
    .restart local p2    # "queueMode":I
    .restart local p4    # "utteranceId":Ljava/lang/String;
    .restart local p5    # "service":Landroid/speech/tts/ITextToSpeechService;
    :cond_1f
    move v4, p2

    move-object v6, p4

    move-object v1, p5

    .end local p2    # "queueMode":I
    .end local p4    # "utteranceId":Ljava/lang/String;
    .end local p5    # "service":Landroid/speech/tts/ITextToSpeechService;
    .restart local v1    # "service":Landroid/speech/tts/ITextToSpeechService;
    .restart local v4    # "queueMode":I
    .restart local v6    # "utteranceId":Ljava/lang/String;
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    move v7, v4

    move-object v9, v6

    move-object v6, p1

    move-object v4, v1

    .end local v1    # "service":Landroid/speech/tts/ITextToSpeechService;
    .end local p1    # "text":Ljava/lang/CharSequence;
    .local v4, "service":Landroid/speech/tts/ITextToSpeechService;
    .local v6, "text":Ljava/lang/CharSequence;
    .local v7, "queueMode":I
    .local v9, "utteranceId":Ljava/lang/String;
    invoke-interface/range {v4 .. v9}, Landroid/speech/tts/ITextToSpeechService;->speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    move v4, v7

    .end local v7    # "queueMode":I
    .restart local v1    # "service":Landroid/speech/tts/ITextToSpeechService;
    .local v4, "queueMode":I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$stop$7(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 3
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1462
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/speech/tts/ITextToSpeechService;->stop(Landroid/os/IBinder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$synthesizeToFile$17(Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;
    .param p5, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1912
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v1

    .line 1913
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 1912
    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v0, p5

    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p4    # "utteranceId":Ljava/lang/String;
    .end local p5    # "service":Landroid/speech/tts/ITextToSpeechService;
    .local v0, "service":Landroid/speech/tts/ITextToSpeechService;
    .local v2, "text":Ljava/lang/CharSequence;
    .local v3, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .local v5, "utteranceId":Ljava/lang/String;
    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceId"    # I

    .line 1195
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1196
    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1197
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1198
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1199
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1195
    return-object v0
.end method

.method private greylist-max-o runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 847
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .end local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    .end local p3    # "method":Ljava/lang/String;
    .local v1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local v2, "errorResult":Ljava/lang/Object;, "TR;"
    .local v3, "method":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .registers 14
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "reconnect"    # Z
    .param p5, "onlyEstablishedConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            "ZZ)TR;"
        }
    .end annotation

    .line 852
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 853
    :try_start_3
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_35

    if-nez v0, :cond_28

    .line 854
    :try_start_7
    const-string v0, "TextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: not bound to TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    return-object p2

    .line 859
    :catchall_21
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    goto :goto_3b

    .line 857
    :cond_28
    :try_start_28
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_35

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .end local p1    # "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .end local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    .end local p3    # "method":Ljava/lang/String;
    .end local p4    # "reconnect":Z
    .end local p5    # "onlyEstablishedConnection":Z
    .local v3, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local v4, "errorResult":Ljava/lang/Object;, "TR;"
    .local v5, "method":Ljava/lang/String;
    .local v6, "reconnect":Z
    .local v7, "onlyEstablishedConnection":Z
    :try_start_2f
    invoke-virtual/range {v2 .. v7}, Landroid/speech/tts/TextToSpeech$Connection;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 859
    .end local v3    # "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .end local v4    # "errorResult":Ljava/lang/Object;, "TR;"
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "reconnect":Z
    .end local v7    # "onlyEstablishedConnection":Z
    .restart local p1    # "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .restart local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    .restart local p3    # "method":Ljava/lang/String;
    .restart local p4    # "reconnect":Z
    .restart local p5    # "onlyEstablishedConnection":Z
    :catchall_35
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .end local p1    # "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .end local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    .end local p3    # "method":Ljava/lang/String;
    .end local p4    # "reconnect":Z
    .end local p5    # "onlyEstablishedConnection":Z
    .restart local v3    # "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .restart local v4    # "errorResult":Ljava/lang/Object;, "TR;"
    .restart local v5    # "method":Ljava/lang/String;
    .restart local v6    # "reconnect":Z
    .restart local v7    # "onlyEstablishedConnection":Z
    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_3d

    throw v0

    :catchall_3d
    move-exception v0

    goto :goto_3b
.end method

.method private greylist-max-o runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 11
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "onlyEstablishedConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            "Z)TR;"
        }
    .end annotation

    .line 843
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .end local p1    # "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .end local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    .end local p3    # "method":Ljava/lang/String;
    .end local p4    # "onlyEstablishedConnection":Z
    .local v1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local v2, "errorResult":Ljava/lang/Object;, "TR;"
    .local v3, "method":Ljava/lang/String;
    .local v5, "onlyEstablishedConnection":Z
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static greylist-max-o verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 2073
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2074
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-nez v0, :cond_39

    .line 2075
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_39

    .line 2076
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Synthesis request paramter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containst value  with invalid type. Should be a Boolean or String"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const/4 v0, 0x0

    return v0

    .line 2082
    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 2087
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2088
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-nez v0, :cond_39

    .line 2089
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Double;

    if-nez v0, :cond_39

    .line 2090
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Synthesis request paramter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containst value  with invalid type. Should be a Float or a Double"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    const/4 v0, 0x0

    return v0

    .line 2096
    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 2048
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2049
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_39

    .line 2050
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Long;

    if-nez v0, :cond_39

    .line 2051
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Synthesis request paramter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containst value  with invalid type. Should be an Integer or a Long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    const/4 v0, 0x0

    return v0

    .line 2057
    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o verifyStringBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 2061
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2062
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_31

    .line 2063
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Synthesis request paramter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containst value  with invalid type. Should be a String"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const/4 v0, 0x0

    return v0

    .line 2069
    :cond_31
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist addEarcon(Ljava/lang/String;Landroid/net/Uri;)I
    .registers 5
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1188
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1189
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1191
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist addEarcon(Ljava/lang/String;Ljava/io/File;)I
    .registers 4
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 1170
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addEarcon(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1152
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addEarcon(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    .line 1129
    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addEarcon(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1097
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1098
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1100
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist addSpeech(Ljava/lang/CharSequence;Ljava/io/File;)I
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "file"    # Ljava/io/File;

    .line 1079
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist addSpeech(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    .line 1043
    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .line 1061
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    .line 1012
    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist areDefaultsEnforced()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2197
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAvailableLanguages()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 1699
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda3;-><init>()V

    const/4 v1, 0x0

    const-string v2, "getAvailableLanguages"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public greylist getCurrentEngine()Ljava/lang/String;
    .registers 2

    .line 1539
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDefaultEngine()Ljava/lang/String;
    .registers 2

    .line 2187
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefaultLanguage()Ljava/util/Locale;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1556
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda15;-><init>()V

    const/4 v1, 0x0

    const-string v2, "getDefaultLanguage"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getDefaultVoice()Landroid/speech/tts/Voice;
    .registers 4

    .line 1818
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda9;-><init>()V

    const/4 v1, 0x0

    const-string v2, "getDefaultVoice"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/Voice;

    return-object v0
.end method

.method public whitelist getEngines()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    .line 2206
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFeatures(Ljava/util/Locale;)Ljava/util/Set;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1420
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda16;-><init>(Ljava/util/Locale;)V

    const/4 v1, 0x0

    const-string v2, "getFeatures"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getLanguage()Ljava/util/Locale;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1685
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda6;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string v2, "getLanguage"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getVoice()Landroid/speech/tts/Voice;
    .registers 4

    .line 1780
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda0;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string/jumbo v2, "getVoice"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/Voice;

    return-object v0
.end method

.method public whitelist getVoices()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .line 1722
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda11;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "getVoices"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public whitelist isLanguageAvailable(Ljava/util/Locale;)I
    .registers 5
    .param p1, "loc"    # Ljava/util/Locale;

    .line 1869
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda4;-><init>(Ljava/util/Locale;)V

    .line 1887
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1869
    const-string/jumbo v2, "isLanguageAvailable"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist isSpeaking()Z
    .registers 4

    .line 1449
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda17;-><init>()V

    .line 1451
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1449
    const-string/jumbo v2, "isSpeaking"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I
    .registers 11
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1302
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda10;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "earcon":Ljava/lang/String;
    .end local p2    # "queueMode":I
    .end local p3    # "params":Landroid/os/Bundle;
    .end local p4    # "utteranceId":Ljava/lang/String;
    .local v2, "earcon":Ljava/lang/String;
    .local v3, "queueMode":I
    .local v4, "params":Landroid/os/Bundle;
    .local v5, "utteranceId":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda10;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 1309
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1302
    const-string/jumbo p2, "playEarcon"

    invoke-direct {p0, v0, p1, p2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public whitelist playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 6
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1341
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 1342
    if-nez p3, :cond_8

    const/4 v1, 0x0

    goto :goto_11

    :cond_8
    const-string/jumbo v1, "utteranceId"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1341
    :goto_11
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/speech/tts/TextToSpeech;->playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist playSilence(JILjava/util/HashMap;)I
    .registers 6
    .param p1, "durationInMs"    # J
    .param p3, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1396
    .local p4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 1397
    if-nez p4, :cond_5

    const/4 v0, 0x0

    goto :goto_e

    :cond_5
    const-string/jumbo v0, "utteranceId"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1396
    :goto_e
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/speech/tts/TextToSpeech;->playSilentUtterance(JILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist playSilentUtterance(JILjava/lang/String;)I
    .registers 11
    .param p1, "durationInMs"    # J
    .param p3, "queueMode"    # I
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1363
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    .end local p1    # "durationInMs":J
    .end local p3    # "queueMode":I
    .end local p4    # "utteranceId":Ljava/lang/String;
    .local v2, "durationInMs":J
    .local v4, "queueMode":I
    .local v5, "utteranceId":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda2;-><init>(Landroid/speech/tts/TextToSpeech;JILjava/lang/String;)V

    .line 1366
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1363
    const-string/jumbo p2, "playSilentUtterance"

    invoke-direct {p0, v0, p1, p2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)I
    .registers 5
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 1523
    if-eqz p1, :cond_12

    .line 1524
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1525
    :try_start_5
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v2, "audioAttributes"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1527
    monitor-exit v0

    .line 1528
    const/4 v0, 0x0

    return v0

    .line 1527
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1

    .line 1530
    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist setEngineByPackageName(Ljava/lang/String;)I
    .registers 3
    .param p1, "enginePackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2176
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    .line 2177
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    move-result v0

    return v0
.end method

.method public whitelist setLanguage(Ljava/util/Locale;)I
    .registers 5
    .param p1, "loc"    # Ljava/util/Locale;

    .line 1580
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda8;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    .line 1654
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1580
    const-string/jumbo v2, "setLanguage"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .registers 3
    .param p1, "listener"    # Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2142
    invoke-static {p1}, Landroid/speech/tts/UtteranceProgressListener;->from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 2143
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I
    .registers 3
    .param p1, "listener"    # Landroid/speech/tts/UtteranceProgressListener;

    .line 2157
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 2158
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPitch(F)I
    .registers 6
    .param p1, "pitch"    # F

    .line 1502
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1c

    .line 1503
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1504
    .local v0, "intPitch":I
    if-lez v0, :cond_1c

    .line 1505
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1506
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v3, "pitch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1507
    monitor-exit v1

    .line 1508
    const/4 v1, 0x0

    return v1

    .line 1507
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v2

    .line 1511
    .end local v0    # "intPitch":I
    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist setSpeechRate(F)I
    .registers 6
    .param p1, "speechRate"    # F

    .line 1478
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1c

    .line 1479
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1480
    .local v0, "intRate":I
    if-lez v0, :cond_1c

    .line 1481
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1482
    :try_start_e
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v3, "rate"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1483
    monitor-exit v1

    .line 1484
    const/4 v1, 0x0

    return v1

    .line 1483
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v2

    .line 1487
    .end local v0    # "intRate":I
    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist setVoice(Landroid/speech/tts/Voice;)I
    .registers 5
    .param p1, "voice"    # Landroid/speech/tts/Voice;

    .line 1739
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda14;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/Voice;)V

    .line 1766
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1739
    const-string/jumbo v2, "setVoice"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist shutdown()V
    .registers 5

    .line 958
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 960
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech$Connection;->disconnect()V

    .line 961
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    .line 962
    monitor-exit v0

    return-void

    .line 964
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 967
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda12;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const-string/jumbo v1, "shutdown"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Landroid/speech/tts/TextToSpeech;->runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 982
    return-void

    .line 964
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1232
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "queueMode":I
    .end local p3    # "params":Landroid/os/Bundle;
    .end local p4    # "utteranceId":Ljava/lang/String;
    .local v2, "text":Ljava/lang/CharSequence;
    .local v3, "queueMode":I
    .local v4, "params":Landroid/os/Bundle;
    .local v5, "utteranceId":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda1;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 1241
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1232
    const-string/jumbo p2, "speak"

    invoke-direct {p0, v0, p1, p2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public whitelist speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1273
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 1274
    if-nez p3, :cond_8

    const/4 v1, 0x0

    goto :goto_11

    :cond_8
    const-string/jumbo v1, "utteranceId"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1273
    :goto_11
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist stop()I
    .registers 4

    .line 1461
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda7;-><init>(Landroid/speech/tts/TextToSpeech;)V

    .line 1463
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1461
    const-string/jumbo v2, "stop"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1911
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p4    # "utteranceId":Ljava/lang/String;
    .local v2, "text":Ljava/lang/CharSequence;
    .local v3, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .local v4, "params":Landroid/os/Bundle;
    .local v5, "utteranceId":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda5;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1914
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1911
    const-string/jumbo p2, "synthesizeToFile"

    invoke-direct {p0, v0, p1, p2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public whitelist synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1938
    const-string v0, " failed"

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "TextToSpeech"

    if-eqz v1, :cond_28

    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_28

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t write to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    return v2

    .line 1943
    :cond_28
    const/high16 v1, 0x2c000000

    :try_start_2a
    invoke-static {p3, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2e} :catch_64
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_48

    .line 1948
    .local v1, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :try_start_2e
    invoke-virtual {p0, p1, p2, v1, p4}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v4

    .line 1949
    .local v4, "returnValue":I
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_3c

    .line 1950
    nop

    .line 1951
    if-eqz v1, :cond_3b

    :try_start_38
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3b} :catch_64
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_48

    .line 1950
    :cond_3b
    return v4

    .line 1942
    .end local v4    # "returnValue":I
    :catchall_3c
    move-exception v4

    if-eqz v1, :cond_47

    :try_start_3f
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v5

    :try_start_44
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/speech/tts/TextToSpeech;
    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "file":Ljava/io/File;
    .end local p4    # "utteranceId":Ljava/lang/String;
    :cond_47
    :goto_47
    throw v4
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_48} :catch_64
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_48

    .line 1954
    .end local v1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/speech/tts/TextToSpeech;
    .restart local p1    # "text":Ljava/lang/CharSequence;
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "file":Ljava/io/File;
    .restart local p4    # "utteranceId":Ljava/lang/String;
    :catch_48
    move-exception v1

    .line 1955
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1956
    return v2

    .line 1951
    .end local v1    # "e":Ljava/io/IOException;
    :catch_64
    move-exception v1

    .line 1952
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1953
    return v2
.end method

.method public whitelist synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1988
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1989
    const-string/jumbo v2, "utteranceId"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1988
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
