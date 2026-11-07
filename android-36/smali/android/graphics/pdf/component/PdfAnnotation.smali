.class public abstract Landroid/graphics/pdf/component/PdfAnnotation;
.super Ljava/lang/Object;
.source "PdfAnnotation.java"


# instance fields
.field private final blacklist mType:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 4
    .param p1, "type"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    if-eqz p1, :cond_10

    if-eq p1, v0, :cond_10

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    const/4 v1, 0x3

    if-ne p1, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    const-string v1, "Invalid Annotation Type"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 43
    iput p1, p0, Landroid/graphics/pdf/component/PdfAnnotation;->mType:I

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist getPdfAnnotationType()I
    .registers 2

    .line 52
    iget v0, p0, Landroid/graphics/pdf/component/PdfAnnotation;->mType:I

    return v0
.end method
