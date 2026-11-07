.class Landroid/view/View$ViewTranslationRequestConsumer;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewTranslationRequestConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/translation/ViewTranslationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCalled:Z

.field private final blacklist mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 34112
    .local p2, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/view/translation/ViewTranslationRequest;>;"
    iput-object p1, p0, Landroid/view/View$ViewTranslationRequestConsumer;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34113
    iput-object p2, p0, Landroid/view/View$ViewTranslationRequestConsumer;->mRequests:Ljava/util/List;

    .line 34114
    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/view/translation/ViewTranslationRequest;)V
    .registers 6
    .param p1, "request"    # Landroid/view/translation/ViewTranslationRequest;

    .line 34118
    iget-boolean v0, p0, Landroid/view/View$ViewTranslationRequestConsumer;->mCalled:Z

    if-nez v0, :cond_48

    .line 34121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View$ViewTranslationRequestConsumer;->mCalled:Z

    .line 34122
    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/view/translation/ViewTranslationRequest;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_47

    .line 34123
    iget-object v1, p0, Landroid/view/View$ViewTranslationRequestConsumer;->mRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34124
    const/4 v1, 0x2

    const-string v2, "View.ContentCapture"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 34125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setHasTransientState(true) for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/View$ViewTranslationRequestConsumer;->this$0:Landroid/view/View;

    .line 34126
    invoke-virtual {v3}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34125
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34128
    :cond_3d
    iget-object v1, p0, Landroid/view/View$ViewTranslationRequestConsumer;->this$0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setHasTransientState(Z)V

    .line 34129
    iget-object v1, p0, Landroid/view/View$ViewTranslationRequestConsumer;->this$0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setHasTranslationTransientState(Z)V

    .line 34131
    :cond_47
    return-void

    .line 34119
    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The translation Consumer is not reusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34108
    check-cast p1, Landroid/view/translation/ViewTranslationRequest;

    invoke-virtual {p0, p1}, Landroid/view/View$ViewTranslationRequestConsumer;->accept(Landroid/view/translation/ViewTranslationRequest;)V

    return-void
.end method
