.class public Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
.super Ljava/lang/Object;
.source "PasswordEntryKeyboardHelper.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# static fields
.field public static final KEYBOARD_MODE_ALPHA:I = 0x0

.field public static final KEYBOARD_MODE_NUMERIC:I = 0x1

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field private static final NUMERIC:I = 0x0

.field private static final QWERTY:I = 0x1

.field private static final QWERTY_SHIFTED:I = 0x2

.field private static final SYMBOLS:I = 0x3

.field private static final SYMBOLS_SHIFTED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PasswordEntryKeyboardHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnableHaptics:Z

.field private mKeyboardMode:I

.field private mKeyboardState:I

.field private final mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field mLayouts:[I

.field private mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private final mTargetView:Landroid/view/View;

.field private mUsingScreenWidth:Z

.field private mVibratePattern:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Landroid/inputmethodservice/KeyboardView;
    .param p3, "targetView"    # Landroid/view/View;

    #@0
    .prologue
    .line 74
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V

    #@9
    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Landroid/inputmethodservice/KeyboardView;
    .param p3, "targetView"    # Landroid/view/View;
    .param p4, "useFullScreenWidth"    # Z

    #@0
    .prologue
    .line 79
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V

    #@9
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Landroid/inputmethodservice/KeyboardView;
    .param p3, "targetView"    # Landroid/view/View;
    .param p4, "useFullScreenWidth"    # Z
    .param p5, "layouts"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    iput v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    #@6
    .line 45
    iput v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@8
    .line 55
    iput-boolean v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mEnableHaptics:Z

    #@a
    .line 64
    const v1, 0x1110009

    #@d
    .line 65
    const v2, 0x111000b

    #@10
    .line 66
    const v3, 0x111000c

    #@13
    .line 67
    const v4, 0x111000d

    #@16
    .line 68
    const v5, 0x111000e

    #@19
    .line 63
    filled-new-array {v1, v2, v3, v4, v5}, [I

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@1f
    .line 84
    iput-object p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    #@21
    .line 85
    iput-object p3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    #@23
    .line 86
    iput-object p2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@25
    .line 87
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@27
    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    #@2a
    .line 88
    iput-boolean p4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mUsingScreenWidth:Z

    #@2c
    .line 89
    if-eqz p5, :cond_1

    #@2e
    .line 90
    array-length v1, p5

    #@2f
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@31
    array-length v2, v2

    #@32
    if-eq v1, v2, :cond_0

    #@34
    .line 91
    new-instance v1, Ljava/lang/RuntimeException;

    #@36
    const-string/jumbo v2, "Wrong number of layouts"

    #@39
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v1

    #@3d
    .line 93
    :cond_0
    const/4 v0, 0x0

    #@3e
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@40
    array-length v1, v1

    #@41
    if-ge v0, v1, :cond_1

    #@43
    .line 94
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@45
    aget v2, p5, v0

    #@47
    aput v2, v1, v0

    #@49
    .line 93
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 97
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->createKeyboards()V

    #@4f
    .line 83
    return-void
.end method

.method private createKeyboardsWithDefaultWidth()V
    .locals 6

    #@0
    .prologue
    const v5, 0x1020411

    #@3
    const/4 v4, 0x1

    #@4
    .line 138
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@6
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    #@8
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@a
    const/4 v3, 0x0

    #@b
    aget v2, v2, v3

    #@d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    #@10
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@12
    .line 139
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@14
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    #@16
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@18
    aget v2, v2, v4

    #@1a
    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    #@1d
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@1f
    .line 140
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@21
    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    #@24
    .line 142
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@26
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    #@28
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@2a
    const/4 v3, 0x2

    #@2b
    aget v2, v2, v3

    #@2d
    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    #@30
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@32
    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@34
    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    #@37
    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@39
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    #@3c
    .line 147
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@3e
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    #@40
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@42
    const/4 v3, 0x3

    #@43
    aget v2, v2, v3

    #@45
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    #@48
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@4a
    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@4c
    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    #@4f
    .line 150
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@51
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    #@53
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@55
    const/4 v3, 0x4

    #@56
    aget v2, v2, v3

    #@58
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    #@5b
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@5d
    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@5f
    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    #@62
    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@64
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    #@67
    .line 137
    return-void
.end method

.method private createKeyboardsWithSpecificSize(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    const v3, 0x1020411

    #@3
    const/4 v6, 0x1

    #@4
    .line 118
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@6
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    #@8
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@a
    const/4 v4, 0x0

    #@b
    aget v2, v2, v4

    #@d
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    #@10
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@12
    .line 119
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@14
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    #@16
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@18
    aget v2, v2, v6

    #@1a
    move v4, p1

    #@1b
    move v5, p2

    #@1c
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    #@1f
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@21
    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@23
    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    #@26
    .line 123
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@28
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    #@2a
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@2c
    const/4 v4, 0x2

    #@2d
    aget v2, v2, v4

    #@2f
    move v4, p1

    #@30
    move v5, p2

    #@31
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    #@34
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@36
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@38
    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    #@3b
    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@3d
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    #@40
    .line 128
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@42
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    #@44
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@46
    const/4 v3, 0x3

    #@47
    aget v2, v2, v3

    #@49
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    #@4c
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@4e
    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@50
    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    #@53
    .line 131
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@55
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    #@57
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    #@59
    const/4 v3, 0x4

    #@5a
    aget v2, v2, v3

    #@5c
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    #@5f
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@61
    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@63
    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    #@66
    .line 134
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@68
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    #@6b
    .line 117
    return-void
.end method

.method private handleCharacter(I[I)V
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@2
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/16 v0, 0x20

    #@a
    if-eq p1, v0, :cond_0

    #@c
    const/16 v0, 0xa

    #@e
    if-eq p1, v0, :cond_0

    #@10
    .line 296
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    #@13
    move-result p1

    #@14
    .line 298
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->sendKeyEventsToTarget(I)V

    #@17
    .line 293
    return-void
.end method

.method private handleClose()V
    .locals 0

    #@0
    .prologue
    .line 301
    return-void
.end method

.method private handleModeChange()V
    .locals 3

    #@0
    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@2
    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    #@5
    move-result-object v0

    #@6
    .line 249
    .local v0, "current":Landroid/inputmethodservice/Keyboard;
    const/4 v1, 0x0

    #@7
    .line 250
    .local v1, "next":Landroid/inputmethodservice/Keyboard;
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@9
    if-eq v0, v2, :cond_0

    #@b
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@d
    if-ne v0, v2, :cond_3

    #@f
    .line 251
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@11
    .line 255
    .end local v1    # "next":Landroid/inputmethodservice/Keyboard;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    #@13
    .line 256
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@15
    invoke-virtual {v2, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    #@18
    .line 257
    const/4 v2, 0x0

    #@19
    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@1b
    .line 247
    :cond_2
    return-void

    #@1c
    .line 252
    .restart local v1    # "next":Landroid/inputmethodservice/Keyboard;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@1e
    if-eq v0, v2, :cond_4

    #@20
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@22
    if-ne v0, v2, :cond_1

    #@24
    .line 253
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@26
    .local v1, "next":Landroid/inputmethodservice/Keyboard;
    goto :goto_0
.end method

.method private handleShift()V
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 267
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@5
    if-nez v3, :cond_0

    #@7
    .line 268
    return-void

    #@8
    .line 270
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@a
    invoke-virtual {v3}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    #@d
    move-result-object v0

    #@e
    .line 271
    .local v0, "current":Landroid/inputmethodservice/Keyboard;
    const/4 v2, 0x0

    #@f
    .line 272
    .local v2, "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@11
    if-eq v0, v3, :cond_4

    #@13
    .line 273
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@15
    if-ne v0, v3, :cond_5

    #@17
    const/4 v1, 0x1

    #@18
    .line 274
    .local v1, "isAlphaMode":Z
    :goto_0
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@1a
    if-nez v3, :cond_8

    #@1c
    .line 275
    if-eqz v1, :cond_6

    #@1e
    move v3, v4

    #@1f
    :goto_1
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@21
    .line 276
    if-eqz v1, :cond_7

    #@23
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@25
    .line 284
    .end local v2    # "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    :cond_1
    :goto_2
    if-eqz v2, :cond_3

    #@27
    .line 285
    if-eq v2, v0, :cond_2

    #@29
    .line 286
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@2b
    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    #@2e
    .line 288
    :cond_2
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@30
    if-ne v3, v5, :cond_c

    #@32
    move v3, v4

    #@33
    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShiftLocked(Z)V

    #@36
    .line 289
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@38
    iget v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@3a
    if-eqz v5, :cond_d

    #@3c
    :goto_4
    invoke-virtual {v3, v4}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    #@3f
    .line 266
    :cond_3
    return-void

    #@40
    .line 272
    .end local v1    # "isAlphaMode":Z
    .restart local v2    # "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    :cond_4
    const/4 v1, 0x1

    #@41
    .restart local v1    # "isAlphaMode":Z
    goto :goto_0

    #@42
    .line 273
    .end local v1    # "isAlphaMode":Z
    :cond_5
    const/4 v1, 0x0

    #@43
    .restart local v1    # "isAlphaMode":Z
    goto :goto_0

    #@44
    :cond_6
    move v3, v5

    #@45
    .line 275
    goto :goto_1

    #@46
    .line 276
    :cond_7
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@48
    .local v2, "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    goto :goto_2

    #@49
    .line 277
    .local v2, "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    :cond_8
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@4b
    if-ne v3, v4, :cond_a

    #@4d
    .line 278
    iput v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@4f
    .line 279
    if-eqz v1, :cond_9

    #@51
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@53
    .local v2, "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    goto :goto_2

    #@54
    .local v2, "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    :cond_9
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@56
    .local v2, "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    goto :goto_2

    #@57
    .line 280
    .local v2, "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    :cond_a
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@59
    if-ne v3, v5, :cond_1

    #@5b
    .line 281
    iput v6, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@5d
    .line 282
    if-eqz v1, :cond_b

    #@5f
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@61
    .local v2, "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    goto :goto_2

    #@62
    .local v2, "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    :cond_b
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@64
    .local v2, "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    goto :goto_2

    #@65
    .end local v2    # "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    :cond_c
    move v3, v6

    #@66
    .line 288
    goto :goto_3

    #@67
    :cond_d
    move v4, v6

    #@68
    .line 289
    goto :goto_4
.end method

.method private performHapticFeedback()V
    .locals 3

    #@0
    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mEnableHaptics:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 311
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@6
    const/4 v1, 0x1

    #@7
    .line 312
    const/4 v2, 0x3

    #@8
    .line 311
    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->performHapticFeedback(II)Z

    #@b
    .line 309
    :cond_0
    return-void
.end method

.method private sendKeyEventsToTarget(I)V
    .locals 9
    .param p1, "character"    # I

    #@0
    .prologue
    .line 176
    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    #@2
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@5
    move-result-object v4

    #@6
    .line 177
    .local v4, "viewRootImpl":Landroid/view/ViewRootImpl;
    const/4 v5, -0x1

    #@7
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    #@a
    move-result-object v5

    #@b
    .line 178
    const/4 v6, 0x1

    #@c
    new-array v6, v6, [C

    #@e
    int-to-char v7, p1

    #@f
    const/4 v8, 0x0

    #@10
    aput-char v7, v6, v8

    #@12
    .line 177
    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    #@15
    move-result-object v2

    #@16
    .line 179
    .local v2, "events":[Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    #@18
    .line 180
    array-length v0, v2

    #@19
    .line 181
    .local v0, "N":I
    const/4 v3, 0x0

    #@1a
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@1c
    .line 182
    aget-object v1, v2, v3

    #@1e
    .line 183
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    #@21
    move-result v5

    #@22
    or-int/lit8 v5, v5, 0x2

    #@24
    or-int/lit8 v5, v5, 0x4

    #@26
    invoke-static {v1, v5}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@29
    move-result-object v1

    #@2a
    .line 185
    invoke-virtual {v4, v1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    #@2d
    .line 181
    add-int/lit8 v3, v3, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 175
    .end local v0    # "N":I
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v3    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public createKeyboards()V
    .locals 3

    #@0
    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@2
    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v0

    #@6
    .line 102
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mUsingScreenWidth:Z

    #@8
    if-nez v1, :cond_0

    #@a
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->createKeyboardsWithDefaultWidth()V

    #@12
    .line 100
    :goto_0
    return-void

    #@13
    .line 105
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@15
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@17
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->createKeyboardsWithSpecificSize(II)V

    #@1a
    goto :goto_0
.end method

.method public handleBackspace()V
    .locals 1

    #@0
    .prologue
    .line 262
    const/16 v0, 0x43

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->sendDownUpKeyEvents(I)V

    #@5
    .line 263
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->performHapticFeedback()V

    #@8
    .line 261
    return-void
.end method

.method public isAlpha()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 114
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public onKey(I[I)V
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    #@0
    .prologue
    .line 204
    const/4 v0, -0x5

    #@1
    if-ne p1, v0, :cond_1

    #@3
    .line 205
    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleBackspace()V

    #@6
    .line 203
    :cond_0
    :goto_0
    return-void

    #@7
    .line 206
    :cond_1
    const/4 v0, -0x1

    #@8
    if-ne p1, v0, :cond_2

    #@a
    .line 207
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleShift()V

    #@d
    goto :goto_0

    #@e
    .line 208
    :cond_2
    const/4 v0, -0x3

    #@f
    if-ne p1, v0, :cond_3

    #@11
    .line 209
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleClose()V

    #@14
    .line 210
    return-void

    #@15
    .line 211
    :cond_3
    const/4 v0, -0x2

    #@16
    if-ne p1, v0, :cond_4

    #@18
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@1a
    if-eqz v0, :cond_4

    #@1c
    .line 212
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleModeChange()V

    #@1f
    goto :goto_0

    #@20
    .line 214
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleCharacter(I[I)V

    #@23
    .line 216
    iget v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@25
    const/4 v1, 0x1

    #@26
    if-ne v0, v1, :cond_0

    #@28
    .line 218
    const/4 v0, 0x2

    #@29
    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@2b
    .line 219
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleShift()V

    #@2e
    goto :goto_0
.end method

.method public onPress(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    #@0
    .prologue
    .line 306
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->performHapticFeedback()V

    #@3
    .line 305
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    #@0
    .prologue
    .line 317
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 321
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 13
    .param p1, "keyEventCode"    # I

    #@0
    .prologue
    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 192
    .local v2, "eventTime":J
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    #@6
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@9
    move-result-object v0

    #@a
    .line 194
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    new-instance v1, Landroid/view/KeyEvent;

    #@c
    const/4 v6, 0x0

    #@d
    const/4 v8, 0x0

    #@e
    const/4 v9, 0x0

    #@f
    .line 195
    const/4 v10, -0x1

    #@10
    const/4 v11, 0x0

    #@11
    .line 196
    const/4 v12, 0x6

    #@12
    move-wide v4, v2

    #@13
    move v7, p1

    #@14
    .line 194
    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@17
    .line 193
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    #@1a
    .line 198
    new-instance v1, Landroid/view/KeyEvent;

    #@1c
    const/4 v6, 0x1

    #@1d
    const/4 v8, 0x0

    #@1e
    const/4 v9, 0x0

    #@1f
    .line 199
    const/4 v10, -0x1

    #@20
    const/4 v11, 0x0

    #@21
    .line 200
    const/4 v12, 0x6

    #@22
    move-wide v4, v2

    #@23
    move v7, p1

    #@24
    .line 198
    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@27
    .line 197
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    #@2a
    .line 190
    return-void
.end method

.method public setEnableHaptics(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mEnableHaptics:Z

    #@2
    .line 109
    return-void
.end method

.method public setKeyboardMode(I)V
    .locals 6
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 156
    packed-switch p1, :pswitch_data_0

    #@4
    .line 172
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    #@6
    .line 155
    return-void

    #@7
    .line 158
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@9
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@b
    invoke-virtual {v2, v3}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    #@e
    .line 159
    iput v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@10
    .line 161
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v2

    #@16
    .line 162
    const-string/jumbo v3, "show_password"

    #@19
    const/4 v4, 0x1

    #@1a
    .line 160
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    const/4 v1, 0x1

    #@21
    .line 163
    .local v1, "visiblePassword":Z
    :goto_1
    const/4 v0, 0x0

    #@22
    .line 164
    .local v0, "enablePreview":Z
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@24
    if-eqz v1, :cond_0

    #@26
    :cond_0
    invoke-virtual {v2, v5}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    #@29
    goto :goto_0

    #@2a
    .line 160
    .end local v0    # "enablePreview":Z
    .end local v1    # "visiblePassword":Z
    :cond_1
    const/4 v1, 0x0

    #@2b
    .restart local v1    # "visiblePassword":Z
    goto :goto_1

    #@2c
    .line 167
    .end local v1    # "visiblePassword":Z
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@2e
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    #@30
    invoke-virtual {v2, v3}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    #@33
    .line 168
    iput v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    #@35
    .line 169
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    #@37
    invoke-virtual {v2, v5}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    #@3a
    goto :goto_0

    #@3b
    .line 156
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVibratePattern(I)V
    .locals 6
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 229
    const/4 v2, 0x0

    #@2
    .line 231
    .local v2, "tmpArray":[I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v2

    #@c
    .line 237
    .end local v2    # "tmpArray":[I
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    #@e
    .line 238
    iput-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    #@10
    .line 239
    return-void

    #@11
    .line 232
    .restart local v2    # "tmpArray":[I
    :catch_0
    move-exception v0

    #@12
    .line 233
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz p1, :cond_0

    #@14
    .line 234
    const-string/jumbo v3, "PasswordEntryKeyboardHelper"

    #@17
    const-string/jumbo v4, "Vibrate pattern missing"

    #@1a
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0

    #@1e
    .line 241
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "tmpArray":[I
    :cond_1
    array-length v3, v2

    #@1f
    new-array v3, v3, [J

    #@21
    iput-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    #@23
    .line 242
    const/4 v1, 0x0

    #@24
    .local v1, "i":I
    :goto_1
    array-length v3, v2

    #@25
    if-ge v1, v3, :cond_2

    #@27
    .line 243
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    #@29
    aget v4, v2, v1

    #@2b
    int-to-long v4, v4

    #@2c
    aput-wide v4, v3, v1

    #@2e
    .line 242
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_1

    #@31
    .line 228
    :cond_2
    return-void
.end method

.method public swipeDown()V
    .locals 0

    #@0
    .prologue
    .line 325
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    #@0
    .prologue
    .line 329
    return-void
.end method

.method public swipeRight()V
    .locals 0

    #@0
    .prologue
    .line 333
    return-void
.end method

.method public swipeUp()V
    .locals 0

    #@0
    .prologue
    .line 337
    return-void
.end method
