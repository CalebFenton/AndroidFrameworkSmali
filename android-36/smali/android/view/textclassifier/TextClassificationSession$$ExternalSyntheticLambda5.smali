.class public final synthetic Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/textclassifier/TextClassificationSession;

.field public final synthetic blacklist f$1:Landroid/view/textclassifier/TextSelection$Request;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextSelection$Request;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;->f$0:Landroid/view/textclassifier/TextClassificationSession;

    iput-object p2, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;->f$1:Landroid/view/textclassifier/TextSelection$Request;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;->f$0:Landroid/view/textclassifier/TextClassificationSession;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;->f$1:Landroid/view/textclassifier/TextSelection$Request;

    invoke-static {v0, v1}, Landroid/view/textclassifier/TextClassificationSession;->$r8$lambda$8X1e1HwZdfGlYoTBfnXXMD7opCo(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method
