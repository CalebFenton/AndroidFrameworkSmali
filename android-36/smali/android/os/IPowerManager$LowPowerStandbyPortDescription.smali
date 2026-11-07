.class public Landroid/os/IPowerManager$LowPowerStandbyPortDescription;
.super Ljava/lang/Object;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LowPowerStandbyPortDescription"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/IPowerManager$LowPowerStandbyPortDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist localAddress:[B

.field public blacklist portMatcher:I

.field public blacklist portNumber:I

.field public blacklist protocol:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2826
    new-instance v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription$1;

    invoke-direct {v0}, Landroid/os/IPowerManager$LowPowerStandbyPortDescription$1;-><init>()V

    sput-object v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 2820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2822
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->protocol:I

    .line 2823
    iput v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portMatcher:I

    .line 2824
    iput v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portNumber:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2874
    const/4 v0, 0x0

    .line 2875
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 2853
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2854
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2856
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_92

    .line 2857
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 2866
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 2869
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2857
    return-void

    .line 2867
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2858
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->protocol:I

    .line 2859
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 2866
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 2869
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2859
    return-void

    .line 2867
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2860
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portMatcher:I

    .line 2861
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 2866
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 2869
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2861
    return-void

    .line 2867
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2862
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portNumber:I

    .line 2863
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 2866
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 2869
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2863
    return-void

    .line 2867
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2864
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->localAddress:[B
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_90

    .line 2866
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8a

    .line 2869
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2870
    nop

    .line 2871
    return-void

    .line 2867
    :cond_8a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2866
    :catchall_90
    move-exception v2

    goto :goto_9a

    .line 2856
    :cond_92
    :try_start_92
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/os/IPowerManager$LowPowerStandbyPortDescription;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_9a
    .catchall {:try_start_92 .. :try_end_9a} :catchall_90

    .line 2866
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/os/IPowerManager$LowPowerStandbyPortDescription;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_9a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_a3

    .line 2867
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2869
    :cond_a3
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2870
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 2840
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2841
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2842
    iget v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->protocol:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2843
    iget v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portMatcher:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2844
    iget v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portNumber:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2845
    iget-object v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->localAddress:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2846
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 2847
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2848
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2849
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2850
    return-void
.end method
