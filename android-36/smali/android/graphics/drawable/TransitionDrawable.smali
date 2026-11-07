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
.field private static final greylist-max-o TRANSITION_NONE:I = 0x2

.field private static final greylist-max-o TRANSITION_RUNNING:I = 0x1

.field private static final greylist-max-o TRANSITION_STARTING:I


# instance fields
.field private greylist mAlpha:I

.field private greylist mCrossFade:Z

.field private greylist-max-o mDuration:I

.field private greylist-max-o mFrom:I

.field private greylist-max-o mOriginalDuration:I

.field private greylist-max-o mReverse:Z

.field private greylist-max-o mStartTimeMillis:J

.field private greylist mTo:I

.field private greylist-max-o mTransitionState:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 4

    .line 93
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    move-object v2, v1

    check-cast v2, Landroid/content/res/Resources;

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    .line 94
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/graphics/drawable/TransitionDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    .param p2, "layers"    # [Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 102
    return-void
.end method

.method public constructor whitelist <init>([Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .line 83
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method


# virtual methods
.method greylist-max-o createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .registers 5
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 106
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, v1, p0, p2}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 184
    const/4 v0, 0x1

    .line 186
    .local v0, "done":Z
    iget v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_8e

    goto :goto_44

    .line 194
    :pswitch_9
    iget-wide v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_44

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 197
    .local v1, "normalized":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v4

    if-ltz v5, :cond_25

    move v5, v3

    goto :goto_26

    :cond_25
    move v5, v2

    :goto_26
    move v0, v5

    .line 198
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 199
    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    int-to-float v4, v4

    iget v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    goto :goto_44

    .line 188
    .end local v1    # "normalized":F
    :pswitch_3a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    .line 189
    const/4 v0, 0x0

    .line 190
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 191
    nop

    .line 204
    :cond_44
    :goto_44
    iget v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 205
    .local v1, "alpha":I
    iget-boolean v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 206
    .local v4, "crossFade":Z
    iget-object v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 208
    .local v5, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/16 v6, 0xff

    if-eqz v0, :cond_65

    .line 211
    if-eqz v4, :cond_54

    if-nez v1, :cond_5b

    .line 212
    :cond_54
    aget-object v2, v5, v2

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 214
    :cond_5b
    if-ne v1, v6, :cond_64

    .line 215
    aget-object v2, v5, v3

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 217
    :cond_64
    return-void

    .line 221
    :cond_65
    aget-object v2, v5, v2

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_70

    .line 223
    rsub-int v7, v1, 0xff

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 225
    :cond_70
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 226
    if-eqz v4, :cond_78

    .line 227
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    :cond_78
    if-lez v1, :cond_87

    .line 231
    aget-object v3, v5, v3

    iget-object v2, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 233
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 237
    :cond_87
    if-nez v0, :cond_8c

    .line 238
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 240
    :cond_8c
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist isCrossFadeEnabled()Z
    .registers 2

    .line 260
    iget-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return v0
.end method

.method public whitelist resetTransition()V
    .registers 2

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 141
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 142
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 143
    return-void
.end method

.method public whitelist reverseTransition(I)V
    .registers 10
    .param p1, "duration"    # I

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 156
    .local v0, "time":J
    iget-wide v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v2, v0, v2

    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/16 v4, 0xff

    const/4 v5, 0x0

    if-lez v2, :cond_32

    .line 157
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    if-nez v2, :cond_20

    .line 158
    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 159
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 160
    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 161
    iput-boolean v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    goto :goto_28

    .line 163
    :cond_20
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 164
    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 165
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 166
    iput-boolean v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 168
    :goto_28
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 169
    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 170
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 171
    return-void

    .line 174
    :cond_32
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 175
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 176
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_40

    move v4, v5

    :cond_40
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 177
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_4b

    iget-wide v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v2, v0, v2

    goto :goto_53

    .line 178
    :cond_4b
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    int-to-long v2, v2

    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v6, v0, v6

    sub-long/2addr v2, v6

    :goto_53
    long-to-int v2, v2

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 179
    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 180
    return-void
.end method

.method public whitelist setCrossFadeEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 251
    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 252
    return-void
.end method

.method public greylist-max-o showSecondLayer()V
    .registers 2

    .line 130
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 132
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 133
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 134
    return-void
.end method

.method public whitelist startTransition(I)V
    .registers 4
    .param p1, "durationMillis"    # I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 116
    const/16 v1, 0xff

    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 117
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 118
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 119
    iput-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 120
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 121
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 122
    return-void
.end method
