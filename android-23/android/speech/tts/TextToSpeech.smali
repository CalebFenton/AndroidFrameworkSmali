.class public Landroid/speech/tts/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$OnInitListener;,
        Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;,
        Landroid/speech/tts/TextToSpeech$Engine;,
        Landroid/speech/tts/TextToSpeech$Connection;,
        Landroid/speech/tts/TextToSpeech$Action;,
        Landroid/speech/tts/TextToSpeech$EngineInfo;
    }
.end annotation


# static fields
.field public static final ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field public static final ERROR:I = -0x1

.field public static final ERROR_INVALID_REQUEST:I = -0x8

.field public static final ERROR_NETWORK:I = -0x6

.field public static final ERROR_NETWORK_TIMEOUT:I = -0x7

.field public static final ERROR_NOT_INSTALLED_YET:I = -0x9

.field public static final ERROR_OUTPUT:I = -0x5

.field public static final ERROR_SERVICE:I = -0x4

.field public static final ERROR_SYNTHESIS:I = -0x3

.field public static final LANG_AVAILABLE:I = 0x0

.field public static final LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final LANG_MISSING_DATA:I = -0x1

.field public static final LANG_NOT_SUPPORTED:I = -0x2

.field public static final QUEUE_ADD:I = 0x1

.field static final QUEUE_DESTROY:I = 0x2

.field public static final QUEUE_FLUSH:I = 0x0

.field public static final STOPPED:I = -0x2

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TextToSpeech"


# instance fields
.field private mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentEngine:Ljava/lang/String;

.field private final mEarcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final mParams:Landroid/os/Bundle;

.field private mRequestedEngine:Ljava/lang/String;

.field private mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

.field private final mStartLock:Ljava/lang/Object;

.field private final mUseFallback:Z

.field private volatile mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final mUtterances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/speech/tts/TextToSpeech;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/speech/tts/TextToSpeech;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/speech/tts/TextToSpeech;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "params"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;
    .locals 1
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .param p2, "voiceName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/speech/tts/TextToSpeech;->getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Landroid/speech/tts/TextToSpeech;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Landroid/speech/tts/TextToSpeech;I)V
    .locals 0
    .param p1, "result"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;

    #@0
    .prologue
    .line 686
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    #@4
    .line 685
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p3, "engine"    # Ljava/lang/String;

    #@0
    .prologue
    .line 702
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V

    #@9
    .line 701
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p3, "engine"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "useFallback"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 660
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@b
    .line 670
    new-instance v0, Landroid/os/Bundle;

    #@d
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@10
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    #@12
    .line 672
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    #@14
    .line 713
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    #@16
    .line 714
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    #@18
    .line 715
    iput-object p3, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    #@1a
    .line 716
    iput-boolean p5, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    #@1c
    .line 718
    new-instance v0, Ljava/util/HashMap;

    #@1e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@21
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    #@23
    .line 719
    new-instance v0, Ljava/util/HashMap;

    #@25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@28
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    #@2a
    .line 720
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    #@2c
    .line 722
    new-instance v0, Landroid/speech/tts/TtsEngines;

    #@2e
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    #@30
    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    #@33
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    #@35
    .line 723
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    #@38
    .line 712
    return-void
.end method

.method private connectToEngine(Ljava/lang/String;)Z
    .locals 7
    .param p1, "engine"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 797
    new-instance v1, Landroid/speech/tts/TextToSpeech$Connection;

    #@3
    const/4 v3, 0x0

    #@4
    invoke-direct {v1, p0, v3}, Landroid/speech/tts/TextToSpeech$Connection;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)V

    #@7
    .line 798
    .local v1, "connection":Landroid/speech/tts/TextToSpeech$Connection;
    new-instance v2, Landroid/content/Intent;

    #@9
    const-string/jumbo v3, "android.intent.action.TTS_SERVICE"

    #@c
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f
    .line 799
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@12
    .line 800
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v3, v2, v1, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@17
    move-result v0

    #@18
    .line 801
    .local v0, "bound":Z
    if-nez v0, :cond_0

    #@1a
    .line 802
    const-string/jumbo v3, "TextToSpeech"

    #@1d
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "Failed to bind to "

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 803
    const/4 v3, 0x0

    #@35
    return v3

    #@36
    .line 805
    :cond_0
    const-string/jumbo v3, "TextToSpeech"

    #@39
    new-instance v4, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v5, "Sucessfully bound to "

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 806
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    #@52
    .line 807
    return v6
