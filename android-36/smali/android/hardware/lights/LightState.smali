.class public final Landroid/hardware/lights/LightState;
.super Ljava/lang/Object;
.source "LightState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/lights/LightState$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/lights/LightState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mColor:I

.field private final blacklist mPlayerId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 171
    new-instance v0, Landroid/hardware/lights/LightState$1;

    invoke-direct {v0}, Landroid/hardware/lights/LightState$1;-><init>()V

    sput-object v0, Landroid/hardware/lights/LightState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/lights/LightState;-><init>(II)V

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "color"    # I
    .param p2, "playerId"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/hardware/lights/LightState;->mColor:I

    .line 65
    iput p2, p0, Landroid/hardware/lights/LightState;->mPlayerId:I

    .line 66
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/lights/LightState;->mColor:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/lights/LightState;->mPlayerId:I

    .line 132
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/lights/LightState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/lights/LightState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getColor()I
    .registers 2

    .line 141
    iget v0, p0, Landroid/hardware/lights/LightState;->mColor:I

    return v0
.end method

.method public whitelist getPlayerId()I
    .registers 2

    .line 151
    iget v0, p0, Landroid/hardware/lights/LightState;->mPlayerId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LightState{Color=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/lights/LightState;->mColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PlayerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/lights/LightState;->mPlayerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 156
    iget v0, p0, Landroid/hardware/lights/LightState;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Landroid/hardware/lights/LightState;->mPlayerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    return-void
.end method
