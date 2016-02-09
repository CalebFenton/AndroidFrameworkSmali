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
.field extraFieldMask:I

.field missingFieldMask:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method addExtra(I)V
    .locals 2
    .param p1, "field"    # I

    #@0
    .prologue
    .line 2222
    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    #@2
    const/4 v1, 0x1

    #@3
    shl-int/2addr v1, p1

    #@4
    or-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    #@7
    .line 2221
    return-void
.end method

.method addMissing(I)V
    .locals 2
    .param p1, "field"    # I

    #@0
    .prologue
    .line 2219
    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@2
    const/4 v1, 0x1

    #@3
    shl-int/2addr v1, p1

    #@4
    or-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@7
    .line 2218
    return-void
.end method

.method clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2209
    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    #@3
    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@5
    .line 2208
    return-void
.end method

.method setTo(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V
    .locals 1
    .param p1, "other"    # Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    #@0
    .prologue
    .line 2215
    iget v0, p1, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@2
    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@4
    .line 2216
    iget v0, p1, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    #@6
    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    #@8
    .line 2214
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2225
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "missingFieldMask: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    #@e
    invoke-static {v1}, Landroid/icu/text/DateTimePatternGenerator;->-wrap1(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 2226
    const-string/jumbo v1, ", extraFieldMask: "

    #@19
    .line 2225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 2226
    iget v1, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    #@1f
    invoke-static {v1}, Landroid/icu/text/DateTimePatternGenerator;->-wrap1(I)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 2225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method
