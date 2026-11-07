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
.field public final whitelist test-api firstDayOfWeek:I

.field public final whitelist test-api minimalDaysInFirstWeek:I

.field public final whitelist test-api weekendCease:I

.field public final whitelist test-api weekendCeaseMillis:I

.field public final whitelist test-api weekendOnset:I

.field public final whitelist test-api weekendOnsetMillis:I


# direct methods
.method public constructor whitelist test-api <init>(IIIIII)V
    .registers 7
    .param p1, "fdow"    # I
    .param p2, "mdifw"    # I
    .param p3, "weekendOnset"    # I
    .param p4, "weekendOnsetMillis"    # I
    .param p5, "weekendCease"    # I
    .param p6, "weekendCeaseMillis"    # I

    .line 4921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4922
    iput p1, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    .line 4923
    iput p2, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    .line 4924
    iput p3, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    .line 4925
    iput p4, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    .line 4926
    iput p5, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    .line 4927
    iput p6, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    .line 4928
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 4944
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 4945
    return v0

    .line 4947
    :cond_4
    instance-of v1, p1, Landroid/icu/util/Calendar$WeekData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 4948
    return v2

    .line 4950
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/icu/util/Calendar$WeekData;

    .line 4951
    .local v1, "that":Landroid/icu/util/Calendar$WeekData;
    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    iget v4, v1, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    iget v4, v1, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    iget v4, v1, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    iget v4, v1, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    iget v4, v1, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    iget v4, v1, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    if-ne v3, v4, :cond_32

    goto :goto_33

    :cond_32
    move v0, v2

    :goto_33
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 4935
    iget v0, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 4964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
