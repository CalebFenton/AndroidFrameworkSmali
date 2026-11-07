.class public final Landroid/hardware/input/VirtualStylusButtonEvent;
.super Ljava/lang/Object;
.source "VirtualStylusButtonEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualStylusButtonEvent$Builder;,
        Landroid/hardware/input/VirtualStylusButtonEvent$Button;,
        Landroid/hardware/input/VirtualStylusButtonEvent$Action;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BUTTON_PRESS:I = 0xb

.field public static final whitelist ACTION_BUTTON_RELEASE:I = 0xc

.field public static final blacklist ACTION_UNKNOWN:I = -0x1

.field public static final whitelist BUTTON_PRIMARY:I = 0x20

.field public static final whitelist BUTTON_SECONDARY:I = 0x40

.field public static final blacklist BUTTON_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualStylusButtonEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mButtonCode:I

.field private final blacklist mEventTimeNanos:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 205
    new-instance v0, Landroid/hardware/input/VirtualStylusButtonEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualStylusButtonEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualStylusButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIJ)V
    .registers 5
    .param p1, "action"    # I
    .param p2, "buttonCode"    # I
    .param p3, "eventTimeNanos"    # J

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroid/hardware/input/VirtualStylusButtonEvent;->mAction:I

    .line 77
    iput p2, p0, Landroid/hardware/input/VirtualStylusButtonEvent;->mButtonCode:I

    .line 78
    iput-wide p3, p0, Landroid/hardware/input/VirtualStylusButtonEvent;->mEventTimeNanos:J

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(IIJLandroid/hardware/input/VirtualStylusButtonEvent-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/input/VirtualStylusButtonEvent;-><init>(IIJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent;->mAction:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent;->mButtonCode:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent;->mEventTimeNanos:J

    .line 85
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualStylusButtonEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualStylusButtonEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent;->mAction:I

    return v0
.end method

.method public whitelist getButtonCode()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent;->mButtonCode:I

    return v0
.end method

.method public whitelist getEventTimeNanos()J
    .registers 3

    .line 122
    iget-wide v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent;->mEventTimeNanos:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 89
    iget v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent;->mButtonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-wide v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent;->mEventTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    return-void
.end method
