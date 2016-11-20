.class public final Landroid/view/ViewStub;
.super Landroid/view/View;
.source "ViewStub.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewStub$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Landroid/view/ViewStub$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    #@4
    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    #@0
    .prologue
    .line 93
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 95
    iput p2, p0, Landroid/view/ViewStub;->mLayoutResource:I

    #@6
    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 103
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    .line 107
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@6
    .line 110
    sget-object v1, Lcom/android/internal/R$styleable;->ViewStub:[I

    #@8
    .line 109
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@10
    move-result v1

    #@11
    iput v1, p0, Landroid/view/ViewStub;->mInflatedId:I

    #@13
    .line 112
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@16
    move-result v1

    #@17
    iput v1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    #@19
    .line 113
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Landroid/view/ViewStub;->mID:I

    #@1f
    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@22
    .line 116
    const/16 v1, 0x8

    #@24
    invoke-virtual {p0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    #@27
    .line 117
    invoke-virtual {p0, v4}, Landroid/view/ViewStub;->setWillNotDraw(Z)V

    #@2a
    .line 106
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 209
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 205
    return-void
.end method

.method public getInflatedId()I
    .locals 1

    #@0
    .prologue
    .line 132
    iget v0, p0, Landroid/view/ViewStub;->mInflatedId:I

    #@2
    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    #@2
    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 164
    iget v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    #@2
    return v0
.end method

.method public inflate()Landroid/view/View;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 248
    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    #@4
    move-result-object v5

    #@5
    .line 250
    .local v5, "viewParent":Landroid/view/ViewParent;
    if-eqz v5, :cond_5

    #@7
    instance-of v6, v5, Landroid/view/ViewGroup;

    #@9
    if-eqz v6, :cond_5

    #@b
    .line 251
    iget v6, p0, Landroid/view/ViewStub;->mLayoutResource:I

    #@d
    if-eqz v6, :cond_4

    #@f
    move-object v3, v5

    #@10
    .line 252
    check-cast v3, Landroid/view/ViewGroup;

    #@12
    .line 254
    .local v3, "parent":Landroid/view/ViewGroup;
    iget-object v6, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    #@14
    if-eqz v6, :cond_2

    #@16
    .line 255
    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    #@18
    .line 259
    .local v0, "factory":Landroid/view/LayoutInflater;
    :goto_0
    iget v6, p0, Landroid/view/ViewStub;->mLayoutResource:I

    #@1a
    invoke-virtual {v0, v6, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@1d
    move-result-object v4

    #@1e
    .line 262
    .local v4, "view":Landroid/view/View;
    iget v6, p0, Landroid/view/ViewStub;->mInflatedId:I

    #@20
    const/4 v7, -0x1

    #@21
    if-eq v6, v7, :cond_0

    #@23
    .line 263
    iget v6, p0, Landroid/view/ViewStub;->mInflatedId:I

    #@25
    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    #@28
    .line 266
    :cond_0
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@2b
    move-result v1

    #@2c
    .line 267
    .local v1, "index":I
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    #@2f
    .line 269
    invoke-virtual {p0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@32
    move-result-object v2

    #@33
    .line 270
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    #@35
    .line 271
    invoke-virtual {v3, v4, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@38
    .line 276
    :goto_1
    new-instance v6, Ljava/lang/ref/WeakReference;

    #@3a
    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@3d
    iput-object v6, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    #@3f
    .line 278
    iget-object v6, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    #@41
    if-eqz v6, :cond_1

    #@43
    .line 279
    iget-object v6, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    #@45
    invoke-interface {v6, p0, v4}, Landroid/view/ViewStub$OnInflateListener;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V

    #@48
    .line 282
    :cond_1
    return-object v4

    #@49
    .line 257
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    .end local v1    # "index":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Landroid/view/ViewStub;->mContext:Landroid/content/Context;

    #@4b
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@4e
    move-result-object v0

    #@4f
    .restart local v0    # "factory":Landroid/view/LayoutInflater;
    goto :goto_0

    #@50
    .line 273
    .restart local v1    # "index":I
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@53
    goto :goto_1

    #@54
    .line 284
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    .end local v1    # "index":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@56
    const-string/jumbo v7, "ViewStub must have a valid layoutResource"

    #@59
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v6

    #@5d
    .line 287
    :cond_5
    new-instance v6, Ljava/lang/IllegalStateException;

    #@5f
    const-string/jumbo v7, "ViewStub must have a non-null ViewGroup viewParent"

    #@62
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@65
    throw v6
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 201
    invoke-virtual {p0, v0, v0}, Landroid/view/ViewStub;->setMeasuredDimension(II)V

    #@4
    .line 200
    return-void
.end method

.method public setInflatedId(I)V
    .locals 0
    .param p1, "inflatedId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 147
    iput p1, p0, Landroid/view/ViewStub;->mInflatedId:I

    #@2
    .line 146
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    #@0
    .prologue
    .line 189
    iput-object p1, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    #@2
    .line 188
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResource"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 181
    iput p1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    #@2
    .line 180
    return-void
.end method

.method public setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V
    .locals 0
    .param p1, "inflateListener"    # Landroid/view/ViewStub$OnInflateListener;

    #@0
    .prologue
    .line 300
    iput-object p1, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    #@2
    .line 299
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 225
    iget-object v1, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v1, :cond_2

    #@4
    .line 226
    iget-object v1, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    #@6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/View;

    #@c
    .line 227
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    #@e
    .line 228
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    #@11
    .line 224
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    #@12
    .line 230
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@14
    const-string/jumbo v2, "setVisibility called on un-referenced view"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 233
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    #@1e
    .line 234
    if-eqz p1, :cond_3

    #@20
    const/4 v1, 0x4

    #@21
    if-ne p1, v1, :cond_0

    #@23
    .line 235
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@26
    goto :goto_0
.end method
