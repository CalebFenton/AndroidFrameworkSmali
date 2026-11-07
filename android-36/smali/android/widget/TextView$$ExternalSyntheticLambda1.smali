.class public final synthetic Landroid/widget/TextView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/TextView;

.field public final synthetic blacklist f$1:Landroid/view/textclassifier/TextClassification$Request;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/TextView;Landroid/view/textclassifier/TextClassification$Request;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TextView$$ExternalSyntheticLambda1;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextView$$ExternalSyntheticLambda1;->f$1:Landroid/view/textclassifier/TextClassification$Request;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/widget/TextView$$ExternalSyntheticLambda1;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$$ExternalSyntheticLambda1;->f$1:Landroid/view/textclassifier/TextClassification$Request;

    invoke-static {v0, v1}, Landroid/widget/TextView;->$r8$lambda$nDF58UuJolLymHRHNqjDgHLYLt4(Landroid/widget/TextView;Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method
