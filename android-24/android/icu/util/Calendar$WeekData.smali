.class public final Landroid/icu/util/Calendar$WeekData;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeekData"
.end annotation


# instance fields
.field public final firstDayOfWeek:I

.field public final minimalDaysInFirstWeek:I

.field public final weekendCease:I

.field public final weekendCeaseMillis:I

.field public final weekendOnset:I

.field public final weekendOnsetMillis:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "fdow"    # I
    .param p2, "mdifw"    # I
    .param p3, "weekendOnset"    # I
    .param p4, "weekendOnsetMillis"    # I
    .param p5, "weekendCease"    # I
    .param p6, "weekendCeaseMillis"    # I

    #@0
    .prologue
    .line 4565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4568
    iput p1, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    #@5
    .line 4569
    iput p2, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    #@7
    .line 4570
    iput p3, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    #@9
    .line 4571
    iput p4, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    #@b
    .line 4572
    iput p5, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    #@d
    .line 4573
    iput p6, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    #@f
    .line 4567
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 4590
    if-ne p0, p1, :cond_0

    #@4
    .line 4591
    return v1

    #@5
    .line 4593
    :cond_0
    instance-of v3, p1, Landroid/icu/util/Calendar$WeekData;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 4594
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 4596
    check-cast v0, Landroid/icu/util/Calendar$WeekData;

    #@d
    .line 4597
    .local v0, "that":Landroid/icu/util/Calendar$WeekData;
    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    #@f
    iget v4, v0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    #@11
    if-ne v3, v4, :cond_3

    #@13
    .line 4598
    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    #@15
    iget v4, v0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 4599
    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    #@1b
    iget v4, v0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    .line 4600
    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    #@21
    iget v4, v0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    #@23
    if-ne v3, v4, :cond_3

    #@25
    .line 4601
    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    #@27
    iget v4, v0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    #@29
    if-ne v3, v4, :cond_3

    #@2b
    .line 4602
    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    #@2d
    iget v4, v0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    #@2f
    if-ne v3, v4, :cond_2

    #@31
    .line 4597
    :goto_0
    return v1

    #@32
    :cond_2
    move v1, v2

    #@33
    .line 4602
    goto :goto_0

    #@34
    :cond_3
    move v1, v2

    #@35
    .line 4597
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 4581
    iget v0, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    #@2
    mul-int/lit8 v0, v0, 0x25

    #@4
    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    #@6
    add-int/2addr v0, v1

    #@7
    mul-int/lit8 v0, v0, 0x25

    #@9
    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    #@b
    add-int/2addr v0, v1

    #@c
    mul-int/lit8 v0, v0, 0x25

    #@e
    .line 4582
    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    #@10
    .line 4581
    add-int/2addr v0, v1

    #@11
    mul-int/lit8 v0, v0, 0x25

    #@13
    .line 4582
    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    #@15
    .line 4581
    add-int/2addr v0, v1

    #@16
    mul-int/lit8 v0, v0, 0x25

    #@18
    .line 4582
    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    #@1a
    .line 4581
    add-int/2addr v0, v1

    #@1b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 4610
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 4611
    const-string/jumbo v1, ", "

    #@15
    .line 4610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 4611
    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    #@1b
    .line 4610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 4612
    const-string/jumbo v1, ", "

    #@22
    .line 4610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 4612
    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    #@28
    .line 4610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 4613
    const-string/jumbo v1, ", "

    #@2f
    .line 4610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 4613
    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    #@35
    .line 4610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 4614
    const-string/jumbo v1, ", "

    #@3c
    .line 4610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 4614
    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    #@42
    .line 4610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 4615
    const-string/jumbo v1, ", "

    #@49
    .line 4610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 4615
    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    #@4f
    .line 4610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 4616
    const-string/jumbo v1, "}"

    #@56
    .line 4610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    return-object v0
.end method
