.class Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckRecognitionSupportArgs"
.end annotation


# instance fields
.field public final blacklist callback:Landroid/speech/IRecognitionSupportCallback;

.field public final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field public final blacklist mIntent:Landroid/content/Intent;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Landroid/speech/IRecognitionSupportCallback;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;->mIntent:Landroid/content/Intent;

    .line 329
    iput-object p2, p0, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;->callback:Landroid/speech/IRecognitionSupportCallback;

    .line 330
    iput-object p3, p0, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;->mAttributionSource:Landroid/content/AttributionSource;

    .line 331
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;Landroid/speech/RecognitionService-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;-><init>(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;)V

    return-void
.end method
