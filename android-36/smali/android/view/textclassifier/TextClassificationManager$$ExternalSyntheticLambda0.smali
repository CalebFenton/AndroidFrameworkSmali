.class public final synthetic Landroid/view/textclassifier/TextClassificationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/textclassifier/TextClassificationSessionFactory;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/textclassifier/TextClassificationManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/textclassifier/TextClassificationManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationManager$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationManager;

    return-void
.end method


# virtual methods
.method public final whitelist createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationManager;

    invoke-static {v0, p1}, Landroid/view/textclassifier/TextClassificationManager;->$r8$lambda$BqtFXnXhXgMcfHGcfYmXwWSliBE(Landroid/view/textclassifier/TextClassificationManager;Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object p1

    return-object p1
.end method
