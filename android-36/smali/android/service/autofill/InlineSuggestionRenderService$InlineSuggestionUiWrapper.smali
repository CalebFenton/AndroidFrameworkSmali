.class final Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;
.super Landroid/service/autofill/IInlineSuggestionUi$Stub;
.source "InlineSuggestionRenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/InlineSuggestionRenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InlineSuggestionUiWrapper"
.end annotation


# instance fields
.field private final blacklist mUiImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)V
    .registers 3
    .param p1, "uiImpl"    # Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    .line 244
    invoke-direct {p0}, Landroid/service/autofill/IInlineSuggestionUi$Stub;-><init>()V

    .line 245
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;->mUiImpl:Ljava/lang/ref/WeakReference;

    .line 246
    return-void
.end method


# virtual methods
.method public blacklist getSurfacePackage(Landroid/service/autofill/ISurfacePackageResultCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/service/autofill/ISurfacePackageResultCallback;

    .line 258
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;->mUiImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    .line 259
    .local v0, "uiImpl":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    if-eqz v0, :cond_d

    .line 260
    invoke-virtual {v0, p1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->getSurfacePackage(Landroid/service/autofill/ISurfacePackageResultCallback;)V

    .line 262
    :cond_d
    return-void
.end method

.method public blacklist releaseSurfaceControlViewHost()V
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;->mUiImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    .line 251
    .local v0, "uiImpl":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    if-eqz v0, :cond_d

    .line 252
    invoke-virtual {v0}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->releaseSurfaceControlViewHost()V

    .line 254
    :cond_d
    return-void
.end method
