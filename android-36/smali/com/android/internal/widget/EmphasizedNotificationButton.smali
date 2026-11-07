.class public Lcom/android/internal/widget/EmphasizedNotificationButton;
.super Landroid/widget/Button;
.source "EmphasizedNotificationButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/EmphasizedNotificationButton$SpacerSpan;,
        Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;
    }
.end annotation


# static fields
.field private static final blacklist FIRST_STRONG_ISOLATE:Ljava/lang/String; = "\u2068"

.field private static final blacklist IMAGE_SPAN_TEXT:Ljava/lang/String; = "\ufffd"

.field private static final blacklist LEFT_TO_RIGHT_ISOLATE:Ljava/lang/String; = "\u2066"

.field private static final blacklist POP_DIRECTIONAL_ISOLATE:Ljava/lang/String; = "\u2069"

.field private static final blacklist RIGHT_TO_LEFT_ISOLATE:Ljava/lang/String; = "\u2067"

.field private static final blacklist SPACER_SPAN_TEXT:Ljava/lang/String; = "\u00a0"

.field private static final blacklist TAG:Ljava/lang/String; = "EmphasizedNotificationButton"


# instance fields
.field private final blacklist mBackground:Landroid/graphics/drawable/GradientDrawable;

.field private blacklist mGluePending:Z

.field private blacklist mGluedLayoutDirection:I

.field private blacklist mIconSize:I

.field private blacklist mIconToGlue:Landroid/graphics/drawable/Drawable;

.field private blacklist mInitialDrawablePadding:I

.field private blacklist mLabelToGlue:Ljava/lang/CharSequence;

.field private blacklist mPriority:Z

