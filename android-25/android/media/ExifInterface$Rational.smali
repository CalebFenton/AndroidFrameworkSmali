.class Landroid/media/ExifInterface$Rational;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rational"
.end annotation


# instance fields
.field public final denominator:J

.field public final numerator:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 5
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 420
    cmp-long v0, p3, v2

    #@7
    if-nez v0, :cond_0

    #@9
    .line 421
    iput-wide v2, p0, Landroid/media/ExifInterface$Rational;->numerator:J

    #@b
    .line 422
    const-wide/16 v0, 0x1

    #@d
    iput-wide v0, p0, Landroid/media/ExifInterface$Rational;->denominator:J

    #@f
    .line 423
    return-void

    #@10
    .line 425
    :cond_0
    iput-wide p1, p0, Landroid/media/ExifInterface$Rational;->numerator:J

    #@12
    .line 426
    iput-wide p3, p0, Landroid/media/ExifInterface$Rational;->denominator:J

    #@14
    .line 418
    return-void
.end method

.method synthetic constructor <init>(JJLandroid/media/ExifInterface$Rational;)V
    .locals 1
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/ExifInterface$Rational;-><init>(JJ)V

    #@3
    return-void
.end method


# virtual methods
.method public calculate()D
    .locals 4

    #@0
    .prologue
    .line 435
    iget-wide v0, p0, Landroid/media/ExifInterface$Rational;->numerator:J

    #@2
    long-to-double v0, v0

    #@3
    iget-wide v2, p0, Landroid/media/ExifInterface$Rational;->denominator:J

    #@5
    long-to-double v2, v2

    #@6
    div-double/2addr v0, v2

    #@7
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-wide v2, p0, Landroid/media/ExifInterface$Rational;->numerator:J

    #@7
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "/"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-wide v2, p0, Landroid/media/ExifInterface$Rational;->denominator:J

    #@14
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
