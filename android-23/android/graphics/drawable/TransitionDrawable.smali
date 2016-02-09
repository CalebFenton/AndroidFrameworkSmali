.class public Landroid/graphics/drawable/TransitionDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "TransitionDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    }
.end annotation


# static fields
.field private static final TRANSITION_NONE:I = 0x2

.field private static final TRANSITION_RUNNING:I = 0x1

.field private static final TRANSITION_STARTING:I


# instance fields
.field private mAlpha:I

.field private mCrossFade:Z

.field private mDuration:I

.field private mFrom:I

.field private mOriginalDuration:I

.field private mReverse:Z

.field private mStartTimeMillis:J

.field private mTo:I

.field private mTransitionState:I


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 88
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    #@3
    invoke-direct {v1, v0, v0, v0}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    #@6
    check-cast v0, Landroid/content/res/Resources;

    #@8
    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    #@b
    .line 87
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    #@3
    .line 62
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    #@6
    .line 70
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    #@9
    .line 91
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/graphics/drawable/TransitionDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    .param p2, "layers"    # [Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 96
    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    #@3
    .line 62
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    #@6
    .line 70
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    #@9
    .line 95
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 78
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    #@3
    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    #@6
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 77
    return-void
.end method


# virtual methods
.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 101
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    #@2
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    #@4
    .end local p1    # "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    #@7
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    #@2
    const/16 v12, 0xff

    #@4
    const/4 v11, 0x1

    #@5
    const/4 v10, 0x0

    #@6
    .line 167
    const/4 v4, 0x1

    #@7
    .line 169
    .local v4, "done":Z
    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    #@9
    packed-switch v6, :pswitch_data_0

    #@c
    .line 187
    :cond_0
    :goto_0
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    #@e
    .line 188
    .local v0, "alpha":I
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    #@10
    .line 189
    .local v2, "crossFade":Z
    iget-object v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@12
    iget-object v1, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@14
    .line 191
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    if-eqz v4, :cond_5

    #@16
    .line 194
    if-eqz v2, :cond_1

    #@18
    if-nez v0, :cond_2

    #@1a
    .line 195
    :cond_1
    aget-object v6, v1, v10

    #@1c
    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1e
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@21
    .line 197
    :cond_2
    if-ne v0, v12, :cond_3

    #@23
    .line 198
    aget-object v6, v1, v11

    #@25
    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@27
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@2a
    .line 200
    :cond_3
    return-void

    #@2b
    .line 171
    .end local v0    # "alpha":I
    .end local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2    # "crossFade":Z
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2e
    move-result-wide v6

    #@2f
    iput-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    #@31
    .line 172
    const/4 v4, 0x0

    #@32
    .line 173
    iput v11, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    #@34
    goto :goto_0

    #@35
    .line 177
    :pswitch_1
    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    #@37
    const-wide/16 v8, 0x0

    #@39
    cmp-long v6, v6, v8

    #@3b
    if-ltz v6, :cond_0

    #@3d
    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@40
    move-result-wide v6

    #@41
    iget-wide v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    #@43
    sub-long/2addr v6, v8

    #@44
    .line 178
    long-to-float v6, v6

    #@45
    .line 179
    iget v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    #@47
    int-to-float v7, v7

    #@48
    .line 178
    div-float v5, v6, v7

    #@4a
    .line 180
    .local v5, "normalized":F
    cmpl-float v6, v5, v13

    #@4c
    if-ltz v6, :cond_4

    #@4e
    const/4 v4, 0x1

    #@4f
    .line 181
    :goto_1
    invoke-static {v5, v13}, Ljava/lang/Math;->min(FF)F

    #@52
    move-result v5

    #@53
    .line 182
    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    #@55
    int-to-float v6, v6

    #@56
    iget v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    #@58
    iget v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    #@5a
    sub-int/2addr v7, v8

    #@5b
    int-to-float v7, v7

    #@5c
    mul-float/2addr v7, v5

    #@5d
    add-float/2addr v6, v7

    #@5e
    float-to-int v6, v6

    #@5f
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    #@61
    goto :goto_0

    #@62
    .line 180
    :cond_4
    const/4 v4, 0x0

    #@63
    goto :goto_1

    #@64
    .line 204
    .end local v5    # "normalized":F
    .restart local v0    # "alpha":I
    .restart local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .restart local v2    # "crossFade":Z
    :cond_5
    aget-object v6, v1, v10

    #@66
    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@68
    .line 205
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    #@6a
    .line 206
    rsub-int v6, v0, 0xff

    #@6c
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@6f
    .line 208
    :cond_6
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@72
    .line 209
    if-eqz v2, :cond_7

    #@74
    .line 210
    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@77
    .line 213
    :cond_7
    if-lez v0, :cond_8

    #@79
    .line 214
    aget-object v6, v1, v11

    #@7b
    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@7d
    .line 215
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@80
    .line 216
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@83
    .line 217
    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@86
    .line 220
    :cond_8
    if-nez v4, :cond_9

    #@88
    .line 221
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    #@8b
    .line 166
    :cond_9
    return-void

    #@8c
    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isCrossFadeEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 243
    iget-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    #@2
    return v0
