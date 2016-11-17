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
.field private mOriginal:[C

.field private mReplacement:[C

.field private mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;[C[C)V
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "original"    # [C
    .param p3, "replacement"    # [C

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    iput-object p1, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    #@5
    .line 115
    iput-object p2, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    #@7
    .line 116
    iput-object p3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    #@9
    .line 113
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    .line 124
    iget-object v3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    #@2
    invoke-interface {v3, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@5
    move-result v0

    #@6
    .line 126
    .local v0, "c":C
    iget-object v3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    #@8
    array-length v2, v3

    #@9
    .line 127
    .local v2, "n":I
    const/4 v1, 0x0

    #@a
    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@c
    .line 128
    iget-object v3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    #@e
    aget-char v3, v3, v1

    #@10
    if-ne v0, v3, :cond_0

    #@12
    .line 129
    iget-object v3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    #@14
    aget-char v0, v3, v1

    #@16
    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 133
    :cond_1
    return v0
.end method

.method public getChars(II[CI)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    #@0
    .prologue
    .line 151
    iget-object v5, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    #@2
    invoke-static {v5, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@5
    .line 152
    sub-int v5, p2, p1

    #@7
    add-int v4, v5, p4

    #@9
    .line 153
    .local v4, "offend":I
    iget-object v5, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    #@b
    array-length v3, v5

    #@c
    .line 155
    .local v3, "n":I
    move v1, p4

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    #@f
    .line 156
    aget-char v0, p3, v1

    #@11
    .line 158
    .local v0, "c":C
    const/4 v2, 0x0

    #@12
    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_1

    #@14
    .line 159
    iget-object v5, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    #@16
    aget-char v5, v5, v2

    #@18
    if-ne v0, v5, :cond_0

    #@1a
    .line 160
    iget-object v5, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    #@1c
    aget-char v5, v5, v2

    #@1e
    aput-char v5, p3, v1

    #@20
    .line 158
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_1

    #@23
    .line 155
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 150
    .end local v0    # "c":C
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    #@2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 137
    sub-int v1, p2, p1

    #@2
    new-array v0, v1, [C

    #@4
    .line 139
    .local v0, "c":[C
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->getChars(II[CI)V

    #@8
    .line 140
    new-instance v1, Ljava/lang/String;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@d
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 144
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->length()I

    #@4
    move-result v1

    #@5
    new-array v0, v1, [C

    #@7
    .line 146
    .local v0, "c":[C
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->length()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->getChars(II[CI)V

    #@e
    .line 147
    new-instance v1, Ljava/lang/String;

    #@10
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@13
    return-object v1
.end method
