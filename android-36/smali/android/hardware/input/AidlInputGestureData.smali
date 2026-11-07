.class public Landroid/hardware/input/AidlInputGestureData;
.super Ljava/lang/Object;
.source "AidlInputGestureData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/AidlInputGestureData$Trigger;,
        Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;,
        Landroid/hardware/input/AidlInputGestureData$KeyTrigger;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/AidlInputGestureData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist appLaunchCategory:Ljava/lang/String;

.field public blacklist appLaunchClassName:Ljava/lang/String;

.field public blacklist appLaunchPackageName:Ljava/lang/String;

.field public blacklist appLaunchRole:Ljava/lang/String;

.field public blacklist gestureType:I

.field public blacklist trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$1;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$1;-><init>()V

    sput-object v0, Landroid/hardware/input/AidlInputGestureData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 99
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 100
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 102
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-direct {p0, v1}, Landroid/hardware/input/AidlInputGestureData;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 95
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 74
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 75
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 76
    :cond_8
    instance-of v2, p1, Landroid/hardware/input/AidlInputGestureData;

    if-nez v2, :cond_d

    return v1

    .line 77
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/hardware/input/AidlInputGestureData;

    .line 78
    .local v2, "that":Landroid/hardware/input/AidlInputGestureData;
    iget-object v3, p0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    iget-object v4, v2, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    return v1

    .line 79
    :cond_1b
    iget v3, p0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v1

    .line 80
    :cond_2e
    iget-object v3, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    return v1

    .line 81
    :cond_39
    iget-object v3, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    return v1

    .line 82
    :cond_44
    iget-object v3, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    return v1

    .line 83
    :cond_4f
    iget-object v3, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    return v1

    .line 84
    :cond_5a
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 89
    iget-object v0, p0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    iget v1, p0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

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

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 50
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ce

    .line 53
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 67
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_26
    :try_start_26
    sget-object v2, Landroid/hardware/input/AidlInputGestureData$Trigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/AidlInputGestureData$Trigger;

    iput-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 67
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 67
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 67
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 67
    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b6

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b0

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 67
    :cond_b0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_b6
    :try_start_b6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;
    :try_end_bc
    .catchall {:try_start_b6 .. :try_end_bc} :catchall_cc

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c6

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    nop

    .line 71
    return-void

    .line 67
    :cond_c6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :catchall_cc
    move-exception v2

    goto :goto_d6

    .line 52
    :cond_ce
    :try_start_ce
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/input/AidlInputGestureData;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_cc

    .line 66
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/input/AidlInputGestureData;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_d6
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_df

    .line 67
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_df
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 35
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v1, p0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    iget v1, p0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v1, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 43
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void
.end method
