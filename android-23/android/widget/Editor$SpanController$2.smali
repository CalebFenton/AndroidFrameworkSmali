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
.field final synthetic this$1:Landroid/widget/Editor$SpanController;


# direct methods
.method constructor <init>(Landroid/widget/Editor$SpanController;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SpanController;

    #@0
    .prologue
    .line 2263
    iput-object p1, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDeleteClick(Landroid/text/style/EasyEditSpan;)V
    .locals 5
    .param p1, "span"    # Landroid/text/style/EasyEditSpan;

    #@0
    .prologue
    .line 2266
    iget-object v3, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    #@2
    iget-object v3, v3, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@4
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/text/Editable;

    #@e
    .line 2267
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@11
    move-result v2

    #@12
    .line 2268
    .local v2, "start":I
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@15
    move-result v1

    #@16
    .line 2269
    .local v1, "end":I
    if-ltz v2, :cond_0

    #@18
    if-ltz v1, :cond_0

    #@1a
    .line 2270
    iget-object v3, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-static {v3, v4, p1}, Landroid/widget/Editor$SpanController;->-wrap0(Landroid/widget/Editor$SpanController;ILandroid/text/style/EasyEditSpan;)V

    #@20
    .line 2271
    iget-object v3, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    #@22
    iget-object v3, v3, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@24
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->deleteText_internal(II)V

    #@2b
    .line 2273
    :cond_0
    invoke-interface {v0, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@2e
    .line 2265
    return-void
.end method