.end method

.method public resetTransition()V
    .locals 1

    #@0
    .prologue
    .line 123
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    #@3
    .line 124
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    #@6
    .line 125
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    #@9
    .line 122
    return-void
.end method

.method public reverseTransition(I)V
    .locals 10
    .param p1, "duration"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/16 v4, 0xff

    #@3
    const/4 v3, 0x0

    #@4
    .line 137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v0

    #@8
    .line 139
    .local v0, "time":J
    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    #@a
    sub-long v6, v0, v6

    #@c
    iget v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    #@e
    int-to-long v8, v5

    #@f
    cmp-long v5, v6, v8

    #@11
    if-lez v5, :cond_1

    #@13
    .line 140
    iget v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    #@15
    if-nez v5, :cond_0

    #@17
    .line 141
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    #@19
    .line 142
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    #@1b
    .line 143
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    #@1d
    .line 144
    iput-boolean v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    #@1f
    .line 151
    :goto_0
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    #@21
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    #@23
    .line 152
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    #@25
    .line 153
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    #@28
    .line 154
    return-void

    #@29
    .line 146
    :cond_0
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    #@2b
    .line 147
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    #@2d
    .line 148
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    #@2f
    .line 149
    iput-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    #@31
    goto :goto_0

    #@32
    .line 157
    :cond_1
    iget-boolean v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    #@34
    if-eqz v5, :cond_2

    #@36
    move v2, v3

    #@37
    :cond_2
    iput-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    #@39
    .line 158
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    #@3b
    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    #@3d
    .line 159
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    #@3f
    if-eqz v2, :cond_3

    #@41
    move v2, v3

    #@42
    :goto_1
    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    #@44
    .line 160
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    #@46
    if-eqz v2, :cond_4

    #@48
    iget-wide v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    #@4a
    sub-long v4, v0, v4

    #@4c
    :goto_2
    long-to-int v2, v4

    #@4d
    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    #@4f
    .line 162
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    #@51
    .line 136
    return-void

    #@52
    :cond_3
    move v2, v4

    #@53
    .line 159
    goto :goto_1

    #@54
    .line 161
    :cond_4
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    #@56
    int-to-long v4, v2

    #@57
    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    #@59
    sub-long v6, v0, v6

    #@5b
    sub-long/2addr v4, v6

    #@5c
    goto :goto_2
.end method

.method public setCrossFadeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 234
    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    #@2
    .line 233
    return-void
.end method

.method public startTransition(I)V
    .locals 2
    .param p1, "durationMillis"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 110
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    #@3
    .line 111
    const/16 v0, 0xff

    #@5
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    #@7
    .line 112
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    #@9
    .line 113
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    #@b
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    #@d
    .line 114
    iput-boolean v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    #@f
    .line 115
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    #@11
    .line 116
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    #@14
    .line 109
    return-void
.end method
