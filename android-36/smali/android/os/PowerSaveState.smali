.class public Landroid/os/PowerSaveState;
.super Ljava/lang/Object;
.source "PowerSaveState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerSaveState$Builder;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PowerSaveState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o batterySaverEnabled:Z

.field public final greylist-max-o brightnessFactor:F

.field public final greylist-max-o globalBatterySaverEnabled:Z

.field public final blacklist locationMode:I

.field public final blacklist soundTriggerMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    new-instance v0, Landroid/os/PowerSaveState$1;

    invoke-direct {v0}, Landroid/os/PowerSaveState$1;-><init>()V

    sput-object v0, Landroid/os/PowerSaveState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    iput-boolean v1, p0, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->locationMode:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->soundTriggerMode:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->brightnessFactor:F

    .line 56
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/PowerSaveState$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/os/PowerSaveState$Builder;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->-$$Nest$fgetmBatterySaverEnabled(Landroid/os/PowerSaveState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 44
    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->-$$Nest$fgetmLocationMode(Landroid/os/PowerSaveState$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->locationMode:I

    .line 45
    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->-$$Nest$fgetmSoundTriggerMode(Landroid/os/PowerSaveState$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->soundTriggerMode:I

    .line 46
    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->-$$Nest$fgetmBrightnessFactor(Landroid/os/PowerSaveState$Builder;)F

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->brightnessFactor:F

    .line 47
    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->-$$Nest$fgetmGlobalBatterySaverEnabled(Landroid/os/PowerSaveState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    iget-boolean v0, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    iget-boolean v0, p0, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    iget v0, p0, Landroid/os/PowerSaveState;->locationMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Landroid/os/PowerSaveState;->soundTriggerMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Landroid/os/PowerSaveState;->brightnessFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 70
    return-void
.end method
