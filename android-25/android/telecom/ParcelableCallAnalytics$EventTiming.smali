.class public final Landroid/telecom/ParcelableCallAnalytics$EventTiming;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCallAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTiming"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCallAnalytics$EventTiming$1;
    }
.end annotation


# static fields
.field public static final ACCEPT_TIMING:I = 0x0

.field public static final BIND_CS_TIMING:I = 0x6

.field public static final BLOCK_CHECK_FINISHED_TIMING:I = 0x9

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECT_TO_VM_FINISHED_TIMING:I = 0x8

.field public static final DISCONNECT_TIMING:I = 0x2

.field public static final FILTERING_COMPLETED_TIMING:I = 0xa

.field public static final FILTERING_TIMED_OUT_TIMING:I = 0xb

.field public static final HOLD_TIMING:I = 0x3

.field public static final INVALID:I = 0xf423f

.field public static final OUTGOING_TIME_TO_DIALING_TIMING:I = 0x5

.field public static final REJECT_TIMING:I = 0x1

.field public static final SCREENING_COMPLETED_TIMING:I = 0x7

.field public static final UNHOLD_TIMING:I = 0x4


# instance fields
.field private mName:I

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 202
    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$EventTiming$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$EventTiming$1;-><init>()V

    #@5
    .line 201
    sput-object v0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 185
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "name"    # I
    .param p2, "time"    # J

    #@0
    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 219
    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mName:I

    #@5
    .line 220
    iput-wide p2, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mTime:J

    #@7
    .line 218
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mName:I

    #@9
    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mTime:J

    #@f
    .line 223
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/ParcelableCallAnalytics$EventTiming;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ParcelableCallAnalytics$EventTiming;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 238
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getName()I
    .locals 1

    #@0
    .prologue
    .line 229
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mName:I

    #@2
    return v0
.end method

.method public getTime()J
    .locals 2

    #@0
    .prologue
    .line 233
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mTime:J

    #@2
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 243
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mName:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 244
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mTime:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 242
    return-void
.end method
