.class public Lcom/android/ims/ImsConfig;
.super Ljava/lang/Object;
.source "ImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsConfig$FeatureConstants;,
        Lcom/android/ims/ImsConfig$ConfigConstants;,
        Lcom/android/ims/ImsConfig$OperationStatusConstants;,
        Lcom/android/ims/ImsConfig$OperationValuesConstants;,
        Lcom/android/ims/ImsConfig$FeatureValueConstants;,
        Lcom/android/ims/ImsConfig$WfcModeFeatureValueConstants;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsConfig"


# instance fields
.field private DBG:Z

.field private mContext:Landroid/content/Context;

.field private final miConfig:Lcom/android/ims/internal/IImsConfig;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsConfig;Landroid/content/Context;)V
    .locals 2
    .param p1, "iconfig"    # Lcom/android/ims/internal/IImsConfig;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    #@6
    .line 278
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    const-string/jumbo v0, "ImsConfig"

    #@d
    const-string/jumbo v1, "ImsConfig creates"

    #@10
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 279
    :cond_0
    iput-object p1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    #@15
    .line 280
    iput-object p2, p0, Lcom/android/ims/ImsConfig;->mContext:Landroid/content/Context;

    #@17
    .line 277
    return-void
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 401
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 402
    const-string/jumbo v1, "ImsConfig"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "getFeatureValue: feature = "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, ", network ="

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 403
    const-string/jumbo v3, ", listener ="

    #@25
    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 406
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    #@36
    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsConfig;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 400
    return-void

    #@3a
    .line 407
    :catch_0
    move-exception v0

    #@3b
    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@3d
    const-string/jumbo v2, "getFeatureValue()"

    #@40
    .line 409
    const/16 v3, 0x83

    #@42
    .line 408
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@45
    throw v1
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 5
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    const-string/jumbo v1, "Unknown"

    #@3
    .line 319
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    #@5
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    .line 324
    iget-boolean v2, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    #@b
    if-eqz v2, :cond_0

    #@d
    const-string/jumbo v2, "ImsConfig"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "getProvisionedStringValue(): item = "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, ", ret ="

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 326
    :cond_0
    return-object v1

    #@33
    .line 320
    :catch_0
    move-exception v0

    #@34
    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@36
    const-string/jumbo v3, "getProvisionedStringValue()"

    #@39
    .line 322
    const/16 v4, 0x83

    #@3b
    .line 321
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@3e
    throw v2
.end method

.method public getProvisionedValue(I)I
    .locals 5
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    const/4 v1, 0x0

    #@1
    .line 296
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    #@3
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedValue(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v1

    #@7
    .line 301
    iget-boolean v2, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    const-string/jumbo v2, "ImsConfig"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "getProvisionedValue(): item = "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    const-string/jumbo v4, ", ret ="

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 303
    :cond_0
    return v1

    #@31
    .line 297
    :catch_0
    move-exception v0

    #@32
    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@34
    const-string/jumbo v3, "getValue()"

    #@37
    .line 299
    const/16 v4, 0x83

    #@39
    .line 298
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@3c
    throw v2
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    #@2
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsConfig;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 463
    return-void

    #@6
    .line 466
    :catch_0
    move-exception v0

    #@7
    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@9
    const-string/jumbo v2, "getVideoQuality()"

    #@c
    .line 468
    const/16 v3, 0x83

    #@e
    .line 467
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@11
    throw v1
.end method

.method public getVolteProvisioned()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    #@2
    invoke-interface {v1}, Lcom/android/ims/internal/IImsConfig;->getVolteProvisioned()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 449
    :catch_0
    move-exception v0

    #@8
    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@a
    const-string/jumbo v2, "getVolteProvisioned()"

    #@d
    .line 451
    const/16 v3, 0x83

    #@f
    .line 450
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@12
    throw v1
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 426
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 427
    const-string/jumbo v1, "ImsConfig"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "setFeatureValue: feature = "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, ", network ="

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 428
    const-string/jumbo v3, ", value ="

    #@25
    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 428
    const-string/jumbo v3, ", listener ="

    #@30
    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 431
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    #@41
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 425
    return-void

    #@45
    .line 432
    :catch_0
    move-exception v0

    #@46
    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@48
    const-string/jumbo v2, "setFeatureValue()"

    #@4b
    .line 434
    const/16 v3, 0x83

    #@4d
    .line 433
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@50
    throw v1
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 375
    const/4 v1, -0x1

    #@1
    .line 377
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    #@3
    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v1

    #@7
    .line 382
    iget-boolean v2, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 383
    const-string/jumbo v2, "ImsConfig"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "setProvisionedStringValue(): item = "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    .line 384
    const-string/jumbo v4, ", value ="

    #@21
    .line 383
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 386
    :cond_0
    return v1

    #@31
    .line 378
    :catch_0
    move-exception v0

    #@32
    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@34
    const-string/jumbo v3, "setProvisionedStringValue()"

    #@37
    .line 380
    const/16 v4, 0x83

    #@39
    .line 379
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@3c
    throw v2
.end method

.method public setProvisionedValue(II)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 343
    const/4 v1, -0x1

    #@1
    .line 344
    .local v1, "ret":I
    iget-boolean v2, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 345
    const-string/jumbo v2, "ImsConfig"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "setProvisionedValue(): item = "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    .line 346
    const-string/jumbo v4, "value = "

    #@1b
    .line 345
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 349
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    #@2c
    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    move-result v1

    #@30
    .line 354
    iget-boolean v2, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 355
    const-string/jumbo v2, "ImsConfig"

    #@37
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v4, "setProvisionedValue(): item = "

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    .line 356
    const-string/jumbo v4, " value = "

    #@4a
    .line 355
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    .line 356
    const-string/jumbo v4, " ret = "

    #@55
    .line 355
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 358
    :cond_1
    return v1

    #@65
    .line 350
    :catch_0
    move-exception v0

    #@66
    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    #@68
    const-string/jumbo v3, "setProvisionedValue()"

    #@6b
    .line 352
    const/16 v4, 0x83

    #@6d
    .line 351
    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@70
    throw v2
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "quality"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 481
    return-void

    #@6
    .line 484
    :catch_0
    move-exception v0

    #@7
    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@9
    const-string/jumbo v2, "setVideoQuality()"

    #@c
    .line 486
    const/16 v3, 0x83

    #@e
    .line 485
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@11
    throw v1
.end method
