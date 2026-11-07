.class final Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;
.super Landroid/service/textclassifier/ITextClassifierCallback$Stub;
.source "SystemTextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/SystemTextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Landroid/service/textclassifier/ITextClassifierCallback$Stub;"
    }
.end annotation


# instance fields
.field private final blacklist mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "settings"    # Landroid/view/textclassifier/TextClassificationConstants;

    .line 282
    .local p0, "this":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<TT;>;"
    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;-><init>()V

    .line 283
    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;-><init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;Landroid/view/textclassifier/SystemTextClassifier-IA;)V

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    .line 284
    return-void
.end method


# virtual methods
.method public blacklist get()Landroid/os/Parcelable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 297
    .local p0, "this":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<TT;>;"
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method public blacklist onFailure()V
    .registers 2

    .line 293
    .local p0, "this":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<TT;>;"
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->onFailure()V

    .line 294
    return-void
.end method

.method public blacklist onSuccess(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Bundle;

    .line 288
    .local p0, "this":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<TT;>;"
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    invoke-static {p1}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->onSuccess(Ljava/lang/Object;)V

    .line 289
    return-void
.end method
