.class public final Landroid/hardware/radio/RadioMetadata$Clock;
.super Ljava/lang/Object;
.source "RadioMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Clock"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioMetadata$Clock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mTimezoneOffsetMinutes:I

.field private final greylist-max-o mUtcEpochSeconds:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 313
    new-instance v0, Landroid/hardware/radio/RadioMetadata$Clock$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$Clock$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioMetadata$Clock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JI)V
    .registers 4
    .param p1, "utcEpochSeconds"    # J
    .param p3, "timezoneOffsetMinutes"    # I

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-wide p1, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mUtcEpochSeconds:J

    .line 326
    iput p3, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mTimezoneOffsetMinutes:I

    .line 327
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mUtcEpochSeconds:J

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mTimezoneOffsetMinutes:I

    .line 332
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioMetadata-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata$Clock;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTimezoneOffsetMinutes()I
    .registers 2

    .line 339
    iget v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mTimezoneOffsetMinutes:I

    return v0
.end method

.method public whitelist getUtcEpochSeconds()J
    .registers 3

    .line 335
    iget-wide v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mUtcEpochSeconds:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 309
    iget-wide v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mUtcEpochSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 310
    iget v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mTimezoneOffsetMinutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    return-void
.end method
