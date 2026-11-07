.class public final synthetic Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;Ljava/util/function/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2$$ExternalSyntheticLambda1;->f$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;

    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2$$ExternalSyntheticLambda1;->f$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;->$r8$lambda$U79dMQo8GDAk_3BKz06nZ3yBv5A(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;Ljava/util/function/Consumer;)V

    return-void
.end method
