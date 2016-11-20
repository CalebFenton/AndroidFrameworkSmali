.class Landroid/speech/tts/TtsEngines$EngineInfoComparator;
.super Ljava/lang/Object;
.source "TtsEngines.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TtsEngines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EngineInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/speech/tts/TextToSpeech$EngineInfo;",
        ">;"
    }
.end annotation


# static fields
.field static INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 298
    new-instance v0, Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    #@2
    invoke-direct {v0}, Landroid/speech/tts/TtsEngines$EngineInfoComparator;-><init>()V

    #@5
    sput-object v0, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    #@7
    .line 295
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/speech/tts/TextToSpeech$EngineInfo;Landroid/speech/tts/TextToSpeech$EngineInfo;)I
    .locals 2
    .param p1, "lhs"    # Landroid/speech/tts/TextToSpeech$EngineInfo;
    .param p2, "rhs"    # Landroid/speech/tts/TextToSpeech$EngineInfo;

    #@0
    .prologue
    .line 307
    iget-boolean v0, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p2, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 309
    :cond_0
    iget-boolean v0, p2, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    iget-boolean v0, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    #@e
    if-eqz v0, :cond_3

    #@10
    .line 317
    :cond_1
    iget v0, p2, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    #@12
    iget v1, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    #@14
    sub-int/2addr v0, v1

    #@15
    return v0

    #@16
    .line 308
    :cond_2
    const/4 v0, -0x1

    #@17
    return v0

    #@18
    .line 310
    :cond_3
    const/4 v0, 0x1

    #@19
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 306
    check-cast p1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->compare(Landroid/speech/tts/TextToSpeech$EngineInfo;Landroid/speech/tts/TextToSpeech$EngineInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
