.class public abstract Landroid/text/method/ReplacementTransformationMethod;
.super Ljava/lang/Object;
.source "ReplacementTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;,
        Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected abstract getOriginal()[C
.end method

.method protected abstract getReplacement()[C
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getOriginal()[C

    #@3
    move-result-object v3

    #@4
    .line 54
    .local v3, "original":[C
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getReplacement()[C

    #@7
    move-result-object v4

    #@8
    .line 59
    .local v4, "replacement":[C
    instance-of v5, p1, Landroid/text/Editable;

    #@a
    if-nez v5, :cond_4

    #@c
    .line 64
    const/4 v0, 0x1

    #@d
    .line 65
    .local v0, "doNothing":Z
    array-length v2, v3

    #@e
    .line 66
    .local v2, "n":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@11
    .line 67
    aget-char v5, v3, v1

    #@13
    invoke-static {p1, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    #@16
    move-result v5

    #@17
    if-ltz v5, :cond_1

    #@19
    .line 68
    const/4 v0, 0x0

    #@1a
    .line 72
    :cond_0
    if-eqz v0, :cond_2

    #@1c
    .line 73
    return-object p1

    #@1d
    .line 66
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 76
    :cond_2
    instance-of v5, p1, Landroid/text/Spannable;

    #@22
    if-nez v5, :cond_4

    #@24
    .line 82
    instance-of v5, p1, Landroid/text/Spanned;

    #@26
    if-eqz v5, :cond_3

    #@28
    .line 83
    new-instance v5, Landroid/text/SpannedString;

    #@2a
    new-instance v6, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    #@2c
    .line 84
    check-cast p1, Landroid/text/Spanned;

    #@2e
    .line 83
    .end local p1    # "source":Ljava/lang/CharSequence;
    invoke-direct {v6, p1, v3, v4}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    #@31
    invoke-direct {v5, v6}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    #@34
    return-object v5

    #@35
    .line 87
    .restart local p1    # "source":Ljava/lang/CharSequence;
    :cond_3
    new-instance v5, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    #@37
    invoke-direct {v5, p1, v3, v4}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    #@3a
    invoke-virtual {v5}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    return-object v5

    #@3f
    .line 94
    .end local v0    # "doNothing":Z
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_4
    instance-of v5, p1, Landroid/text/Spanned;

    #@41
    if-eqz v5, :cond_5

    #@43
    .line 95
    new-instance v5, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    #@45
    check-cast p1, Landroid/text/Spanned;

    #@47
    .end local p1    # "source":Ljava/lang/CharSequence;
    invoke-direct {v5, p1, v3, v4}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    #@4a
    return-object v5

    #@4b
    .line 98
    .restart local p1    # "source":Ljava/lang/CharSequence;
    :cond_5
    new-instance v5, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    #@4d
    invoke-direct {v5, p1, v3, v4}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    #@50
    return-object v5
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 104
    return-void
.end method
