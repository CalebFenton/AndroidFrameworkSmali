.class public Landroid/text/InputFilter$LengthFilter;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthFilter"
.end annotation


# instance fields
.field private final mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "max"    # I

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    iput p1, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    #@5
    .line 80
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    #@0
    .prologue
    .line 86
    iget v1, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    #@2
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    #@5
    move-result v2

    #@6
    sub-int v3, p6, p5

    #@8
    sub-int/2addr v2, v3

    #@9
    sub-int v0, v1, v2

    #@b
    .line 87
    .local v0, "keep":I
    if-gtz v0, :cond_0

    #@d
    .line 88
    const-string/jumbo v1, ""

    #@10
    return-object v1

    #@11
    .line 89
    :cond_0
    sub-int v1, p3, p2

    #@13
    if-lt v0, v1, :cond_1

    #@15
    .line 90
    const/4 v1, 0x0

    #@16
    return-object v1

    #@17
    .line 92
    :cond_1
    add-int/2addr v0, p2

    #@18
    .line 93
    add-int/lit8 v1, v0, -0x1

    #@1a
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@1d
    move-result v1

    #@1e
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 94
    add-int/lit8 v0, v0, -0x1

    #@26
    .line 95
    if-ne v0, p2, :cond_2

    #@28
    .line 96
    const-string/jumbo v1, ""

    #@2b
    return-object v1

    #@2c
    .line 99
    :cond_2
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@2f
    move-result-object v1

    #@30
    return-object v1
.end method

.method public getMax()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    #@2
    return v0
.end method
