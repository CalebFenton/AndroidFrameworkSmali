.class public Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;
.super Ljava/lang/Object;
.source "ChannelMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/ChannelMessage$ChannelMessageContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionModeSetter"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist enabled:Z

.field public blacklist modeInt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 297
    new-instance v0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter$1;

    invoke-direct {v0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter$1;-><init>()V

    sput-object v0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;->enabled:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 323
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 325
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5a

    .line 326
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_58

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 331
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 334
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 326
    return-void

    .line 332
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;->modeInt:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_58

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 331
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 334
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 328
    return-void

    .line 332
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;->enabled:Z
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_58

    .line 331
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_52

    .line 334
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 335
    nop

    .line 336
    return-void

    .line 332
    :cond_52
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    :catchall_58
    move-exception v2

    goto :goto_62

    .line 325
    :cond_5a
    :try_start_5a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_58

    .line 331
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_62
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6b

    .line 332
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 334
    :cond_6b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 335
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 312
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget v1, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;->modeInt:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-boolean v1, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;->enabled:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 316
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 317
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 319
    return-void
.end method