.field private final blacklist mRipple:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method public static synthetic blacklist $r8$lambda$5CE8kCROMxWM-ZwhCWhAl_p0kwM(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->lambda$glueIconAsync$1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KB5uAWLyLcdl5CQPnHr9d_g-4Mg(Lcom/android/internal/widget/EmphasizedNotificationButton;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->lambda$glueLabelAsync$2(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$prwlPqoltwpDgPLx-93RXhAHfC0(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->lambda$setImageIconAsync$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableWrapper;

    .line 87
    .local v0, "inset":Landroid/graphics/drawable/DrawableWrapper;
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iput-object v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 89
    iget-object v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105029b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    .line 92
    sget-object v2, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 94
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    const/16 v3, 0x34

    :try_start_3b
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mInitialDrawablePadding:I
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_75

    .line 96
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->close()V

    .line 99
    .end local v2    # "typedArray":Landroid/content/res/TypedArray;
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iconSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px, initialDrawablePadding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mInitialDrawablePadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmphasizedNotificationButton"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 92
    .restart local v2    # "typedArray":Landroid/content/res/TypedArray;
    :catchall_75
    move-exception v1

    if-eqz v2, :cond_80

    :try_start_78
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_80

    :catchall_7c
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    throw v1
.end method

.method private blacklist appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .registers 7
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "span"    # Ljava/lang/Object;

    .line 371
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 372
    .local v0, "spanStart":I
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 373
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 374
    .local v1, "spanEnd":I
    const/4 v2, 0x0

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 375
    return-void
.end method

.method private blacklist glueIconAndLabel(I)V
    .registers 8
    .param p1, "layoutDirection"    # I

    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    const-string v1, "EmphasizedNotificationButton"

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    if-nez v0, :cond_15

    .line 300
    const-string v0, "glueIconAndLabel: null icon and label, setting text to empty string"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setText(Ljava/lang/CharSequence;)V

    .line 303
    return-void

    .line 304
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_24

    .line 306
    const-string v0, "glueIconAndLabel: null icon, setting text to label"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setText(Ljava/lang/CharSequence;)V

    .line 309
    return-void

    .line 310
    :cond_24
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const-string/jumbo v3, "\ufffd"

    if-nez v0, :cond_44

    .line 312
    const-string v0, "glueIconAndLabel: null label, setting text to ImageSpan with icon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 315
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v4, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setText(Ljava/lang/CharSequence;)V

    .line 317
    return-void

    .line 320
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_44
    const/4 v0, 0x1

    if-ne p1, v0, :cond_48

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    .line 323
    .local v0, "rtlLayout":Z
    :goto_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "glueIconAndLabel: icon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iconSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "px, initialDrawablePadding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mInitialDrawablePadding:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "px, labelToGlue.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    .line 327
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rtlLayout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->logIfTextDirectionNotFirstStrong()V

    .line 333
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 338
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    if-eqz v0, :cond_a3

    const-string/jumbo v4, "\u2067"

    goto :goto_a6

    :cond_a3
    const-string/jumbo v4, "\u2066"

    :goto_a6
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 340
    new-instance v4, Landroid/text/style/ImageSpan;

    iget-object v5, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/EmphasizedNotificationButton;->appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 341
    new-instance v2, Lcom/android/internal/widget/EmphasizedNotificationButton$SpacerSpan;

    iget v3, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mInitialDrawablePadding:I

    invoke-direct {v2, v3}, Lcom/android/internal/widget/EmphasizedNotificationButton$SpacerSpan;-><init>(I)V

    const-string/jumbo v3, "\u00a0"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/widget/EmphasizedNotificationButton;->appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 346
    const-string/jumbo v2, "\u2068"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 348
    iget-object v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;

    iget v4, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    invoke-direct {v3, v4}, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;-><init>(I)V

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/EmphasizedNotificationButton;->appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 350
    const-string/jumbo v2, "\u2069"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 351
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 353
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setText(Ljava/lang/CharSequence;)V

    .line 354
    return-void
.end method

.method private blacklist glueIconAndLabelIfNeeded()V
    .registers 4

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    const-string v1, "EmphasizedNotificationButton"

    if-nez v0, :cond_c

    .line 248
    const-string v0, "glueIconAndLabelIfNeeded: glue not pending; doing nothing"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 253
    :cond_c
    invoke-static {}, Landroid/app/Flags;->evenlyDividedCallStyleActionLayout()Z

    move-result v0

    if-nez v0, :cond_18

    .line 254
    const-string v0, "glueIconAndLabelIfNeeded: new action layout disabled; doing nothing"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 260
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_24

    .line 262
    const-string v0, "glueIconAndLabelIfNeeded: layout direction not resolved; doing nothing"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 270
    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getLayoutDirection()I

    move-result v0

    .line 271
    .local v0, "layoutDirection":I
    if-eqz v0, :cond_33

    const/4 v2, 0x1

    if-eq v0, v2, :cond_33

    .line 272
    const-string v2, "glueIconAndLabelIfNeeded: resolved layout direction neither LTR nor RTL; doing nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 280
    :cond_33
    invoke-direct {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->glueIconAndLabel(I)V

    .line 282
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    .line 283
    iput v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    .line 284
    return-void
.end method

.method private synthetic blacklist lambda$glueIconAsync$1(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 165
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setIconToGlue(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic blacklist lambda$glueLabelAsync$2(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 208
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setLabelToGlue(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic blacklist lambda$setImageIconAsync$0(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private blacklist logIfTextDirectionNotFirstStrong()V
    .registers 5

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->isTextDirectionResolved()Z

    move-result v0

    const-string v1, "EmphasizedNotificationButton"

    if-nez v0, :cond_d

    .line 358
    const-string v0, "glueIconAndLabel: text direction not resolved; letting View assume FIRST STRONG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getTextDirection()I

    move-result v0

    .line 362
    .local v0, "textDirection":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_30

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glueIconAndLabel: expected text direction TEXT_DIRECTION_FIRST_STRONG but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; will use a FIRST STRONG ISOLATE regardless"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_30
    return-void
.end method

.method private blacklist prepareIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 185
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 187
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 188
    iget v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    return-void
.end method

.method private blacklist setIconToGlue(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-static {}, Landroid/app/Flags;->evenlyDividedCallStyleActionLayout()Z

    move-result v0

    if-nez v0, :cond_e

    .line 170
    const-string v0, "EmphasizedNotificationButton"

    const-string v1, "glueIcon: new action layout disabled; doing nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 174
    :cond_e
    if-eqz p1, :cond_13

    .line 175
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->prepareIcon(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_13
    iput-object p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    .line 181
    invoke-direct {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->glueIconAndLabelIfNeeded()V

    .line 182
    return-void
.end method

.method private blacklist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 136
    if-eqz p1, :cond_5

    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->prepareIcon(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-void
.end method

.method private blacklist setLabelToGlue(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 212
    invoke-static {}, Landroid/app/Flags;->evenlyDividedCallStyleActionLayout()Z

    move-result v0

    if-nez v0, :cond_e

    .line 213
    const-string v0, "EmphasizedNotificationButton"

    const-string v1, "glueLabel: new action layout disabled; doing nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void

    .line 217
    :cond_e
    iput-object p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    .line 220
    invoke-direct {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->glueIconAndLabelIfNeeded()V

    .line 221
    return-void
.end method


# virtual methods
.method public blacklist glueIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "glueIconAsync"
    .end annotation

    .line 155
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 156
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_a
    invoke-direct {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setIconToGlue(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method

.method public blacklist glueIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 164
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_a
    new-instance v1, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public blacklist glueLabel(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "glueLabelAsync"
    .end annotation

    .line 200
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setLabelToGlue(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method public blacklist glueLabelAsync(Ljava/lang/CharSequence;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 208
    new-instance v0, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/EmphasizedNotificationButton;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public blacklist isPriority()Z
    .registers 2

    .line 391
    iget-boolean v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mPriority:Z

    return v0
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 6
    .param p1, "layoutDirection"    # I

    .line 225
    invoke-super {p0, p1}, Landroid/widget/Button;->onRtlPropertiesChanged(I)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRtlPropertiesChanged: layoutDirection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gluedLayoutDirection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmphasizedNotificationButton"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2f

    move v0, v3

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 233
    .local v0, "alreadyGlued":Z
    :goto_30
    if-eqz v0, :cond_3d

    iget v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    if-eq p1, v2, :cond_3d

    .line 235
    const-string v2, "onRtlPropertiesChanged: layout direction changed; regluing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iput-boolean v3, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    .line 240
    :cond_3d
    invoke-direct {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->glueIconAndLabelIfNeeded()V

    .line 241
    return-void
.end method

.method public blacklist setButtonBackground(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->invalidate()V

    .line 114
    return-void
.end method

.method public blacklist setImageIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    .line 122
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_a
    invoke-direct {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void
.end method

.method public blacklist setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 131
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_a
    new-instance v1, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public blacklist setIsPriority(Z)V
    .registers 2
    .param p1, "priority"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 384
    iput-boolean p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mPriority:Z

    .line 385
    return-void
.end method

.method public blacklist setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->invalidate()V

    .line 108
    return-void
.end method
