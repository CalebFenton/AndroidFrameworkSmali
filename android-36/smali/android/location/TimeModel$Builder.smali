.class public final Landroid/location/TimeModel$Builder;
.super Ljava/lang/Object;
.source "TimeModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/TimeModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mA0:D

.field private blacklist mA1:D

.field private blacklist mTimeOfWeek:I

.field private blacklist mToGnss:I

.field private blacklist mWeekNumber:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmA0(Landroid/location/TimeModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/TimeModel$Builder;->mA0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmA1(Landroid/location/TimeModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/TimeModel$Builder;->mA1:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeOfWeek(Landroid/location/TimeModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/TimeModel$Builder;->mTimeOfWeek:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToGnss(Landroid/location/TimeModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/TimeModel$Builder;->mToGnss:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeekNumber(Landroid/location/TimeModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/TimeModel$Builder;->mWeekNumber:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/TimeModel;
    .registers 3

    .line 205
    new-instance v0, Landroid/location/TimeModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/TimeModel;-><init>(Landroid/location/TimeModel$Builder;Landroid/location/TimeModel-IA;)V

    return-object v0
.end method

.method public blacklist setA0(D)Landroid/location/TimeModel$Builder;
    .registers 3
    .param p1, "a0"    # D

    .line 174
    iput-wide p1, p0, Landroid/location/TimeModel$Builder;->mA0:D

    .line 175
    return-object p0
.end method

.method public blacklist setA1(D)Landroid/location/TimeModel$Builder;
    .registers 3
    .param p1, "a1"    # D

    .line 184
    iput-wide p1, p0, Landroid/location/TimeModel$Builder;->mA1:D

    .line 185
    return-object p0
.end method

.method public blacklist setTimeOfWeek(I)Landroid/location/TimeModel$Builder;
    .registers 2
    .param p1, "timeOfWeek"    # I

    .line 191
    iput p1, p0, Landroid/location/TimeModel$Builder;->mTimeOfWeek:I

    .line 192
    return-object p0
.end method

.method public blacklist setToGnss(I)Landroid/location/TimeModel$Builder;
    .registers 2
    .param p1, "toGnss"    # I

    .line 167
    iput p1, p0, Landroid/location/TimeModel$Builder;->mToGnss:I

    .line 168
    return-object p0
.end method

.method public blacklist setWeekNumber(I)Landroid/location/TimeModel$Builder;
    .registers 2
    .param p1, "weekNumber"    # I

    .line 198
    iput p1, p0, Landroid/location/TimeModel$Builder;->mWeekNumber:I

    .line 199
    return-object p0
.end method
