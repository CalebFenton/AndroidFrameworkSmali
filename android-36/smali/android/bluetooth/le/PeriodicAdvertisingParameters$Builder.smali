.class public final Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/PeriodicAdvertisingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIncludeTxPower:Z

.field private blacklist mInterval:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->mIncludeTxPower:Z

    .line 84
    const v0, 0xffef

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->mInterval:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .registers 5

    .line 110
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    iget-boolean v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->mIncludeTxPower:Z

    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->mInterval:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/le/PeriodicAdvertisingParameters;-><init>(ZILandroid/bluetooth/le/PeriodicAdvertisingParameters-IA;)V

    return-object v0
.end method

.method public whitelist setIncludeTxPower(Z)Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    .registers 2
    .param p1, "includeTxPower"    # Z

    .line 88
    iput-boolean p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->mIncludeTxPower:Z

    .line 89
    return-object p0
.end method

.method public whitelist setInterval(I)Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    .registers 4
    .param p1, "interval"    # I

    .line 100
    const/16 v0, 0x50

    if-lt p1, v0, :cond_c

    const v0, 0xffef

    if-gt p1, v0, :cond_c

    .line 104
    iput p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->mInterval:I

    .line 105
    return-object p0

    .line 101
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid interval (must be 80-65519)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
