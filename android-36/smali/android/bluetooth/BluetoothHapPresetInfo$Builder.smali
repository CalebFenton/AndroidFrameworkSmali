.class public final Landroid/bluetooth/BluetoothHapPresetInfo$Builder;
.super Ljava/lang/Object;
.source "BluetoothHapPresetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHapPresetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsAvailable:Z

.field private blacklist mIsWritable:Z

.field private blacklist mPresetIndex:I

.field private blacklist mPresetName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetIndex:I

    .line 139
    const-string v1, ""

    iput-object v1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetName:Ljava/lang/String;

    .line 140
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsWritable:Z

    .line 141
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsAvailable:Z

    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 155
    if-ltz p1, :cond_1b

    .line 160
    iput p1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetIndex:I

    .line 161
    iput-object p2, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetName:Ljava/lang/String;

    .line 162
    return-void

    .line 156
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Preset index for HAP shall be a non-negative value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of the preset name for HAP shall be at least one character long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/bluetooth/BluetoothHapPresetInfo;
    .registers 6

    .line 192
    new-instance v0, Landroid/bluetooth/BluetoothHapPresetInfo;

    iget v1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetIndex:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetName:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsWritable:Z

    iget-boolean v4, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsAvailable:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothHapPresetInfo;-><init>(ILjava/lang/String;ZZ)V

    return-object v0
.end method

.method public blacklist setAvailable(Z)Landroid/bluetooth/BluetoothHapPresetInfo$Builder;
    .registers 2
    .param p1, "isAvailable"    # Z

    .line 182
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsAvailable:Z

    .line 183
    return-object p0
.end method

.method public blacklist setWritable(Z)Landroid/bluetooth/BluetoothHapPresetInfo$Builder;
    .registers 2
    .param p1, "isWritable"    # Z

    .line 171
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsWritable:Z

    .line 172
    return-object p0
.end method
