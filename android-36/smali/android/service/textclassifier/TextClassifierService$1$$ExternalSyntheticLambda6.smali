.class public final synthetic Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/textclassifier/TextClassifierService$1;

.field public final synthetic blacklist f$1:Landroid/view/textclassifier/TextClassificationSessionId;

.field public final synthetic blacklist f$2:Landroid/view/textclassifier/TextLinks$Request;

.field public final synthetic blacklist f$3:Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda6;->f$0:Landroid/service/textclassifier/TextClassifierService$1;

    iput-object p2, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda6;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p3, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda6;->f$2:Landroid/view/textclassifier/TextLinks$Request;

    iput-object p4, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda6;->f$3:Landroid/service/textclassifier/ITextClassifierCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda6;->f$0:Landroid/service/textclassifier/TextClassifierService$1;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda6;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v2, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda6;->f$2:Landroid/view/textclassifier/TextLinks$Request;

    iget-object v3, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda6;->f$3:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-static {v0, v1, v2, v3}, Landroid/service/textclassifier/TextClassifierService$1;->$r8$lambda$8VRZRZUYa_wcC7VH3hq8nbw8THI(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method
