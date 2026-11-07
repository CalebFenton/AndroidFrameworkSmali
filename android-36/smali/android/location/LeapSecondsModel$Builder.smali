.class public final Landroid/location/LeapSecondsModel$Builder;
.super Ljava/lang/Object;
.source "LeapSecondsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LeapSecondsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDayNumberLeapSecondsFuture:I

.field private blacklist mLeapSeconds:I

.field private blacklist mLeapSecondsFuture:I

.field private blacklist mWeekNumberLeapSecondsFuture:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDayNumberLeapSecondsFuture(Landroid/location/LeapSecondsModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/LeapSecondsModel$Builder;->mDayNumberLeapSecondsFuture:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeapSeconds(Landroid/location/LeapSecondsModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/LeapSecondsModel$Builder;->mLeapSeconds:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeapSecondsFuture(Landroid/location/LeapSecondsModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/LeapSecondsModel$Builder;->mLeapSecondsFuture:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeekNumberLeapSecondsFuture(Landroid/location/LeapSecondsModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/LeapSecondsModel$Builder;->mWeekNumberLeapSecondsFuture:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/LeapSecondsModel;
    .registers 3

    .line 168
    new-instance v0, Landroid/location/LeapSecondsModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/LeapSecondsModel;-><init>(Landroid/location/LeapSecondsModel$Builder;Landroid/location/LeapSecondsModel-IA;)V

    return-object v0
.end method

.method public blacklist setDayNumberLeapSecondsFuture(I)Landroid/location/LeapSecondsModel$Builder;
    .registers 2
    .param p1, "dayNumberLeapSecondsFuture"    # I

    .line 161
    iput p1, p0, Landroid/location/LeapSecondsModel$Builder;->mDayNumberLeapSecondsFuture:I

    .line 162
    return-object p0
.end method

.method public blacklist setLeapSeconds(I)Landroid/location/LeapSecondsModel$Builder;
    .registers 2
    .param p1, "leapSeconds"    # I

    .line 138
    iput p1, p0, Landroid/location/LeapSecondsModel$Builder;->mLeapSeconds:I

    .line 139
    return-object p0
.end method

.method public blacklist setLeapSecondsFuture(I)Landroid/location/LeapSecondsModel$Builder;
    .registers 2
    .param p1, "leapSecondsFuture"    # I

    .line 145
    iput p1, p0, Landroid/location/LeapSecondsModel$Builder;->mLeapSecondsFuture:I

    .line 146
    return-object p0
.end method

.method public blacklist setWeekNumberLeapSecondsFuture(I)Landroid/location/LeapSecondsModel$Builder;
    .registers 2
    .param p1, "weekNumberLeapSecondsFuture"    # I

    .line 153
    iput p1, p0, Landroid/location/LeapSecondsModel$Builder;->mWeekNumberLeapSecondsFuture:I

    .line 154
    return-object p0
.end method
