.class Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "PasswordEntryKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PasswordEntryKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LatinKey"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mShiftLockEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 224
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    #@4
    .line 220
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    #@7
    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    #@d
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 227
    iput v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->popupResId:I

    #@15
    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method enableShiftLock()V
    .locals 1

    #@0
    .prologue
    .line 236
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    #@3
    .line 235
    return-void
.end method

.method public isInside(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v2, -0x5

    #@3
    .line 253
    iget-boolean v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 254
    return v4

    #@8
    .line 256
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->codes:[I

    #@a
    aget v0, v1, v4

    #@c
    .line 257
    .local v0, "code":I
    if-eq v0, v3, :cond_1

    #@e
    if-ne v0, v2, :cond_4

    #@10
    .line 258
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->height:I

    #@12
    div-int/lit8 v1, v1, 0xa

    #@14
    sub-int/2addr p2, v1

    #@15
    .line 259
    if-ne v0, v3, :cond_2

    #@17
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    #@19
    div-int/lit8 v1, v1, 0x6

    #@1b
    add-int/2addr p1, v1

    #@1c
    .line 260
    :cond_2
    if-ne v0, v2, :cond_3

    #@1e
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    #@20
    div-int/lit8 v1, v1, 0x6

    #@22
    sub-int/2addr p1, v1

    #@23
    .line 264
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    #@26
    move-result v1

    #@27
    return v1

    #@28
    .line 261
    :cond_4
    const/16 v1, 0x20

    #@2a
    if-ne v0, v1, :cond_3

    #@2c
    .line 262
    sget v1, Lcom/android/internal/widget/PasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    #@2e
    add-int/2addr p2, v1

    #@2f
    goto :goto_0
.end method

.method public onReleased(Z)V
    .locals 1
    .param p1, "inside"    # Z

    #@0
    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 242
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    #@7
    .line 240
    :goto_0
    return-void

    #@8
    .line 244
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->pressed:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    const/4 v0, 0x0

    #@d
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->pressed:Z

    #@f
    goto :goto_0

    #@10
    :cond_1
    const/4 v0, 0x1

    #@11
    goto :goto_1
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    #@2
    .line 231
    return-void
.end method
