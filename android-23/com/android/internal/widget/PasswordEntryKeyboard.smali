.class public Lcom/android/internal/widget/PasswordEntryKeyboard;
.super Landroid/inputmethodservice/Keyboard;
.source "PasswordEntryKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;
    }
.end annotation


# static fields
.field public static final KEYCODE_SPACE:I = 0x20

.field private static final SHIFT_LOCKED:I = 0x2

.field private static final SHIFT_OFF:I = 0x0

.field private static final SHIFT_ON:I = 0x1

.field static sSpacebarVerticalCorrection:I


# instance fields
.field private mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mF1Key:Landroid/inputmethodservice/Keyboard$Key;

.field private mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

.field private mShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftState:I

.field private mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    #@0
    .prologue
    .line 55
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    #@4
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "mode"    # I

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    #@7
    .line 44
    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    #@9
    aput-object v1, v0, v2

    #@b
    aput-object v1, v0, v3

    #@d
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    #@f
    .line 45
    new-array v0, v4, [Landroid/inputmethodservice/Keyboard$Key;

    #@11
    aput-object v1, v0, v2

    #@13
    aput-object v1, v0, v3

    #@15
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@17
    .line 50
    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    #@19
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboard;->init(Landroid/content/Context;)V

    #@1c
    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 59
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    #@9
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "mode"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    .line 69
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;IIII)V

    #@7
    .line 44
    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    #@9
    aput-object v1, v0, v2

    #@b
    aput-object v1, v0, v3

    #@d
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    #@f
    .line 45
    new-array v0, v4, [Landroid/inputmethodservice/Keyboard$Key;

    #@11
    aput-object v1, v0, v2

    #@13
    aput-object v1, v0, v3

    #@15
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@17
    .line 50
    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    #@19
    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboard;->init(Landroid/content/Context;)V

    #@1c
    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "columns"    # I
    .param p5, "horizontalPadding"    # I

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    .line 83
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    #@7
    .line 44
    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    #@9
    aput-object v1, v0, v2

    #@b
    aput-object v1, v0, v3

    #@d
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    #@f
    .line 45
    new-array v0, v4, [Landroid/inputmethodservice/Keyboard$Key;

    #@11
    aput-object v1, v0, v2

    #@13
    aput-object v1, v0, v3

    #@15
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@17
    .line 50
    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    #@19
    .line 82
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 75
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10806c2

    #@7
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    #@d
    .line 76
    const v1, 0x10806c3

    #@10
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    #@16
    .line 78
    const v1, 0x1050021

    #@19
    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@1c
    move-result v1

    #@1d
    sput v1, Lcom/android/internal/widget/PasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    #@1f
    .line 73
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 89
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move-object v5, p5

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    #@b
    .line 90
    .local v0, "key":Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;
    iget-object v1, v0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->codes:[I

    #@d
    aget v6, v1, v7

    #@f
    .line 91
    .local v6, "code":I
    if-ltz v6, :cond_1

    #@11
    const/16 v1, 0xa

    #@13
    if-eq v6, v1, :cond_1

    #@15
    const/16 v1, 0x20

    #@17
    if-lt v6, v1, :cond_0

    #@19
    const/16 v1, 0x7f

    #@1b
    if-le v6, v1, :cond_1

    #@1d
    .line 93
    :cond_0
    const-string/jumbo v1, " "

    #@20
    iput-object v1, v0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->label:Ljava/lang/CharSequence;

    #@22
    .line 94
    invoke-virtual {v0, v7}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->setEnabled(Z)V

    #@25
    .line 96
    :cond_1
    iget-object v1, v0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->codes:[I

    #@27
    aget v1, v1, v7

    #@29
    sparse-switch v1, :sswitch_data_0

    #@2c
    .line 107
    :goto_0
    return-object v0

    #@2d
    .line 98
    :sswitch_0
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    #@2f
    goto :goto_0

    #@30
    .line 101
    :sswitch_1
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    #@32
    goto :goto_0

    #@33
    .line 104
    :sswitch_2
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    #@35
    goto :goto_0

    #@36
    .line 96
    :sswitch_data_0
    .sparse-switch
        -0x67 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method enableShiftLock()V
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 142
    const/4 v0, 0x0

    #@2
    .line 143
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->getShiftKeyIndices()[I

    #@5
    move-result-object v4

    #@6
    array-length v5, v4

    #@7
    move v3, v2

    #@8
    :goto_0
    if-ge v3, v5, :cond_2

    #@a
    aget v1, v4, v3

    #@c
    .line 144
    .local v1, "index":I
    if-ltz v1, :cond_1

    #@e
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@10
    array-length v2, v2

    #@11
    if-ge v0, v2, :cond_1

    #@13
    .line 145
    iget-object v6, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@15
    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->getKeys()Ljava/util/List;

    #@18
    move-result-object v2

    #@19
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/inputmethodservice/Keyboard$Key;

    #@1f
    aput-object v2, v6, v0

    #@21
    .line 146
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@23
    aget-object v2, v2, v0

    #@25
    instance-of v2, v2, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;

    #@27
    if-eqz v2, :cond_0

    #@29
    .line 147
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@2b
    aget-object v2, v2, v0

    #@2d
    check-cast v2, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;

    #@2f
    invoke-virtual {v2}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->enableShiftLock()V

    #@32
    .line 149
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    #@34
    iget-object v6, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@36
    aget-object v6, v6, v0

    #@38
    iget-object v6, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@3a
    aput-object v6, v2, v0

    #@3c
    .line 150
    add-int/lit8 v0, v0, 0x1

    #@3e
    .line 143
    :cond_1
    add-int/lit8 v2, v3, 0x1

    #@40
    move v3, v2

    #@41
    goto :goto_0

    #@42
    .line 141
    .end local v1    # "index":I
    :cond_2
    return-void
.end method

.method public isShifted()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 211
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@3
    aget-object v1, v1, v0

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 212
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0

    #@d
    .line 214
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method setEnterKeyResources(Landroid/content/res/Resources;III)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "previewId"    # I
    .param p3, "iconId"    # I
    .param p4, "labelId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    #@8
    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    #@a
    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    #@c
    iput v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    #@e
    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    #@10
    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    #@12
    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    #@14
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v1

    #@18
    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    #@1a
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    #@1c
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@22
    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    #@24
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@27
    move-result-object v1

    #@28
    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    #@2a
    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    #@2c
    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    #@2e
    if-eqz v0, :cond_0

    #@30
    .line 130
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    #@32
    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    #@34
    .line 131
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    #@36
    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    #@38
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@3b
    move-result v1

    #@3c
    .line 132
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    #@3e
    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    #@40
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@43
    move-result v2

    #@44
    .line 130
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@47
    .line 117
    :cond_0
    return-void
.end method

.method setShiftLocked(Z)V
    .locals 5
    .param p1, "shiftLocked"    # Z

    #@0
    .prologue
    .line 163
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@2
    const/4 v1, 0x0

    #@3
    array-length v3, v2

    #@4
    :goto_0
    if-ge v1, v3, :cond_1

    #@6
    aget-object v0, v2, v1

    #@8
    .line 164
    .local v0, "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v0, :cond_0

    #@a
    .line 165
    iput-boolean p1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    #@c
    .line 166
    iget-object v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    #@e
    iput-object v4, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@10
    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 169
    .end local v0    # "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    if-eqz p1, :cond_2

    #@15
    const/4 v1, 0x2

    #@16
    :goto_1
    iput v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    #@18
    .line 162
    return-void

    #@19
    .line 169
    :cond_2
    const/4 v1, 0x1

    #@1a
    goto :goto_1
.end method

.method public setShifted(Z)Z
    .locals 5
    .param p1, "shiftState"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 181
    const/4 v1, 0x0

    #@2
    .line 182
    .local v1, "shiftChanged":Z
    if-nez p1, :cond_3

    #@4
    .line 183
    iget v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    #@6
    if-eqz v2, :cond_2

    #@8
    const/4 v1, 0x1

    #@9
    .line 184
    :goto_0
    iput v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    #@b
    .line 189
    :cond_0
    :goto_1
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@e
    array-length v2, v2

    #@f
    if-ge v0, v2, :cond_6

    #@11
    .line 190
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@13
    aget-object v2, v2, v0

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 191
    if-nez p1, :cond_5

    #@19
    .line 192
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@1b
    aget-object v2, v2, v0

    #@1d
    iput-boolean v4, v2, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    #@1f
    .line 193
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@21
    aget-object v2, v2, v0

    #@23
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    #@25
    aget-object v3, v3, v0

    #@27
    iput-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@29
    .line 189
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_2

    #@2c
    .line 183
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    #@2d
    goto :goto_0

    #@2e
    .line 185
    :cond_3
    iget v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    #@30
    if-nez v2, :cond_0

    #@32
    .line 186
    iget v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    #@34
    if-nez v2, :cond_4

    #@36
    const/4 v1, 0x1

    #@37
    .line 187
    :goto_4
    const/4 v2, 0x1

    #@38
    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    #@3a
    goto :goto_1

    #@3b
    .line 186
    :cond_4
    const/4 v1, 0x0

    #@3c
    goto :goto_4

    #@3d
    .line 194
    .restart local v0    # "i":I
    :cond_5
    iget v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    #@3f
    if-nez v2, :cond_1

    #@41
    .line 195
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@43
    aget-object v2, v2, v0

    #@45
    iput-boolean v4, v2, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    #@47
    .line 196
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@49
    aget-object v2, v2, v0

    #@4b
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    #@4d
    iput-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@4f
    goto :goto_3

    #@50
    .line 202
    :cond_6
    return v1
.end method
