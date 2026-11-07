.class Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;
.super Ljava/lang/Object;
.source "InlineSuggestion.java"

# interfaces
.implements Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->getSurfacePackageUpdater()Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$279thRjDcUsWkJdgJKRizmplBa8(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;->lambda$onSurfacePackageReleased$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$U79dMQo8GDAk_3BKz06nZ3yBv5A(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;->lambda$getSurfacePackage$1(Ljava/util/function/Consumer;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 425
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;->this$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$getSurfacePackage$1(Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/Consumer;

    .line 436
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;->this$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->-$$Nest$mhandleGetSurfacePackage(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSurfacePackageReleased$0()V
    .registers 2

    .line 429
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;->this$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->-$$Nest$mhandleOnSurfacePackageReleased(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    return-void
.end method


# virtual methods
.method public blacklist getSurfacePackage(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            ">;)V"
        }
    .end annotation

    .line 435
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControlViewHost$SurfacePackage;>;"
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;->this$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->-$$Nest$fgetmMainHandler(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    return-void
.end method

.method public blacklist onSurfacePackageReleased()V
    .registers 3

    .line 428
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;->this$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->-$$Nest$fgetmMainHandler(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    return-void
.end method
