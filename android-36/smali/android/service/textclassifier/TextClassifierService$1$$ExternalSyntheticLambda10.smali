.class public final synthetic Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/textclassifier/TextClassifierService$1;

.field public final synthetic blacklist f$1:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda10;->f$0:Landroid/service/textclassifier/TextClassifierService$1;

    iput-object p2, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda10;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda10;->f$0:Landroid/service/textclassifier/TextClassifierService$1;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda10;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-static {v0, v1}, Landroid/service/textclassifier/TextClassifierService$1;->$r8$lambda$7Y35wIerEZvh7QNaFsx2SvQKLBs(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method
