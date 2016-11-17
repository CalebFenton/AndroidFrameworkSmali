.class public Landroid/text/AlteredCharSequence;
.super Ljava/lang/Object;
.source "AlteredCharSequence.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/AlteredCharSequence$AlteredSpanned;
    }
.end annotation


# instance fields
.field private mChars:[C

.field private mEnd:I

.field private mSource:Ljava/lang/CharSequence;

.field private mStart:I


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;[CII)V
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "sub"    # [C
    .param p3, "substart"    # I
    .param p4, "subend"    # I

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    #@5
    .line 45
    iput-object p2, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    #@7
    .line 46
    iput p3, p0, Landroid/text/AlteredCharSequence;->mStart:I

    #@9
    .line 47
    iput p4, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    #@b
    .line 43
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "sub"    # [C
    .param p3, "substart"    # I
    .param p4, "subend"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CII)V

    #@3
    return-void
.end method

.method public static make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;
    .locals 6
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "sub"    # [C
    .param p2, "substart"    # I
    .param p3, "subend"    # I

    #@0
    .prologue
    .line 36
    instance-of v0, p0, Landroid/text/Spanned;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 37
    new-instance v0, Landroid/text/AlteredCharSequence$AlteredSpanned;

    #@6
    const/4 v5, 0x0

    #@7
    move-object v1, p0

    #@8
    move-object v2, p1

    #@9
    move v3, p2

    #@a
    move v4, p3

    #@b
    invoke-direct/range {v0 .. v5}, Landroid/text/AlteredCharSequence$AlteredSpanned;-><init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence$AlteredSpanned;)V

    #@e
    return-object v0

    #@f
    .line 39
    :cond_0
    new-instance v0, Landroid/text/AlteredCharSequence;

    #@11
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CII)V

    #@14
    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "off"    # I

    #@0
    .prologue
    .line 90
    iget v0, p0, Landroid/text/AlteredCharSequence;->mStart:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    iget v0, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    #@6
    if-ge p1, v0, :cond_0

    #@8
    .line 91
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    #@a
    iget v1, p0, Landroid/text/AlteredCharSequence;->mStart:I

    #@c
    sub-int v1, p1, v1

    #@e
    aget-char v0, v0, v1

    #@10
    return v0

    #@11
    .line 93
    :cond_0
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    #@13
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public getChars(II[CI)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    #@2
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@5
    .line 108
    iget v0, p0, Landroid/text/AlteredCharSequence;->mStart:I

    #@7
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@a
    move-result p1

    #@b
    .line 109
    iget v0, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    #@d
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    #@10
    move-result p2

    #@11
    .line 111
    if-le p1, p2, :cond_0

    #@13
    .line 112
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    #@15
    iget v1, p0, Landroid/text/AlteredCharSequence;->mStart:I

    #@17
    sub-int v1, p1, v1

    #@19
    sub-int v2, p2, p1

    #@1b
    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1e
    .line 105
    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    #@2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    .line 102
    iget-object v1, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    #@8
    iget v2, p0, Landroid/text/AlteredCharSequence;->mStart:I

    #@a
    sub-int/2addr v2, p1

    #@b
    iget v3, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    #@d
    sub-int/2addr v3, p1

    #@e
    .line 101
    invoke-static {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 116
    invoke-virtual {p0}, Landroid/text/AlteredCharSequence;->length()I

    #@4
    move-result v0

    #@5
    .line 118
    .local v0, "len":I
    new-array v1, v0, [C

    #@7
    .line 119
    .local v1, "ret":[C
    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/text/AlteredCharSequence;->getChars(II[CI)V

    #@a
    .line 120
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    return-object v2
.end method

.method update([CII)V
    .locals 0
    .param p1, "sub"    # [C
    .param p2, "substart"    # I
    .param p3, "subend"    # I

    #@0
    .prologue
    .line 51
    iput-object p1, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    #@2
    .line 52
    iput p2, p0, Landroid/text/AlteredCharSequence;->mStart:I

    #@4
    .line 53
    iput p3, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    #@6
    .line 50
    return-void
.end method
