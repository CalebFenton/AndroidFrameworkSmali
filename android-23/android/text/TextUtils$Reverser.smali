.class Landroid/text/TextUtils$Reverser;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reverser"
.end annotation


# instance fields
.field private mEnd:I

.field private mSource:Ljava/lang/CharSequence;

.field private mStart:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 528
    iput-object p1, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    #@5
    .line 529
    iput p2, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    #@7
    .line 530
    iput p3, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    #@9
    .line 527
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "off"    # I

    #@0
    .prologue
    .line 550
    iget-object v0, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    #@2
    iget v1, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    sub-int/2addr v1, p1

    #@7
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@a
    move-result v0

    #@b
    invoke-static {v0}, Landroid/text/AndroidCharacter;->getMirror(C)C

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getChars(II[CI)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    #@0
    .prologue
    .line 554
    iget-object v4, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    #@2
    iget v5, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    #@4
    add-int/2addr v5, p1

    #@5
    iget v6, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    #@7
    add-int/2addr v6, p2

    #@8
    invoke-static {v4, v5, v6, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@b
    .line 556
    sub-int v4, p2, p1

    #@d
    const/4 v5, 0x0

    #@e
    invoke-static {p3, v5, v4}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    #@11
    .line 558
    sub-int v1, p2, p1

    #@13
    .line 559
    .local v1, "len":I
    sub-int v4, p2, p1

    #@15
    div-int/lit8 v2, v4, 0x2

    #@17
    .line 560
    .local v2, "n":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@1a
    .line 561
    add-int v4, p4, v0

    #@1c
    aget-char v3, p3, v4

    #@1e
    .line 563
    .local v3, "tmp":C
    add-int v4, p4, v0

    #@20
    add-int v5, p4, v1

    #@22
    sub-int/2addr v5, v0

    #@23
    add-int/lit8 v5, v5, -0x1

    #@25
    aget-char v5, p3, v5

    #@27
    aput-char v5, p3, v4

    #@29
    .line 564
    add-int v4, p4, v1

    #@2b
    sub-int/2addr v4, v0

    #@2c
    add-int/lit8 v4, v4, -0x1

    #@2e
    aput-char v3, p3, v4

    #@30
    .line 560
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 553
    .end local v3    # "tmp":C
    :cond_0
    return-void
.end method

.method public length()I
    .locals 2

    #@0
    .prologue
    .line 534
    iget v0, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    #@2
    iget v1, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 538
    sub-int v1, p2, p1

    #@2
    new-array v0, v1, [C

    #@4
    .line 540
    .local v0, "buf":[C
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/TextUtils$Reverser;->getChars(II[CI)V

    #@8
    .line 541
    new-instance v1, Ljava/lang/String;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@d
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/text/TextUtils$Reverser;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v1, v0}, Landroid/text/TextUtils$Reverser;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method
