.class public final Landroid/hardware/display/Time;
.super Ljava/lang/Object;
.source "Time.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/Time;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHour:I

.field private final blacklist mMinute:I

.field private final blacklist mNano:I

.field private final blacklist mSecond:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Landroid/hardware/display/Time$1;

    invoke-direct {v0}, Landroid/hardware/display/Time$1;-><init>()V

    sput-object v0, Landroid/hardware/display/Time;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mHour:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mMinute:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mSecond:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mNano:I

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Ljava/time/LocalTime;)V
    .registers 3
    .param p1, "localTime"    # Ljava/time/LocalTime;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mHour:I

    .line 36
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mMinute:I

    .line 37
    invoke-virtual {p1}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mSecond:I

    .line 38
    invoke-virtual {p1}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mNano:I

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLocalTime()Ljava/time/LocalTime;
    .registers 5

    .line 62
    iget v0, p0, Landroid/hardware/display/Time;->mHour:I

    iget v1, p0, Landroid/hardware/display/Time;->mMinute:I

    iget v2, p0, Landroid/hardware/display/Time;->mSecond:I

    iget v3, p0, Landroid/hardware/display/Time;->mNano:I

    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 55
    iget v0, p0, Landroid/hardware/display/Time;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Landroid/hardware/display/Time;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Landroid/hardware/display/Time;->mSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Landroid/hardware/display/Time;->mNano:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
