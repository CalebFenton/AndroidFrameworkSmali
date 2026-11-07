.class public Landroid/system/virtualizationservice/InputDevice$MultiTouch;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiTouch"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/virtualizationservice/InputDevice$MultiTouch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist height:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist pfd:Landroid/os/ParcelFileDescriptor;

.field public blacklist width:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 652
    new-instance v0, Landroid/system/virtualizationservice/InputDevice$MultiTouch$1;

    invoke-direct {v0}, Landroid/system/virtualizationservice/InputDevice$MultiTouch$1;-><init>()V

    sput-object v0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    const/16 v0, 0x500

    iput v0, p0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->width:I

    .line 650
    const/16 v0, 0x438

    iput v0, p0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->height:I

    .line 651
    const-string v0, ""

    iput-object v0, p0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->name:Ljava/lang/String;

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 705
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 706
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 707
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 709
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 702
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 680
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 682
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_96

    .line 683
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_94

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 692
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 695
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 683
    return-void

    .line 693
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 684
    :cond_26
    :try_start_26
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_94

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 692
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 695
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 685
    return-void

    .line 693
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 686
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->width:I

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_94

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 692
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 695
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 687
    return-void

    .line 693
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 688
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->height:I

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_94

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 692
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 695
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 689
    return-void

    .line 693
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 690
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->name:Ljava/lang/String;
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_94

    .line 692
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8e

    .line 695
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 696
    nop

    .line 697
    return-void

    .line 693
    :cond_8e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 692
    :catchall_94
    move-exception v2

    goto :goto_9e

    .line 682
    :cond_96
    :try_start_96
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/system/virtualizationservice/InputDevice$MultiTouch;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_9e
    .catchall {:try_start_96 .. :try_end_9e} :catchall_94

    .line 692
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/system/virtualizationservice/InputDevice$MultiTouch;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_9e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_a7

    .line 693
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 695
    :cond_a7
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 696
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 667
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget-object v1, p0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 669
    iget v1, p0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->width:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    iget v1, p0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->height:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    iget-object v1, p0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 673
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 674
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 676
    return-void
.end method
