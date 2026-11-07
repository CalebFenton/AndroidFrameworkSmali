.class public Landroid/hardware/camera2/utils/LongParcelable;
.super Ljava/lang/Object;
.source "LongParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/utils/LongParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o number:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/hardware/camera2/utils/LongParcelable$1;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/LongParcelable$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/utils/LongParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    .line 29
    return-void
.end method

.method public constructor greylist-max-o <init>(J)V
    .registers 3
    .param p1, "number"    # J

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    .line 33
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/utils/LongParcelable;->readFromParcel(Landroid/os/Parcel;)V

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/LongParcelable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/LongParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getNumber()J
    .registers 3

    .line 67
    iget-wide v0, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    return-wide v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    .line 64
    return-void
.end method

.method public greylist-max-o setNumber(J)V
    .registers 3
    .param p1, "number"    # J

    .line 71
    iput-wide p1, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    .line 72
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 59
    iget-wide v0, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    return-void
.end method
