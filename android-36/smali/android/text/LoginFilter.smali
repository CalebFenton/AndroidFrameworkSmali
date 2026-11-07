.class public abstract Landroid/text/LoginFilter;
.super Ljava/lang/Object;
.source "LoginFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/LoginFilter$PasswordFilterGMail;,
        Landroid/text/LoginFilter$UsernameFilterGeneric;,
        Landroid/text/LoginFilter$UsernameFilterGMail;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mAppendInvalid:Z


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    .line 42
    return-void
.end method

.method constructor greylist-max-o <init>(Z)V
    .registers 2
    .param p1, "appendInvalid"    # Z

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 56
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStart()V

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, p5, :cond_16

    .line 61
    invoke-interface {p4, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    .line 62
    .local v1, "c":C
    invoke-virtual {p0, v1}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p0, v1}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    .line 60
    .end local v1    # "c":C
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 66
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    .line 67
    .local v0, "modification":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .line 69
    .local v1, "modoff":I
    move v2, p2

    .local v2, "i":I
    :goto_19
    if-ge v2, p3, :cond_44

    .line 70
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 71
    .local v3, "c":C
    invoke-virtual {p0, v3}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 75
    :cond_28
    iget-boolean v4, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    if-eqz v4, :cond_2f

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 78
    :cond_2f
    if-nez v0, :cond_39

    .line 79
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    move-object v0, v4

    .line 80
    sub-int v1, v2, p2

    .line 83
    :cond_39
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 86
    :goto_3e
    invoke-virtual {p0, v3}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    .line 69
    .end local v3    # "c":C
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 92
    .end local v2    # "i":I
    :cond_44
    move v2, p6

    .restart local v2    # "i":I
    :goto_45
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 93
    invoke-interface {p4, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v3

    .line 94
    .restart local v3    # "c":C
    invoke-virtual {p0, v3}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v4

    if-nez v4, :cond_58

    invoke-virtual {p0, v3}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    .line 92
    .end local v3    # "c":C
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 97
    .end local v2    # "i":I
    :cond_5b
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStop()V

    .line 101
    return-object v0
.end method

.method public abstract whitelist isAllowed(C)Z
.end method

.method public whitelist onInvalidCharacter(C)V
    .registers 2
    .param p1, "c"    # C

    .line 117
    return-void
.end method

.method public whitelist onStart()V
    .registers 1

    .line 109
    return-void
.end method

.method public whitelist onStop()V
    .registers 1

    .line 124
    return-void
.end method
