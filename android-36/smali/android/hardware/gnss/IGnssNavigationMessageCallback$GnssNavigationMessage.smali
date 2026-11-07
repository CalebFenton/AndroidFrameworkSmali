.class public Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;
.super Ljava/lang/Object;
.source "IGnssNavigationMessageCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssNavigationMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssNavigationMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage$GnssNavigationMessageType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STATUS_PARITY_PASSED:I = 0x1

.field public static final blacklist STATUS_PARITY_REBUILT:I = 0x2

.field public static final blacklist STATUS_UNKNOWN:I


# instance fields
.field public blacklist data:[B

.field public blacklist messageId:I

.field public blacklist status:I

.field public blacklist submessageId:I

.field public blacklist svid:I

.field public blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 229
    new-instance v0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->svid:I

    .line 223
    iput v0, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->status:I

    .line 224
    iput v0, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->messageId:I

    .line 225
    iput v0, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->submessageId:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 259
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 261
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ca

    .line 262
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 275
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 278
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 262
    return-void

    .line 276
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->svid:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 275
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 278
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 264
    return-void

    .line 276
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->type:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 275
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 278
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 266
    return-void

    .line 276
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->status:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 275
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 278
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 268
    return-void

    .line 276
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->messageId:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 275
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 278
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 270
    return-void

    .line 276
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->submessageId:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 275
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 278
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 272
    return-void

    .line 276
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->data:[B
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_c8

    .line 275
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    .line 278
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 279
    nop

    .line 280
    return-void

    .line 276
    :cond_c2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 275
    :catchall_c8
    move-exception v2

    goto :goto_d2

    .line 261
    :cond_ca
    :try_start_ca
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_c8

    .line 275
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_d2
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_db

    .line 276
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_db
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 279
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 244
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v1, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->svid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget v1, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget v1, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->status:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget v1, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->messageId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget v1, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->submessageId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v1, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->data:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 252
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 253
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 255
    return-void
.end method