.end method

.method private convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .line 1873
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_1

    #@9
    .line 1901
    :cond_0
    return-object v5

    #@a
    .line 1874
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    #@c
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@f
    .line 1875
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "streamType"

    #@12
    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    #@15
    .line 1876
    const-string/jumbo v4, "sessionId"

    #@18
    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    #@1b
    .line 1877
    const-string/jumbo v4, "utteranceId"

    #@1e
    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    #@21
    .line 1878
    const-string/jumbo v4, "volume"

    #@24
    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    #@27
    .line 1879
    const-string/jumbo v4, "pan"

    #@2a
    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    #@2d
    .line 1882
    const-string/jumbo v4, "networkTts"

    #@30
    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    #@33
    .line 1883
    const-string/jumbo v4, "embeddedTts"

    #@36
    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    #@39
    .line 1884
    const-string/jumbo v4, "networkTimeoutMs"

    #@3c
    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    #@3f
    .line 1885
    const-string/jumbo v4, "networkRetriesCount"

    #@42
    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    #@45
    .line 1890
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    #@47
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4a
    move-result v4

    #@4b
    if-nez v4, :cond_3

    #@4d
    .line 1891
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@50
    move-result-object v4

    #@51
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@54
    move-result-object v2

    #@55
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_3

    #@5b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v1

    #@5f
    check-cast v1, Ljava/util/Map$Entry;

    #@61
    .line 1892
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@64
    move-result-object v3

    #@65
    check-cast v3, Ljava/lang/String;

    #@67
    .line 1893
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@69
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    #@6b
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6e
    move-result v4

    #@6f
    if-eqz v4, :cond_2

    #@71
    .line 1894
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@74
    move-result-object v4

    #@75
    check-cast v4, Ljava/lang/String;

    #@77
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@7a
    goto :goto_0

    #@7b
    .line 1899
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1999
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Ljava/lang/String;

    #@6
    .line 2000
    .local v2, "valueString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 2002
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@f
    move-result v1

    #@10
    .line 2003
    .local v1, "value":F
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1998
    .end local v1    # "value":F
    :cond_0
    :goto_0
    return-void

    #@14
    .line 2004
    :catch_0
    move-exception v0

    #@15
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1987
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Ljava/lang/String;

    #@6
    .line 1988
    .local v2, "valueString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 1990
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f
    move-result v1

    #@10
    .line 1991
    .local v1, "value":I
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1986
    .end local v1    # "value":I
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1992
    :catch_0
    move-exception v0

    #@15
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1980
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/String;

    #@6
    .line 1981
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    .line 1982
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1979
    :cond_0
    return-void
.end method

.method private dispatchOnInit(I)V
    .locals 2
    .param p1, "result"    # I

    #@0
    .prologue
    .line 812
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 813
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 814
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    #@9
    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    #@c
    .line 815
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 811
    return-void

    #@11
    .line 812
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method private getCallerIdentity()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 821
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    #@2
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech$Connection;->getCallerIdentity()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getMaxSpeechInputLength()I
    .locals 1

    #@0
    .prologue
    .line 2324
    const/16 v0, 0xfa0

    #@2
    return v0
.end method

