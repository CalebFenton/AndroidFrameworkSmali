.class Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DistanceInfo"
.end annotation


# instance fields
.field greylist-max-o extraFieldMask:I

.field greylist-max-o missingFieldMask:I


# direct methods
.method private constructor greylist-max-r <init>()V
    .registers 1

    .line 2942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2943
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/DateTimePatternGenerator-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>()V

    return-void
.end method


# virtual methods
.method greylist-max-o addExtra(I)V
    .registers 4
    .param p1, "field"    # I

    .line 2955
    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    .line 2956
    return-void
.end method

.method greylist-max-o addMissing(I)V
    .registers 4
    .param p1, "field"    # I

    .line 2952
    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    .line 2953
    return-void
.end method

.method greylist-max-o clear()V
    .registers 2

    .line 2945
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    .line 2946
    return-void
.end method

.method greylist-max-o setTo(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V
    .registers 3
    .param p1, "other"    # Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    .line 2948
    iget v0, p1, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    .line 2949
    iget v0, p1, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    .line 2950
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missingFieldMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    invoke-static {v1}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$smshowMask(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraFieldMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    .line 2960
    invoke-static {v1}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$smshowMask(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2959
    return-object v0
.end method
