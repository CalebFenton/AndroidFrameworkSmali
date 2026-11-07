.class public final synthetic Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/textclassifier/TextClassificationSession;

.field public final synthetic blacklist f$1:Landroid/view/textclassifier/SelectionEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/SelectionEvent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda3;->f$0:Landroid/view/textclassifier/TextClassificationSession;

    iput-object p2, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda3;->f$1:Landroid/view/textclassifier/SelectionEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda3;->f$0:Landroid/view/textclassifier/TextClassificationSession;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda3;->f$1:Landroid/view/textclassifier/SelectionEvent;

    invoke-static {v0, v1}, Landroid/view/textclassifier/TextClassificationSession;->$r8$lambda$P84YPWmwOWbuRphZq1ABXozpOFg(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/SelectionEvent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
