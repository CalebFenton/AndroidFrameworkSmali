.class public final Landroid/telecom/ParcelableCallAnalytics$VideoEvent;
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
    name = "VideoEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCallAnalytics$VideoEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECEIVE_REMOTE_SESSION_MODIFY_REQUEST:I = 0x2

.field public static final RECEIVE_REMOTE_SESSION_MODIFY_RESPONSE:I = 0x3

.field public static final SEND_LOCAL_SESSION_MODIFY_REQUEST:I = 0x0

.field public static final SEND_LOCAL_SESSION_MODIFY_RESPONSE:I = 0x1


# instance fields
.field private mEventName:I

.field private mTimeSinceLastEvent:J

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$VideoEvent$1;-><init>()V

    #@5
    .line 39
    sput-object v0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>(IJI)V
    .locals 0
    .param p1, "eventName"    # I
    .param p2, "timeSinceLastEvent"    # J
    .param p4, "videoState"    # I

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    #@5
    .line 59
    iput-wide p2, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    #@7
    .line 60
    iput p4, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    #@9
    .line 57
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    #@9
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    #@f
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    #@15
    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getEventName()I
    .locals 1

    #@0
    .prologue
    .line 70
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    #@2
    return v0
.end method

.method public getTimeSinceLastEvent()J
    .locals 2

    #@0
    .prologue
    .line 74
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    #@2
    return-wide v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 88
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 89
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 90
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 87
    return-void
.end method