.method private getParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1905
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 1923
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    #@a
    return-object v1

    #@b
    .line 1906
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    #@d
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    #@f
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@12
    .line 1907
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@15
    .line 1909
    const-string/jumbo v1, "streamType"

    #@18
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@1b
    .line 1910
    const-string/jumbo v1, "sessionId"

    #@1e
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@21
    .line 1911
    const-string/jumbo v1, "utteranceId"

    #@24
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyStringBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@27
    .line 1912
    const-string/jumbo v1, "volume"

    #@2a
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@2d
    .line 1913
    const-string/jumbo v1, "pan"

    #@30
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@33
    .line 1916
    const-string/jumbo v1, "networkTts"

    #@36
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@39
    .line 1917
    const-string/jumbo v1, "embeddedTts"

    #@3c
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@3f
    .line 1918
    const-string/jumbo v1, "networkTimeoutMs"

    #@42
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@45
    .line 1919
    const-string/jumbo v1, "networkRetriesCount"

    #@48
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@4b
    .line 1921
    return-object v0
.end method

.method private getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;
    .locals 7
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .param p2, "voiceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1692
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    #@4
    move-result-object v2

    #@5
    .line 1693
    .local v2, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    if-nez v2, :cond_0

    #@7
    .line 1694
    const-string/jumbo v3, "TextToSpeech"

    #@a
    const-string/jumbo v4, "getVoices returned null"

    #@d
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 1695
    return-object v6

    #@11
    .line 1697
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "voice$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/speech/tts/Voice;

    #@21
    .line 1698
    .local v0, "voice":Landroid/speech/tts/Voice;
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 1699
    return-object v0

    #@2c
    .line 1702
    .end local v0    # "voice":Landroid/speech/tts/Voice;
    :cond_2
    const-string/jumbo v3, "TextToSpeech"

    #@2f
    new-instance v4, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v5, "Could not find voice "

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    const-string/jumbo v5, " in voice list"

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 1703
    return-object v6
.end method

.method private initTts()I
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, -0x1

    #@3
    .line 749
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    #@5
    if-eqz v2, :cond_2

    #@7
    .line 750
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    #@9
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    #@b
    invoke-virtual {v2, v3}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 751
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    #@13
    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 752
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    #@1b
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    #@1d
    .line 753
    return v4

    #@1e
    .line 754
    :cond_0
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    #@20
    if-nez v2, :cond_2

    #@22
    .line 755
    iput-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    #@24
    .line 756
    invoke-direct {p0, v5}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    #@27
    .line 757
    return v5

    #@28
    .line 759
    :cond_1
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    #@2a
    if-nez v2, :cond_2

    #@2c
    .line 760
    const-string/jumbo v2, "TextToSpeech"

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "Requested engine not installed: "

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 761
    iput-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    #@4a
    .line 762
    invoke-direct {p0, v5}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    #@4d
    .line 763
    return v5

    #@4e
    .line 768
    :cond_2
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    .line 769
    .local v0, "defaultEngine":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@54
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    #@56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v2

    #@5a
    if-eqz v2, :cond_5

    #@5c
    .line 778
    :cond_3
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    #@5e
    invoke-virtual {v2}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    .line 779
    .local v1, "highestRanked":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@64
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v2

    #@6a
    if-eqz v2, :cond_6

    #@6c
    .line 791
    :cond_4
    iput-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    #@6e
    .line 792
    invoke-direct {p0, v5}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    #@71
    .line 793
    return v5

    #@72
    .line 770
    .end local v1    # "highestRanked":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    #@75
    move-result v2

    #@76
    if-eqz v2, :cond_3

    #@78
    .line 771
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    #@7a
    .line 772
    return v4

    #@7b
    .line 780
    .restart local v1    # "highestRanked":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v2

    #@7f
    if-nez v2, :cond_4

    #@81
    .line 781
    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    #@84
    move-result v2

    #@85
    if-eqz v2, :cond_4

    #@87
    .line 782
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    #@89
    .line 783
    return v4
.end method

