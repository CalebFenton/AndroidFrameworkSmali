.class Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;
.super Landroid/speech/tts/TextToSpeechService$SpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadLanguageItem"
.end annotation


# instance fields
.field private final greylist-max-o mCountry:Ljava/lang/String;

.field private final greylist-max-o mLanguage:Ljava/lang/String;

.field private final greylist-max-o mVariant:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "country"    # Ljava/lang/String;
    .param p7, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1207
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1208
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$SpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    .line 1209
    iput-object p5, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->mLanguage:Ljava/lang/String;

    .line 1210
    iput-object p6, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->mCountry:Ljava/lang/String;

    .line 1211
    iput-object p7, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->mVariant:Ljava/lang/String;

    .line 1212
    return-void
.end method


# virtual methods
.method public greylist-max-o isValid()Z
    .registers 2

    .line 1216
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o playImpl()V
    .registers 5

    .line 1221
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->mLanguage:Ljava/lang/String;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->mCountry:Ljava/lang/String;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->mVariant:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeechService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    return-void
.end method

.method protected greylist-max-o stopImpl()V
    .registers 1

    .line 1227
    return-void
.end method
