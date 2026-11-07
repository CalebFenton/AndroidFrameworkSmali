.class public Landroid/text/method/PasswordTransformationMethod;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/PasswordTransformationMethod$ViewReference;,
        Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;,
        Landroid/text/method/PasswordTransformationMethod$Visible;
    }
.end annotation


# static fields
.field private static greylist-max-p DOT:C

.field private static greylist sInstance:Landroid/text/method/PasswordTransformationMethod;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDOT()C
    .registers 1

    sget-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 270
    const/16 v0, 0x2022

    sput-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/PasswordTransformationMethod;
    .registers 1

    .line 66
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_7

    .line 67
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    return-object v0

    .line 69
    :cond_7
    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    .line 70
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    return-object v0
.end method

.method private static greylist-max-o removeVisibleSpans(Landroid/text/Spannable;)V
    .registers 4
    .param p0, "sp"    # Landroid/text/Spannable;

    .line 135
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/PasswordTransformationMethod$Visible;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 136
    .local v0, "old":[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 137
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 139
    .end local v1    # "i":I
    :cond_19
    return-void
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 120
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 76
    return-void
.end method

.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .line 41
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_2d

    .line 42
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    .line 50
    .local v0, "sp":Landroid/text/Spannable;
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 52
    .local v1, "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v4, v1

    if-ge v2, v4, :cond_20

    .line 53
    aget-object v4, v1, v2

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 56
    .end local v2    # "i":I
    :cond_20
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 58
    new-instance v2, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-direct {v2, p2}, Landroid/text/method/PasswordTransformationMethod$ViewReference;-><init>(Landroid/view/View;)V

    const/16 v4, 0x22

    invoke-interface {v0, v2, v3, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 62
    .end local v0    # "sp":Landroid/text/Spannable;
    .end local v1    # "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_2d
    new-instance v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;

    invoke-direct {v0, p1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 125
    if-nez p3, :cond_c

    .line 126
    instance-of v0, p2, Landroid/text/Spannable;

    if-eqz v0, :cond_c

    .line 127
    move-object v0, p2

    check-cast v0, Landroid/text/Spannable;

    .line 129
    .local v0, "sp":Landroid/text/Spannable;
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 132
    .end local v0    # "sp":Landroid/text/Spannable;
    :cond_c
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 80
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_52

    .line 81
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    .line 82
    .local v0, "sp":Landroid/text/Spannable;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 84
    .local v1, "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    array-length v2, v1

    if-nez v2, :cond_18

    .line 85
    return-void

    .line 95
    :cond_18
    const/4 v2, 0x0

    .line 96
    .local v2, "v":Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-nez v2, :cond_2b

    array-length v4, v1

    if-ge v3, v4, :cond_2b

    .line 97
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/text/method/PasswordTransformationMethod$ViewReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/view/View;

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 100
    .end local v3    # "i":I
    :cond_2b
    if-nez v2, :cond_2e

    .line 101
    return-void

    .line 104
    :cond_2e
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v3

    .line 105
    .local v3, "pref":I
    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_52

    .line 106
    if-lez p4, :cond_52

    .line 107
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 109
    const/4 v4, 0x1

    if-ne p4, v4, :cond_52

    .line 110
    new-instance v4, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-direct {v4, v0, p0}, Landroid/text/method/PasswordTransformationMethod$Visible;-><init>(Landroid/text/Spannable;Landroid/text/method/PasswordTransformationMethod;)V

    add-int v5, p2, p4

    const/16 v6, 0x21

    invoke-interface {v0, v4, p2, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 116
    .end local v0    # "sp":Landroid/text/Spannable;
    .end local v1    # "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "pref":I
    :cond_52
    return-void
.end method
