.class public final Landroid/hardware/input/VirtualKeyEvent;
.super Ljava/lang/Object;
.source "VirtualKeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualKeyEvent$Builder;,
        Landroid/hardware/input/VirtualKeyEvent$SupportedKeycode;,
        Landroid/hardware/input/VirtualKeyEvent$Action;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DOWN:I = 0x0

.field public static final blacklist ACTION_UNKNOWN:I = -0x1

.field public static final whitelist ACTION_UP:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualKeyEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mEventTimeNanos:J

.field private final blacklist mKeyCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 306
    new-instance v0, Landroid/hardware/input/VirtualKeyEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualKeyEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIJ)V
    .registers 5
    .param p1, "action"    # I
    .param p2, "keyCode"    # I
    .param p3, "eventTimeNanos"    # J

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p1, p0, Landroid/hardware/input/VirtualKeyEvent;->mAction:I

    .line 187
    iput p2, p0, Landroid/hardware/input/VirtualKeyEvent;->mKeyCode:I

    .line 188
    iput-wide p3, p0, Landroid/hardware/input/VirtualKeyEvent;->mEventTimeNanos:J

    .line 189
    return-void
.end method

.method synthetic constructor blacklist <init>(IIJLandroid/hardware/input/VirtualKeyEvent-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/input/VirtualKeyEvent;-><init>(IIJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mAction:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mKeyCode:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mEventTimeNanos:J

    .line 195
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualKeyEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualKeyEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .registers 2

    .line 228
    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mAction:I

    return v0
.end method

.method public whitelist getEventTimeNanos()J
    .registers 3

    .line 238
    iget-wide v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mEventTimeNanos:J

    return-wide v0
.end method

.method public whitelist getKeyCode()I
    .registers 2

    .line 221
    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mKeyCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualKeyEvent( action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualKeyEvent;->mAction:I

    .line 212
    invoke-static {v1}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualKeyEvent;->mKeyCode:I

    .line 213
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eventTime(ns)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/input/VirtualKeyEvent;->mEventTimeNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 199
    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-wide v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mEventTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 202
    return-void
.end method
