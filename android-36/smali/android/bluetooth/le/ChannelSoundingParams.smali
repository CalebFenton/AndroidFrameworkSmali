.class public final Landroid/bluetooth/le/ChannelSoundingParams;
.super Ljava/lang/Object;
.source "ChannelSoundingParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ChannelSoundingParams$Builder;,
        Landroid/bluetooth/le/ChannelSoundingParams$CsSecurityLevel;,
        Landroid/bluetooth/le/ChannelSoundingParams$LocationType;,
        Landroid/bluetooth/le/ChannelSoundingParams$SightType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/ChannelSoundingParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CS_SECURITY_LEVEL_FOUR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CS_SECURITY_LEVEL_ONE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CS_SECURITY_LEVEL_THREE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CS_SECURITY_LEVEL_TWO:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CS_SECURITY_LEVEL_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LOCATION_TYPE_INDOOR:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LOCATION_TYPE_OUTDOOR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LOCATION_TYPE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIGHT_TYPE_LINE_OF_SIGHT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIGHT_TYPE_NON_LINE_OF_SIGHT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIGHT_TYPE_UNKNOWN:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mCsSecurityLevel:I

.field private final blacklist mLocationType:I

.field private final blacklist mSightType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 216
    new-instance v0, Landroid/bluetooth/le/ChannelSoundingParams$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ChannelSoundingParams$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ChannelSoundingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "sightType"    # I
    .param p2, "locationType"    # I
    .param p3, "csSecurityLevel"    # I

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p1, p0, Landroid/bluetooth/le/ChannelSoundingParams;->mSightType:I

    .line 156
    iput p2, p0, Landroid/bluetooth/le/ChannelSoundingParams;->mLocationType:I

    .line 157
    iput p3, p0, Landroid/bluetooth/le/ChannelSoundingParams;->mCsSecurityLevel:I

    .line 158
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCsSecurityLevel()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 190
    iget v0, p0, Landroid/bluetooth/le/ChannelSoundingParams;->mCsSecurityLevel:I

    return v0
.end method

.method public whitelist getLocationType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 179
    iget v0, p0, Landroid/bluetooth/le/ChannelSoundingParams;->mLocationType:I

    return v0
.end method

.method public whitelist getSightType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 168
    iget v0, p0, Landroid/bluetooth/le/ChannelSoundingParams;->mSightType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 210
    iget v0, p0, Landroid/bluetooth/le/ChannelSoundingParams;->mSightType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Landroid/bluetooth/le/ChannelSoundingParams;->mLocationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Landroid/bluetooth/le/ChannelSoundingParams;->mCsSecurityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    return-void
.end method