.method private makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceId"    # I

    #@0
    .prologue
    .line 1051
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    .line 1052
    const-string/jumbo v1, "android.resource"

    #@8
    .line 1051
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@f
    move-result-object v0

    #@10
    .line 1054
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 1051
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method private runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action",
            "<TR;>;TR;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    const/4 v4, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, v4

    #@6
    .line 732
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 7
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "reconnect"    # Z
    .param p5, "onlyEstablishedConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action",
            "<TR;>;TR;",
            "Ljava/lang/String;",
            "ZZ)TR;"
        }
    .end annotation

    #@0
    .prologue
    .line 737
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 738
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 739
    const-string/jumbo v0, "TextToSpeech"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, " failed: not bound to TTS engine"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v6

    #@22
    .line 740
    return-object p2

    #@23
    .line 742
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    #@25
    move-object v1, p1

    #@26
    move-object v2, p2

    #@27
    move-object v3, p3

    #@28
    move v4, p4

    #@29
    move v5, p5

    #@2a
    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$Connection;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    move-result-object v0

    #@2e
    monitor-exit v6

    #@2f
    return-object v0

    #@30
    .line 737
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v6

    #@32
    throw v0
.end method

.method private runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "onlyEstablishedConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action",
            "<TR;>;TR;",
            "Ljava/lang/String;",
            "Z)TR;"
        }
    .end annotation

    #@0
    .prologue
    .line 728
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private static verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1953
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 1954
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    instance-of v0, v0, Ljava/lang/Boolean;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 1955
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    instance-of v0, v0, Ljava/lang/String;

    #@15
    .line 1954
    :goto_0
    if-nez v0, :cond_1

    #@17
    .line 1956
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@1a
    .line 1957
    const-string/jumbo v0, "TextToSpeech"

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Synthesis request paramter "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, " containst value "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 1958
    const-string/jumbo v2, " with invalid type. Should be a Boolean or String"

    #@37
    .line 1957
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 1959
    const/4 v0, 0x0

    #@43
    return v0

    #@44
    :cond_0
    move v0, v1

    #@45
    .line 1954
    goto :goto_0

    #@46
    .line 1962
    :cond_1
    return v1
.end method

.method private static verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1967
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 1968
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    instance-of v0, v0, Ljava/lang/Float;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 1969
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    instance-of v0, v0, Ljava/lang/Double;

    #@15
    .line 1968
    :goto_0
    if-nez v0, :cond_1

    #@17
    .line 1970
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@1a
    .line 1971
    const-string/jumbo v0, "TextToSpeech"

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Synthesis request paramter "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, " containst value "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 1972
    const-string/jumbo v2, " with invalid type. Should be a Float or a Double"

    #@37
    .line 1971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 1973
    const/4 v0, 0x0

    #@43
    return v0

    #@44
    :cond_0
    move v0, v1

    #@45
    .line 1968
    goto :goto_0

    #@46
    .line 1976
    :cond_1
    return v1
.end method

.method private static verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1928
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 1929
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    instance-of v0, v0, Ljava/lang/Integer;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 1930
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    instance-of v0, v0, Ljava/lang/Long;

    #@15
    .line 1929
    :goto_0
    if-nez v0, :cond_1

    #@17
    .line 1931
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@1a
    .line 1932
    const-string/jumbo v0, "TextToSpeech"

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Synthesis request paramter "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, " containst value "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 1933
    const-string/jumbo v2, " with invalid type. Should be an Integer or a Long"

    #@37
    .line 1932
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 1934
    const/4 v0, 0x0

    #@43
    return v0

    #@44
    :cond_0
    move v0, v1

    #@45
    .line 1929
    goto :goto_0

    #@46
    .line 1937
    :cond_1
    return v1
.end method

