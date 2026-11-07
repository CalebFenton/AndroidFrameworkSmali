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
.field private final greylist mMax:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "max"    # I

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    .line 174
    return-void
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 178
    iget v0, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    sub-int v2, p6, p5

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 179
    .local v0, "keep":I
    const-string v1, ""

    if-gtz v0, :cond_f

    .line 180
    return-object v1

    .line 181
    :cond_f
    sub-int v2, p3, p2

    if-lt v0, v2, :cond_15

    .line 182
    const/4 v1, 0x0

    return-object v1

    .line 184
    :cond_15
    add-int/2addr v0, p2

    .line 185
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 186
    add-int/lit8 v0, v0, -0x1

    .line 187
    if-ne v0, p2, :cond_27

    .line 188
    return-object v1

    .line 191
    :cond_27
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getMax()I
    .registers 2

    .line 199
    iget v0, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    return v0
.end method
