.class Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;
.super Ljava/lang/Object;
.source "ReplacementTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/ReplacementTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplacementCharSequence"
.end annotation


# instance fields
.field private greylist-max-o mOriginal:[C

.field private greylist-max-o mReplacement:[C

.field private greylist-max-o mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;[C[C)V
    .registers 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "original"    # [C
    .param p3, "replacement"    # [C

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 116
    iput-object p2, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    .line 117
    iput-object p3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    .line 118
    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 6
    .param p1, "i"    # I

    .line 125
    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 127
    .local v0, "c":C
    iget-object v1, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    array-length v1, v1

    .line 128
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_a
    if-ge v2, v1, :cond_19

    .line 129
    iget-object v3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    aget-char v3, v3, v2

    if-ne v0, v3, :cond_16

    .line 130
    iget-object v3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    aget-char v0, v3, v2

    .line 128
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 134
    .end local v2    # "j":I
    :cond_19
    return v0
.end method

.method public whitelist getChars(II[CI)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    .line 152
    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 153
    sub-int v0, p2, p1

    add-int/2addr v0, p4

    .line 154
    .local v0, "offend":I
    iget-object v1, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    array-length v1, v1

    .line 156
    .local v1, "n":I
    move v2, p4

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_25

    .line 157
    aget-char v3, p3, v2

    .line 159
    .local v3, "c":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_11
    if-ge v4, v1, :cond_22

    .line 160
    iget-object v5, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    aget-char v5, v5, v4

    if-ne v3, v5, :cond_1f

    .line 161
    iget-object v5, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v2

    .line 159
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 156
    .end local v3    # "c":C
    .end local v4    # "j":I
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 165
    .end local v2    # "i":I
    :cond_25
    return-void
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 138
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 140
    .local v0, "c":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->getChars(II[CI)V

    .line 141
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 145
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 147
    .local v0, "c":[C
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->getChars(II[CI)V

    .line 148
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
