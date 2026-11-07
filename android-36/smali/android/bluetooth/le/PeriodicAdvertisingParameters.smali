.class public final Landroid/bluetooth/le/PeriodicAdvertisingParameters;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/PeriodicAdvertisingParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INTERVAL_MAX:I = 0xffef

.field private static final blacklist INTERVAL_MIN:I = 0x50


# instance fields
.field private final blacklist mIncludeTxPower:Z

.field private final blacklist mInterval:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$1;

    invoke-direct {v0}, Landroid/bluetooth/le/PeriodicAdvertisingParameters$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mIncludeTxPower:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mInterval:I

    .line 43
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/PeriodicAdvertisingParameters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(ZI)V
    .registers 3
    .param p1, "includeTxPower"    # Z
    .param p2, "interval"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mIncludeTxPower:Z

    .line 37
    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mInterval:I

    .line 38
    return-void
.end method

.method synthetic constructor blacklist <init>(ZILandroid/bluetooth/le/PeriodicAdvertisingParameters-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/PeriodicAdvertisingParameters;-><init>(ZI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIncludeTxPower()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mIncludeTxPower:Z

    return v0
.end method

.method public whitelist getInterval()I
    .registers 2

    .line 55
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mInterval:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    iget-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mIncludeTxPower:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return-void
.end method