.method private static verifyStringBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1941
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1942
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    instance-of v0, v0, Ljava/lang/String;

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1943
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@11
    .line 1944
    const-string/jumbo v0, "TextToSpeech"

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Synthesis request paramter "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, " containst value "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 1945
    const-string/jumbo v2, " with invalid type. Should be a String"

    #@2e
    .line 1944
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 1946
    const/4 v0, 0x0

    #@3a
    return v0

    #@3b
    .line 1949
    :cond_0
    const/4 v0, 0x1

    #@3c
    return v0
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/io/File;)I
    .locals 3
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 1044
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1045
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    #@5
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 1046
    const/4 v0, 0x0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 1044
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1023
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1024
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    #@5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 1025
    const/4 v0, 0x0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 1023
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    #@0
    .prologue
    .line 997
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 998
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    #@5
    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 999
    const/4 v0, 0x0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 997
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public addSpeech(Ljava/lang/CharSequence;Ljava/io/File;)I
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 965
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 966
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    #@5
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 967
    const/4 v0, 0x0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 965
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public addSpeech(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    #@0
    .prologue
    .line 922
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 923
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    #@5
    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 924
    const/4 v0, 0x0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 922
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 944
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 945
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    #@5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 946
    const/4 v0, 0x0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 944
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    #@0
    .prologue
    .line 888
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 889
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    #@5
    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 890
    const/4 v0, 0x0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 888
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public areDefaultsEnforced()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2077
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAvailableLanguages()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1581
    new-instance v0, Landroid/speech/tts/TextToSpeech$11;

    #@2
    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$11;-><init>(Landroid/speech/tts/TextToSpeech;)V

    #@5
    .line 1594
    const-string/jumbo v1, "getAvailableLanguages"

    #@8
    const/4 v2, 0x0

    #@9
    .line 1581
    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/util/Set;

    #@f
    return-object v0
.end method

.method public getCurrentEngine()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1412
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDefaultEngine()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2067
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    #@2
    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getDefaultEngine()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDefaultLanguage()Ljava/util/Locale;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1429
    new-instance v0, Landroid/speech/tts/TextToSpeech$8;

    #@2
    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$8;-><init>(Landroid/speech/tts/TextToSpeech;)V

    #@5
    .line 1436
    const-string/jumbo v1, "getDefaultLanguage"

    #@8
    const/4 v2, 0x0

    #@9
    .line 1429
    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/util/Locale;

    #@f
    return-object v0
.end method

.method public getDefaultVoice()Landroid/speech/tts/Voice;
    .locals 3

    #@0
    .prologue
    .line 1712
    new-instance v0, Landroid/speech/tts/TextToSpeech$15;

    #@2
    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$15;-><init>(Landroid/speech/tts/TextToSpeech;)V

    #@5
    .line 1751
    const-string/jumbo v1, "getDefaultVoice"

    #@8
    const/4 v2, 0x0

    #@9
    .line 1712
    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/speech/tts/Voice;

    #@f
    return-object v0
.end method

.method public getEngines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2086
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    #@2
    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFeatures(Ljava/util/Locale;)Ljava/util/Set;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1285
    new-instance v0, Landroid/speech/tts/TextToSpeech$5;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$5;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    #@5
    .line 1305
    const-string/jumbo v1, "getFeatures"

    #@8
    const/4 v2, 0x0

    #@9
    .line 1285
    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/util/Set;

    #@f
    return-object v0
.end method

.method public getLanguage()Ljava/util/Locale;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1564
    new-instance v0, Landroid/speech/tts/TextToSpeech$10;

    #@2
    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$10;-><init>(Landroid/speech/tts/TextToSpeech;)V

    #@5
    .line 1574
    const-string/jumbo v1, "getLanguage"

    #@8
    const/4 v2, 0x0

    #@9
    .line 1564
    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/util/Locale;

    #@f
    return-object v0
.end method

.method public getVoice()Landroid/speech/tts/Voice;
    .locals 3

    #@0
    .prologue
    .line 1671
    new-instance v0, Landroid/speech/tts/TextToSpeech$14;

    #@2
    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$14;-><init>(Landroid/speech/tts/TextToSpeech;)V

    #@5
    .line 1680
    const-string/jumbo v1, "getVoice"

    #@8
    const/4 v2, 0x0

    #@9
    .line 1671
    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/speech/tts/Voice;

    #@f
    return-object v0
.end method

.method public getVoices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1607
    new-instance v0, Landroid/speech/tts/TextToSpeech$12;

    #@2
    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$12;-><init>(Landroid/speech/tts/TextToSpeech;)V

    #@5
    .line 1613
    const-string/jumbo v1, "getVoices"

    #@8
    const/4 v2, 0x0

    #@9
    .line 1607
    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/util/Set;

    #@f
    return-object v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1766
    new-instance v0, Landroid/speech/tts/TextToSpeech$16;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$16;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    #@5
    .line 1787
    const/4 v1, -0x2

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "isLanguageAvailable"

    #@d
    .line 1766
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/Integer;

    #@13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public isSpeaking()Z
    .locals 3

    #@0
    .prologue
    .line 1317
    new-instance v0, Landroid/speech/tts/TextToSpeech$6;

    #@2
    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$6;-><init>(Landroid/speech/tts/TextToSpeech;)V

    #@5
    .line 1322
    const/4 v1, 0x0

    #@6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "isSpeaking"

    #@d
    .line 1317
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/Boolean;

    #@13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 6
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1161
    new-instance v0, Landroid/speech/tts/TextToSpeech$3;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$3;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V

    #@a
    .line 1171
    const/4 v1, -0x1

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "playEarcon"

    #@12
    .line 1161
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/lang/Integer;

    #@18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 2
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 1203
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    #@4
    move-result-object v1

    #@5
    .line 1204
    if-nez p3, :cond_0

    #@7
    .line 1203
    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/speech/tts/TextToSpeech;->playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 1204
    :cond_0
    const-string/jumbo v0, "utteranceId"

    #@f
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    goto :goto_0
.end method

.method public playSilence(JILjava/util/HashMap;)I
    .locals 1
    .param p1, "durationInMs"    # J
    .param p3, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 1262
    if-nez p4, :cond_0

    #@3
    .line 1261
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/speech/tts/TextToSpeech;->playSilentUtterance(JILjava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 1262
    :cond_0
    const-string/jumbo v0, "utteranceId"

    #@b
    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/String;

    #@11
    goto :goto_0
.end method

.method public playSilentUtterance(JILjava/lang/String;)I
    .locals 7
    .param p1, "durationInMs"    # J
    .param p3, "queueMode"    # I
    .param p4, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1225
    new-instance v0, Landroid/speech/tts/TextToSpeech$4;

    #@2
    move-object v1, p0

    #@3
    move-wide v2, p1

    #@4
    move v4, p3

    #@5
    move-object v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$4;-><init>(Landroid/speech/tts/TextToSpeech;JILjava/lang/String;)V

    #@9
    .line 1231
    const/4 v1, -0x1

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "playSilentUtterance"

    #@11
    .line 1225
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Integer;

    #@17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)I
    .locals 3
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 1397
    if-eqz p1, :cond_0

    #@2
    .line 1398
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 1399
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    #@7
    const-string/jumbo v2, "audioAttributes"

    #@a
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 1402
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 1398
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 1404
    :cond_0
    const/4 v0, -0x1

    #@14
    return v0
.end method

.method public setEngineByPackageName(Ljava/lang/String;)I
    .locals 1
    .param p1, "enginePackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2056
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    #@2
    .line 2057
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setLanguage(Ljava/util/Locale;)I
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1456
    new-instance v0, Landroid/speech/tts/TextToSpeech$9;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$9;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    #@5
    .line 1533
    const/4 v1, -0x2

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "setLanguage"

    #@d
    .line 1456
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/Integer;

    #@13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .locals 1
    .param p1, "listener"    # Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2022
    invoke-static {p1}, Landroid/speech/tts/UtteranceProgressListener;->from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    #@6
    .line 2023
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method public setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I
    .locals 1
    .param p1, "listener"    # Landroid/speech/tts/UtteranceProgressListener;

    #@0
    .prologue
    .line 2037
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    #@2
    .line 2038
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public setPitch(F)I
    .locals 5
    .param p1, "pitch"    # F

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1376
    const/4 v1, 0x0

    #@2
    cmpl-float v1, p1, v1

    #@4
    if-lez v1, :cond_0

    #@6
    .line 1377
    const/high16 v1, 0x42c80000    # 100.0f

    #@8
    mul-float/2addr v1, p1

    #@9
    float-to-int v0, v1

    #@a
    .line 1378
    .local v0, "intPitch":I
    if-lez v0, :cond_0

    #@c
    .line 1379
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 1380
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    #@11
    const-string/jumbo v3, "pitch"

    #@14
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 1382
    return v4

    #@19
    .line 1379
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1

    #@1c
    .line 1385
    .end local v0    # "intPitch":I
    :cond_0
    const/4 v1, -0x1

    #@1d
    return v1
.end method

.method public setSpeechRate(F)I
    .locals 5
    .param p1, "speechRate"    # F

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1352
    const/4 v1, 0x0

    #@2
    cmpl-float v1, p1, v1

    #@4
    if-lez v1, :cond_0

    #@6
    .line 1353
    const/high16 v1, 0x42c80000    # 100.0f

    #@8
    mul-float/2addr v1, p1

    #@9
    float-to-int v0, v1

    #@a
    .line 1354
    .local v0, "intRate":I
    if-lez v0, :cond_0

    #@c
    .line 1355
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 1356
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    #@11
    const-string/jumbo v3, "rate"

    #@14
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 1358
    return v4

    #@19
    .line 1355
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1

    #@1c
    .line 1361
    .end local v0    # "intRate":I
    :cond_0
    const/4 v1, -0x1

    #@1d
    return v1
.end method

.method public setVoice(Landroid/speech/tts/Voice;)I
    .locals 3
    .param p1, "voice"    # Landroid/speech/tts/Voice;

    #@0
    .prologue
    .line 1627
    new-instance v0, Landroid/speech/tts/TextToSpeech$13;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$13;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/Voice;)V

    #@5
    .line 1657
    const/4 v1, -0x2

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "setVoice"

    #@d
    .line 1627
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/Integer;

    #@13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public shutdown()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 831
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 832
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 833
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    #@a
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    #@c
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@f
    .line 834
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 835
    return-void

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 840
    new-instance v0, Landroid/speech/tts/TextToSpeech$1;

    #@17
    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$1;-><init>(Landroid/speech/tts/TextToSpeech;)V

    #@1a
    .line 857
    const-string/jumbo v1, "shutdown"

    #@1d
    const/4 v2, 0x0

    #@1e
    .line 840
    invoke-direct {p0, v0, v3, v1, v2}, Landroid/speech/tts/TextToSpeech;->runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    #@21
    .line 829
    return-void

    #@22
    .line 831
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method public speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1088
    new-instance v0, Landroid/speech/tts/TextToSpeech$2;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$2;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)V

    #@a
    .line 1100
    const/4 v1, -0x1

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "speak"

    #@12
    .line 1088
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/lang/Integer;

    #@18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 1132
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    #@4
    move-result-object v1

    #@5
    .line 1133
    if-nez p3, :cond_0

    #@7
    .line 1132
    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 1133
    :cond_0
    const-string/jumbo v0, "utteranceId"

    #@f
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    goto :goto_0
.end method

.method public stop()I
    .locals 3

    #@0
    .prologue
    .line 1332
    new-instance v0, Landroid/speech/tts/TextToSpeech$7;

    #@2
    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$7;-><init>(Landroid/speech/tts/TextToSpeech;)V

    #@5
    .line 1337
    const/4 v1, -0x1

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "stop"

    #@d
    .line 1332
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/Integer;

    #@13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1811
    new-instance v0, Landroid/speech/tts/TextToSpeech$17;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p3

    #@4
    move-object v3, p1

    #@5
    move-object v4, p2

    #@6
    move-object v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$17;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/io/File;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;)V

    #@a
    .line 1837
    const/4 v1, -0x1

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "synthesizeToFile"

    #@12
    .line 1811
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/lang/Integer;

    #@18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1868
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    #@3
    move-result-object v1

    #@4
    .line 1869
    new-instance v2, Ljava/io/File;

    #@6
    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    const-string/jumbo v0, "utteranceId"

    #@c
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    .line 1868
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I

    #@15
    move-result v0

    #@16
    return v0
.end method
