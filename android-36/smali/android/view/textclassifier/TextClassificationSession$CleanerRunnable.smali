.class Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;
.super Ljava/lang/Object;
.source "TextClassificationSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassificationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CleanerRunnable"
.end annotation


# instance fields
.field private final blacklist mDelegate:Landroid/view/textclassifier/TextClassifier;

.field private final blacklist mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;


# direct methods
.method constructor blacklist <init>(Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;Landroid/view/textclassifier/TextClassifier;)V
    .registers 4
    .param p1, "eventHelper"    # Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;
    .param p2, "delegate"    # Landroid/view/textclassifier/TextClassifier;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    .line 302
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    .line 303
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 307
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->endSession()V

    .line 308
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->destroy()V

    .line 309
    return-void
.end method
