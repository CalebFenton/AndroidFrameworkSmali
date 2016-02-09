.class public Landroid/icu/text/ReplaceableString;
.super Ljava/lang/Object;
.source "ReplaceableString.java"

# interfaces
.implements Landroid/icu/text/Replaceable;


# instance fields
.field private buf:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    #@a
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    #@a
    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    #@5
    .line 44
    return-void
.end method


# virtual methods
.method public char32At(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    #@2
    invoke-static {v0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/StringBuffer;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public copy(III)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "dest"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 182
    if-ne p1, p2, :cond_0

    #@3
    if-ltz p1, :cond_0

    #@5
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    #@7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@a
    move-result v0

    #@b
    if-gt p1, v0, :cond_0

    #@d
    .line 183
    return-void

    #@e
    .line 185
    :cond_0
    sub-int v0, p2, p1

    #@10
    new-array v3, v0, [C

    #@12
    .line 186
    .local v3, "text":[C
    invoke-virtual {p0, p1, p2, v3, v4}, Landroid/icu/text/ReplaceableString;->getChars(II[CI)V

    #@15
    .line 187
    sub-int v5, p2, p1

    #@17
    move-object v0, p0

    #@18
    move v1, p3

    #@19
    move v2, p3

    #@1a
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/ReplaceableString;->replace(II[CII)V

    #@1d
    .line 181
    return-void
.end method

.method public getChars(II[CI)V
    .locals 1
    .param p1, "srcStart"    # I
    .param p2, "srcLimit"    # I
    .param p3, "dst"    # [C
    .param p4, "dstStart"    # I

    #@0
    .prologue
    .line 127
    if-eq p1, p2, :cond_0

    #@2
    .line 128
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    #@4
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    #@7
    .line 126
    :cond_0
    return-void
.end method

.method public hasMetaData()Z
    .locals 1

    #@0
    .prologue
    .line 195
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public replace(IILjava/lang/String;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    #@5
    .line 143
    return-void
.end method

.method public replace(II[CII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "chars"    # [C
    .param p4, "charsStart"    # I
    .param p5, "charsLen"    # I

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@5
    .line 163
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    #@7
    invoke-virtual {v0, p1, p3, p4, p5}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;

    #@a
    .line 161
    return-void
.end method

.method public substring(II)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
