.class Landroid/widget/Editor$SpanController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpanController"
.end annotation


# static fields
.field private static final DISPLAY_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private mHidePopup:Ljava/lang/Runnable;

.field private mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -wrap0(Landroid/widget/Editor$SpanController;ILandroid/text/style/EasyEditSpan;)V
    .locals 0
    .param p1, "textChangedType"    # I
    .param p2, "span"    # Landroid/text/style/EasyEditSpan;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->sendEasySpanNotification(ILandroid/text/style/EasyEditSpan;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    .line 2227
    iput-object p1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method private isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2238
    sget-object v1, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    #@3
    if-eq v1, p2, :cond_0

    #@5
    sget-object v1, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    #@7
    if-ne v1, p2, :cond_1

    #@9
    .line 2239
    :cond_0
    invoke-interface {p1, p2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    #@c
    move-result v1

    #@d
    and-int/lit16 v1, v1, 0x200

    #@f
    if-nez v1, :cond_1

    #@11
    const/4 v0, 0x1

    #@12
    .line 2238
    :cond_1
    return v0
.end method

.method private sendEasySpanNotification(ILandroid/text/style/EasyEditSpan;)V
    .locals 5
    .param p1, "textChangedType"    # I
    .param p2, "span"    # Landroid/text/style/EasyEditSpan;

    #@0
    .prologue
    .line 2329
    :try_start_0
    invoke-virtual {p2}, Landroid/text/style/EasyEditSpan;->getPendingIntent()Landroid/app/PendingIntent;

    #@3
    move-result-object v2

    #@4
    .line 2330
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    #@6
    .line 2331
    new-instance v1, Landroid/content/Intent;

    #@8
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@b
    .line 2332
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.text.style.EXTRA_TEXT_CHANGED_TYPE"

    #@e
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@11
    .line 2333
    iget-object v3, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@13
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v3

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-virtual {v2, v3, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 2327
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    #@20
    .line 2335
    :catch_0
    move-exception v0

    #@21
    .line 2337
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v3, "Editor"

    #@24
    const-string/jumbo v4, "PendingIntent for notification cannot be sent"

    #@27
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    #@0
    .prologue
    .line 2321
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2322
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->hide()V

    #@9
    .line 2323
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@b
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    #@11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@14
    .line 2320
    :cond_0
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 4
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 2244
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 2245
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@a
    invoke-static {v0}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;)V

    #@d
    .line 2243
    .end local p2    # "span":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    #@e
    .line 2246
    .restart local p2    # "span":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Landroid/text/style/EasyEditSpan;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 2247
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    #@14
    if-nez v0, :cond_2

    #@16
    .line 2248
    new-instance v0, Landroid/widget/Editor$EasyEditPopupWindow;

    #@18
    iget-object v1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@1a
    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$EasyEditPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$EasyEditPopupWindow;)V

    #@1d
    iput-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    #@1f
    .line 2249
    new-instance v0, Landroid/widget/Editor$SpanController$1;

    #@21
    invoke-direct {v0, p0}, Landroid/widget/Editor$SpanController$1;-><init>(Landroid/widget/Editor$SpanController;)V

    #@24
    iput-object v0, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    #@26
    .line 2258
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    #@28
    invoke-static {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->-get0(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    #@2b
    move-result-object v0

    #@2c
    if-eqz v0, :cond_3

    #@2e
    .line 2259
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    #@30
    invoke-static {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->-get0(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0, v3}, Landroid/text/style/EasyEditSpan;->setDeleteEnabled(Z)V

    #@37
    .line 2262
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    #@39
    check-cast p2, Landroid/text/style/EasyEditSpan;

    #@3b
    .end local p2    # "span":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Landroid/widget/Editor$EasyEditPopupWindow;->setEasyEditSpan(Landroid/text/style/EasyEditSpan;)V

    #@3e
    .line 2263
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    #@40
    new-instance v1, Landroid/widget/Editor$SpanController$2;

    #@42
    invoke-direct {v1, p0}, Landroid/widget/Editor$SpanController$2;-><init>(Landroid/widget/Editor$SpanController;)V

    #@45
    invoke-static {v0, v1}, Landroid/widget/Editor$EasyEditPopupWindow;->-wrap0(Landroid/widget/Editor$EasyEditPopupWindow;Landroid/widget/Editor$EasyEditDeleteListener;)V

    #@48
    .line 2277
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@4a
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowVisibility()I

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_4

    #@54
    .line 2279
    return-void

    #@55
    .line 2282
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@57
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@5e
    move-result-object v0

    #@5f
    if-nez v0, :cond_5

    #@61
    .line 2284
    return-void

    #@62
    .line 2287
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@64
    invoke-virtual {v0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@67
    move-result v0

    #@68
    if-eqz v0, :cond_6

    #@6a
    .line 2290
    return-void

    #@6b
    .line 2293
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    #@6d
    invoke-virtual {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->show()V

    #@70
    .line 2294
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@72
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@75
    move-result-object v0

    #@76
    iget-object v1, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    #@78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7b
    .line 2295
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@7d
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@80
    move-result-object v0

    #@81
    iget-object v1, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    #@83
    const-wide/16 v2, 0xbb8

    #@85
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@88
    goto :goto_0
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 2
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "previousStart"    # I
    .param p4, "previousEnd"    # I
    .param p5, "newStart"    # I
    .param p6, "newEnd"    # I

    #@0
    .prologue
    .line 2311
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 2312
    iget-object v1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@8
    invoke-static {v1}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;)V

    #@b
    .line 2310
    :cond_0
    :goto_0
    return-void

    #@c
    .line 2313
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    #@e
    if-eqz v1, :cond_0

    #@10
    instance-of v1, p2, Landroid/text/style/EasyEditSpan;

    #@12
    if-eqz v1, :cond_0

    #@14
    move-object v0, p2

    #@15
    .line 2314
    check-cast v0, Landroid/text/style/EasyEditSpan;

    #@17
    .line 2315
    .local v0, "easyEditSpan":Landroid/text/style/EasyEditSpan;
    const/4 v1, 0x2

    #@18
    invoke-direct {p0, v1, v0}, Landroid/widget/Editor$SpanController;->sendEasySpanNotification(ILandroid/text/style/EasyEditSpan;)V

    #@1b
    .line 2316
    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@1e
    goto :goto_0
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 2301
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 2302
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    #@8
    invoke-static {v0}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;)V

    #@b
    .line 2300
    :cond_0
    :goto_0
    return-void

    #@c
    .line 2303
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    #@e
    if-eqz v0, :cond_0

    #@10
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    #@12
    invoke-static {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->-get0(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    #@15
    move-result-object v0

    #@16
    if-ne p2, v0, :cond_0

    #@18
    .line 2304
    invoke-virtual {p0}, Landroid/widget/Editor$SpanController;->hide()V

    #@1b
    goto :goto_0
.end method
