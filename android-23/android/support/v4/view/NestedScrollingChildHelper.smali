.class public Landroid/support/v4/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParent:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@5
    .line 46
    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 2
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    #@0
    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 235
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    #@c
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@e
    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 238
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 2
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    #@0
    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 252
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    #@c
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@e
    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 255
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 190
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_8

    #@8
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    #@a
    if-eqz v4, :cond_8

    #@c
    .line 191
    if-nez p1, :cond_0

    #@e
    if-eqz p2, :cond_7

    #@10
    .line 192
    :cond_0
    const/4 v0, 0x0

    #@11
    .line 193
    .local v0, "startX":I
    const/4 v1, 0x0

    #@12
    .line 194
    .local v1, "startY":I
    if-eqz p4, :cond_1

    #@14
    .line 195
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@16
    invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V

    #@19
    .line 196
    aget v0, p4, v3

    #@1b
    .line 197
    aget v1, p4, v2

    #@1d
    .line 200
    :cond_1
    if-nez p3, :cond_3

    #@1f
    .line 201
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    #@21
    if-nez v4, :cond_2

    #@23
    .line 202
    const/4 v4, 0x2

    #@24
    new-array v4, v4, [I

    #@26
    iput-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    #@28
    .line 204
    :cond_2
    iget-object p3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    #@2a
    .line 206
    :cond_3
    aput v3, p3, v3

    #@2c
    .line 207
    aput v3, p3, v2

    #@2e
    .line 208
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    #@30
    iget-object v5, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@32
    invoke-static {v4, v5, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    #@35
    .line 210
    if-eqz p4, :cond_4

    #@37
    .line 211
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@39
    invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V

    #@3c
    .line 212
    aget v4, p4, v3

    #@3e
    sub-int/2addr v4, v0

    #@3f
    aput v4, p4, v3

    #@41
    .line 213
    aget v4, p4, v2

    #@43
    sub-int/2addr v4, v1

    #@44
    aput v4, p4, v2

    #@46
    .line 215
    :cond_4
    aget v4, p3, v3

    #@48
    if-nez v4, :cond_5

    #@4a
    aget v4, p3, v2

    #@4c
    if-eqz v4, :cond_6

    #@4e
    :cond_5
    :goto_0
    return v2

    #@4f
    :cond_6
    move v2, v3

    #@50
    goto :goto_0

    #@51
    .line 216
    .end local v0    # "startX":I
    .end local v1    # "startY":I
    :cond_7
    if-eqz p4, :cond_8

    #@53
    .line 217
    aput v3, p4, v3

    #@55
    .line 218
    aput v3, p4, v2

    #@57
    .line 221
    :cond_8
    return v3
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 10
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 152
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_4

    #@8
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    #@a
    if-eqz v0, :cond_4

    #@c
    .line 153
    if-nez p1, :cond_0

    #@e
    if-eqz p2, :cond_3

    #@10
    .line 154
    :cond_0
    const/4 v6, 0x0

    #@11
    .line 155
    .local v6, "startX":I
    const/4 v7, 0x0

    #@12
    .line 156
    .local v7, "startY":I
    if-eqz p5, :cond_1

    #@14
    .line 157
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@16
    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    #@19
    .line 158
    aget v6, p5, v8

    #@1b
    .line 159
    aget v7, p5, v9

    #@1d
    .line 162
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    #@1f
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@21
    move v2, p1

    #@22
    move v3, p2

    #@23
    move v4, p3

    #@24
    move v5, p4

    #@25
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    #@28
    .line 165
    if-eqz p5, :cond_2

    #@2a
    .line 166
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@2c
    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    #@2f
    .line 167
    aget v0, p5, v8

    #@31
    sub-int/2addr v0, v6

    #@32
    aput v0, p5, v8

    #@34
    .line 168
    aget v0, p5, v9

    #@36
    sub-int/2addr v0, v7

    #@37
    aput v0, p5, v9

    #@39
    .line 170
    :cond_2
    return v9

    #@3a
    .line 153
    .end local v6    # "startX":I
    .end local v7    # "startY":I
    :cond_3
    if-nez p3, :cond_0

    #@3c
    if-nez p4, :cond_0

    #@3e
    .line 171
    if-eqz p5, :cond_4

    #@40
    .line 173
    aput v8, p5, v8

    #@42
    .line 174
    aput v8, p5, v9

    #@44
    .line 177
    :cond_4
    return v8
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    #@2
    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@2
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    #@5
    .line 266
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@2
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    #@5
    .line 279
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 61
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@6
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    #@9
    .line 63
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    #@b
    .line 59
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 4
    .param p1, "axes"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 105
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 107
    return v3

    #@8
    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_3

    #@e
    .line 110
    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@10
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@13
    move-result-object v1

    #@14
    .line 111
    .local v1, "p":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@16
    .line 112
    .local v0, "child":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_3

    #@18
    .line 113
    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@1a
    invoke-static {v1, v0, v2, p1}, Landroid/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 114
    iput-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    #@22
    .line 115
    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@24
    invoke-static {v1, v0, v2, p1}, Landroid/support/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    #@27
    .line 116
    return v3

    #@28
    .line 118
    :cond_1
    instance-of v2, v1, Landroid/view/View;

    #@2a
    if-eqz v2, :cond_2

    #@2c
    move-object v0, v1

    #@2d
    .line 119
    check-cast v0, Landroid/view/View;

    #@2f
    .line 121
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@32
    move-result-object v1

    #@33
    goto :goto_0

    #@34
    .line 124
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_3
    const/4 v2, 0x0

    #@35
    return v2
.end method

.method public stopNestedScroll()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 135
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 136
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    #@7
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@9
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    #@c
    .line 137
    iput-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    #@e
    .line 134
    :cond_0
    return-void
.end method
