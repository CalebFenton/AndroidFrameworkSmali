.class public Lgov/nist/javax/sip/SipStackImpl;
.super Lgov/nist/javax/sip/stack/SIPTransactionStack;
.source "SipStackImpl.java"

# interfaces
.implements Ljavax/sip/SipStack;
.implements Lgov/nist/javax/sip/SipStackExt;


# static fields
.field public static final greylist MAX_DATAGRAM_SIZE:Ljava/lang/Integer;


# instance fields
.field private greylist cipherSuites:[Ljava/lang/String;

.field greylist deliverTerminatedEventForAck:Z

.field greylist deliverUnsolicitedNotify:Z

.field private greylist enabledProtocols:[Ljava/lang/String;

.field private greylist eventScanner:Lgov/nist/javax/sip/EventScanner;

.field private greylist listeningPoints:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/ListeningPointImpl;",
            ">;"
        }
    .end annotation
.end field

.field greylist reEntrantListener:Z

.field greylist sipListener:Ljavax/sip/SipListener;

.field private greylist sipProviders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lgov/nist/javax/sip/SipProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private greylist stackSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 447
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/SipStackImpl;->MAX_DATAGRAM_SIZE:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor greylist <init>()V
    .registers 5

    .line 492
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;-><init>()V

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    .line 461
    iput-boolean v0, p0, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    .line 464
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    .line 469
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const-string v3, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    .line 481
    const-string v0, "SSLv2Hello"

    const-string v1, "TLSv1"

    const-string v2, "SSLv3"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    .line 493
    new-instance v0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    .line 495
    .local v0, "msgFactory":Lgov/nist/javax/sip/NistSipMessageFactoryImpl;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setMessageFactory(Lgov/nist/javax/sip/stack/StackMessageFactory;)V

    .line 496
    new-instance v1, Lgov/nist/javax/sip/EventScanner;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/EventScanner;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    .line 497
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    .line 498
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    .line 500
    return-void
.end method

.method public constructor greylist <init>(Ljava/util/Properties;)V
    .registers 37
    .param p1, "configurationProperties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .line 534
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Cound not instantiate server logger "

    const-string v4, "Cound not instantiate stack logger "

    const-string v5, "- check that it is present on the classpath and that there is a no-args constructor defined"

    invoke-direct {v1}, Lgov/nist/javax/sip/SipStackImpl;-><init>()V

    .line 535
    nop

    .line 536
    const-string v0, "javax.sip.IP_ADDRESS"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, "address":Ljava/lang/String;
    if-eqz v6, :cond_34

    .line 543
    :try_start_16
    invoke-super {v1, v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setHostAddress(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_34

    .line 546
    :catch_1a
    move-exception v0

    .line 547
    .local v0, "ex":Ljava/net/UnknownHostException;
    new-instance v3, Ljavax/sip/PeerUnavailableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 548
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    :cond_34
    :goto_34
    nop

    .line 551
    nop

    .line 552
    const-string v0, "javax.sip.STACK_NAME"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 553
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_7ce

    .line 555
    invoke-super {v1, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setStackName(Ljava/lang/String;)V

    .line 556
    nop

    .line 557
    const-string v0, "gov.nist.javax.sip.STACK_LOGGER"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "stackLoggerClassName":Ljava/lang/String;
    if-nez v0, :cond_4e

    .line 560
    const-string v0, "gov.nist.core.LogWriter"

    move-object v8, v0

    goto :goto_4f

    .line 559
    :cond_4e
    move-object v8, v0

    .line 562
    .end local v0    # "stackLoggerClassName":Ljava/lang/String;
    .local v8, "stackLoggerClassName":Ljava/lang/String;
    :goto_4f
    :try_start_4f
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 563
    .local v0, "stackLoggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Class;

    .line 564
    .local v10, "constructorArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    nop

    .line 565
    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 566
    .local v11, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v12, v9, [Ljava/lang/Object;

    .line 567
    .local v12, "args":[Ljava/lang/Object;
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgov/nist/core/StackLogger;

    .line 568
    .local v13, "stackLogger":Lgov/nist/core/StackLogger;
    invoke-interface {v13, v2}, Lgov/nist/core/StackLogger;->setStackProperties(Ljava/util/Properties;)V

    .line 569
    invoke-super {v1, v13}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setStackLogger(Lgov/nist/core/StackLogger;)V
    :try_end_69
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4f .. :try_end_69} :catch_7b0
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_69} :catch_792

    .line 582
    .end local v0    # "stackLoggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "constructorArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v12    # "args":[Ljava/lang/Object;
    .end local v13    # "stackLogger":Lgov/nist/core/StackLogger;
    nop

    .line 584
    nop

    .line 585
    const-string v0, "gov.nist.javax.sip.SERVER_LOGGER"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "serverLoggerClassName":Ljava/lang/String;
    if-nez v0, :cond_77

    .line 588
    const-string v0, "gov.nist.javax.sip.stack.ServerLog"

    move-object v4, v0

    goto :goto_78

    .line 587
    :cond_77
    move-object v4, v0

    .line 590
    .end local v0    # "serverLoggerClassName":Ljava/lang/String;
    .local v4, "serverLoggerClassName":Ljava/lang/String;
    :goto_78
    nop

    .line 591
    :try_start_79
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 592
    .local v0, "serverLoggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v10, v9, [Ljava/lang/Class;

    .line 593
    .restart local v10    # "constructorArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    nop

    .line 594
    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 595
    .restart local v11    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v12, v9, [Ljava/lang/Object;

    .line 596
    .restart local v12    # "args":[Ljava/lang/Object;
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgov/nist/core/ServerLogger;

    iput-object v13, v1, Lgov/nist/javax/sip/SipStackImpl;->serverLogger:Lgov/nist/core/ServerLogger;

    .line 597
    iget-object v13, v1, Lgov/nist/javax/sip/SipStackImpl;->serverLogger:Lgov/nist/core/ServerLogger;

    invoke-interface {v13, v1}, Lgov/nist/core/ServerLogger;->setSipStack(Ljavax/sip/SipStack;)V

    .line 598
    iget-object v13, v1, Lgov/nist/javax/sip/SipStackImpl;->serverLogger:Lgov/nist/core/ServerLogger;

    invoke-interface {v13, v2}, Lgov/nist/core/ServerLogger;->setStackProperties(Ljava/util/Properties;)V
    :try_end_98
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_79 .. :try_end_98} :catch_772
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_98} :catch_752

    .line 611
    .end local v0    # "serverLoggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "constructorArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v12    # "args":[Ljava/lang/Object;
    nop

    .line 615
    nop

    .line 616
    const-string v0, "javax.sip.OUTBOUND_PROXY"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->outboundProxy:Ljava/lang/String;

    .line 618
    new-instance v0, Lgov/nist/javax/sip/stack/DefaultRouter;

    iget-object v3, v1, Lgov/nist/javax/sip/SipStackImpl;->outboundProxy:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lgov/nist/javax/sip/stack/DefaultRouter;-><init>(Ljavax/sip/SipStack;Ljava/lang/String;)V

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    .line 621
    nop

    .line 622
    const-string v0, "javax.sip.ROUTER_PATH"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "routerPath":Ljava/lang/String;
    if-nez v0, :cond_b8

    .line 624
    const-string v0, "gov.nist.javax.sip.stack.DefaultRouter"

    move-object v3, v0

    goto :goto_b9

    .line 623
    :cond_b8
    move-object v3, v0

    .line 627
    .end local v0    # "routerPath":Ljava/lang/String;
    .local v3, "routerPath":Ljava/lang/String;
    :goto_b9
    :try_start_b9
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 628
    .local v0, "routerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/Class;

    .line 629
    .restart local v10    # "constructorArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v11, Ljavax/sip/SipStack;

    aput-object v11, v10, v9

    .line 630
    const-class v11, Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 631
    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 632
    .restart local v11    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v5, v5, [Ljava/lang/Object;

    .line 633
    .local v5, "args":[Ljava/lang/Object;
    aput-object v1, v5, v9

    .line 634
    iget-object v13, v1, Lgov/nist/javax/sip/SipStackImpl;->outboundProxy:Ljava/lang/String;

    aput-object v13, v5, v12

    .line 635
    invoke-virtual {v11, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/sip/address/Router;

    .line 636
    .local v13, "router":Ljavax/sip/address/Router;
    invoke-super {v1, v13}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setRouter(Ljavax/sip/address/Router;)V
    :try_end_de
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b9 .. :try_end_de} :catch_734
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_de} :catch_716

    .line 649
    .end local v0    # "routerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "args":[Ljava/lang/Object;
    .end local v10    # "constructorArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v13    # "router":Ljavax/sip/address/Router;
    nop

    .line 652
    nop

    .line 653
    const-string v0, "javax.sip.USE_ROUTER_FOR_ALL_URIS"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 654
    .local v5, "useRouterForAll":Ljava/lang/String;
    iput-boolean v12, v1, Lgov/nist/javax/sip/SipStackImpl;->useRouterForAll:Z

    .line 655
    const-string v10, "true"

    if-eqz v5, :cond_f2

    .line 656
    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->useRouterForAll:Z

    .line 663
    :cond_f2
    nop

    .line 664
    const-string v0, "javax.sip.EXTENSION_METHODS"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 666
    .local v11, "extensionMethods":Ljava/lang/String;
    if-eqz v11, :cond_159

    .line 667
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "st":Ljava/util/StringTokenizer;
    :goto_100
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_159

    .line 670
    const-string v13, ":"

    invoke-virtual {v0, v13}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 671
    .local v13, "em":Ljava/lang/String;
    const-string v14, "BYE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_140

    .line 672
    const-string v14, "INVITE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_140

    .line 673
    const-string v14, "SUBSCRIBE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_140

    .line 674
    const-string v14, "NOTIFY"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_140

    .line 675
    const-string v14, "ACK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_140

    .line 676
    const-string v14, "OPTIONS"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_140

    .line 680
    invoke-virtual {v1, v13}, Lgov/nist/javax/sip/SipStackImpl;->addExtensionMethod(Ljava/lang/String;)V

    .line 681
    .end local v13    # "em":Ljava/lang/String;
    goto :goto_100

    .line 677
    .restart local v13    # "em":Ljava/lang/String;
    :cond_140
    new-instance v9, Ljavax/sip/PeerUnavailableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad extension method "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 683
    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v13    # "em":Ljava/lang/String;
    :cond_159
    nop

    .line 684
    const-string v0, "javax.net.ssl.keyStore"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 685
    .local v13, "keyStoreFile":Ljava/lang/String;
    nop

    .line 686
    const-string v0, "javax.net.ssl.trustStore"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "trustStoreFile":Ljava/lang/String;
    if-eqz v13, :cond_193

    .line 688
    if-nez v0, :cond_16e

    .line 689
    move-object v0, v13

    move-object v14, v0

    goto :goto_16f

    .line 688
    :cond_16e
    move-object v14, v0

    .line 691
    .end local v0    # "trustStoreFile":Ljava/lang/String;
    .local v14, "trustStoreFile":Ljava/lang/String;
    :goto_16f
    nop

    .line 692
    const-string v0, "javax.net.ssl.keyStorePassword"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 694
    .local v15, "keyStorePassword":Ljava/lang/String;
    :try_start_176
    new-instance v0, Lgov/nist/core/net/SslNetworkLayer;

    .line 695
    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    const-string v12, "javax.net.ssl.keyStoreType"

    .line 697
    invoke-virtual {v2, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v14, v13, v9, v12}, Lgov/nist/core/net/SslNetworkLayer;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/lang/String;)V

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->networkLayer:Lgov/nist/core/net/NetworkLayer;
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_187} :catch_188

    .line 701
    goto :goto_194

    .line 698
    :catch_188
    move-exception v0

    .line 699
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    const-string v12, "could not instantiate SSL networking"

    invoke-interface {v9, v12, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_194

    .line 687
    .end local v14    # "trustStoreFile":Ljava/lang/String;
    .end local v15    # "keyStorePassword":Ljava/lang/String;
    .local v0, "trustStoreFile":Ljava/lang/String;
    :cond_193
    move-object v14, v0

    .line 705
    .end local v0    # "trustStoreFile":Ljava/lang/String;
    .restart local v14    # "trustStoreFile":Ljava/lang/String;
    :goto_194
    nop

    .line 706
    const-string v0, "javax.sip.AUTOMATIC_DIALOG_SUPPORT"

    const-string v9, "on"

    invoke-virtual {v2, v0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    .line 709
    nop

    .line 710
    const-string v0, "gov.nist.javax.sip.AUTOMATIC_DIALOG_ERROR_HANDLING"

    invoke-virtual {v2, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 711
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    .line 712
    iget-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    if-eqz v0, :cond_1bd

    .line 713
    const/4 v9, 0x1

    iput-boolean v9, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    .line 716
    :cond_1bd
    nop

    .line 717
    const-string v0, "gov.nist.javax.sip.MAX_LISTENER_RESPONSE_TIME"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1de

    .line 718
    nop

    .line 720
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    .line 721
    iget v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    if-lez v0, :cond_1d6

    goto :goto_1e1

    .line 722
    :cond_1d6
    new-instance v0, Ljavax/sip/PeerUnavailableException;

    const-string v9, "Bad configuration parameter gov.nist.javax.sip.MAX_LISTENER_RESPONSE_TIME : should be positive"

    invoke-direct {v0, v9}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_1de
    const/4 v0, -0x1

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    .line 730
    :goto_1e1
    nop

    .line 731
    const-string v0, "gov.nist.javax.sip.DELIVER_TERMINATED_EVENT_FOR_ACK"

    const-string v9, "false"

    invoke-virtual {v2, v0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    .line 735
    const-string v0, "gov.nist.javax.sip.DELIVER_UNSOLICITED_NOTIFY"

    invoke-virtual {v2, v0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    .line 739
    nop

    .line 740
    const-string v0, "javax.sip.FORKABLE_EVENTS"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 741
    .local v12, "forkedSubscriptions":Ljava/lang/String;
    if-eqz v12, :cond_220

    .line 742
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 743
    .local v0, "st":Ljava/util/StringTokenizer;
    :goto_20a
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_21e

    .line 744
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 745
    .local v15, "nextEvent":Ljava/lang/String;
    move-object/from16 v18, v0

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .local v18, "st":Ljava/util/StringTokenizer;
    iget-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->forkedEvents:Ljava/util/HashSet;

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 746
    .end local v15    # "nextEvent":Ljava/lang/String;
    move-object/from16 v0, v18

    goto :goto_20a

    .line 743
    .end local v18    # "st":Ljava/util/StringTokenizer;
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    :cond_21e
    move-object/from16 v18, v0

    .line 756
    .end local v0    # "st":Ljava/util/StringTokenizer;
    :cond_220
    const-string v15, "gov.nist.javax.sip.NETWORK_LAYER"

    .line 758
    .local v15, "NETWORK_LAYER_KEY":Ljava/lang/String;
    const-string v0, "gov.nist.javax.sip.NETWORK_LAYER"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_26d

    .line 759
    nop

    .line 760
    move-object/from16 v18, v3

    .end local v3    # "routerPath":Ljava/lang/String;
    .local v18, "routerPath":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "path":Ljava/lang/String;
    :try_start_231
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_235
    .catch Ljava/lang/Exception; {:try_start_231 .. :try_end_235} :catch_24f

    .line 763
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    const/4 v4, 0x0

    .end local v4    # "serverLoggerClassName":Ljava/lang/String;
    .end local v5    # "useRouterForAll":Ljava/lang/String;
    .local v19, "serverLoggerClassName":Ljava/lang/String;
    .local v20, "useRouterForAll":Ljava/lang/String;
    :try_start_23a
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 764
    .local v5, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v21, v0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v21, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/net/NetworkLayer;

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->networkLayer:Lgov/nist/core/net/NetworkLayer;
    :try_end_24c
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_24c} :catch_24d

    .line 769
    .end local v5    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v21    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_273

    .line 765
    :catch_24d
    move-exception v0

    goto :goto_254

    .end local v19    # "serverLoggerClassName":Ljava/lang/String;
    .end local v20    # "useRouterForAll":Ljava/lang/String;
    .restart local v4    # "serverLoggerClassName":Ljava/lang/String;
    .local v5, "useRouterForAll":Ljava/lang/String;
    :catch_24f
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 766
    .end local v4    # "serverLoggerClassName":Ljava/lang/String;
    .end local v5    # "useRouterForAll":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "serverLoggerClassName":Ljava/lang/String;
    .restart local v20    # "useRouterForAll":Ljava/lang/String;
    :goto_254
    new-instance v4, Ljavax/sip/PeerUnavailableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t find or instantiate NetworkLayer implementation: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v18    # "routerPath":Ljava/lang/String;
    .end local v19    # "serverLoggerClassName":Ljava/lang/String;
    .end local v20    # "useRouterForAll":Ljava/lang/String;
    .local v3, "routerPath":Ljava/lang/String;
    .restart local v4    # "serverLoggerClassName":Ljava/lang/String;
    .restart local v5    # "useRouterForAll":Ljava/lang/String;
    :cond_26d
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 772
    .end local v3    # "routerPath":Ljava/lang/String;
    .end local v4    # "serverLoggerClassName":Ljava/lang/String;
    .end local v5    # "useRouterForAll":Ljava/lang/String;
    .restart local v18    # "routerPath":Ljava/lang/String;
    .restart local v19    # "serverLoggerClassName":Ljava/lang/String;
    .restart local v20    # "useRouterForAll":Ljava/lang/String;
    :goto_273
    const-string v3, "gov.nist.javax.sip.ADDRESS_RESOLVER"

    .line 774
    .local v3, "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    const-string v0, "gov.nist.javax.sip.ADDRESS_RESOLVER"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ba

    .line 775
    nop

    .line 776
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 778
    .local v4, "path":Ljava/lang/String;
    :try_start_282
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_286
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_286} :catch_29e

    .line 779
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v21, v3

    const/4 v5, 0x0

    .end local v3    # "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    .local v21, "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    :try_start_289
    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 780
    .local v3, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v22, v0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v22, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v0, v5, [Ljava/lang/Object;

    .line 781
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/net/AddressResolver;

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->addressResolver:Lgov/nist/core/net/AddressResolver;
    :try_end_29b
    .catch Ljava/lang/Exception; {:try_start_289 .. :try_end_29b} :catch_29c

    .line 786
    .end local v3    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v22    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2bc

    .line 782
    :catch_29c
    move-exception v0

    goto :goto_2a1

    .end local v21    # "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    .local v3, "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    :catch_29e
    move-exception v0

    move-object/from16 v21, v3

    .line 783
    .end local v3    # "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21    # "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    :goto_2a1
    new-instance v3, Ljavax/sip/PeerUnavailableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t find or instantiate AddressResolver implementation: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 774
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "path":Ljava/lang/String;
    .end local v21    # "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    .restart local v3    # "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    :cond_2ba
    move-object/from16 v21, v3

    .line 789
    .end local v3    # "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    .restart local v21    # "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    :goto_2bc
    nop

    .line 790
    const-string v0, "gov.nist.javax.sip.MAX_CONNECTIONS"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 791
    .local v3, "maxConnections":Ljava/lang/String;
    if-eqz v3, :cond_2fb

    .line 793
    :try_start_2c5
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->maxConnections:I
    :try_end_2d0
    .catch Ljava/lang/NumberFormatException; {:try_start_2c5 .. :try_end_2d0} :catch_2d1

    .line 798
    goto :goto_2fb

    .line 794
    :catch_2d1
    move-exception v0

    .line 795
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2f9

    .line 796
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .local v22, "ex":Ljava/lang/NumberFormatException;
    const-string v0, "max connections - bad value "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 797
    invoke-virtual/range {v22 .. v22}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-interface {v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_2fb

    .line 795
    .end local v22    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_2f9
    move-object/from16 v22, v0

    .line 801
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_2fb
    :goto_2fb
    nop

    .line 802
    const-string v0, "gov.nist.javax.sip.THREAD_POOL_SIZE"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 803
    .local v4, "threadPoolSize":Ljava/lang/String;
    if-eqz v4, :cond_341

    .line 805
    :try_start_304
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->threadPoolSize:I
    :try_end_30f
    .catch Ljava/lang/NumberFormatException; {:try_start_304 .. :try_end_30f} :catch_312

    .line 810
    move-object/from16 v23, v3

    goto :goto_343

    .line 806
    :catch_312
    move-exception v0

    .line 807
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_33c

    .line 808
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    move-object/from16 v22, v0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v22    # "ex":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v3

    .end local v3    # "maxConnections":Ljava/lang/String;
    .local v23, "maxConnections":Ljava/lang/String;
    const-string v3, "thread pool size - bad value "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 809
    invoke-virtual/range {v22 .. v22}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    invoke-interface {v5, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_343

    .line 807
    .end local v22    # "ex":Ljava/lang/NumberFormatException;
    .end local v23    # "maxConnections":Ljava/lang/String;
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v3    # "maxConnections":Ljava/lang/String;
    :cond_33c
    move-object/from16 v22, v0

    move-object/from16 v23, v3

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v3    # "maxConnections":Ljava/lang/String;
    .restart local v22    # "ex":Ljava/lang/NumberFormatException;
    .restart local v23    # "maxConnections":Ljava/lang/String;
    goto :goto_343

    .line 803
    .end local v22    # "ex":Ljava/lang/NumberFormatException;
    .end local v23    # "maxConnections":Ljava/lang/String;
    .restart local v3    # "maxConnections":Ljava/lang/String;
    :cond_341
    move-object/from16 v23, v3

    .line 813
    .end local v3    # "maxConnections":Ljava/lang/String;
    .restart local v23    # "maxConnections":Ljava/lang/String;
    :goto_343
    nop

    .line 814
    const-string v0, "gov.nist.javax.sip.MAX_SERVER_TRANSACTIONS"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 815
    .local v3, "serverTransactionTableSize":Ljava/lang/String;
    const-string v5, "transaction table size - bad value "

    move-object/from16 v22, v4

    .end local v4    # "threadPoolSize":Ljava/lang/String;
    .local v22, "threadPoolSize":Ljava/lang/String;
    const/16 v4, 0x64

    if-eqz v3, :cond_39a

    .line 817
    :try_start_352
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->serverTransactionTableHighwaterMark:I

    .line 819
    iget v0, v1, Lgov/nist/javax/sip/SipStackImpl;->serverTransactionTableHighwaterMark:I

    mul-int/lit8 v0, v0, 0x50

    div-int/2addr v0, v4

    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->serverTransactionTableLowaterMark:I
    :try_end_364
    .catch Ljava/lang/NumberFormatException; {:try_start_352 .. :try_end_364} :catch_369

    .line 827
    move-object/from16 v26, v3

    move/from16 v24, v4

    goto :goto_3a1

    .line 821
    :catch_369
    move-exception v0

    .line 822
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v24

    if-eqz v24, :cond_393

    .line 823
    move/from16 v24, v4

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    move-object/from16 v25, v0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .local v25, "ex":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 826
    move-object/from16 v26, v3

    .end local v3    # "serverTransactionTableSize":Ljava/lang/String;
    .local v26, "serverTransactionTableSize":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    invoke-interface {v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_399

    .line 822
    .end local v25    # "ex":Ljava/lang/NumberFormatException;
    .end local v26    # "serverTransactionTableSize":Ljava/lang/String;
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v3    # "serverTransactionTableSize":Ljava/lang/String;
    :cond_393
    move-object/from16 v25, v0

    move-object/from16 v26, v3

    move/from16 v24, v4

    .line 827
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v3    # "serverTransactionTableSize":Ljava/lang/String;
    .restart local v26    # "serverTransactionTableSize":Ljava/lang/String;
    :goto_399
    goto :goto_3a1

    .line 831
    .end local v26    # "serverTransactionTableSize":Ljava/lang/String;
    .restart local v3    # "serverTransactionTableSize":Ljava/lang/String;
    :cond_39a
    move-object/from16 v26, v3

    move/from16 v24, v4

    .end local v3    # "serverTransactionTableSize":Ljava/lang/String;
    .restart local v26    # "serverTransactionTableSize":Ljava/lang/String;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lgov/nist/javax/sip/SipStackImpl;->unlimitedServerTransactionTableSize:Z

    .line 834
    :goto_3a1
    nop

    .line 835
    const-string v0, "gov.nist.javax.sip.MAX_CLIENT_TRANSACTIONS"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 836
    .local v3, "clientTransactionTableSize":Ljava/lang/String;
    if-eqz v3, :cond_3e8

    .line 838
    :try_start_3aa
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->clientTransactionTableHiwaterMark:I

    .line 840
    iget v0, v1, Lgov/nist/javax/sip/SipStackImpl;->clientTransactionTableLowaterMark:I

    mul-int/lit8 v0, v0, 0x50

    div-int/lit8 v0, v0, 0x64

    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->clientTransactionTableLowaterMark:I
    :try_end_3bd
    .catch Ljava/lang/NumberFormatException; {:try_start_3aa .. :try_end_3bd} :catch_3be

    goto :goto_3e6

    .line 842
    :catch_3be
    move-exception v0

    .line 843
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3e4

    .line 844
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    move-object/from16 v25, v0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v25    # "ex":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 847
    invoke-virtual/range {v25 .. v25}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-interface {v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_3e6

    .line 843
    .end local v25    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_3e4
    move-object/from16 v25, v0

    .line 848
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :goto_3e6
    const/4 v4, 0x1

    goto :goto_3eb

    .line 850
    :cond_3e8
    const/4 v4, 0x1

    iput-boolean v4, v1, Lgov/nist/javax/sip/SipStackImpl;->unlimitedClientTransactionTableSize:Z

    .line 853
    :goto_3eb
    iput-boolean v4, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    .line 854
    nop

    .line 855
    const-string v0, "gov.nist.javax.sip.CACHE_SERVER_CONNECTIONS"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 857
    .local v4, "flag":Ljava/lang/String;
    if-eqz v4, :cond_403

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_403

    .line 858
    const/4 v5, 0x0

    iput-boolean v5, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    .line 861
    :cond_403
    const/4 v5, 0x1

    iput-boolean v5, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    .line 862
    nop

    .line 863
    const-string v0, "gov.nist.javax.sip.CACHE_CLIENT_CONNECTIONS"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 865
    .local v17, "cacheflag":Ljava/lang/String;
    if-eqz v17, :cond_41c

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41c

    .line 866
    const/4 v5, 0x0

    iput-boolean v5, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    .line 869
    :cond_41c
    nop

    .line 870
    const-string v0, "gov.nist.javax.sip.READ_TIMEOUT"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 871
    .local v5, "readTimeout":Ljava/lang/String;
    if-eqz v5, :cond_486

    .line 874
    :try_start_425
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_429
    .catch Ljava/lang/NumberFormatException; {:try_start_425 .. :try_end_429} :catch_45b

    .line 875
    .local v0, "rt":I
    move-object/from16 v27, v3

    move/from16 v3, v24

    .end local v3    # "clientTransactionTableSize":Ljava/lang/String;
    .local v27, "clientTransactionTableSize":Ljava/lang/String;
    if-lt v0, v3, :cond_438

    .line 876
    :try_start_42f
    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I
    :try_end_431
    .catch Ljava/lang/NumberFormatException; {:try_start_42f .. :try_end_431} :catch_434

    move-object/from16 v28, v4

    goto :goto_454

    .line 880
    .end local v0    # "rt":I
    :catch_434
    move-exception v0

    move-object/from16 v28, v4

    goto :goto_460

    .line 878
    .restart local v0    # "rt":I
    :cond_438
    :try_start_438
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move/from16 v24, v0

    .end local v0    # "rt":I
    .local v24, "rt":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_441
    .catch Ljava/lang/NumberFormatException; {:try_start_438 .. :try_end_441} :catch_457

    move-object/from16 v28, v4

    .end local v4    # "flag":Ljava/lang/String;
    .local v28, "flag":Ljava/lang/String;
    :try_start_443
    const-string v4, "Value too low "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_454
    .catch Ljava/lang/NumberFormatException; {:try_start_443 .. :try_end_454} :catch_455

    .line 884
    .end local v24    # "rt":I
    :goto_454
    goto :goto_48a

    .line 880
    :catch_455
    move-exception v0

    goto :goto_460

    .end local v28    # "flag":Ljava/lang/String;
    .restart local v4    # "flag":Ljava/lang/String;
    :catch_457
    move-exception v0

    move-object/from16 v28, v4

    .end local v4    # "flag":Ljava/lang/String;
    .restart local v28    # "flag":Ljava/lang/String;
    goto :goto_460

    .end local v27    # "clientTransactionTableSize":Ljava/lang/String;
    .end local v28    # "flag":Ljava/lang/String;
    .restart local v3    # "clientTransactionTableSize":Ljava/lang/String;
    .restart local v4    # "flag":Ljava/lang/String;
    :catch_45b
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    .line 882
    .end local v3    # "clientTransactionTableSize":Ljava/lang/String;
    .end local v4    # "flag":Ljava/lang/String;
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    .restart local v27    # "clientTransactionTableSize":Ljava/lang/String;
    .restart local v28    # "flag":Ljava/lang/String;
    :goto_460
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_483

    .line 883
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v0

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .local v24, "nfe":Ljava/lang/NumberFormatException;
    const-string v0, "Bad read timeout "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_48a

    .line 882
    .end local v24    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_483
    move-object/from16 v24, v0

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v24    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_48a

    .line 871
    .end local v24    # "nfe":Ljava/lang/NumberFormatException;
    .end local v27    # "clientTransactionTableSize":Ljava/lang/String;
    .end local v28    # "flag":Ljava/lang/String;
    .restart local v3    # "clientTransactionTableSize":Ljava/lang/String;
    .restart local v4    # "flag":Ljava/lang/String;
    :cond_486
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    .line 889
    .end local v3    # "clientTransactionTableSize":Ljava/lang/String;
    .end local v4    # "flag":Ljava/lang/String;
    .restart local v27    # "clientTransactionTableSize":Ljava/lang/String;
    .restart local v28    # "flag":Ljava/lang/String;
    :goto_48a
    nop

    .line 890
    const-string v0, "gov.nist.javax.sip.STUN_SERVER"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 892
    .local v3, "stunAddr":Ljava/lang/String;
    if-eqz v3, :cond_49c

    .line 893
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v4, "Ignoring obsolete property gov.nist.javax.sip.STUN_SERVER"

    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 897
    :cond_49c
    nop

    .line 898
    const-string v0, "gov.nist.javax.sip.MAX_MESSAGE_SIZE"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 901
    .local v4, "maxMsgSize":Ljava/lang/String;
    if-eqz v4, :cond_4bf

    .line 902
    :try_start_4a5
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I

    .line 903
    iget v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I
    :try_end_4b2
    .catch Ljava/lang/NumberFormatException; {:try_start_4a5 .. :try_end_4b2} :catch_4bb

    move-object/from16 v24, v3

    .end local v3    # "stunAddr":Ljava/lang/String;
    .local v24, "stunAddr":Ljava/lang/String;
    const/16 v3, 0x1000

    if-ge v0, v3, :cond_4c4

    .line 904
    :try_start_4b8
    iput v3, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I

    goto :goto_4c4

    .line 909
    .end local v24    # "stunAddr":Ljava/lang/String;
    .restart local v3    # "stunAddr":Ljava/lang/String;
    :catch_4bb
    move-exception v0

    move-object/from16 v24, v3

    .end local v3    # "stunAddr":Ljava/lang/String;
    .restart local v24    # "stunAddr":Ljava/lang/String;
    goto :goto_4c8

    .line 907
    .end local v24    # "stunAddr":Ljava/lang/String;
    .restart local v3    # "stunAddr":Ljava/lang/String;
    :cond_4bf
    move-object/from16 v24, v3

    .end local v3    # "stunAddr":Ljava/lang/String;
    .restart local v24    # "stunAddr":Ljava/lang/String;
    const/4 v3, 0x0

    iput v3, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I
    :try_end_4c4
    .catch Ljava/lang/NumberFormatException; {:try_start_4b8 .. :try_end_4c4} :catch_4c7

    .line 913
    :cond_4c4
    :goto_4c4
    move-object/from16 v30, v4

    goto :goto_4f5

    .line 909
    :catch_4c7
    move-exception v0

    .line 910
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :goto_4c8
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4f1

    .line 911
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    move-object/from16 v29, v0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .local v29, "ex":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v4

    .end local v4    # "maxMsgSize":Ljava/lang/String;
    .local v30, "maxMsgSize":Ljava/lang/String;
    const-string v4, "maxMessageSize - bad value "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 912
    invoke-virtual/range {v29 .. v29}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_4f5

    .line 910
    .end local v29    # "ex":Ljava/lang/NumberFormatException;
    .end local v30    # "maxMsgSize":Ljava/lang/String;
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v4    # "maxMsgSize":Ljava/lang/String;
    :cond_4f1
    move-object/from16 v29, v0

    move-object/from16 v30, v4

    .line 915
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "maxMsgSize":Ljava/lang/String;
    .restart local v30    # "maxMsgSize":Ljava/lang/String;
    :goto_4f5
    nop

    .line 916
    const-string v0, "gov.nist.javax.sip.REENTRANT_LISTENER"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 917
    .local v3, "rel":Ljava/lang/String;
    if-eqz v3, :cond_506

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_506

    const/4 v0, 0x1

    goto :goto_507

    :cond_506
    const/4 v0, 0x0

    :goto_507
    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->reEntrantListener:Z

    .line 920
    nop

    .line 921
    const-string v0, "gov.nist.javax.sip.THREAD_AUDIT_INTERVAL_IN_MILLISECS"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 922
    .local v4, "interval":Ljava/lang/String;
    if-eqz v4, :cond_565

    .line 926
    :try_start_512
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v0

    .line 927
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v31
    :try_end_51e
    .catch Ljava/lang/NumberFormatException; {:try_start_512 .. :try_end_51e} :catch_52c

    const-wide/16 v33, 0x2

    move-object/from16 v29, v5

    move-object/from16 v25, v6

    .end local v5    # "readTimeout":Ljava/lang/String;
    .end local v6    # "address":Ljava/lang/String;
    .local v25, "address":Ljava/lang/String;
    .local v29, "readTimeout":Ljava/lang/String;
    :try_start_524
    div-long v5, v31, v33

    .line 926
    invoke-virtual {v0, v5, v6}, Lgov/nist/core/ThreadAuditor;->setPingIntervalInMillisecs(J)V
    :try_end_529
    .catch Ljava/lang/NumberFormatException; {:try_start_524 .. :try_end_529} :catch_52a

    .line 933
    goto :goto_569

    .line 928
    :catch_52a
    move-exception v0

    goto :goto_531

    .end local v25    # "address":Ljava/lang/String;
    .end local v29    # "readTimeout":Ljava/lang/String;
    .restart local v5    # "readTimeout":Ljava/lang/String;
    .restart local v6    # "address":Ljava/lang/String;
    :catch_52c
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v25, v6

    .line 929
    .end local v5    # "readTimeout":Ljava/lang/String;
    .end local v6    # "address":Ljava/lang/String;
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v25    # "address":Ljava/lang/String;
    .restart local v29    # "readTimeout":Ljava/lang/String;
    :goto_531
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_562

    .line 930
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .local v31, "ex":Ljava/lang/NumberFormatException;
    const-string v0, "THREAD_AUDIT_INTERVAL_IN_MILLISECS - bad value ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "] "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 932
    invoke-virtual/range {v31 .. v31}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-interface {v5, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_569

    .line 929
    .end local v31    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_562
    move-object/from16 v31, v0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v31    # "ex":Ljava/lang/NumberFormatException;
    goto :goto_569

    .line 922
    .end local v25    # "address":Ljava/lang/String;
    .end local v29    # "readTimeout":Ljava/lang/String;
    .end local v31    # "ex":Ljava/lang/NumberFormatException;
    .restart local v5    # "readTimeout":Ljava/lang/String;
    .restart local v6    # "address":Ljava/lang/String;
    :cond_565
    move-object/from16 v29, v5

    move-object/from16 v25, v6

    .line 937
    .end local v5    # "readTimeout":Ljava/lang/String;
    .end local v6    # "address":Ljava/lang/String;
    .restart local v25    # "address":Ljava/lang/String;
    .restart local v29    # "readTimeout":Ljava/lang/String;
    :goto_569
    nop

    .line 941
    const-string v0, "gov.nist.javax.sip.PASS_INVITE_NON_2XX_ACK_TO_LISTENER"

    invoke-virtual {v2, v0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 943
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 938
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/SipStackImpl;->setNon2XXAckPassedToListener(Z)V

    .line 945
    nop

    .line 946
    const-string v0, "gov.nist.javax.sip.AUTO_GENERATE_TIMESTAMP"

    invoke-virtual {v2, v0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 948
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->generateTimeStampHeader:Z

    .line 950
    nop

    .line 951
    const-string v0, "gov.nist.javax.sip.LOG_FACTORY"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 952
    .local v5, "messageLogFactoryClasspath":Ljava/lang/String;
    if-eqz v5, :cond_5c9

    .line 954
    :try_start_595
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_599
    .catch Ljava/lang/Exception; {:try_start_595 .. :try_end_599} :catch_5af

    .line 955
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v16, v3

    const/4 v6, 0x0

    .end local v3    # "rel":Ljava/lang/String;
    .local v16, "rel":Ljava/lang/String;
    :try_start_59c
    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 956
    .local v3, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v6, v6, [Ljava/lang/Object;

    .line 957
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/LogRecordFactory;

    iput-object v6, v1, Lgov/nist/javax/sip/SipStackImpl;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;
    :try_end_5ac
    .catch Ljava/lang/Exception; {:try_start_59c .. :try_end_5ac} :catch_5ad

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_5c8

    .line 958
    :catch_5ad
    move-exception v0

    goto :goto_5b2

    .end local v16    # "rel":Ljava/lang/String;
    .local v3, "rel":Ljava/lang/String;
    :catch_5af
    move-exception v0

    move-object/from16 v16, v3

    .line 959
    .end local v3    # "rel":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v16    # "rel":Ljava/lang/String;
    :goto_5b2
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_5c1

    .line 960
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    .line 961
    const-string v6, "Bad configuration value for LOG_FACTORY -- using default logger"

    invoke-interface {v3, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 963
    :cond_5c1
    new-instance v3, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;

    invoke-direct {v3}, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;-><init>()V

    iput-object v3, v1, Lgov/nist/javax/sip/SipStackImpl;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    .line 964
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5c8
    goto :goto_5d2

    .line 967
    .end local v16    # "rel":Ljava/lang/String;
    .restart local v3    # "rel":Ljava/lang/String;
    :cond_5c9
    move-object/from16 v16, v3

    .end local v3    # "rel":Ljava/lang/String;
    .restart local v16    # "rel":Ljava/lang/String;
    new-instance v0, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;

    invoke-direct {v0}, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;-><init>()V

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    .line 970
    :goto_5d2
    const-string v0, "gov.nist.javax.sip.COMPUTE_CONTENT_LENGTH_FROM_MESSAGE_BODY"

    invoke-virtual {v2, v0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 973
    .local v3, "computeContentLength":Z
    nop

    .line 974
    invoke-static {v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->setComputeContentLengthFromMessage(Z)V

    .line 976
    const-string v0, "gov.nist.javax.sip.TLS_CLIENT_PROTOCOLS"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 978
    .local v6, "tlsClientProtocols":Ljava/lang/String;
    if-eqz v6, :cond_60d

    .line 980
    new-instance v0, Ljava/util/StringTokenizer;

    move/from16 v31, v3

    .end local v3    # "computeContentLength":Z
    .local v31, "computeContentLength":Z
    const-string v3, " ,"

    invoke-direct {v0, v6, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 983
    .local v3, "protocols":[Ljava/lang/String;
    const/16 v32, 0x0

    .line 984
    .local v32, "i":I
    :goto_5f9
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v33

    if-eqz v33, :cond_60a

    .line 985
    add-int/lit8 v33, v32, 0x1

    .end local v32    # "i":I
    .local v33, "i":I
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v3, v32

    move/from16 v32, v33

    goto :goto_5f9

    .line 987
    .end local v33    # "i":I
    .restart local v32    # "i":I
    :cond_60a
    iput-object v3, v1, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    goto :goto_60f

    .line 978
    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v31    # "computeContentLength":Z
    .end local v32    # "i":I
    .local v3, "computeContentLength":Z
    :cond_60d
    move/from16 v31, v3

    .line 990
    .end local v3    # "computeContentLength":Z
    .restart local v31    # "computeContentLength":Z
    :goto_60f
    const-string v0, "gov.nist.javax.sip.RFC_2543_SUPPORT_ENABLED"

    invoke-virtual {v2, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    .line 994
    nop

    .line 995
    const-string v0, "gov.nist.javax.sip.CANCEL_CLIENT_TRANSACTION_CHECKED"

    invoke-virtual {v2, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    .line 998
    const-string v0, "gov.nist.javax.sip.LOG_STACK_TRACE_ON_MESSAGE_SEND"

    invoke-virtual {v2, v0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    .line 1001
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_654

    .line 1002
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "created Sip stack. Properties = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1004
    :cond_654
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "/TIMESTAMP"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1005
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_688

    .line 1006
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v9, v0

    .line 1010
    .local v9, "streamReader":Ljava/io/BufferedReader;
    :try_start_66b
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, "buildTimeStamp":Ljava/lang/String;
    if-eqz v3, :cond_674

    .line 1012
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1014
    :cond_674
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    invoke-interface {v10, v0}, Lgov/nist/core/StackLogger;->setBuildTimeStamp(Ljava/lang/String;)V
    :try_end_67b
    .catch Ljava/io/IOException; {:try_start_66b .. :try_end_67b} :catch_67c

    .line 1017
    .end local v0    # "buildTimeStamp":Ljava/lang/String;
    goto :goto_688

    .line 1015
    :catch_67c
    move-exception v0

    .line 1016
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    move-object/from16 v32, v0

    .end local v0    # "ex":Ljava/io/IOException;
    .local v32, "ex":Ljava/io/IOException;
    const-string v0, "Could not open build timestamp."

    invoke-interface {v10, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1020
    .end local v9    # "streamReader":Ljava/io/BufferedReader;
    .end local v32    # "ex":Ljava/io/IOException;
    :cond_688
    :goto_688
    sget-object v0, Lgov/nist/javax/sip/SipStackImpl;->MAX_DATAGRAM_SIZE:Ljava/lang/Integer;

    .line 1022
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    const-string v9, "gov.nist.javax.sip.RECEIVE_UDP_BUFFER_SIZE"

    invoke-virtual {v2, v9, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "bufferSize":Ljava/lang/String;
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1024
    .local v9, "bufferSizeInteger":I
    invoke-super {v1, v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setReceiveUdpBufferSize(I)V

    .line 1026
    sget-object v10, Lgov/nist/javax/sip/SipStackImpl;->MAX_DATAGRAM_SIZE:Ljava/lang/Integer;

    .line 1028
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1026
    move-object/from16 v32, v0

    .end local v0    # "bufferSize":Ljava/lang/String;
    .local v32, "bufferSize":Ljava/lang/String;
    const-string v0, "gov.nist.javax.sip.SEND_UDP_BUFFER_SIZE"

    invoke-virtual {v2, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1029
    .end local v32    # "bufferSize":Ljava/lang/String;
    .restart local v0    # "bufferSize":Ljava/lang/String;
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1030
    invoke-super {v1, v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setSendUdpBufferSize(I)V

    .line 1032
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1035
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1033
    move-object/from16 v32, v0

    .end local v0    # "bufferSize":Ljava/lang/String;
    .restart local v32    # "bufferSize":Ljava/lang/String;
    const-string v0, "gov.nist.javax.sip.CONGESTION_CONTROL_ENABLED"

    invoke-virtual {v2, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1036
    .local v0, "congetstionControlEnabled":Z
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    .line 1038
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1041
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1039
    move/from16 v33, v0

    .end local v0    # "congetstionControlEnabled":Z
    .local v33, "congetstionControlEnabled":Z
    const-string v0, "gov.nist.javax.sip.IS_BACK_TO_BACK_USER_AGENT"

    invoke-virtual {v2, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    .line 1042
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1044
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1043
    const-string v10, "gov.nist.javax.sip.REJECT_STRAY_RESPONSES"

    invoke-virtual {v2, v10, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->checkBranchId:Z

    .line 1046
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1047
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1046
    const-string v10, "gov.nist.javax.sip.DELIVER_TERMINATED_EVENT_FOR_NULL_DIALOG"

    invoke-virtual {v2, v10, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    .line 1050
    nop

    .line 1051
    const-string v0, "gov.nist.javax.sip.MAX_FORK_TIME_SECONDS"

    const-string v10, "0"

    invoke-virtual {v2, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    .line 1053
    return-void

    .line 644
    .end local v5    # "messageLogFactoryClasspath":Ljava/lang/String;
    .end local v9    # "bufferSizeInteger":I
    .end local v11    # "extensionMethods":Ljava/lang/String;
    .end local v12    # "forkedSubscriptions":Ljava/lang/String;
    .end local v13    # "keyStoreFile":Ljava/lang/String;
    .end local v14    # "trustStoreFile":Ljava/lang/String;
    .end local v15    # "NETWORK_LAYER_KEY":Ljava/lang/String;
    .end local v16    # "rel":Ljava/lang/String;
    .end local v17    # "cacheflag":Ljava/lang/String;
    .end local v18    # "routerPath":Ljava/lang/String;
    .end local v19    # "serverLoggerClassName":Ljava/lang/String;
    .end local v20    # "useRouterForAll":Ljava/lang/String;
    .end local v21    # "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    .end local v22    # "threadPoolSize":Ljava/lang/String;
    .end local v23    # "maxConnections":Ljava/lang/String;
    .end local v24    # "stunAddr":Ljava/lang/String;
    .end local v25    # "address":Ljava/lang/String;
    .end local v26    # "serverTransactionTableSize":Ljava/lang/String;
    .end local v27    # "clientTransactionTableSize":Ljava/lang/String;
    .end local v28    # "flag":Ljava/lang/String;
    .end local v29    # "readTimeout":Ljava/lang/String;
    .end local v30    # "maxMsgSize":Ljava/lang/String;
    .end local v31    # "computeContentLength":Z
    .end local v32    # "bufferSize":Ljava/lang/String;
    .end local v33    # "congetstionControlEnabled":Z
    .local v3, "routerPath":Ljava/lang/String;
    .local v4, "serverLoggerClassName":Ljava/lang/String;
    .local v6, "address":Ljava/lang/String;
    :catch_716
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v25, v6

    .line 645
    .end local v3    # "routerPath":Ljava/lang/String;
    .end local v4    # "serverLoggerClassName":Ljava/lang/String;
    .end local v6    # "address":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v18    # "routerPath":Ljava/lang/String;
    .restart local v19    # "serverLoggerClassName":Ljava/lang/String;
    .restart local v25    # "address":Ljava/lang/String;
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    .line 646
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/lang/Exception;

    .line 645
    const-string v5, "could not instantiate router"

    invoke-interface {v3, v5, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 647
    new-instance v3, Ljavax/sip/PeerUnavailableException;

    const-string v4, "Could not instantiate router"

    invoke-direct {v3, v4, v0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 637
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v18    # "routerPath":Ljava/lang/String;
    .end local v19    # "serverLoggerClassName":Ljava/lang/String;
    .end local v25    # "address":Ljava/lang/String;
    .restart local v3    # "routerPath":Ljava/lang/String;
    .restart local v4    # "serverLoggerClassName":Ljava/lang/String;
    .restart local v6    # "address":Ljava/lang/String;
    :catch_734
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v25, v6

    .line 638
    .end local v3    # "routerPath":Ljava/lang/String;
    .end local v4    # "serverLoggerClassName":Ljava/lang/String;
    .end local v6    # "address":Ljava/lang/String;
    .local v0, "ex1":Ljava/lang/reflect/InvocationTargetException;
    .restart local v18    # "routerPath":Ljava/lang/String;
    .restart local v19    # "serverLoggerClassName":Ljava/lang/String;
    .restart local v25    # "address":Ljava/lang/String;
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    .line 641
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/lang/Exception;

    .line 639
    const-string v5, "could not instantiate router -- invocation target problem"

    invoke-interface {v3, v5, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 642
    new-instance v3, Ljavax/sip/PeerUnavailableException;

    const-string v4, "Cound not instantiate router - check constructor"

    invoke-direct {v3, v4, v0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 605
    .end local v0    # "ex1":Ljava/lang/reflect/InvocationTargetException;
    .end local v18    # "routerPath":Ljava/lang/String;
    .end local v19    # "serverLoggerClassName":Ljava/lang/String;
    .end local v25    # "address":Ljava/lang/String;
    .restart local v4    # "serverLoggerClassName":Ljava/lang/String;
    .restart local v6    # "address":Ljava/lang/String;
    :catch_752
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v25, v6

    .line 606
    .end local v4    # "serverLoggerClassName":Ljava/lang/String;
    .end local v6    # "address":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v19    # "serverLoggerClassName":Ljava/lang/String;
    .restart local v25    # "address":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 599
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v19    # "serverLoggerClassName":Ljava/lang/String;
    .end local v25    # "address":Ljava/lang/String;
    .restart local v4    # "serverLoggerClassName":Ljava/lang/String;
    .restart local v6    # "address":Ljava/lang/String;
    :catch_772
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v25, v6

    .line 600
    .end local v4    # "serverLoggerClassName":Ljava/lang/String;
    .end local v6    # "address":Ljava/lang/String;
    .local v0, "ex1":Ljava/lang/reflect/InvocationTargetException;
    .restart local v19    # "serverLoggerClassName":Ljava/lang/String;
    .restart local v25    # "address":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 576
    .end local v0    # "ex1":Ljava/lang/reflect/InvocationTargetException;
    .end local v19    # "serverLoggerClassName":Ljava/lang/String;
    .end local v25    # "address":Ljava/lang/String;
    .restart local v6    # "address":Ljava/lang/String;
    :catch_792
    move-exception v0

    move-object/from16 v25, v6

    .line 577
    .end local v6    # "address":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v25    # "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 570
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v25    # "address":Ljava/lang/String;
    .restart local v6    # "address":Ljava/lang/String;
    :catch_7b0
    move-exception v0

    move-object/from16 v25, v6

    .line 571
    .end local v6    # "address":Ljava/lang/String;
    .local v0, "ex1":Ljava/lang/reflect/InvocationTargetException;
    .restart local v25    # "address":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 554
    .end local v0    # "ex1":Ljava/lang/reflect/InvocationTargetException;
    .end local v8    # "stackLoggerClassName":Ljava/lang/String;
    .end local v25    # "address":Ljava/lang/String;
    .restart local v6    # "address":Ljava/lang/String;
    :cond_7ce
    new-instance v0, Ljavax/sip/PeerUnavailableException;

    const-string v3, "stack name is missing"

    invoke-direct {v0, v3}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist reInitialize()V
    .registers 2

    .line 506
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->reInit()V

    .line 507
    new-instance v0, Lgov/nist/javax/sip/EventScanner;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/EventScanner;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    .line 508
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    .line 509
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    .line 512
    return-void
.end method


# virtual methods
.method public greylist acquireSem()Z
    .registers 5

    .line 1483
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 1484
    :catch_b
    move-exception v0

    .line 1485
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    return v1
.end method

.method public greylist createListeningPoint(ILjava/lang/String;)Ljavax/sip/ListeningPoint;
    .registers 5
    .param p1, "port"    # I
    .param p2, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransportNotSupportedException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1264
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lgov/nist/javax/sip/SipStackImpl;->createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    return-object v0

    .line 1262
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stack does not have a default IP Address!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized greylist createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;
    .registers 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransportNotSupportedException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 1064
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1065
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createListeningPoint : address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1069
    .end local p0    # "this":Lgov/nist/javax/sip/SipStackImpl;
    :cond_35
    if-eqz p1, :cond_132

    .line 1072
    if-eqz p3, :cond_12a

    .line 1074
    if-lez p2, :cond_122

    .line 1077
    const-string v0, "UDP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "TLS"

    .line 1078
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "TCP"

    .line 1079
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "SCTP"

    .line 1080
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_75

    .line 1081
    :cond_5c
    new-instance v0, Ljavax/sip/TransportNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/TransportNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1085
    :cond_75
    :goto_75
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_81

    .line 1086
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipStackImpl;->toExit:Z

    .line 1087
    invoke-direct {p0}, Lgov/nist/javax/sip/SipStackImpl;->reInitialize()V

    .line 1090
    :cond_81
    invoke-static {p1, p2, p3}, Lgov/nist/javax/sip/ListeningPointImpl;->makeKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/ListeningPointImpl;
    :try_end_8d
    .catchall {:try_start_1 .. :try_end_8d} :catchall_13a

    .line 1093
    .local v1, "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    if-eqz v1, :cond_91

    .line 1094
    monitor-exit p0

    return-object v1

    .line 1097
    .restart local p0    # "this":Lgov/nist/javax/sip/SipStackImpl;
    :cond_91
    :try_start_91
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 1098
    .local v2, "inetAddr":Ljava/net/InetAddress;
    nop

    .line 1099
    invoke-virtual {p0, v2, p2, p3}, Lgov/nist/javax/sip/SipStackImpl;->createMessageProcessor(Ljava/net/InetAddress;ILjava/lang/String;)Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v3

    .line 1100
    .local v3, "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 1101
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created Message Processor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " transport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1106
    .end local p0    # "this":Lgov/nist/javax/sip/SipStackImpl;
    :cond_ce
    new-instance v4, Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-direct {v4, p0, p2, p3}, Lgov/nist/javax/sip/ListeningPointImpl;-><init>(Ljavax/sip/SipStack;ILjava/lang/String;)V

    move-object v1, v4

    .line 1107
    iput-object v3, v1, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 1108
    invoke-virtual {v3, v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->setListeningPoint(Lgov/nist/javax/sip/ListeningPointImpl;)V

    .line 1109
    iget-object v4, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->start()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_e1} :catch_e3
    .catchall {:try_start_91 .. :try_end_e1} :catchall_13a

    .line 1112
    monitor-exit p0

    return-object v1

    .line 1113
    .end local v2    # "inetAddr":Ljava/net/InetAddress;
    .end local v3    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :catch_e3
    move-exception v2

    .line 1114
    .local v2, "ex":Ljava/io/IOException;
    :try_start_e4
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_118

    .line 1115
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid argument address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1118
    :cond_118
    new-instance v3, Ljavax/sip/InvalidArgumentException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1075
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_122
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "bad port"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_12a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null transport"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1070
    :cond_132
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Address for listening point is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1063
    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "transport":Ljava/lang/String;
    :catchall_13a
    move-exception p1

    monitor-exit p0
    :try_end_13c
    .catchall {:try_start_e4 .. :try_end_13c} :catchall_13a

    throw p1
.end method

.method public greylist createSipProvider(Ljavax/sip/ListeningPoint;)Ljavax/sip/SipProvider;
    .registers 5
    .param p1, "listeningPoint"    # Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    .line 1130
    if-eqz p1, :cond_41

    .line 1132
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1133
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSipProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1135
    :cond_22
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 1136
    .local v0, "listeningPointImpl":Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v1, v0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    if-nez v1, :cond_39

    .line 1139
    new-instance v1, Lgov/nist/javax/sip/SipProviderImpl;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/SipProviderImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    .line 1141
    .local v1, "provider":Lgov/nist/javax/sip/SipProviderImpl;
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/SipProviderImpl;->setListeningPoint(Ljavax/sip/ListeningPoint;)V

    .line 1142
    iput-object v1, v0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 1143
    iget-object v2, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1144
    return-object v1

    .line 1137
    .end local v1    # "provider":Lgov/nist/javax/sip/SipProviderImpl;
    :cond_39
    new-instance v1, Ljavax/sip/ObjectInUseException;

    const-string v2, "Provider already attached!"

    invoke-direct {v1, v2}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1131
    .end local v0    # "listeningPointImpl":Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null listeningPoint"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist deleteListeningPoint(Ljavax/sip/ListeningPoint;)V
    .registers 5
    .param p1, "listeningPoint"    # Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    .line 1154
    if-eqz p1, :cond_14

    .line 1156
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 1158
    .local v0, "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v1, v0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-super {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    .line 1159
    invoke-virtual {v0}, Lgov/nist/javax/sip/ListeningPointImpl;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1160
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    return-void

    .line 1155
    .end local v0    # "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v1    # "key":Ljava/lang/String;
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null listeningPoint arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist deleteSipProvider(Ljavax/sip/SipProvider;)V
    .registers 5
    .param p1, "sipProvider"    # Ljavax/sip/SipProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    .line 1172
    if-eqz p1, :cond_2a

    .line 1174
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/SipProviderImpl;

    .line 1180
    .local v0, "sipProviderImpl":Lgov/nist/javax/sip/SipProviderImpl;
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v1

    if-nez v1, :cond_22

    .line 1185
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->removeListeningPoints()V

    .line 1188
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->stop()V

    .line 1189
    iget-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1190
    iget-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1191
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->stopStack()V

    .line 1193
    :cond_21
    return-void

    .line 1181
    :cond_22
    new-instance v1, Ljavax/sip/ObjectInUseException;

    const-string v2, "SipProvider still has an associated SipListener!"

    invoke-direct {v1, v2}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1173
    .end local v0    # "sipProviderImpl":Lgov/nist/javax/sip/SipProviderImpl;
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null provider arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 1249
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->stopStack()V

    .line 1250
    return-void
.end method

.method public greylist getAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    .registers 4
    .param p1, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .param p2, "headerFactory"    # Ljavax/sip/header/HeaderFactory;

    .line 1375
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;

    invoke-direct {v0, p0, p1, p2}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)V

    return-object v0
.end method

.method public greylist getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 1420
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 1453
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist getEventScanner()Lgov/nist/javax/sip/EventScanner;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1363
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    return-object v0
.end method

.method public greylist getIPAddress()Ljava/lang/String;
    .registers 2

    .line 1202
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getListeningPoints()Ljava/util/Iterator;
    .registers 2

    .line 1211
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLogRecordFactory()Lgov/nist/javax/sip/LogRecordFactory;
    .registers 2

    .line 1320
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    return-object v0
.end method

.method public greylist getSecureAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    .registers 4
    .param p1, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;
    .param p2, "headerFactory"    # Ljavax/sip/header/HeaderFactory;

    .line 1387
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;

    invoke-direct {v0, p0, p1, p2}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)V

    return-object v0
.end method

.method public greylist getSipListener()Ljavax/sip/SipListener;
    .registers 2

    .line 1311
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    return-object v0
.end method

.method public greylist getSipProviders()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lgov/nist/javax/sip/SipProviderImpl;",
            ">;"
        }
    .end annotation

    .line 1230
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getStackName()Ljava/lang/String;
    .registers 2

    .line 1239
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->stackName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist isAutomaticDialogErrorHandlingEnabled()Z
    .registers 2

    .line 1478
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    return v0
.end method

.method greylist isAutomaticDialogSupportEnabled()Z
    .registers 2

    .line 521
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    return v0
.end method

.method public greylist isBackToBackUserAgent()Z
    .registers 2

    .line 1474
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    return v0
.end method

.method public greylist isRetransmissionFilterActive()Z
    .registers 2

    .line 1221
    const/4 v0, 0x1

    return v0
.end method

.method public greylist releaseSem()V
    .registers 2

    .line 1490
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1491
    return-void
.end method

.method public greylist setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 2
    .param p1, "newCipherSuites"    # [Ljava/lang/String;

    .line 1411
    iput-object p1, p0, Lgov/nist/javax/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    .line 1412
    return-void
.end method

.method public greylist setEnabledProtocols([Ljava/lang/String;)V
    .registers 2
    .param p1, "newProtocols"    # [Ljava/lang/String;

    .line 1444
    iput-object p1, p0, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    .line 1445
    return-void
.end method

.method public greylist setIsBackToBackUserAgent(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 1464
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    .line 1465
    return-void
.end method

.method public greylist start()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ProviderDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    if-nez v0, :cond_b

    .line 1297
    new-instance v0, Lgov/nist/javax/sip/EventScanner;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/EventScanner;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    .line 1300
    :cond_b
    return-void
.end method

.method public greylist stop()V
    .registers 3

    .line 1273
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1274
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "stopStack -- stoppping the stack"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1276
    :cond_f
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->stopStack()V

    .line 1277
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    .line 1278
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    .line 1283
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    if-eqz v0, :cond_29

    .line 1284
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v0}, Lgov/nist/javax/sip/EventScanner;->forceStop()V

    .line 1285
    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    .line 1287
    return-void
.end method
