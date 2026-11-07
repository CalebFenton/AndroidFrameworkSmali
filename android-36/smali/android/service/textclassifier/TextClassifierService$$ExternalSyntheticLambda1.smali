.class public final synthetic Landroid/service/textclassifier/TextClassifierService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/textclassifier/TextClassifierService;

.field public final synthetic blacklist f$1:Landroid/service/textclassifier/TextClassifierService$Callback;

.field public final synthetic blacklist f$2:Landroid/view/textclassifier/TextLanguage$Request;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/textclassifier/TextClassifierService;Landroid/service/textclassifier/TextClassifierService$Callback;Landroid/view/textclassifier/TextLanguage$Request;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/textclassifier/TextClassifierService$$ExternalSyntheticLambda1;->f$0:Landroid/service/textclassifier/TextClassifierService;

    iput-object p2, p0, Landroid/service/textclassifier/TextClassifierService$$ExternalSyntheticLambda1;->f$1:Landroid/service/textclassifier/TextClassifierService$Callback;

    iput-object p3, p0, Landroid/service/textclassifier/TextClassifierService$$ExternalSyntheticLambda1;->f$2:Landroid/view/textclassifier/TextLanguage$Request;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$$ExternalSyntheticLambda1;->f$0:Landroid/service/textclassifier/TextClassifierService;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$$ExternalSyntheticLambda1;->f$1:Landroid/service/textclassifier/TextClassifierService$Callback;

    iget-object v2, p0, Landroid/service/textclassifier/TextClassifierService$$ExternalSyntheticLambda1;->f$2:Landroid/view/textclassifier/TextLanguage$Request;

    invoke-static {v0, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->$r8$lambda$mY__VSAaZAyRJDjB8jIhjCHCRQM(Landroid/service/textclassifier/TextClassifierService;Landroid/service/textclassifier/TextClassifierService$Callback;Landroid/view/textclassifier/TextLanguage$Request;)V

    return-void
.end method
