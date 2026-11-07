.class public Landroid/os/BluetoothBatteryStats;
.super Ljava/lang/Object;
.source "BluetoothBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BluetoothBatteryStats$UidStats;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BluetoothBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mUidStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/BluetoothBatteryStats$UidStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 111
    new-instance v0, Landroid/os/BluetoothBatteryStats$1;

    invoke-direct {v0}, Landroid/os/BluetoothBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/BluetoothBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/BluetoothBatteryStats;->mUidStats:Ljava/util/List;

    .line 96
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1f

    .line 97
    iget-object v2, p0, Landroid/os/BluetoothBatteryStats;->mUidStats:Ljava/util/List;

    new-instance v3, Landroid/os/BluetoothBatteryStats$UidStats;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/os/BluetoothBatteryStats$UidStats;-><init>(Landroid/os/Parcel;Landroid/os/BluetoothBatteryStats-IA;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 99
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BluetoothBatteryStats$UidStats;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "uidStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BluetoothBatteryStats$UidStats;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/os/BluetoothBatteryStats;->mUidStats:Ljava/util/List;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUidStats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/BluetoothBatteryStats$UidStats;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Landroid/os/BluetoothBatteryStats;->mUidStats:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 103
    iget-object v0, p0, Landroid/os/BluetoothBatteryStats;->mUidStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 104
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 106
    iget-object v2, p0, Landroid/os/BluetoothBatteryStats;->mUidStats:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BluetoothBatteryStats$UidStats;

    .line 107
    .local v2, "stats":Landroid/os/BluetoothBatteryStats$UidStats;
    invoke-static {v2, p1}, Landroid/os/BluetoothBatteryStats$UidStats;->-$$Nest$mwriteToParcel(Landroid/os/BluetoothBatteryStats$UidStats;Landroid/os/Parcel;)V

    .line 105
    .end local v2    # "stats":Landroid/os/BluetoothBatteryStats$UidStats;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 109
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method
