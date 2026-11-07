.class Landroid/widget/Editor$SpanController$2;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$EasyEditDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SpanController;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$SpanController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$SpanController;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/Editor$SpanController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3566
    iput-object p1, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDeleteClick(Landroid/text/style/EasyEditSpan;)V
    .registers 7
    .param p1, "span"    # Landroid/text/style/EasyEditSpan;

    .line 3569
    iget-object v0, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    iget-object v0, v0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 3570
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 3571
    .local v1, "start":I
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 3572
    .local v2, "end":I
    if-ltz v1, :cond_2b

    if-ltz v2, :cond_2b

    .line 3573
    iget-object v3, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    const/4 v4, 0x1

    invoke-static {v3, v4, p1}, Landroid/widget/Editor$SpanController;->-$$Nest$msendEasySpanNotification(Landroid/widget/Editor$SpanController;ILandroid/text/style/EasyEditSpan;)V

    .line 3574
    iget-object v3, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    iget-object v3, v3, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3576
    :cond_2b
    invoke-interface {v0, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 3577
    return-void
.end method
