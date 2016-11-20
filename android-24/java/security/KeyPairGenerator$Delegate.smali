.class final Ljava/security/KeyPairGenerator$Delegate;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Delegate"
.end annotation


# static fields
.field private static final I_NONE:I = 0x1

.field private static final I_PARAMS:I = 0x3

.field private static final I_SIZE:I = 0x2


# instance fields
.field private initKeySize:I

.field private initParams:Ljava/security/spec/AlgorithmParameterSpec;

.field private initRandom:Ljava/security/SecureRandom;

.field private initType:I

.field private final lock:Ljava/lang/Object;

.field private serviceIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private volatile spi:Ljava/security/KeyPairGeneratorSpi;


# direct methods
.method constructor <init>(Ljava/security/KeyPairGeneratorSpi;Ljava/lang/String;)V
    .locals 1
    .param p1, "spi"    # Ljava/security/KeyPairGeneratorSpi;
    .param p2, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 568
    invoke-direct {p0, p2}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    #@3
    .line 553
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->lock:Ljava/lang/Object;

    #@a
    .line 569
    iput-object p1, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    #@c
    .line 567
    return-void
.end method

.method constructor <init>(Lsun/security/jca/GetInstance$Instance;Ljava/util/Iterator;Ljava/lang/String;)V
    .locals 1
    .param p1, "instance"    # Lsun/security/jca/GetInstance$Instance;
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/jca/GetInstance$Instance;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/security/Provider$Service;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 574
    .local p2, "serviceIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    invoke-direct {p0, p3}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    #@3
    .line 553
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->lock:Ljava/lang/Object;

    #@a
    .line 575
    iget-object v0, p1, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@c
    check-cast v0, Ljava/security/KeyPairGeneratorSpi;

    #@e
    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    #@10
    .line 576
    iget-object v0, p1, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@12
    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->provider:Ljava/security/Provider;

    #@14
    .line 577
    iput-object p2, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    #@16
    .line 578
    const/4 v0, 0x1

    #@17
    iput v0, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    #@19
    .line 573
    return-void
.end method

