.class public final Landroid/location/UtcModel;
.super Ljava/lang/Object;
.source "UtcModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/UtcModel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/UtcModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mA0:D

.field private final blacklist mA1:D

.field private final blacklist mTimeOfWeek:I

.field private final blacklist mWeekNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Landroid/location/UtcModel$1;

    invoke-direct {v0}, Landroid/location/UtcModel$1;-><init>()V

    sput-object v0, Landroid/location/UtcModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/UtcModel$Builder;)V
    .registers 16
    .param p1, "builder"    # Landroid/location/UtcModel$Builder;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/location/UtcModel$Builder;->-$$Nest$fgetmA0(Landroid/location/UtcModel$Builder;)D

    move-result-wide v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-string v6, "A0"

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 54
    invoke-static {p1}, Landroid/location/UtcModel$Builder;->-$$Nest$fgetmA1(Landroid/location/UtcModel$Builder;)D

    move-result-wide v7

    const-wide v11, 0x3e3fff5ca0000000L    # 7.450000172326554E-9

    const-string v13, "A1"

    const-wide v9, -0x41c000a360000000L    # -7.450000172326554E-9

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 55
    invoke-static {p1}, Landroid/location/UtcModel$Builder;->-$$Nest$fgetmTimeOfWeek(Landroid/location/UtcModel$Builder;)I

    move-result v0

    const v1, 0x93a80

    const-string v2, "TimeOfWeek"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 56
    invoke-static {p1}, Landroid/location/UtcModel$Builder;->-$$Nest$fgetmWeekNumber(Landroid/location/UtcModel$Builder;)I

    move-result v0

    if-ltz v0, :cond_37

    const/4 v3, 0x1

    :cond_37
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 57
    invoke-static {p1}, Landroid/location/UtcModel$Builder;->-$$Nest$fgetmA0(Landroid/location/UtcModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/UtcModel;->mA0:D

    .line 58
    invoke-static {p1}, Landroid/location/UtcModel$Builder;->-$$Nest$fgetmA1(Landroid/location/UtcModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/UtcModel;->mA1:D

    .line 59
    invoke-static {p1}, Landroid/location/UtcModel$Builder;->-$$Nest$fgetmTimeOfWeek(Landroid/location/UtcModel$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/UtcModel;->mTimeOfWeek:I

    .line 60
    invoke-static {p1}, Landroid/location/UtcModel$Builder;->-$$Nest$fgetmWeekNumber(Landroid/location/UtcModel$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/UtcModel;->mWeekNumber:I

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/UtcModel$Builder;Landroid/location/UtcModel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/UtcModel;-><init>(Landroid/location/UtcModel$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getA0()D
    .registers 3

    .line 66
    iget-wide v0, p0, Landroid/location/UtcModel;->mA0:D

    return-wide v0
.end method

.method public blacklist getA1()D
    .registers 3

    .line 75
    iget-wide v0, p0, Landroid/location/UtcModel;->mA1:D

    return-wide v0
.end method

.method public blacklist getTimeOfWeek()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/location/UtcModel;->mTimeOfWeek:I

    return v0
.end method

.method public blacklist getWeekNumber()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/location/UtcModel;->mWeekNumber:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UtcModel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "a0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/UtcModel;->mA0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", a1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/UtcModel;->mA1:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", timeOfWeek = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/UtcModel;->mTimeOfWeek:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", weekNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/UtcModel;->mWeekNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 108
    iget-wide v0, p0, Landroid/location/UtcModel;->mA0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 109
    iget-wide v0, p0, Landroid/location/UtcModel;->mA1:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 110
    iget v0, p0, Landroid/location/UtcModel;->mTimeOfWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/location/UtcModel;->mWeekNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void
.end method
