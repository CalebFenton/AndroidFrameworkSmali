.class public final Landroid/bluetooth/le/AdvertiseSettings$Builder;
.super Ljava/lang/Object;
.source "AdvertiseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mConnectable:Z

.field private mMode:I

.field private mTimeoutMillis:I

.field private mTxPowerLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 159
    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    #@6
    .line 160
    const/4 v0, 0x2

    #@7
    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    #@9
    .line 161
    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    #@b
    .line 162
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    #@e
    .line 158
    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/AdvertiseSettings;
    .locals 6

    #@0
    .prologue
    .line 231
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings;

    #@2
    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    #@4
    iget v2, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    #@6
    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    #@8
    iget v4, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    #@a
    const/4 v5, 0x0

    #@b
    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(IIZILandroid/bluetooth/le/AdvertiseSettings;)V

    #@e
    return-object v0
.end method

.method public setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 3
    .param p1, "advertiseMode"    # I

    #@0
    .prologue
    .line 174
    if-ltz p1, :cond_0

    #@2
    .line 175
    const/4 v0, 0x2

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "unknown mode "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 178
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    #@21
    .line 179
    return-object p0
.end method

.method public setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 0
    .param p1, "connectable"    # Z

    #@0
    .prologue
    .line 208
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    #@2
    .line 209
    return-object p0
.end method

.method public setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 2
    .param p1, "timeoutMillis"    # I

    #@0
    .prologue
    .line 219
    if-ltz p1, :cond_0

    #@2
    const v0, 0x2bf20

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "timeoutMillis invalid (must be 0-180000 milliseconds)"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 223
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    #@12
    .line 224
    return-object p0
.end method

.method public setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 3
    .param p1, "txPowerLevel"    # I

    #@0
    .prologue
    .line 193
    if-ltz p1, :cond_0

    #@2
    .line 194
    const/4 v0, 0x3

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "unknown tx power level "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 197
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    #@21
    .line 198
    return-object p0
.end method
