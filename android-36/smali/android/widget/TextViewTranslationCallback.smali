.class public Landroid/widget/TextViewTranslationCallback;
.super Ljava/lang/Object;
.source "TextViewTranslationCallback.java"

# interfaces
.implements Landroid/view/translation/ViewTranslationCallback;


# static fields
.field private static final blacklist COMPAT_PAD_CHARACTER:C = '\u2002'

.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "TextViewTranslationCb"


# instance fields
.field private blacklist mAnimationDurationMillis:I

.field private blacklist mAnimationRunning:Z

.field private blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mIsShowingTranslation:Z

.field private blacklist mIsTextPaddingEnabled:Z

.field private blacklist mOriginalClickable:Z

.field private blacklist mOriginalFocusable:I

.field private blacklist mOriginalFocusableInTouchMode:Z

.field private blacklist mOriginalIsTextSelectable:Z

.field private blacklist mOriginalLongClickable:Z

.field private blacklist mPaddedText:Ljava/lang/CharSequence;

.field private blacklist mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;


# direct methods
.method public static synthetic blacklist $r8$lambda$Bh26vna9ZvPZghB8_Z8HzUER4fQ(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextViewTranslationCallback;->lambda$onShowTranslation$0(Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$R7deDZsKgZUevP56WLGni_KTco0(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextViewTranslationCallback;->lambda$onHideTranslation$1(Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimator(Landroid/widget/TextViewTranslationCallback;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 47
    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    .line 51
    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    .line 52
    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsTextPaddingEnabled:Z

    .line 53
    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalIsTextSelectable:Z

    .line 54
    iput v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusable:I

    .line 55
    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusableInTouchMode:Z

    .line 56
    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalClickable:Z

    .line 57
    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalLongClickable:Z

    .line 59
    const/16 v0, 0xfa

    iput v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationDurationMillis:I

    return-void
.end method

.method private blacklist clearTranslationTransformation()V
    .registers 3

    .line 64
    sget-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearTranslationTransformation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextViewTranslationCb"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    .line 68
    return-void
.end method

.method private static blacklist colorWithAlpha(II)I
    .registers 5
    .param p0, "color"    # I
    .param p1, "newAlpha"    # I

    .line 352
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private blacklist computePaddedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "translatedText"    # Ljava/lang/CharSequence;

    .line 267
    if-nez p2, :cond_3

    .line 268
    return-object p1

    .line 270
    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 271
    .local v0, "newLength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_e

    .line 272
    return-object p1

    .line 274
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 275
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 276
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, "i":I
    :goto_1a
    if-ge v2, v0, :cond_24

    .line 277
    const/16 v3, 0x2002

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 279
    .end local v2    # "i":I
    :cond_24
    return-object v1
.end method

.method private synthetic blacklist lambda$onHideTranslation$1(Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V
    .registers 5
    .param p1, "textViewRef"    # Ljava/lang/ref/WeakReference;
    .param p2, "transformation"    # Landroid/text/method/TransformationMethod;

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    .line 167
    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    .line 169
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    .local v0, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_e

    .line 171
    return-void

    .line 176
    :cond_e
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 178
    iget-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalIsTextSelectable:Z

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_33

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 184
    iget-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusableInTouchMode:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 185
    iget v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(I)V

    .line 186
    iget-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalClickable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 187
    iget-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalLongClickable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 189
    :cond_33
    return-void
.end method

.method private synthetic blacklist lambda$onShowTranslation$0(Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V
    .registers 6
    .param p1, "textViewRef"    # Ljava/lang/ref/WeakReference;
    .param p2, "transformation"    # Landroid/text/method/TransformationMethod;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    .line 107
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    .local v1, "textView":Landroid/widget/TextView;
    if-nez v1, :cond_f

    .line 109
    return-void

    .line 118
    :cond_f
    invoke-virtual {v1}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalIsTextSelectable:Z

    .line 119
    iget-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalIsTextSelectable:Z

    if-eqz v2, :cond_34

    .line 124
    invoke-virtual {v1}, Landroid/widget/TextView;->isFocusableInTouchMode()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusableInTouchMode:Z

    .line 125
    invoke-virtual {v1}, Landroid/widget/TextView;->getFocusable()I

    move-result v2

    iput v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusable:I

    .line 126
    invoke-virtual {v1}, Landroid/widget/TextView;->isClickable()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalClickable:Z

    .line 127
    invoke-virtual {v1}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalLongClickable:Z

    .line 128
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 134
    :cond_34
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 135
    return-void
.end method

.method static synthetic blacklist lambda$runChangeTextWithAnimationIfNeeded$2(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 314
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private blacklist runChangeTextWithAnimationIfNeeded(Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "changeTextRunnable"    # Ljava/lang/Runnable;

    .line 297
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    .line 298
    .local v0, "areAnimatorsEnabled":Z
    if-nez v0, :cond_a

    .line 300
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 301
    return-void

    .line 303
    :cond_a
    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_13

    .line 304
    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 307
    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    .line 308
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/widget/TextViewTranslationCallback;->colorWithAlpha(II)I

    move-result v2

    .line 309
    .local v2, "fadedOutColor":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    filled-new-array {v3, v2}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    .line 310
    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;

    invoke-direct {v4, p1}, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 315
    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 316
    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 317
    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationDurationMillis:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 318
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 319
    .local v1, "originalColors":Landroid/content/res/ColorStateList;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 320
    .local v3, "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    iget-object v4, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/widget/TextViewTranslationCallback$1;

    invoke-direct {v5, p0, v3, v1, p2}, Landroid/widget/TextViewTranslationCallback$1;-><init>(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/content/res/ColorStateList;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    iget-object v4, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 344
    return-void
.end method


# virtual methods
.method public blacklist enableContentPadding()V
    .registers 2

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsTextPaddingEnabled:Z

    .line 236
    return-void
.end method

.method blacklist getPaddedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "translatedText"    # Ljava/lang/CharSequence;

    .line 256
    if-nez p1, :cond_4

    .line 257
    const/4 v0, 0x0

    return-object v0

    .line 259
    :cond_4
    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mPaddedText:Ljava/lang/CharSequence;

    if-nez v0, :cond_e

    .line 260
    invoke-direct {p0, p1, p2}, Landroid/widget/TextViewTranslationCallback;->computePaddedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mPaddedText:Ljava/lang/CharSequence;

    .line 262
    :cond_e
    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mPaddedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist isAnimationRunning()Z
    .registers 2

    .line 230
    iget-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    return v0
.end method

.method public blacklist isShowingTranslation()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    return v0
.end method

.method blacklist isTextPaddingEnabled()Z
    .registers 2

    .line 243
    iget-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsTextPaddingEnabled:Z

    return v0
.end method

.method public whitelist onClearTranslation(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 208
    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    if-eqz v0, :cond_11

    .line 209
    invoke-virtual {p0, p1}, Landroid/widget/TextViewTranslationCallback;->onHideTranslation(Landroid/view/View;)Z

    .line 210
    invoke-direct {p0}, Landroid/widget/TextViewTranslationCallback;->clearTranslationTransformation()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mPaddedText:Ljava/lang/CharSequence;

    .line 212
    iput-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mContentDescription:Ljava/lang/CharSequence;

    .line 219
    const/4 v0, 0x1

    return v0

    .line 214
    :cond_11
    sget-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 215
    const-string v0, "TextViewTranslationCb"

    const-string v1, "onClearTranslation(): no translated text."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onHideTranslation(Landroid/view/View;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TextViewTranslationCb"

    if-nez v0, :cond_f

    .line 153
    const-string v0, "onHideTranslation() shouldn\'t be called before onViewTranslationResponse()."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v1

    .line 158
    :cond_f
    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    if-eqz v0, :cond_39

    .line 159
    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    .line 160
    invoke-virtual {v0}, Landroid/text/method/TranslationTransformationMethod;->getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 161
    .local v0, "transformation":Landroid/text/method/TransformationMethod;
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 162
    .local v1, "theTextView":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 163
    .local v2, "textViewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    new-instance v3, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, v0}, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V

    invoke-direct {p0, v1, v3}, Landroid/widget/TextViewTranslationCallback;->runChangeTextWithAnimationIfNeeded(Landroid/widget/TextView;Ljava/lang/Runnable;)V

    .line 190
    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 191
    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    .end local v0    # "transformation":Landroid/text/method/TransformationMethod;
    .end local v1    # "theTextView":Landroid/widget/TextView;
    .end local v2    # "textViewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    :cond_36
    nop

    .line 199
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_39
    sget-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    if-eqz v0, :cond_42

    .line 195
    const-string v0, "onHideTranslation(): no translated text."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_42
    return v1
.end method

.method public whitelist onShowTranslation(Landroid/view/View;)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 75
    iget-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    const/4 v1, 0x0

    const-string v2, "TextViewTranslationCb"

    if-eqz v0, :cond_22

    .line 76
    sget-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is already showing translated text."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_21
    return v1

    .line 81
    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v0

    .line 82
    .local v0, "response":Landroid/view/translation/ViewTranslationResponse;
    if-nez v0, :cond_2e

    .line 83
    const-string v3, "onShowTranslation() shouldn\'t be called before onViewTranslationResponse()."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v1

    .line 91
    :cond_2e
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 92
    .local v1, "theTextView":Landroid/widget/TextView;
    iget-object v2, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    if-eqz v2, :cond_41

    iget-object v2, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    .line 93
    invoke-virtual {v2}, Landroid/text/method/TranslationTransformationMethod;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/translation/ViewTranslationResponse;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 94
    :cond_41
    nop

    .line 95
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    .line 96
    .local v2, "originalTranslationMethod":Landroid/text/method/TransformationMethod;
    new-instance v3, Landroid/text/method/TranslationTransformationMethod;

    invoke-direct {v3, v0, v2}, Landroid/text/method/TranslationTransformationMethod;-><init>(Landroid/view/translation/ViewTranslationResponse;Landroid/text/method/TransformationMethod;)V

    iput-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    .line 99
    .end local v2    # "originalTranslationMethod":Landroid/text/method/TransformationMethod;
    :cond_4d
    iget-object v2, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    .line 100
    .local v2, "transformation":Landroid/text/method/TransformationMethod;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 101
    .local v3, "textViewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    new-instance v4, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3, v2}, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda1;-><init>(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V

    invoke-direct {p0, v1, v4}, Landroid/widget/TextViewTranslationCallback;->runChangeTextWithAnimationIfNeeded(Landroid/widget/TextView;Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {v0}, Landroid/view/translation/ViewTranslationResponse;->getKeys()Ljava/util/Set;

    move-result-object v4

    const-string v5, "android:content_description"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 137
    nop

    .line 138
    invoke-virtual {v0, v5}, Landroid/view/translation/ViewTranslationResponse;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 139
    .local v4, "translatedContentDescription":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_80

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextViewTranslationCallback;->mContentDescription:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {p1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    .end local v4    # "translatedContentDescription":Ljava/lang/CharSequence;
    :cond_80
    const/4 v4, 0x1

    return v4
.end method

.method public blacklist setAnimationDurationMillis(I)V
    .registers 2
    .param p1, "durationMillis"    # I

    .line 286
    iput p1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationDurationMillis:I

    .line 287
    return-void
.end method
