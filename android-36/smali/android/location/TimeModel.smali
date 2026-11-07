.class public final Landroid/location/TimeModel;
.super Ljava/lang/Object;
.source "TimeModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/TimeModel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/TimeModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mA0:D

.field private final blacklist mA1:D

.field private final blacklist mTimeOfWeek:I

.field private final blacklist mToGnss:I

.field private final blacklist mWeekNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroid/location/TimeModel$1;

    invoke-direct {v0}, Landroid/location/TimeModel$1;-><init>()V

    sput-object v0, Landroid/location/TimeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/TimeModel$Builder;)V
    .registers 21
    .param p1, "builder"    # Landroid/location/TimeModel$Builder;

    .line 59
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static/range {p1 .. p1}, Landroid/location/TimeModel$Builder;->-$$Nest$fgetmToGnss(Landroid/location/TimeModel$Builder;)I

    move-result v1

    const/16 v2, 0x8

    const-string v3, "ToGnss"

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 65
    invoke-static/range {p1 .. p1}, Landroid/location/TimeModel$Builder;->-$$Nest$fgetmA0(Landroid/location/TimeModel$Builder;)D

    move-result-wide v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-string v11, "A0"

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 66
    invoke-static/range {p1 .. p1}, Landroid/location/TimeModel$Builder;->-$$Nest$fgetmA1(Landroid/location/TimeModel$Builder;)D

    move-result-wide v12

    const-wide v16, 0x3ecb83bf20000000L    # 3.2800001008581603E-6

    const-string v18, "A1"

    const-wide v14, -0x41347c40e0000000L    # -3.2800001008581603E-6

    invoke-static/range {v12 .. v18}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 67
    invoke-static/range {p1 .. p1}, Landroid/location/TimeModel$Builder;->-$$Nest$fgetmTimeOfWeek(Landroid/location/TimeModel$Builder;)I

    move-result v1

    const v2, 0x93a80

    const-string v3, "TimeOfWeek"

    invoke-static {v1, v4, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 68
    invoke-static/range {p1 .. p1}, Landroid/location/TimeModel$Builder;->-$$Nest$fgetmWeekNumber(Landroid/location/TimeModel$Builder;)I

    move-result v1

    if-ltz v1, :cond_44

    const/4 v4, 0x1

    :cond_44
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 69
    invoke-static/range {p1 .. p1}, Landroid/location/TimeModel$Builder;->-$$Nest$fgetmToGnss(Landroid/location/TimeModel$Builder;)I

    move-result v1

    iput v1, v0, Landroid/location/TimeModel;->mToGnss:I

    .line 70
    invoke-static/range {p1 .. p1}, Landroid/location/TimeModel$Builder;->-$$Nest$fgetmA0(Landroid/location/TimeModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/TimeModel;->mA0:D

    .line 71
    invoke-static/range {p1 .. p1}, Landroid/location/TimeModel$Builder;->-$$Nest$fgetmA1(Landroid/location/TimeModel$Builder;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/location/TimeModel;->mA1:D

    .line 72
    invoke-static/range {p1 .. p1}, Landroid/location/TimeModel$Builder;->-$$Nest$fgetmTimeOfWeek(Landroid/location/TimeModel$Builder;)I

    move-result v1

    iput v1, v0, Landroid/location/TimeModel;->mTimeOfWeek:I

    .line 73
    invoke-static/range {p1 .. p1}, Landroid/location/TimeModel$Builder;->-$$Nest$fgetmWeekNumber(Landroid/location/TimeModel$Builder;)I

    move-result v1

    iput v1, v0, Landroid/location/TimeModel;->mWeekNumber:I

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/TimeModel$Builder;Landroid/location/TimeModel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/TimeModel;-><init>(Landroid/location/TimeModel$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getA0()D
    .registers 3

    .line 85
    iget-wide v0, p0, Landroid/location/TimeModel;->mA0:D

    return-wide v0
.end method

.method public blacklist getA1()D
    .registers 3

    .line 94
    iget-wide v0, p0, Landroid/location/TimeModel;->mA1:D

    return-wide v0
.end method

.method public blacklist getTimeOfWeek()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/location/TimeModel;->mTimeOfWeek:I

    return v0
.end method

.method public blacklist getToGnss()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/location/TimeModel;->mToGnss:I

    return v0
.end method

.method public blacklist getWeekNumber()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/location/TimeModel;->mWeekNumber:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeModel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "toGnss = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/TimeModel;->mToGnss:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", a0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/TimeModel;->mA0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, ", a1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/TimeModel;->mA1:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", timeOfWeek = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/TimeModel;->mTimeOfWeek:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", weekNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/TimeModel;->mWeekNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 148
    iget v0, p0, Landroid/location/TimeModel;->mToGnss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-wide v0, p0, Landroid/location/TimeModel;->mA0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 150
    iget-wide v0, p0, Landroid/location/TimeModel;->mA1:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 151
    iget v0, p0, Landroid/location/TimeModel;->mTimeOfWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Landroid/location/TimeModel;->mWeekNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    return-void
.end method
