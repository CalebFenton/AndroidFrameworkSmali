.class Landroid/widget/TextView$ChangeWatcher;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeWatcher"
.end annotation


# instance fields
.field private greylist-max-o mBeforeText:Ljava/lang/CharSequence;

.field final synthetic blacklist this$0:Landroid/widget/TextView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/TextView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 16531
    iput-object p1, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TextView;Landroid/widget/TextView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .param p1, "buffer"    # Landroid/text/Editable;

    .line 16566
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 16568
    const/16 v0, 0x800

    invoke-static {p1, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz v0, :cond_12

    .line 16569
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 16571
    :cond_12
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .line 16542
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->-$$Nest$fgetmTransformed(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 16543
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->-$$Nest$fgetmTransformed(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    .line 16546
    :cond_24
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->-$$Nest$msendBeforeTextChanged(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    .line 16547
    return-void
.end method

.method public whitelist onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 12
    .param p1, "buf"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "s"    # I
    .param p4, "e"    # I

    .line 16585
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    .end local p1    # "buf":Landroid/text/Spannable;
    .end local p2    # "what":Ljava/lang/Object;
    .end local p3    # "s":I
    .end local p4    # "e":I
    .local v1, "buf":Landroid/text/Spannable;
    .local v2, "what":Ljava/lang/Object;
    .local v4, "s":I
    .local v6, "e":I
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 16586
    return-void
.end method

.method public whitelist onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 14
    .param p1, "buf"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "s"    # I
    .param p4, "e"    # I
    .param p5, "st"    # I
    .param p6, "en"    # I

    .line 16578
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v4, p5

    move v6, p6

    .end local p1    # "buf":Landroid/text/Spannable;
    .end local p2    # "what":Ljava/lang/Object;
    .end local p3    # "s":I
    .end local p4    # "e":I
    .end local p5    # "st":I
    .end local p6    # "en":I
    .local v1, "buf":Landroid/text/Spannable;
    .local v2, "what":Ljava/lang/Object;
    .local v3, "s":I
    .local v4, "st":I
    .local v5, "e":I
    .local v6, "en":I
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 16579
    return-void
.end method

.method public whitelist onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 12
    .param p1, "buf"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "s"    # I
    .param p4, "e"    # I

    .line 16592
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .end local p1    # "buf":Landroid/text/Spannable;
    .end local p2    # "what":Ljava/lang/Object;
    .end local p3    # "s":I
    .end local p4    # "e":I
    .local v1, "buf":Landroid/text/Spannable;
    .local v2, "what":Ljava/lang/Object;
    .local v3, "s":I
    .local v5, "e":I
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 16593
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .line 16554
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->handleTextChanged(Ljava/lang/CharSequence;III)V

    .line 16556
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isVisibleToAccessibility()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 16557
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 16558
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    .line 16560
    :cond_17
    return-void
.end method
