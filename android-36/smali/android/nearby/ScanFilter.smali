.class public abstract Landroid/nearby/ScanFilter;
.super Ljava/lang/Object;
.source "ScanFilter.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mMaxPathLoss:I

.field private final blacklist mType:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "maxPathLoss"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroid/nearby/ScanFilter;->mType:I

    .line 59
    iput p2, p0, Landroid/nearby/ScanFilter;->mMaxPathLoss:I

    .line 60
    return-void
.end method

.method constructor blacklist <init>(ILandroid/os/Parcel;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroid/nearby/ScanFilter;->mType:I

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nearby/ScanFilter;->mMaxPathLoss:I

    .line 70
    return-void
.end method

.method public static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nearby/ScanFilter;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 38
    .local v0, "type":I
    packed-switch v0, :pswitch_data_2c

    .line 44
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected scan type (value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in parcel."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :pswitch_26
    invoke-static {p0}, Landroid/nearby/PresenceScanFilter;->createFromParcelBody(Landroid/os/Parcel;)Landroid/nearby/PresenceScanFilter;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public whitelist getMaxPathLoss()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/nearby/ScanFilter;->mMaxPathLoss:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/nearby/ScanFilter;->mType:I

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget v0, p0, Landroid/nearby/ScanFilter;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/nearby/ScanFilter;->mMaxPathLoss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return-void
.end method
