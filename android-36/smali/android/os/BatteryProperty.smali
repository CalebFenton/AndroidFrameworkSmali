.class public Landroid/os/BatteryProperty;
.super Ljava/lang/Object;
.source "BatteryProperty.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BatteryProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mValueLong:J

.field private blacklist mValueString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Landroid/os/BatteryProperty$1;

    invoke-direct {v0}, Landroid/os/BatteryProperty$1;-><init>()V

    sput-object v0, Landroid/os/BatteryProperty;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/os/BatteryProperty;->mValueLong:J

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BatteryProperty;->mValueString:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "p"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Landroid/os/BatteryProperty;->readFromParcel(Landroid/os/Parcel;)V

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/BatteryProperty-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BatteryProperty;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getLong()J
    .registers 3

    .line 45
    iget-wide v0, p0, Landroid/os/BatteryProperty;->mValueLong:J

    return-wide v0
.end method

.method public blacklist getString()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/os/BatteryProperty;->mValueString:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "p"    # Landroid/os/Parcel;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryProperty;->mValueLong:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryProperty;->mValueString:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public greylist-max-o setLong(J)V
    .registers 3
    .param p1, "val"    # J

    .line 59
    iput-wide p1, p0, Landroid/os/BatteryProperty;->mValueLong:J

    .line 60
    return-void
.end method

.method public blacklist setString(Ljava/lang/String;)V
    .registers 2
    .param p1, "val"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Landroid/os/BatteryProperty;->mValueString:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget-wide v0, p0, Landroid/os/BatteryProperty;->mValueLong:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-object v0, p0, Landroid/os/BatteryProperty;->mValueString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 81
    return-void
.end method
