.class public final Landroid/hardware/ConsumerIrManager;
.super Ljava/lang/Object;
.source "ConsumerIrManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConsumerIr"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/hardware/IConsumerIrService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/hardware/ConsumerIrManager;->mPackageName:Ljava/lang/String;

    #@9
    .line 46
    const-string/jumbo v0, "consumer_ir"

    #@c
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    .line 45
    invoke-static {v0}, Landroid/hardware/IConsumerIrService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/IConsumerIrService;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    #@16
    .line 43
    return-void
.end method


# virtual methods
.method public getCarrierFrequencies()[Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 134
    iget-object v4, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 135
    const-string/jumbo v4, "ConsumerIr"

    #@8
    const-string/jumbo v5, "no consumer ir service."

    #@b
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 136
    return-object v8

    #@f
    .line 140
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    #@11
    invoke-interface {v4}, Landroid/hardware/IConsumerIrService;->getCarrierFrequencies()[I

    #@14
    move-result-object v1

    #@15
    .line 141
    .local v1, "freqs":[I
    array-length v4, v1

    #@16
    rem-int/lit8 v4, v4, 0x2

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 142
    const-string/jumbo v4, "ConsumerIr"

    #@1d
    const-string/jumbo v5, "consumer ir service returned an uneven number of frequencies."

    #@20
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 143
    return-object v8

    #@24
    .line 145
    :cond_1
    array-length v4, v1

    #@25
    div-int/lit8 v4, v4, 0x2

    #@27
    new-array v3, v4, [Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;

    #@29
    .line 147
    .local v3, "range":[Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    const/4 v2, 0x0

    #@2a
    .local v2, "i":I
    :goto_0
    array-length v4, v1

    #@2b
    if-ge v2, v4, :cond_2

    #@2d
    .line 148
    div-int/lit8 v4, v2, 0x2

    #@2f
    new-instance v5, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;

    #@31
    aget v6, v1, v2

    #@33
    add-int/lit8 v7, v2, 0x1

    #@35
    aget v7, v1, v7

    #@37
    invoke-direct {v5, p0, v6, v7}, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;-><init>(Landroid/hardware/ConsumerIrManager;II)V

    #@3a
    aput-object v5, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 147
    add-int/lit8 v2, v2, 0x2

    #@3e
    goto :goto_0

    #@3f
    .line 150
    :cond_2
    return-object v3

    #@40
    .line 151
    .end local v1    # "freqs":[I
    .end local v2    # "i":I
    .end local v3    # "range":[Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    :catch_0
    move-exception v0

    #@41
    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    return-object v8
.end method

.method public hasIrEmitter()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 55
    iget-object v1, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 56
    const-string/jumbo v1, "ConsumerIr"

    #@8
    const-string/jumbo v2, "no consumer ir service."

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 57
    return v3

    #@f
    .line 61
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    #@11
    invoke-interface {v1}, Landroid/hardware/IConsumerIrService;->hasIrEmitter()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 62
    :catch_0
    move-exception v0

    #@17
    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method public transmit(I[I)V
    .locals 3
    .param p1, "carrierFrequency"    # I
    .param p2, "pattern"    # [I

    #@0
    .prologue
    .line 79
    iget-object v1, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 80
    const-string/jumbo v1, "ConsumerIr"

    #@7
    const-string/jumbo v2, "failed to transmit; no consumer ir service."

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 81
    return-void

    #@e
    .line 85
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    #@10
    iget-object v2, p0, Landroid/hardware/ConsumerIrManager;->mPackageName:Ljava/lang/String;

    #@12
    invoke-interface {v1, v2, p1, p2}, Landroid/hardware/IConsumerIrService;->transmit(Ljava/lang/String;I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 78
    :goto_0
    return-void

    #@16
    .line 86
    :catch_0
    move-exception v0

    #@17
    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ConsumerIr"

    #@1a
    const-string/jumbo v2, "failed to transmit."

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0
.end method
