.class public Landroid/icu/text/ReplaceableString;
.super Ljava/lang/Object;
.source "ReplaceableString.java"

# interfaces
.implements Landroid/icu/text/Replaceable;


# instance fields
.field private greylist-max-o buf:Ljava/lang/StringBuffer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    .line 52
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    .line 33
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/StringBuffer;)V
    .registers 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist test-api char32At(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 102
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/StringBuffer;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api charAt(I)C
    .registers 3
    .param p1, "offset"    # I

    .line 87
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api copy(III)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "dest"    # I

    .line 179
    if-ne p1, p2, :cond_d

    if-ltz p1, :cond_d

    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt p1, v0, :cond_d

    .line 180
    return-void

    .line 182
    :cond_d
    sub-int v0, p2, p1

    new-array v4, v0, [C

    .line 183
    .local v4, "text":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v4, v0}, Landroid/icu/text/ReplaceableString;->getChars(II[CI)V

    .line 184
    const/4 v5, 0x0

    sub-int v6, p2, p1

    move v3, p3

    move-object v1, p0

    move v2, p3

    .end local p3    # "dest":I
    .local v2, "dest":I
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/ReplaceableString;->replace(II[CII)V

    .line 185
    return-void
.end method

.method public whitelist test-api getChars(II[CI)V
    .registers 6
    .param p1, "srcStart"    # I
    .param p2, "srcLimit"    # I
    .param p3, "dst"    # [C
    .param p4, "dstStart"    # I

    .line 124
    if-eq p1, p2, :cond_7

    .line 125
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 127
    :cond_7
    return-void
.end method

.method public whitelist test-api hasMetaData()Z
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api replace(IILjava/lang/String;)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    return-void
.end method

.method public whitelist test-api replace(II[CII)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "chars"    # [C
    .param p4, "charsStart"    # I
    .param p5, "charsLen"    # I

    .line 159
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 160
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p3, p4, p5}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;

    .line 161
    return-void
.end method

.method public greylist-max-o substring(II)Ljava/lang/String;
    .registers 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 67
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
