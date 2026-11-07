.class public final Landroid/location/LeapSecondsModel;
.super Ljava/lang/Object;
.source "LeapSecondsModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LeapSecondsModel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LeapSecondsModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDayNumberLeapSecondsFuture:I

.field private final blacklist mLeapSeconds:I

.field private final blacklist mLeapSecondsFuture:I

.field private final blacklist mWeekNumberLeapSecondsFuture:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Landroid/location/LeapSecondsModel$1;

    invoke-direct {v0}, Landroid/location/LeapSecondsModel$1;-><init>()V

    sput-object v0, Landroid/location/LeapSecondsModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/LeapSecondsModel$Builder;)V
    .registers 5
    .param p1, "builder"    # Landroid/location/LeapSecondsModel$Builder;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Landroid/location/LeapSecondsModel$Builder;->-$$Nest$fgetmLeapSeconds(Landroid/location/LeapSecondsModel$Builder;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 51
    invoke-static {p1}, Landroid/location/LeapSecondsModel$Builder;->-$$Nest$fgetmLeapSecondsFuture(Landroid/location/LeapSecondsModel$Builder;)I

    move-result v0

    if-ltz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 52
    invoke-static {p1}, Landroid/location/LeapSecondsModel$Builder;->-$$Nest$fgetmWeekNumberLeapSecondsFuture(Landroid/location/LeapSecondsModel$Builder;)I

    move-result v0

    if-ltz v0, :cond_25

    move v0, v1

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 53
    invoke-static {p1}, Landroid/location/LeapSecondsModel$Builder;->-$$Nest$fgetmDayNumberLeapSecondsFuture(Landroid/location/LeapSecondsModel$Builder;)I

    move-result v0

    if-ltz v0, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 54
    invoke-static {p1}, Landroid/location/LeapSecondsModel$Builder;->-$$Nest$fgetmLeapSeconds(Landroid/location/LeapSecondsModel$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/LeapSecondsModel;->mLeapSeconds:I

    .line 55
    invoke-static {p1}, Landroid/location/LeapSecondsModel$Builder;->-$$Nest$fgetmLeapSecondsFuture(Landroid/location/LeapSecondsModel$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/LeapSecondsModel;->mLeapSecondsFuture:I

    .line 56
    invoke-static {p1}, Landroid/location/LeapSecondsModel$Builder;->-$$Nest$fgetmWeekNumberLeapSecondsFuture(Landroid/location/LeapSecondsModel$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/LeapSecondsModel;->mWeekNumberLeapSecondsFuture:I

    .line 57
    invoke-static {p1}, Landroid/location/LeapSecondsModel$Builder;->-$$Nest$fgetmDayNumberLeapSecondsFuture(Landroid/location/LeapSecondsModel$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/LeapSecondsModel;->mDayNumberLeapSecondsFuture:I

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/LeapSecondsModel$Builder;Landroid/location/LeapSecondsModel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/LeapSecondsModel;-><init>(Landroid/location/LeapSecondsModel$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDayNumberLeapSecondsFuture()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/location/LeapSecondsModel;->mDayNumberLeapSecondsFuture:I

    return v0
.end method

.method public blacklist getLeapSeconds()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/location/LeapSecondsModel;->mLeapSeconds:I

    return v0
.end method

.method public blacklist getLeapSecondsFuture()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/location/LeapSecondsModel;->mLeapSecondsFuture:I

    return v0
.end method

.method public blacklist getWeekNumberLeapSecondsFuture()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/location/LeapSecondsModel;->mWeekNumberLeapSecondsFuture:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LeapSecondsModel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "leapSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/LeapSecondsModel;->mLeapSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", leapSecondsFuture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/LeapSecondsModel;->mLeapSecondsFuture:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ", weekNumberLeapSecondsFuture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/LeapSecondsModel;->mWeekNumberLeapSecondsFuture:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", dayNumberLeapSecondsFuture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/LeapSecondsModel;->mDayNumberLeapSecondsFuture:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 110
    iget v0, p0, Landroid/location/LeapSecondsModel;->mLeapSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/location/LeapSecondsModel;->mLeapSecondsFuture:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/location/LeapSecondsModel;->mWeekNumberLeapSecondsFuture:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Landroid/location/LeapSecondsModel;->mDayNumberLeapSecondsFuture:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return-void
.end method
