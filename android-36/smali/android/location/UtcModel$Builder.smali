.class public final Landroid/location/UtcModel$Builder;
.super Ljava/lang/Object;
.source "UtcModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/UtcModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mA0:D

.field private blacklist mA1:D

.field private blacklist mTimeOfWeek:I

.field private blacklist mWeekNumber:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmA0(Landroid/location/UtcModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/UtcModel$Builder;->mA0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmA1(Landroid/location/UtcModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/UtcModel$Builder;->mA1:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeOfWeek(Landroid/location/UtcModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/UtcModel$Builder;->mTimeOfWeek:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeekNumber(Landroid/location/UtcModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/UtcModel$Builder;->mWeekNumber:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/UtcModel;
    .registers 3

    .line 173
    new-instance v0, Landroid/location/UtcModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/UtcModel;-><init>(Landroid/location/UtcModel$Builder;Landroid/location/UtcModel-IA;)V

    return-object v0
.end method

.method public blacklist setA0(D)Landroid/location/UtcModel$Builder;
    .registers 3
    .param p1, "a0"    # D

    .line 142
    iput-wide p1, p0, Landroid/location/UtcModel$Builder;->mA0:D

    .line 143
    return-object p0
.end method

.method public blacklist setA1(D)Landroid/location/UtcModel$Builder;
    .registers 3
    .param p1, "a1"    # D

    .line 152
    iput-wide p1, p0, Landroid/location/UtcModel$Builder;->mA1:D

    .line 153
    return-object p0
.end method

.method public blacklist setTimeOfWeek(I)Landroid/location/UtcModel$Builder;
    .registers 2
    .param p1, "timeOfWeek"    # I

    .line 159
    iput p1, p0, Landroid/location/UtcModel$Builder;->mTimeOfWeek:I

    .line 160
    return-object p0
.end method

.method public blacklist setWeekNumber(I)Landroid/location/UtcModel$Builder;
    .registers 2
    .param p1, "weekNumber"    # I

    .line 166
    iput p1, p0, Landroid/location/UtcModel$Builder;->mWeekNumber:I

    .line 167
    return-object p0
.end method
