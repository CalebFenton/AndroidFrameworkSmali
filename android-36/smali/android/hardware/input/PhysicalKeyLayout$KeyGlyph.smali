.class public Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;
.super Ljava/lang/Object;
.source "PhysicalKeyLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/PhysicalKeyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGlyph"
.end annotation


# instance fields
.field private final blacklist mAltGrShiftText:Ljava/lang/String;

.field private final blacklist mAltGrText:Ljava/lang/String;

.field private final blacklist mBaseText:Ljava/lang/String;

.field private final blacklist mShiftText:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/view/KeyCharacterMap;I)V
    .registers 4
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const/high16 v0, 0x100000

    invoke-static {p1, p2, v0}, Landroid/hardware/input/PhysicalKeyLayout;->-$$Nest$smgetKeyText(Landroid/view/KeyCharacterMap;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mBaseText:Ljava/lang/String;

    .line 405
    const/16 v0, 0x41

    invoke-static {p1, p2, v0}, Landroid/hardware/input/PhysicalKeyLayout;->-$$Nest$smgetKeyText(Landroid/view/KeyCharacterMap;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mShiftText:Ljava/lang/String;

    .line 407
    const v0, 0x100022

    invoke-static {p1, p2, v0}, Landroid/hardware/input/PhysicalKeyLayout;->-$$Nest$smgetKeyText(Landroid/view/KeyCharacterMap;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mAltGrText:Ljava/lang/String;

    .line 409
    const/16 v0, 0x63

    invoke-static {p1, p2, v0}, Landroid/hardware/input/PhysicalKeyLayout;->-$$Nest$smgetKeyText(Landroid/view/KeyCharacterMap;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mAltGrShiftText:Ljava/lang/String;

    .line 412
    return-void
.end method


# virtual methods
.method public blacklist getAltGrShiftText()Ljava/lang/String;
    .registers 2

    .line 427
    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mAltGrShiftText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAltGrText()Ljava/lang/String;
    .registers 2

    .line 423
    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mAltGrText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBaseText()Ljava/lang/String;
    .registers 2

    .line 415
    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mBaseText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getShiftText()Ljava/lang/String;
    .registers 2

    .line 419
    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mShiftText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasBaseText()Z
    .registers 2

    .line 431
    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mBaseText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist hasValidAltGrShiftText()Z
    .registers 3

    .line 444
    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mAltGrShiftText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mBaseText:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mAltGrShiftText:Ljava/lang/String;

    .line 445
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mAltGrText:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mAltGrShiftText:Ljava/lang/String;

    .line 446
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mShiftText:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mAltGrShiftText:Ljava/lang/String;

    .line 447
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 444
    :goto_29
    return v0
.end method

.method public blacklist hasValidAltGrText()Z
    .registers 3

    .line 439
    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mAltGrText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mBaseText:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mAltGrText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mShiftText:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mAltGrText:Ljava/lang/String;

    .line 440
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 439
    :goto_1f
    return v0
.end method

.method public blacklist hasValidShiftText()Z
    .registers 3

    .line 435
    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mShiftText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mBaseText:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->mShiftText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method
