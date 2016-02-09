.class public abstract Landroid/text/LoginFilter;
.super Ljava/lang/Object;
.source "LoginFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/LoginFilter$UsernameFilterGMail;,
        Landroid/text/LoginFilter$UsernameFilterGeneric;,
        Landroid/text/LoginFilter$PasswordFilterGMail;
    }
.end annotation


# instance fields
.field private mAppendInvalid:Z


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    #@6
    .line 36
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "appendInvalid"    # Z

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    iput-boolean p1, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    #@5
    .line 29
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    #@0
    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStart()V

    #@3
    .line 56
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, p5, :cond_1

    #@6
    .line 57
    invoke-interface {p4, v1}, Landroid/text/Spanned;->charAt(I)C

    #@9
    move-result v0

    #@a
    .line 58
    .local v0, "c":C
    invoke-virtual {p0, v0}, Landroid/text/LoginFilter;->isAllowed(C)Z

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_0

    #@10
    invoke-virtual {p0, v0}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    #@13
    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 62
    .end local v0    # "c":C
    :cond_1
    const/4 v2, 0x0

    #@17
    .line 63
    .local v2, "modification":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    #@18
    .line 65
    .local v3, "modoff":I
    move v1, p2

    #@19
    .end local v2    # "modification":Landroid/text/SpannableStringBuilder;
    :goto_1
    if-ge v1, p3, :cond_5

    #@1b
    .line 66
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@1e
    move-result v0

    #@1f
    .line 67
    .restart local v0    # "c":C
    invoke-virtual {p0, v0}, Landroid/text/LoginFilter;->isAllowed(C)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2

    #@25
    .line 69
    add-int/lit8 v3, v3, 0x1

    #@27
    .line 65
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 71
    :cond_2
    iget-boolean v4, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    #@2c
    if-eqz v4, :cond_3

    #@2e
    .line 72
    add-int/lit8 v3, v3, 0x1

    #@30
    .line 82
    :goto_3
    invoke-virtual {p0, v0}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    #@33
    goto :goto_2

    #@34
    .line 74
    :cond_3
    if-nez v2, :cond_4

    #@36
    .line 75
    new-instance v2, Landroid/text/SpannableStringBuilder;

    #@38
    invoke-direct {v2, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    #@3b
    .line 76
    .local v2, "modification":Landroid/text/SpannableStringBuilder;
    sub-int v3, v1, p2

    #@3d
    .line 79
    .end local v2    # "modification":Landroid/text/SpannableStringBuilder;
    :cond_4
    add-int/lit8 v4, v3, 0x1

    #@3f
    invoke-virtual {v2, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    #@42
    goto :goto_3

    #@43
    .line 88
    .end local v0    # "c":C
    :cond_5
    move v1, p6

    #@44
    :goto_4
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    #@47
    move-result v4

    #@48
    if-ge v1, v4, :cond_7

    #@4a
    .line 89
    invoke-interface {p4, v1}, Landroid/text/Spanned;->charAt(I)C

    #@4d
    move-result v0

    #@4e
    .line 90
    .restart local v0    # "c":C
    invoke-virtual {p0, v0}, Landroid/text/LoginFilter;->isAllowed(C)Z

    #@51
    move-result v4

    #@52
    if-nez v4, :cond_6

    #@54
    invoke-virtual {p0, v0}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    #@57
    .line 88
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@59
    goto :goto_4

    #@5a
    .line 93
    .end local v0    # "c":C
    :cond_7
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStop()V

    #@5d
    .line 97
    return-object v2
.end method

.method public abstract isAllowed(C)Z
.end method

.method public onInvalidCharacter(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 111
    return-void
.end method

.method public onStart()V
    .locals 0

    #@0
    .prologue
    .line 103
    return-void
.end method

.method public onStop()V
    .locals 0

    #@0
    .prologue
    .line 118
    return-void
.end method
