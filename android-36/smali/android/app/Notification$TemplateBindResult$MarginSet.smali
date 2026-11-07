.class Landroid/app/Notification$TemplateBindResult$MarginSet;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$TemplateBindResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarginSet"
.end annotation


# instance fields
.field private blacklist mValueIfGone:F

.field private blacklist mValueIfVisible:F

.field final synthetic blacklist this$0:Landroid/app/Notification$TemplateBindResult;


# direct methods
.method private constructor blacklist <init>(Landroid/app/Notification$TemplateBindResult;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 14801
    iput-object p1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;)V

    return-void
.end method


# virtual methods
.method public blacklist applyToView(Landroid/widget/RemoteViews;I)V
    .registers 4
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I

    .line 14811
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;IF)V

    .line 14812
    return-void
.end method

.method public blacklist applyToView(Landroid/widget/RemoteViews;IF)V
    .registers 9
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "extraMarginDp"    # F

    .line 14816
    invoke-virtual {p0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->getDpValue()F

    move-result v0

    add-float/2addr v0, p3

    .line 14817
    .local v0, "marginEndDp":F
    const/4 v1, 0x1

    const v2, 0x102042c

    if-ne p2, v2, :cond_12

    .line 14818
    const-string/jumbo v3, "setTopLineExtraMarginEndDp"

    invoke-virtual {p1, v2, v3, v0}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto :goto_3e

    .line 14820
    :cond_12
    const v2, 0x1020574

    const/4 v3, 0x5

    if-eq p2, v2, :cond_22

    const v2, 0x1020247

    if-ne p2, v2, :cond_1e

    goto :goto_22

    .line 14836
    :cond_1e
    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    goto :goto_3e

    .line 14821
    :cond_22
    :goto_22
    iget v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5f

    .line 14828
    const-string/jumbo v2, "setImageEndMarginDp"

    iget v4, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    invoke-virtual {p1, p2, v2, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 14829
    iget-object v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v2, v2, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    const-string/jumbo v4, "setHasImage"

    invoke-virtual {p1, p2, v4, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 14833
    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 14839
    :goto_3e
    iget-object v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v2, v2, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    if-eqz v2, :cond_5e

    .line 14840
    iget v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    add-float/2addr v2, p3

    .line 14841
    invoke-static {v2, v1}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v2

    .line 14840
    const v3, 0x1020570

    invoke-virtual {p1, p2, v3, v2}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 14843
    iget v2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    add-float/2addr v2, p3

    .line 14844
    invoke-static {v2, v1}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v1

    .line 14843
    const v2, 0x102056f

    invoke-virtual {p1, p2, v2, v1}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 14847
    :cond_5e
    return-void

    .line 14822
    :cond_5f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Programming error: `text` and `big_text` use ImageFloatingTextView which can either show a margin or not; thus mValueIfGone must be 0, but it was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getDpValue()F
    .registers 2

    .line 14850
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v0, v0, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    goto :goto_b

    :cond_9
    iget v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    :goto_b
    return v0
.end method

.method public blacklist setValues(FF)V
    .registers 3
    .param p1, "valueIfGone"    # F
    .param p2, "valueIfVisible"    # F

    .line 14806
    iput p1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    .line 14807
    iput p2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    .line 14808
    return-void
.end method
