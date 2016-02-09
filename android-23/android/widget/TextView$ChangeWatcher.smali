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
.field private mBeforeText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 10136
    iput-object p1, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$ChangeWatcher;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TextView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;)V

    #@3
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "buffer"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 10168
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    #@5
    .line 10170
    const/16 v0, 0x800

    #@7
    invoke-static {p1, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 10171
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@f
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    #@12
    .line 10166
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    .line 10145
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@2
    invoke-static {v0}, Landroid/widget/TextView;->-get0(Landroid/widget/TextView;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 10146
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@12
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    #@15
    move-result v0

    #@16
    invoke-static {v0}, Landroid/widget/TextView;->-wrap0(I)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_0

    #@1c
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@1e
    invoke-virtual {v0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 10147
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@26
    invoke-static {v0}, Landroid/widget/TextView;->-wrap1(Landroid/widget/TextView;)Z

    #@29
    move-result v0

    #@2a
    .line 10145
    if-eqz v0, :cond_2

    #@2c
    .line 10148
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    #@32
    .line 10151
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@34
    invoke-static {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->-wrap2(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    #@37
    .line 10141
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 7
    .param p1, "buf"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "s"    # I
    .param p4, "e"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 10184
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v4, p3

    #@6
    move v5, v3

    #@7
    move v6, p4

    #@8
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    #@b
    .line 10181
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 7
    .param p1, "buf"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "s"    # I
    .param p4, "e"    # I
    .param p5, "st"    # I
    .param p6, "en"    # I

    #@0
    .prologue
    .line 10178
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p5

    #@6
    move v5, p4

    #@7
    move v6, p6

    #@8
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    #@b
    .line 10175
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 7
    .param p1, "buf"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "s"    # I
    .param p4, "e"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 10190
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v5, p4

    #@7
    move v6, v4

    #@8
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    #@b
    .line 10187
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    .line 10157
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->handleTextChanged(Ljava/lang/CharSequence;III)V

    #@5
    .line 10159
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@7
    invoke-static {v0}, Landroid/widget/TextView;->-get0(Landroid/widget/TextView;)Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 10160
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@17
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_0

    #@1d
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@1f
    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_1

    #@25
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@27
    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    #@2a
    move-result v0

    #@2b
    .line 10159
    if-eqz v0, :cond_1

    #@2d
    .line 10161
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #@2f
    iget-object v1, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    #@31
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    #@34
    .line 10162
    const/4 v0, 0x0

    #@35
    iput-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    #@37
    .line 10154
    :cond_1
    return-void
.end method
