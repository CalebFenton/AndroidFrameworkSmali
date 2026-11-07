.class Landroid/speech/RecognitionService$StartListeningArgs;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartListeningArgs"
.end annotation


# instance fields
.field public final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field public final greylist-max-o mIntent:Landroid/content/Intent;

.field public final greylist-max-o mListener:Landroid/speech/IRecognitionListener;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Landroid/speech/RecognitionService$StartListeningArgs;->mIntent:Landroid/content/Intent;

    .line 314
    iput-object p2, p0, Landroid/speech/RecognitionService$StartListeningArgs;->mListener:Landroid/speech/IRecognitionListener;

    .line 315
    iput-object p3, p0, Landroid/speech/RecognitionService$StartListeningArgs;->mAttributionSource:Landroid/content/AttributionSource;

    .line 316
    return-void
.end method
