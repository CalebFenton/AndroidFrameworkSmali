.class public final Landroid/view/ViewStub;
.super Landroid/view/View;
.source "ViewStub.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewStub$ViewReplaceRunnable;,
        Landroid/view/ViewStub$OnInflateListener;
    }
.end annotation


# instance fields
.field private greylist-max-o mInflateListener:Landroid/view/ViewStub$OnInflateListener;

.field private greylist-max-o mInflatedId:I

.field private greylist-max-o mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mLayoutResource:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreplaceSelfWithView(Landroid/view/ViewStub;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewStub;->replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    .line 84
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput p2, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 96
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 107
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 109
    sget-object v0, Lcom/android/internal/R$styleable;->ViewStub:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 111
    .local v5, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->ViewStub:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v2, "context":Landroid/content/Context;
    .local v4, "attrs":Landroid/util/AttributeSet;
    .local v6, "defStyleAttr":I
    .local v7, "defStyleRes":I
    invoke-virtual/range {v1 .. v7}, Landroid/view/ViewStub;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 114
    const/4 p1, 0x2

    const/4 p2, -0x1

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, v1, Landroid/view/ViewStub;->mInflatedId:I

    .line 115
    const/4 p1, 0x1

    const/4 p3, 0x0

    invoke-virtual {v5, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    iput p4, v1, Landroid/view/ViewStub;->mLayoutResource:I

    .line 116
    invoke-virtual {v5, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, v1, Landroid/view/ViewStub;->mID:I

    .line 117
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 120
    invoke-virtual {p0, p1}, Landroid/view/ViewStub;->setWillNotDraw(Z)V

    .line 121
    return-void
.end method

.method private greylist-max-o inflateViewNoAdd(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 267
    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_7

    .line 268
    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    .local v0, "factory":Landroid/view/LayoutInflater;
    goto :goto_d

    .line 270
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    :cond_7
    iget-object v0, p0, Landroid/view/ViewStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 272
    .restart local v0    # "factory":Landroid/view/LayoutInflater;
    :goto_d
    iget v1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 274
    .local v1, "view":Landroid/view/View;
    iget v2, p0, Landroid/view/ViewStub;->mInflatedId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1e

    .line 275
    iget v2, p0, Landroid/view/ViewStub;->mInflatedId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 277
    :cond_1e
    return-object v1
.end method

.method private greylist-max-o replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 281
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 282
    .local v0, "index":I
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 284
    invoke-virtual {p0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 285
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_11

    .line 286
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_14

    .line 288
    :cond_11
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 290
    :goto_14
    return-void
.end method


# virtual methods
.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 225
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 221
    return-void
.end method

.method public whitelist getInflatedId()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/view/ViewStub;->mInflatedId:I

    return v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public whitelist getLayoutResource()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    return v0
.end method

.method public whitelist inflate()Landroid/view/View;
    .registers 5

    .line 300
    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 302
    .local v0, "viewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_31

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_31

    .line 303
    iget v1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    if-eqz v1, :cond_29

    .line 304
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 305
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Landroid/view/ViewStub;->inflateViewNoAdd(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 306
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2, v1}, Landroid/view/ViewStub;->replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 308
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 309
    iget-object v3, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    if-eqz v3, :cond_28

    .line 310
    iget-object v3, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    invoke-interface {v3, p0, v2}, Landroid/view/ViewStub$OnInflateListener;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V

    .line 313
    :cond_28
    return-object v2

    .line 315
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "view":Landroid/view/View;
    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ViewStub must have a valid layoutResource"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_31
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewStub;->setMeasuredDimension(II)V

    .line 217
    return-void
.end method

.method public whitelist setInflatedId(I)V
    .registers 2
    .param p1, "inflatedId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setInflatedIdAsync"
    .end annotation

    .line 150
    iput p1, p0, Landroid/view/ViewStub;->mInflatedId:I

    .line 151
    return-void
.end method

.method public greylist-max-o setInflatedIdAsync(I)Ljava/lang/Runnable;
    .registers 3
    .param p1, "inflatedId"    # I

    .line 155
    iput p1, p0, Landroid/view/ViewStub;->mInflatedId:I

    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setLayoutInflater(Landroid/view/LayoutInflater;)V
    .registers 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 204
    iput-object p1, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    .line 205
    return-void
.end method

.method public whitelist setLayoutResource(I)V
    .registers 2
    .param p1, "layoutResource"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutResourceAsync"
    .end annotation

    .line 190
    iput p1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 191
    return-void
.end method

.method public greylist-max-o setLayoutResourceAsync(I)Ljava/lang/Runnable;
    .registers 3
    .param p1, "layoutResource"    # I

    .line 195
    iput p1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V
    .registers 2
    .param p1, "inflateListener"    # Landroid/view/ViewStub$OnInflateListener;

    .line 331
    iput-object p1, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    .line 332
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setVisibilityAsync"
    .end annotation

    .line 240
    iget-object v0, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1b

    .line 241
    iget-object v0, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 242
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 243
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    .end local v0    # "view":Landroid/view/View;
    goto :goto_26

    .line 245
    .restart local v0    # "view":Landroid/view/View;
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setVisibility called on un-referenced view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    .end local v0    # "view":Landroid/view/View;
    :cond_1b
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    if-eqz p1, :cond_23

    const/4 v0, 0x4

    if-ne p1, v0, :cond_26

    .line 250
    :cond_23
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 253
    :cond_26
    :goto_26
    return-void
.end method

.method public greylist-max-o setVisibilityAsync(I)Ljava/lang/Runnable;
    .registers 5
    .param p1, "visibility"    # I

    .line 257
    if-eqz p1, :cond_8

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    goto :goto_8

    .line 261
    :cond_6
    const/4 v0, 0x0

    return-object v0

    .line 258
    :cond_8
    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 259
    .local v0, "parent":Landroid/view/ViewGroup;
    new-instance v1, Landroid/view/ViewStub$ViewReplaceRunnable;

    invoke-direct {p0, v0}, Landroid/view/ViewStub;->inflateViewNoAdd(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/view/ViewStub$ViewReplaceRunnable;-><init>(Landroid/view/ViewStub;Landroid/view/View;)V

    return-object v1
.end method
