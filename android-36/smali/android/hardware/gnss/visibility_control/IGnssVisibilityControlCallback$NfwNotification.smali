.class public Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
.super Ljava/lang/Object;
.source "IGnssVisibilityControlCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NfwNotification"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist inEmergencyMode:Z

.field public blacklist isCachedLocation:Z

.field public blacklist otherProtocolStackName:Ljava/lang/String;

.field public blacklist protocolStack:I

.field public blacklist proxyAppPackageName:Ljava/lang/String;

.field public blacklist requestor:I

.field public blacklist requestorId:Ljava/lang/String;

.field public blacklist responseType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 289
    new-instance v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification$1;

    invoke-direct {v0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->inEmergencyMode:Z

    .line 286
    iput-boolean v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->isCachedLocation:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 321
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 323
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_102

    .line 324
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 344
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 324
    return-void

    .line 342
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 325
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->proxyAppPackageName:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 344
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 326
    return-void

    .line 342
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->protocolStack:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 344
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 328
    return-void

    .line 342
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->otherProtocolStackName:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 344
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 330
    return-void

    .line 342
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->requestor:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 344
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 332
    return-void

    .line 342
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->requestorId:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 344
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 334
    return-void

    .line 342
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->responseType:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 344
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 336
    return-void

    .line 342
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->inEmergencyMode:Z

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 344
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 338
    return-void

    .line 342
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->isCachedLocation:Z
    :try_end_f0
    .catchall {:try_start_ea .. :try_end_f0} :catchall_100

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fa

    .line 344
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 345
    nop

    .line 346
    return-void

    .line 342
    :cond_fa
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 341
    :catchall_100
    move-exception v2

    goto :goto_10a

    .line 323
    :cond_102
    :try_start_102
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_10a
    .catchall {:try_start_102 .. :try_end_10a} :catchall_100

    .line 341
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_10a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_113

    .line 342
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 344
    :cond_113
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 345
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 304
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v1, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->proxyAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget v1, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->protocolStack:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-object v1, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->otherProtocolStackName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget v1, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->requestor:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-object v1, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget v1, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->responseType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-boolean v1, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->inEmergencyMode:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 312
    iget-boolean v1, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->isCachedLocation:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 314
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 315
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 317
    return-void
.end method