.method private nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;
    .locals 10
    .param p1, "oldSpi"    # Ljava/security/KeyPairGeneratorSpi;
    .param p2, "reinit"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 589
    iget-object v6, p0, Ljava/security/KeyPairGenerator$Delegate;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v6

    #@4
    .line 592
    if-eqz p1, :cond_0

    #@6
    :try_start_0
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    #@8
    if-eq p1, v5, :cond_0

    #@a
    .line 593
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v6

    #@d
    return-object v5

    #@e
    .line 595
    :cond_0
    :try_start_1
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    if-nez v5, :cond_1

    #@12
    monitor-exit v6

    #@13
    .line 596
    return-object v9

    #@14
    .line 598
    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    #@16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_5

    #@1c
    .line 599
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    #@1e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/security/Provider$Service;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    .line 601
    .local v3, "s":Ljava/security/Provider$Service;
    const/4 v5, 0x0

    #@25
    :try_start_3
    invoke-virtual {v3, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    .line 603
    .local v2, "inst":Ljava/lang/Object;
    instance-of v5, v2, Ljava/security/KeyPairGeneratorSpi;

    #@2b
    if-eqz v5, :cond_1

    #@2d
    .line 606
    instance-of v5, v2, Ljava/security/KeyPairGenerator;

    #@2f
    if-nez v5, :cond_1

    #@31
    .line 609
    move-object v0, v2

    #@32
    check-cast v0, Ljava/security/KeyPairGeneratorSpi;

    #@34
    move-object v4, v0

    #@35
    .line 610
    .local v4, "spi":Ljava/security/KeyPairGeneratorSpi;
    if-eqz p2, :cond_2

    #@37
    .line 611
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    #@39
    const/4 v7, 0x2

    #@3a
    if-ne v5, v7, :cond_3

    #@3c
    .line 612
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initKeySize:I

    #@3e
    iget-object v7, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;

    #@40
    invoke-virtual {v4, v5, v7}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    #@43
    .line 620
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@46
    move-result-object v5

    #@47
    iput-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->provider:Ljava/security/Provider;

    #@49
    .line 621
    iput-object v4, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4b
    monitor-exit v6

    #@4c
    .line 622
    return-object v4

    #@4d
    .line 613
    :cond_3
    :try_start_4
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    #@4f
    const/4 v7, 0x3

    #@50
    if-ne v5, v7, :cond_4

    #@52
    .line 614
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    #@54
    iget-object v7, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;

    #@56
    invoke-virtual {v4, v5, v7}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@59
    goto :goto_1

    #@5a
    .line 623
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v4    # "spi":Ljava/security/KeyPairGeneratorSpi;
    :catch_0
    move-exception v1

    #@5b
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    #@5c
    .line 615
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "inst":Ljava/lang/Object;
    .restart local v4    # "spi":Ljava/security/KeyPairGeneratorSpi;
    :cond_4
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    #@5e
    const/4 v7, 0x1

    #@5f
    if-eq v5, v7, :cond_2

    #@61
    .line 616
    new-instance v5, Ljava/lang/AssertionError;

    #@63
    .line 617
    new-instance v7, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v8, "KeyPairGenerator initType: "

    #@6b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    iget v8, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    #@71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    .line 616
    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@7c
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7d
    .line 589
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "spi":Ljava/security/KeyPairGeneratorSpi;
    :catchall_0
    move-exception v5

    #@7e
    monitor-exit v6

    #@7f
    throw v5

    #@80
    .line 627
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator$Delegate;->disableFailover()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@83
    monitor-exit v6

    #@84
    .line 628
    return-object v9
.end method


# virtual methods
.method disableFailover()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 633
    iput-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    #@3
    .line 634
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    #@6
    .line 635
    iput-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    #@8
    .line 636
    iput-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;

    #@a
    .line 632
    return-void
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    #@0
    .prologue
    .line 698
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 699
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    #@6
    invoke-virtual {v3}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 701
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 702
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    #@e
    .line 705
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljava/security/KeyPairGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 706
    :catch_0
    move-exception v0

    #@14
    .line 707
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_2

    #@16
    .line 708
    move-object v1, v0

    #@17
    .line 710
    :cond_2
    const/4 v3, 0x1

    #@18
    invoke-direct {p0, v2, v3}, Ljava/security/KeyPairGenerator$Delegate;->nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;

    #@1b
    move-result-object v2

    #@1c
    .line 712
    if-nez v2, :cond_1

    #@1e
    .line 713
    throw v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 4
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 641
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 642
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    #@6
    invoke-virtual {v3, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    #@9
    .line 643
    return-void

    #@a
    .line 645
    :cond_0
    const/4 v1, 0x0

    #@b
    .line 646
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    #@d
    .line 649
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljava/security/KeyPairGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    #@10
    .line 650
    const/4 v3, 0x2

    #@11
    iput v3, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    #@13
    .line 651
    iput p1, p0, Ljava/security/KeyPairGenerator$Delegate;->initKeySize:I

    #@15
    .line 652
    const/4 v3, 0x0

    #@16
    iput-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    #@18
    .line 653
    iput-object p2, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 654
    return-void

    #@1b
    .line 655
    :catch_0
    move-exception v0

    #@1c
    .line 656
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_2

    #@1e
    .line 657
    move-object v1, v0

    #@1f
    .line 659
    :cond_2
    const/4 v3, 0x0

    #@20
    invoke-direct {p0, v2, v3}, Ljava/security/KeyPairGenerator$Delegate;->nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;

    #@23
    move-result-object v2

    #@24
    .line 661
    if-nez v2, :cond_1

    #@26
    .line 662
    throw v1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 668
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 669
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    #@7
    invoke-virtual {v3, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@a
    .line 670
    return-void

    #@b
    .line 672
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 673
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    #@e
    .line 676
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljava/security/KeyPairGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@11
    .line 677
    const/4 v3, 0x3

    #@12
    iput v3, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    #@14
    .line 678
    const/4 v3, 0x0

    #@15
    iput v3, p0, Ljava/security/KeyPairGenerator$Delegate;->initKeySize:I

    #@17
    .line 679
    iput-object p1, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    #@19
    .line 680
    iput-object p2, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 681
    return-void

    #@1c
    .line 682
    :catch_0
    move-exception v0

    #@1d
    .line 683
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    #@1f
    .line 684
    move-object v1, v0

    #@20
    .line 686
    :cond_2
    invoke-direct {p0, v2, v4}, Ljava/security/KeyPairGenerator$Delegate;->nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;

    #@23
    move-result-object v2

    #@24
    .line 688
    if-nez v2, :cond_1

    #@26
    .line 689
    instance-of v3, v1, Ljava/lang/RuntimeException;

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 690
    check-cast v1, Ljava/lang/RuntimeException;

    #@2c
    throw v1

    #@2d
    .line 693
    :cond_3
    check-cast v1, Ljava/security/InvalidAlgorithmParameterException;

    #@2f
    throw v1
.end method
