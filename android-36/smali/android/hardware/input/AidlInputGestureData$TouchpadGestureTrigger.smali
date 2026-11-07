.class public Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;
.super Ljava/lang/Object;
.source "AidlInputGestureData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/AidlInputGestureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchpadGestureTrigger"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist gestureType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 172
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger$1;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger$1;-><init>()V

    sput-object v0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "_mask":I
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 211
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 212
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 213
    :cond_8
    instance-of v2, p1, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    if-nez v2, :cond_d

    return v1

    .line 214
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    .line 215
    .local v2, "that":Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;
    iget v3, p0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 216
    :cond_23
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 221
    iget v0, p0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

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

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 197
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_3e

    .line 200
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_3c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 203
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 206
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 200
    return-void

    .line 204
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_3c

    .line 203
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    .line 206
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 207
    nop

    .line 208
    return-void

    .line 204
    :cond_36
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :catchall_3c
    move-exception v2

    goto :goto_46

    .line 199
    :cond_3e
    :try_start_3e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_3c

    .line 203
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_46
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_4f

    .line 204
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_4f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 207
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 187
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v1, p0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->gestureType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 190
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 191
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 193
    return-void
.end method
