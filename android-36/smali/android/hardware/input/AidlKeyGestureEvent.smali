.class public Landroid/hardware/input/AidlKeyGestureEvent;
.super Ljava/lang/Object;
.source "AidlKeyGestureEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/AidlKeyGestureEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist action:I

.field public blacklist appLaunchCategory:Ljava/lang/String;

.field public blacklist appLaunchClassName:Ljava/lang/String;

.field public blacklist appLaunchPackageName:Ljava/lang/String;

.field public blacklist appLaunchRole:Ljava/lang/String;

.field public blacklist deviceId:I

.field public blacklist displayId:I

.field public blacklist flags:I

.field public blacklist gestureType:I

.field public blacklist keycodes:[I

.field public blacklist modifierState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/hardware/input/AidlKeyGestureEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/AidlKeyGestureEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/AidlKeyGestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    .line 15
    iput v0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    .line 16
    iput v0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    .line 17
    iput v0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    .line 18
    iput v0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    .line 19
    iput v0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "_mask":I
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 95
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 96
    :cond_8
    instance-of v2, p1, Landroid/hardware/input/AidlKeyGestureEvent;

    if-nez v2, :cond_d

    return v1

    .line 97
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/hardware/input/AidlKeyGestureEvent;

    .line 98
    .local v2, "that":Landroid/hardware/input/AidlKeyGestureEvent;
    iget v3, p0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 99
    :cond_23
    iget-object v3, p0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    iget-object v4, v2, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v1

    .line 100
    :cond_2e
    iget v3, p0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    return v1

    .line 101
    :cond_41
    iget v3, p0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    return v1

    .line 102
    :cond_54
    iget v3, p0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    return v1

    .line 103
    :cond_67
    iget v3, p0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    return v1

    .line 104
    :cond_7a
    iget v3, p0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    return v1

    .line 105
    :cond_8d
    iget-object v3, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    return v1

    .line 106
    :cond_98
    iget-object v3, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a3

    return v1

    .line 107
    :cond_a3
    iget-object v3, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ae

    return v1

    .line 108
    :cond_ae
    iget-object v3, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b9

    return v1

    .line 109
    :cond_b9
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 114
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/io/Serializable;

    iget v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    aput-object v2, v0, v1

    iget v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    iget-object v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 60
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_156

    .line 63
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 87
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 87
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 87
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 87
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 87
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 87
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 87
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 87
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 87
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 87
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12c
    .catchall {:try_start_122 .. :try_end_12c} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13e

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_138

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 87
    :cond_138
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_13e
    :try_start_13e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;
    :try_end_144
    .catchall {:try_start_13e .. :try_end_144} :catchall_154

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14e

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    nop

    .line 91
    return-void

    .line 87
    :cond_14e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :catchall_154
    move-exception v2

    goto :goto_15e

    .line 62
    :cond_156
    :try_start_156
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/input/AidlKeyGestureEvent;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_15e
    .catchall {:try_start_156 .. :try_end_15e} :catchall_154

    .line 86
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/input/AidlKeyGestureEvent;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_15e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_167

    .line 87
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_167
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 40
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 43
    iget v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 53
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void
.end method
