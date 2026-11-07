.class Landroid/speech/RecognitionService$ModelDownloadArgs;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelDownloadArgs"
.end annotation


# instance fields
.field final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field final blacklist mIntent:Landroid/content/Intent;

.field final blacklist mListener:Landroid/speech/IModelDownloadListener;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "listener"    # Landroid/speech/IModelDownloadListener;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p1, p0, Landroid/speech/RecognitionService$ModelDownloadArgs;->mIntent:Landroid/content/Intent;

    .line 344
    iput-object p2, p0, Landroid/speech/RecognitionService$ModelDownloadArgs;->mAttributionSource:Landroid/content/AttributionSource;

    .line 345
    iput-object p3, p0, Landroid/speech/RecognitionService$ModelDownloadArgs;->mListener:Landroid/speech/IModelDownloadListener;

    .line 346
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;Landroid/speech/RecognitionService-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService$ModelDownloadArgs;-><init>(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V

    return-void
.end method
