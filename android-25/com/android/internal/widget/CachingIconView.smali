.class public Lcom/android/internal/widget/CachingIconView;
.super Landroid/widget/ImageView;
.source "CachingIconView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mInternalSetDrawable:Z

.field private mLastPackage:Ljava/lang/String;

.field private mLastResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 45
    return-void
.end method

.method private normalizeIconPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 160
    if-nez p1, :cond_0

    #@3
    .line 161
    return-object v2

    #@4
    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 165
    .local v0, "pkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 166
    return-object v2

    #@f
    .line 168
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 169
    return-object v2

    #@1c
    .line 171
    :cond_2
    return-object v0
.end method

.method private declared-synchronized resetCache()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 175
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    #@4
    .line 176
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 174
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method private declared-synchronized testAndSetCache(I)Z
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 144
    if-eqz p1, :cond_0

    #@3
    :try_start_0
    iget v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    #@5
    if-nez v1, :cond_1

    #@7
    .line 145
    :cond_0
    const/4 v0, 0x0

    #@8
    .line 149
    .local v0, "isCached":Z
    :goto_0
    const/4 v1, 0x0

    #@9
    iput-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    #@b
    .line 150
    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 151
    return v0

    #@f
    .line 147
    .end local v0    # "isCached":Z
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    #@11
    if-ne p1, v1, :cond_2

    #@13
    iget-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    if-nez v1, :cond_2

    #@17
    const/4 v0, 0x1

    #@18
    .restart local v0    # "isCached":Z
    goto :goto_0

    #@19
    .end local v0    # "isCached":Z
    :cond_2
    const/4 v0, 0x0

    #@1a
    .restart local v0    # "isCached":Z
    goto :goto_0

    #@1b
    .end local v0    # "isCached":Z
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit p0

    #@1d
    throw v1
.end method

.method private declared-synchronized testAndSetCache(Landroid/graphics/drawable/Icon;)Z
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 122
    if-eqz p1, :cond_1

    #@4
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    #@7
    move-result v2

    #@8
    const/4 v3, 0x2

    #@9
    if-ne v2, v3, :cond_1

    #@b
    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->normalizeIconPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 125
    .local v0, "iconPackage":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 126
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    #@16
    move-result v2

    #@17
    iget v3, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    #@19
    if-ne v2, v3, :cond_0

    #@1b
    .line 127
    iget-object v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    #@1d
    invoke-static {v0, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    .line 129
    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    #@23
    .line 130
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    #@26
    move-result v2

    #@27
    iput v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    .line 132
    return v1

    #@2b
    .line 125
    :cond_0
    const/4 v1, 0x0

    #@2c
    .local v1, "isCached":Z
    goto :goto_0

    #@2d
    .line 134
    .end local v0    # "iconPackage":Ljava/lang/String;
    .end local v1    # "isCached":Z
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    monitor-exit p0

    #@31
    .line 135
    return v4

    #@32
    :catchall_0
    move-exception v2

    #@33
    monitor-exit p0

    #@34
    throw v2
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 115
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    #@6
    .line 113
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    #@3
    .line 109
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@6
    .line 107
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 100
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    #@7
    .line 102
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a
    .line 97
    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->testAndSetCache(Landroid/graphics/drawable/Icon;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 53
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    #@9
    .line 55
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    #@c
    .line 56
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    #@f
    .line 51
    :cond_0
    return-void
.end method

.method public setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    #@3
    .line 63
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageResourceAsync"
    .end annotation

    #@0
    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->testAndSetCache(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 70
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    #@9
    .line 72
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@c
    .line 73
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    #@f
    .line 68
    :cond_0
    return-void
.end method

.method public setImageResourceAsync(I)Ljava/lang/Runnable;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    #@3
    .line 80
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResourceAsync(I)Ljava/lang/Runnable;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    #@3
    .line 87
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    #@6
    .line 85
    return-void
.end method

.method public setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    #@3
    .line 93
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method
