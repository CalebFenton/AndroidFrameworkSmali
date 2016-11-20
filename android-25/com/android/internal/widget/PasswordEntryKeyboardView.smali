.class public Lcom/android/internal/widget/PasswordEntryKeyboardView;
.super Landroid/inputmethodservice/KeyboardView;
.source "PasswordEntryKeyboardView.java"


# static fields
.field static final KEYCODE_F1:I = -0x67

.field static final KEYCODE_NEXT_LANGUAGE:I = -0x68

.field static final KEYCODE_OPTIONS:I = -0x64

.field static final KEYCODE_SHIFT_LONGPRESS:I = -0x65

.field static final KEYCODE_VOICE:I = -0x66


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 32
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 36
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 40
    return-void
.end method


# virtual methods
.method public setShifted(Z)Z
    .locals 5
    .param p1, "shifted"    # Z

    #@0
    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    #@3
    move-result v2

    #@4
    .line 48
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getShiftKeyIndices()[I

    #@b
    move-result-object v1

    #@c
    .line 49
    .local v1, "indices":[I
    const/4 v3, 0x0

    #@d
    array-length v4, v1

    #@e
    :goto_0
    if-ge v3, v4, :cond_0

    #@10
    aget v0, v1, v3

    #@12
    .line 50
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->invalidateKey(I)V

    #@15
    .line 49
    add-int/lit8 v3, v3, 0x1

    #@17
    goto :goto_0

    #@18
    .line 52
    .end local v0    # "index":I
    :cond_0
    return v2
.end method
