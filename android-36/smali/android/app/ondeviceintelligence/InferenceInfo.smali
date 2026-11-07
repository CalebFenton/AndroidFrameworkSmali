.class public final Landroid/app/ondeviceintelligence/InferenceInfo;
.super Ljava/lang/Object;
.source "InferenceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/InferenceInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ondeviceintelligence/InferenceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist endTimeMs:J

.field private final blacklist startTimeMs:J

.field private final blacklist suspendedTimeMs:J

.field private final blacklist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 149
    new-instance v0, Landroid/app/ondeviceintelligence/InferenceInfo$1;

    invoke-direct {v0}, Landroid/app/ondeviceintelligence/InferenceInfo$1;-><init>()V

    sput-object v0, Landroid/app/ondeviceintelligence/InferenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IJJJ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "suspendedTimeMs"    # J

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->uid:I

    .line 71
    iput-wide p2, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->startTimeMs:J

    .line 72
    iput-wide p4, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->endTimeMs:J

    .line 73
    iput-wide p6, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->suspendedTimeMs:J

    .line 74
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->uid:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->startTimeMs:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->endTimeMs:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->suspendedTimeMs:J

    .line 86
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ondeviceintelligence/InferenceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ondeviceintelligence/InferenceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEndTimeMillis()J
    .registers 3

    .line 129
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->endTimeMs:J

    return-wide v0
.end method

.method public blacklist getStartTimeMillis()J
    .registers 3

    .line 119
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->startTimeMs:J

    return-wide v0
.end method

.method public blacklist getSuspendedTimeMillis()J
    .registers 3

    .line 140
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->suspendedTimeMs:J

    return-wide v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->uid:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    iget v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->startTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->endTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->suspendedTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    return-void
.end method
