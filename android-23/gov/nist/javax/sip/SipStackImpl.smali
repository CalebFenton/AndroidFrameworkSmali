.class public Lgov/nist/javax/sip/SipStackImpl;
.super Lgov/nist/javax/sip/stack/SIPTransactionStack;
.source "SipStackImpl.java"

# interfaces
.implements Ljavax/sip/SipStack;
.implements Lgov/nist/javax/sip/SipStackExt;


# static fields
.field public static final MAX_DATAGRAM_SIZE:Ljava/lang/Integer;


# instance fields
.field private cipherSuites:[Ljava/lang/String;

.field deliverTerminatedEventForAck:Z

.field deliverUnsolicitedNotify:Z

.field private enabledProtocols:[Ljava/lang/String;

.field private eventScanner:Lgov/nist/javax/sip/EventScanner;

.field private listeningPoints:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/ListeningPointImpl;",
            ">;"
        }
    .end annotation
.end field

.field reEntrantListener:Z

.field sipListener:Ljavax/sip/SipListener;

.field private sipProviders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lgov/nist/javax/sip/SipProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private stackSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 447
    const/16 v0, 0x2000

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lgov/nist/javax/sip/SipStackImpl;->MAX_DATAGRAM_SIZE:Ljava/lang/Integer;

    #@8
    .line 435
    return-void
.end method

.method protected constructor <init>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 492
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;-><init>()V

    #@7
    .line 457
    iput-boolean v3, p0, Lgov/nist/javax/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    #@9
    .line 461
    iput-boolean v3, p0, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    #@b
    .line 464
    new-instance v1, Ljava/util/concurrent/Semaphore;

    #@d
    invoke-direct {v1, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    #@10
    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    #@12
    .line 469
    const/4 v1, 0x4

    #@13
    new-array v1, v1, [Ljava/lang/String;

    #@15
    .line 470
    const-string/jumbo v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    #@18
    aput-object v2, v1, v3

    #@1a
    .line 473
    const-string/jumbo v2, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    #@1d
    aput-object v2, v1, v4

    #@1f
    .line 477
    const-string/jumbo v2, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    #@22
    aput-object v2, v1, v5

    #@24
    .line 478
    const-string/jumbo v2, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    #@27
    aput-object v2, v1, v6

    #@29
    .line 469
    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    #@2b
    .line 481
    new-array v1, v6, [Ljava/lang/String;

    #@2d
    .line 482
    const-string/jumbo v2, "SSLv3"

    #@30
    aput-object v2, v1, v3

    #@32
    .line 483
    const-string/jumbo v2, "SSLv2Hello"

    #@35
    aput-object v2, v1, v4

    #@37
    .line 484
    const-string/jumbo v2, "TLSv1"

    #@3a
    aput-object v2, v1, v5

    #@3c
    .line 481
    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    #@3e
    .line 493
    new-instance v0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;

    #@40
    invoke-direct {v0, p0}, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    #@43
    .line 495
    .local v0, "msgFactory":Lgov/nist/javax/sip/NistSipMessageFactoryImpl;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setMessageFactory(Lgov/nist/javax/sip/stack/StackMessageFactory;)V

    #@46
    .line 496
    new-instance v1, Lgov/nist/javax/sip/EventScanner;

    #@48
    invoke-direct {v1, p0}, Lgov/nist/javax/sip/EventScanner;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    #@4b
    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    #@4d
    .line 497
    new-instance v1, Ljava/util/Hashtable;

    #@4f
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    #@52
    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    #@54
    .line 498
    new-instance v1, Ljava/util/LinkedList;

    #@56
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@59
    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    #@5b
    .line 491
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 70
    .param p1, "configurationProperties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    #@0
    .prologue
    .line 534
    invoke-direct/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;-><init>()V

    #@3
    .line 536
    const-string/jumbo v65, "javax.sip.IP_ADDRESS"

    #@6
    .line 535
    move-object/from16 v0, p1

    #@8
    move-object/from16 v1, v65

    #@a
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v8

    #@e
    .line 539
    .local v8, "address":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@10
    .line 543
    :try_start_0
    move-object/from16 v0, p0

    #@12
    invoke-super {v0, v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setHostAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 552
    :cond_0
    const-string/jumbo v65, "javax.sip.STACK_NAME"

    #@18
    .line 551
    move-object/from16 v0, p1

    #@1a
    move-object/from16 v1, v65

    #@1c
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v41

    #@20
    .line 553
    .local v41, "name":Ljava/lang/String;
    if-nez v41, :cond_1

    #@22
    .line 554
    new-instance v65, Ljavax/sip/PeerUnavailableException;

    #@24
    const-string/jumbo v66, "stack name is missing"

    #@27
    invoke-direct/range {v65 .. v66}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v65

    #@2b
    .line 546
    .end local v41    # "name":Ljava/lang/String;
    :catch_0
    move-exception v27

    #@2c
    .line 547
    .local v27, "ex":Ljava/net/UnknownHostException;
    new-instance v65, Ljavax/sip/PeerUnavailableException;

    #@2e
    new-instance v66, Ljava/lang/StringBuilder;

    #@30
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v67, "bad address "

    #@36
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v66

    #@3a
    move-object/from16 v0, v66

    #@3c
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v66

    #@40
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v66

    #@44
    invoke-direct/range {v65 .. v66}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    #@47
    throw v65

    #@48
    .line 555
    .end local v27    # "ex":Ljava/net/UnknownHostException;
    .restart local v41    # "name":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    #@4a
    move-object/from16 v1, v41

    #@4c
    invoke-super {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setStackName(Ljava/lang/String;)V

    #@4f
    .line 557
    const-string/jumbo v65, "gov.nist.javax.sip.STACK_LOGGER"

    #@52
    .line 556
    move-object/from16 v0, p1

    #@54
    move-object/from16 v1, v65

    #@56
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v58

    #@5a
    .line 559
    .local v58, "stackLoggerClassName":Ljava/lang/String;
    if-nez v58, :cond_2

    #@5c
    .line 560
    const-string/jumbo v58, "gov.nist.core.LogWriter"

    #@5f
    .line 562
    :cond_2
    :try_start_1
    invoke-static/range {v58 .. v58}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@62
    move-result-object v57

    #@63
    .line 563
    .local v57, "stackLoggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v65, 0x0

    #@65
    move/from16 v0, v65

    #@67
    new-array v0, v0, [Ljava/lang/Class;

    #@69
    move-object/from16 v20, v0

    #@6b
    .line 564
    .local v20, "constructorArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v57

    #@6d
    move-object/from16 v1, v20

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@72
    move-result-object v19

    #@73
    .line 566
    .local v19, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v65, 0x0

    #@75
    move/from16 v0, v65

    #@77
    new-array v9, v0, [Ljava/lang/Object;

    #@79
    .line 567
    .local v9, "args":[Ljava/lang/Object;
    move-object/from16 v0, v19

    #@7b
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    move-result-object v56

    #@7f
    check-cast v56, Lgov/nist/core/StackLogger;

    #@81
    .line 568
    .local v56, "stackLogger":Lgov/nist/core/StackLogger;
    move-object/from16 v0, v56

    #@83
    move-object/from16 v1, p1

    #@85
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->setStackProperties(Ljava/util/Properties;)V

    #@88
    .line 569
    move-object/from16 v0, p0

    #@8a
    move-object/from16 v1, v56

    #@8c
    invoke-super {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setStackLogger(Lgov/nist/core/StackLogger;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@8f
    .line 585
    const-string/jumbo v65, "gov.nist.javax.sip.SERVER_LOGGER"

    #@92
    .line 584
    move-object/from16 v0, p1

    #@94
    move-object/from16 v1, v65

    #@96
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@99
    move-result-object v53

    #@9a
    .line 587
    .local v53, "serverLoggerClassName":Ljava/lang/String;
    if-nez v53, :cond_3

    #@9c
    .line 588
    const-string/jumbo v53, "gov.nist.javax.sip.stack.ServerLog"

    #@9f
    .line 590
    :cond_3
    :try_start_2
    invoke-static/range {v53 .. v53}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@a2
    move-result-object v52

    #@a3
    .line 592
    .local v52, "serverLoggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v65, 0x0

    #@a5
    move/from16 v0, v65

    #@a7
    new-array v0, v0, [Ljava/lang/Class;

    #@a9
    move-object/from16 v20, v0

    #@ab
    .line 593
    move-object/from16 v0, v52

    #@ad
    move-object/from16 v1, v20

    #@af
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@b2
    move-result-object v19

    #@b3
    .line 595
    const/16 v65, 0x0

    #@b5
    move/from16 v0, v65

    #@b7
    new-array v9, v0, [Ljava/lang/Object;

    #@b9
    .line 596
    move-object/from16 v0, v19

    #@bb
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@be
    move-result-object v65

    #@bf
    check-cast v65, Lgov/nist/core/ServerLogger;

    #@c1
    move-object/from16 v0, v65

    #@c3
    move-object/from16 v1, p0

    #@c5
    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->serverLogger:Lgov/nist/core/ServerLogger;

    #@c7
    .line 597
    move-object/from16 v0, p0

    #@c9
    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->serverLogger:Lgov/nist/core/ServerLogger;

    #@cb
    move-object/from16 v65, v0

    #@cd
    move-object/from16 v0, v65

    #@cf
    move-object/from16 v1, p0

    #@d1
    invoke-interface {v0, v1}, Lgov/nist/core/ServerLogger;->setSipStack(Ljavax/sip/SipStack;)V

    #@d4
    .line 598
    move-object/from16 v0, p0

    #@d6
    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->serverLogger:Lgov/nist/core/ServerLogger;

    #@d8
    move-object/from16 v65, v0

    #@da
    move-object/from16 v0, v65

    #@dc
    move-object/from16 v1, p1

    #@de
    invoke-interface {v0, v1}, Lgov/nist/core/ServerLogger;->setStackProperties(Ljava/util/Properties;)V
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    #@e1
    .line 616
    const-string/jumbo v65, "javax.sip.OUTBOUND_PROXY"

    #@e4
    .line 615
    move-object/from16 v0, p1

    #@e6
    move-object/from16 v1, v65

    #@e8
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@eb
    move-result-object v65

    #@ec
    move-object/from16 v0, v65

    #@ee
    move-object/from16 v1, p0

    #@f0
    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->outboundProxy:Ljava/lang/String;

    #@f2
    .line 618
    new-instance v65, Lgov/nist/javax/sip/stack/DefaultRouter;

    #@f4
    move-object/from16 v0, p0

    #@f6
    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->outboundProxy:Ljava/lang/String;

    #@f8
    move-object/from16 v66, v0

    #@fa
    move-object/from16 v0, v65

    #@fc
    move-object/from16 v1, p0

    #@fe
    move-object/from16 v2, v66

    #@100
    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/stack/DefaultRouter;-><init>(Ljavax/sip/SipStack;Ljava/lang/String;)V

    #@103
    move-object/from16 v0, v65

    #@105
    move-object/from16 v1, p0

    #@107
    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    #@109
    .line 622
    const-string/jumbo v65, "javax.sip.ROUTER_PATH"

    #@10c
    .line 621
    move-object/from16 v0, p1

    #@10e
    move-object/from16 v1, v65

    #@110
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@113
    move-result-object v50

    #@114
    .line 623
    .local v50, "routerPath":Ljava/lang/String;
    if-nez v50, :cond_4

    #@116
    .line 624
    const-string/jumbo v50, "gov.nist.javax.sip.stack.DefaultRouter"

    #@119
    .line 627
    :cond_4
    :try_start_3
    invoke-static/range {v50 .. v50}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@11c
    move-result-object v49

    #@11d
    .line 628
    .local v49, "routerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v65, 0x2

    #@11f
    move/from16 v0, v65

    #@121
    new-array v0, v0, [Ljava/lang/Class;

    #@123
    move-object/from16 v20, v0

    #@125
    .line 629
    const-class v65, Ljavax/sip/SipStack;

    #@127
    const/16 v66, 0x0

    #@129
    aput-object v65, v20, v66

    #@12b
    .line 630
    const-class v65, Ljava/lang/String;

    #@12d
    const/16 v66, 0x1

    #@12f
    aput-object v65, v20, v66

    #@131
    .line 631
    move-object/from16 v0, v49

    #@133
    move-object/from16 v1, v20

    #@135
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@138
    move-result-object v19

    #@139
    .line 632
    const/16 v65, 0x2

    #@13b
    move/from16 v0, v65

    #@13d
    new-array v9, v0, [Ljava/lang/Object;

    #@13f
    .line 633
    const/16 v65, 0x0

    #@141
    aput-object p0, v9, v65

    #@143
    .line 634
    move-object/from16 v0, p0

    #@145
    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->outboundProxy:Ljava/lang/String;

    #@147
    move-object/from16 v65, v0

    #@149
    const/16 v66, 0x1

    #@14b
    aput-object v65, v9, v66

    #@14d
    .line 635
    move-object/from16 v0, v19

    #@14f
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@152
    move-result-object v48

    #@153
    check-cast v48, Ljavax/sip/address/Router;

    #@155
    .line 636
    .local v48, "router":Ljavax/sip/address/Router;
    move-object/from16 v0, p0

    #@157
    move-object/from16 v1, v48

    #@159
    invoke-super {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setRouter(Ljavax/sip/address/Router;)V
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    #@15c
    .line 653
    const-string/jumbo v65, "javax.sip.USE_ROUTER_FOR_ALL_URIS"

    #@15f
    .line 652
    move-object/from16 v0, p1

    #@161
    move-object/from16 v1, v65

    #@163
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@166
    move-result-object v64

    #@167
    .line 654
    .local v64, "useRouterForAll":Ljava/lang/String;
    const/16 v65, 0x1

    #@169
    move/from16 v0, v65

    #@16b
    move-object/from16 v1, p0

    #@16d
    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->useRouterForAll:Z

    #@16f
    .line 655
    if-eqz v64, :cond_5

    #@171
    .line 656
    const-string/jumbo v65, "true"

    #@174
    move-object/from16 v0, v65

    #@176
    move-object/from16 v1, v64

    #@178
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17b
    move-result v65

    #@17c
    move/from16 v0, v65

    #@17e
    move-object/from16 v1, p0

    #@180
    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->useRouterForAll:Z

    #@182
    .line 664
    :cond_5
    const-string/jumbo v65, "javax.sip.EXTENSION_METHODS"

    #@185
    .line 663
    move-object/from16 v0, p1

    #@187
    move-object/from16 v1, v65

    #@189
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@18c
    move-result-object v29

    #@18d
    .line 666
    .local v29, "extensionMethods":Ljava/lang/String;
    if-eqz v29, :cond_8

    #@18f
    .line 667
    new-instance v55, Ljava/util/StringTokenizer;

    #@191
    move-object/from16 v0, v55

    #@193
    move-object/from16 v1, v29

    #@195
    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    #@198
    .line 669
    .local v55, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual/range {v55 .. v55}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@19b
    move-result v65

    #@19c
    if-eqz v65, :cond_8

    #@19e
    .line 670
    const-string/jumbo v65, ":"

    #@1a1
    move-object/from16 v0, v55

    #@1a3
    move-object/from16 v1, v65

    #@1a5
    invoke-virtual {v0, v1}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    #@1a8
    move-result-object v23

    #@1a9
    .line 671
    .local v23, "em":Ljava/lang/String;
    const-string/jumbo v65, "BYE"

    #@1ac
    move-object/from16 v0, v23

    #@1ae
    move-object/from16 v1, v65

    #@1b0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b3
    move-result v65

    #@1b4
    if-nez v65, :cond_6

    #@1b6
    .line 672
    const-string/jumbo v65, "INVITE"

    #@1b9
    move-object/from16 v0, v23

    #@1bb
    move-object/from16 v1, v65

    #@1bd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c0
    move-result v65

    #@1c1
    .line 671
    if-nez v65, :cond_6

    #@1c3
    .line 673
    const-string/jumbo v65, "SUBSCRIBE"

    #@1c6
    move-object/from16 v0, v23

    #@1c8
    move-object/from16 v1, v65

    #@1ca
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1cd
    move-result v65

    #@1ce
    .line 671
    if-nez v65, :cond_6

    #@1d0
    .line 674
    const-string/jumbo v65, "NOTIFY"

    #@1d3
    move-object/from16 v0, v23

    #@1d5
    move-object/from16 v1, v65

    #@1d7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1da
    move-result v65

    #@1db
    .line 671
    if-nez v65, :cond_6

    #@1dd
    .line 675
    const-string/jumbo v65, "ACK"

    #@1e0
    move-object/from16 v0, v23

    #@1e2
    move-object/from16 v1, v65

    #@1e4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e7
    move-result v65

    #@1e8
    .line 671
    if-nez v65, :cond_6

    #@1ea
    .line 676
    const-string/jumbo v65, "OPTIONS"

    #@1ed
    move-object/from16 v0, v23

    #@1ef
    move-object/from16 v1, v65

    #@1f1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1f4
    move-result v65

    #@1f5
    .line 671
    if-eqz v65, :cond_7

    #@1f7
    .line 677
    :cond_6
    new-instance v65, Ljavax/sip/PeerUnavailableException;

    #@1f9
    new-instance v66, Ljava/lang/StringBuilder;

    #@1fb
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@1fe
    const-string/jumbo v67, "Bad extension method "

    #@201
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v66

    #@205
    move-object/from16 v0, v66

    #@207
    move-object/from16 v1, v23

    #@209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v66

    #@20d
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@210
    move-result-object v66

    #@211
    invoke-direct/range {v65 .. v66}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    #@214
    throw v65

    #@215
    .line 576
    .end local v9    # "args":[Ljava/lang/Object;
    .end local v19    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v20    # "constructorArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v23    # "em":Ljava/lang/String;
    .end local v29    # "extensionMethods":Ljava/lang/String;
    .end local v48    # "router":Ljavax/sip/address/Router;
    .end local v49    # "routerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v50    # "routerPath":Ljava/lang/String;
    .end local v52    # "serverLoggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v53    # "serverLoggerClassName":Ljava/lang/String;
    .end local v55    # "st":Ljava/util/StringTokenizer;
    .end local v56    # "stackLogger":Lgov/nist/core/StackLogger;
    .end local v57    # "stackLoggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v64    # "useRouterForAll":Ljava/lang/String;
    :catch_1
    move-exception v25

    #@216
    .line 577
    .local v25, "ex":Ljava/lang/Exception;
    new-instance v65, Ljava/lang/IllegalArgumentException;

    #@218
    .line 578
    new-instance v66, Ljava/lang/StringBuilder;

    #@21a
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@21d
    const-string/jumbo v67, "Cound not instantiate stack logger "

    #@220
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@223
    move-result-object v66

    #@224
    move-object/from16 v0, v66

    #@226
    move-object/from16 v1, v58

    #@228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v66

    #@22c
    .line 580
    const-string/jumbo v67, "- check that it is present on the classpath and that there is a no-args constructor defined"

    #@22f
    .line 578
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v66

    #@233
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@236
    move-result-object v66

    #@237
    .line 577
    move-object/from16 v0, v65

    #@239
    move-object/from16 v1, v66

    #@23b
    move-object/from16 v2, v25

    #@23d
    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@240
    throw v65

    #@241
    .line 570
    .end local v25    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v28

    #@242
    .line 571
    .local v28, "ex1":Ljava/lang/reflect/InvocationTargetException;
    new-instance v65, Ljava/lang/IllegalArgumentException;

    #@244
    .line 572
    new-instance v66, Ljava/lang/StringBuilder;

    #@246
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@249
    const-string/jumbo v67, "Cound not instantiate stack logger "

    #@24c
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v66

    #@250
    move-object/from16 v0, v66

    #@252
    move-object/from16 v1, v58

    #@254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v66

    #@258
    .line 574
    const-string/jumbo v67, "- check that it is present on the classpath and that there is a no-args constructor defined"

    #@25b
    .line 572
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25e
    move-result-object v66

    #@25f
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@262
    move-result-object v66

    #@263
    .line 571
    move-object/from16 v0, v65

    #@265
    move-object/from16 v1, v66

    #@267
    move-object/from16 v2, v28

    #@269
    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26c
    throw v65

    #@26d
    .line 605
    .end local v28    # "ex1":Ljava/lang/reflect/InvocationTargetException;
    .restart local v9    # "args":[Ljava/lang/Object;
    .restart local v19    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v20    # "constructorArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v53    # "serverLoggerClassName":Ljava/lang/String;
    .restart local v56    # "stackLogger":Lgov/nist/core/StackLogger;
    .restart local v57    # "stackLoggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v25

    #@26e
    .line 606
    .restart local v25    # "ex":Ljava/lang/Exception;
    new-instance v65, Ljava/lang/IllegalArgumentException;

    #@270
    .line 607
    new-instance v66, Ljava/lang/StringBuilder;

    #@272
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@275
    const-string/jumbo v67, "Cound not instantiate server logger "

    #@278
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v66

    #@27c
    move-object/from16 v0, v66

    #@27e
    move-object/from16 v1, v58

    #@280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@283
    move-result-object v66

    #@284
    .line 609
    const-string/jumbo v67, "- check that it is present on the classpath and that there is a no-args constructor defined"

    #@287
    .line 607
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v66

    #@28b
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28e
    move-result-object v66

    #@28f
    .line 606
    move-object/from16 v0, v65

    #@291
    move-object/from16 v1, v66

    #@293
    move-object/from16 v2, v25

    #@295
    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@298
    throw v65

    #@299
    .line 599
    .end local v25    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v28

    #@29a
    .line 600
    .restart local v28    # "ex1":Ljava/lang/reflect/InvocationTargetException;
    new-instance v65, Ljava/lang/IllegalArgumentException;

    #@29c
    .line 601
    new-instance v66, Ljava/lang/StringBuilder;

    #@29e
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@2a1
    const-string/jumbo v67, "Cound not instantiate server logger "

    #@2a4
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v66

    #@2a8
    move-object/from16 v0, v66

    #@2aa
    move-object/from16 v1, v58

    #@2ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v66

    #@2b0
    .line 603
    const-string/jumbo v67, "- check that it is present on the classpath and that there is a no-args constructor defined"

    #@2b3
    .line 601
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b6
    move-result-object v66

    #@2b7
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ba
    move-result-object v66

    #@2bb
    .line 600
    move-object/from16 v0, v65

    #@2bd
    move-object/from16 v1, v66

    #@2bf
    move-object/from16 v2, v28

    #@2c1
    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c4
    throw v65

    #@2c5
    .line 644
    .end local v28    # "ex1":Ljava/lang/reflect/InvocationTargetException;
    .restart local v50    # "routerPath":Ljava/lang/String;
    .restart local v52    # "serverLoggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_5
    move-exception v25

    #@2c6
    .line 645
    .restart local v25    # "ex":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2c9
    move-result-object v66

    #@2ca
    const-string/jumbo v67, "could not instantiate router"

    #@2cd
    .line 646
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    #@2d0
    move-result-object v65

    #@2d1
    check-cast v65, Ljava/lang/Exception;

    #@2d3
    .line 645
    move-object/from16 v0, v66

    #@2d5
    move-object/from16 v1, v67

    #@2d7
    move-object/from16 v2, v65

    #@2d9
    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@2dc
    .line 647
    new-instance v65, Ljavax/sip/PeerUnavailableException;

    #@2de
    const-string/jumbo v66, "Could not instantiate router"

    #@2e1
    move-object/from16 v0, v65

    #@2e3
    move-object/from16 v1, v66

    #@2e5
    move-object/from16 v2, v25

    #@2e7
    invoke-direct {v0, v1, v2}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2ea
    throw v65

    #@2eb
    .line 637
    .end local v25    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v28

    #@2ec
    .line 638
    .restart local v28    # "ex1":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2ef
    move-result-object v66

    #@2f0
    .line 640
    const-string/jumbo v67, "could not instantiate router -- invocation target problem"

    #@2f3
    .line 641
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@2f6
    move-result-object v65

    #@2f7
    check-cast v65, Ljava/lang/Exception;

    #@2f9
    .line 638
    move-object/from16 v0, v66

    #@2fb
    move-object/from16 v1, v67

    #@2fd
    move-object/from16 v2, v65

    #@2ff
    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@302
    .line 642
    new-instance v65, Ljavax/sip/PeerUnavailableException;

    #@304
    .line 643
    const-string/jumbo v66, "Cound not instantiate router - check constructor"

    #@307
    .line 642
    move-object/from16 v0, v65

    #@309
    move-object/from16 v1, v66

    #@30b
    move-object/from16 v2, v28

    #@30d
    invoke-direct {v0, v1, v2}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@310
    throw v65

    #@311
    .line 680
    .end local v28    # "ex1":Ljava/lang/reflect/InvocationTargetException;
    .restart local v23    # "em":Ljava/lang/String;
    .restart local v29    # "extensionMethods":Ljava/lang/String;
    .restart local v48    # "router":Ljavax/sip/address/Router;
    .restart local v49    # "routerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v55    # "st":Ljava/util/StringTokenizer;
    .restart local v64    # "useRouterForAll":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    #@313
    move-object/from16 v1, v23

    #@315
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addExtensionMethod(Ljava/lang/String;)V

    #@318
    goto/16 :goto_0

    #@31a
    .line 684
    .end local v23    # "em":Ljava/lang/String;
    .end local v55    # "st":Ljava/util/StringTokenizer;
    :cond_8
    const-string/jumbo v65, "javax.net.ssl.keyStore"

    #@31d
    .line 683
    move-object/from16 v0, p1

    #@31f
    move-object/from16 v1, v65

    #@321
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@324
    move-result-object v36

    #@325
    .line 686
    .local v36, "keyStoreFile":Ljava/lang/String;
    const-string/jumbo v65, "javax.net.ssl.trustStore"

    #@328
    .line 685
    move-object/from16 v0, p1

    #@32a
    move-object/from16 v1, v65

    #@32c
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@32f
    move-result-object v63

    #@330
    .line 687
    .local v63, "trustStoreFile":Ljava/lang/String;
    if-eqz v36, :cond_a

    #@332
    .line 688
    if-nez v63, :cond_9

    #@334
    .line 689
    move-object/from16 v63, v36

    #@336
    .line 692
    :cond_9
    const-string/jumbo v65, "javax.net.ssl.keyStorePassword"

    #@339
    .line 691
    move-object/from16 v0, p1

    #@33b
    move-object/from16 v1, v65

    #@33d
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@340
    move-result-object v37

    #@341
    .line 694
    .local v37, "keyStorePassword":Ljava/lang/String;
    :try_start_4
    new-instance v65, Lgov/nist/core/net/SslNetworkLayer;

    #@343
    .line 695
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->toCharArray()[C

    #@346
    move-result-object v66

    #@347
    .line 697
    const-string/jumbo v67, "javax.net.ssl.keyStoreType"

    #@34a
    .line 696
    move-object/from16 v0, p1

    #@34c
    move-object/from16 v1, v67

    #@34e
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@351
    move-result-object v67

    #@352
    .line 694
    move-object/from16 v0, v65

    #@354
    move-object/from16 v1, v63

    #@356
    move-object/from16 v2, v36

    #@358
    move-object/from16 v3, v66

    #@35a
    move-object/from16 v4, v67

    #@35c
    invoke-direct {v0, v1, v2, v3, v4}, Lgov/nist/core/net/SslNetworkLayer;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/lang/String;)V

    #@35f
    move-object/from16 v0, v65

    #@361
    move-object/from16 v1, p0

    #@363
    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->networkLayer:Lgov/nist/core/net/NetworkLayer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    #@365
    .line 706
    .end local v37    # "keyStorePassword":Ljava/lang/String;
    :cond_a
    :goto_1
    const-string/jumbo v65, "javax.sip.AUTOMATIC_DIALOG_SUPPORT"

    #@368
    const-string/jumbo v66, "on"

    #@36b
    .line 705
    move-object/from16 v0, p1

    #@36d
    move-object/from16 v1, v65

    #@36f
    move-object/from16 v2, v66

    #@371
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@374
    move-result-object v65

    #@375
    .line 707
    const-string/jumbo v66, "on"

    #@378
    .line 705
    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@37b
    move-result v65

    #@37c
    move/from16 v0, v65

    #@37e
    move-object/from16 v1, p0

    #@380
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    #@382
    .line 710
    const-string/jumbo v65, "gov.nist.javax.sip.AUTOMATIC_DIALOG_ERROR_HANDLING"

    #@385
    const-string/jumbo v66, "true"

    #@388
    .line 709
    move-object/from16 v0, p1

    #@38a
    move-object/from16 v1, v65

    #@38c
    move-object/from16 v2, v66

    #@38e
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@391
    move-result-object v65

    #@392
    .line 711
    sget-object v66, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@394
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    #@397
    move-result-object v66

    #@398
    .line 709
    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39b
    move-result v65

    #@39c
    move/from16 v0, v65

    #@39e
    move-object/from16 v1, p0

    #@3a0
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    #@3a2
    .line 712
    move-object/from16 v0, p0

    #@3a4
    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    #@3a6
    move/from16 v65, v0

    #@3a8
    if-eqz v65, :cond_b

    #@3aa
    .line 713
    const/16 v65, 0x1

    #@3ac
    move/from16 v0, v65

    #@3ae
    move-object/from16 v1, p0

    #@3b0
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    #@3b2
    .line 717
    :cond_b
    const-string/jumbo v65, "gov.nist.javax.sip.MAX_LISTENER_RESPONSE_TIME"

    #@3b5
    .line 716
    move-object/from16 v0, p1

    #@3b7
    move-object/from16 v1, v65

    #@3b9
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3bc
    move-result-object v65

    #@3bd
    if-eqz v65, :cond_c

    #@3bf
    .line 720
    const-string/jumbo v65, "gov.nist.javax.sip.MAX_LISTENER_RESPONSE_TIME"

    #@3c2
    .line 719
    move-object/from16 v0, p1

    #@3c4
    move-object/from16 v1, v65

    #@3c6
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3c9
    move-result-object v65

    #@3ca
    .line 718
    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3cd
    move-result v65

    #@3ce
    move/from16 v0, v65

    #@3d0
    move-object/from16 v1, p0

    #@3d2
    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    #@3d4
    .line 721
    move-object/from16 v0, p0

    #@3d6
    iget v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    #@3d8
    move/from16 v65, v0

    #@3da
    if-gtz v65, :cond_d

    #@3dc
    .line 722
    new-instance v65, Ljavax/sip/PeerUnavailableException;

    #@3de
    .line 723
    const-string/jumbo v66, "Bad configuration parameter gov.nist.javax.sip.MAX_LISTENER_RESPONSE_TIME : should be positive"

    #@3e1
    .line 722
    invoke-direct/range {v65 .. v66}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    #@3e4
    throw v65

    #@3e5
    .line 698
    .restart local v37    # "keyStorePassword":Ljava/lang/String;
    :catch_7
    move-exception v22

    #@3e6
    .line 699
    .local v22, "e1":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3e9
    move-result-object v65

    #@3ea
    .line 700
    const-string/jumbo v66, "could not instantiate SSL networking"

    #@3ed
    .line 699
    move-object/from16 v0, v65

    #@3ef
    move-object/from16 v1, v66

    #@3f1
    move-object/from16 v2, v22

    #@3f3
    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3f6
    goto/16 :goto_1

    #@3f8
    .line 725
    .end local v22    # "e1":Ljava/lang/Exception;
    .end local v37    # "keyStorePassword":Ljava/lang/String;
    :cond_c
    const/16 v65, -0x1

    #@3fa
    move/from16 v0, v65

    #@3fc
    move-object/from16 v1, p0

    #@3fe
    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    #@400
    .line 732
    :cond_d
    const-string/jumbo v65, "gov.nist.javax.sip.DELIVER_TERMINATED_EVENT_FOR_ACK"

    #@403
    .line 733
    const-string/jumbo v66, "false"

    #@406
    .line 730
    move-object/from16 v0, p1

    #@408
    move-object/from16 v1, v65

    #@40a
    move-object/from16 v2, v66

    #@40c
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40f
    move-result-object v65

    #@410
    .line 733
    const-string/jumbo v66, "true"

    #@413
    .line 730
    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@416
    move-result v65

    #@417
    move/from16 v0, v65

    #@419
    move-object/from16 v1, p0

    #@41b
    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    #@41d
    .line 736
    const-string/jumbo v65, "gov.nist.javax.sip.DELIVER_UNSOLICITED_NOTIFY"

    #@420
    const-string/jumbo v66, "false"

    #@423
    .line 735
    move-object/from16 v0, p1

    #@425
    move-object/from16 v1, v65

    #@427
    move-object/from16 v2, v66

    #@429
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@42c
    move-result-object v65

    #@42d
    .line 737
    const-string/jumbo v66, "true"

    #@430
    .line 735
    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@433
    move-result v65

    #@434
    move/from16 v0, v65

    #@436
    move-object/from16 v1, p0

    #@438
    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    #@43a
    .line 740
    const-string/jumbo v65, "javax.sip.FORKABLE_EVENTS"

    #@43d
    .line 739
    move-object/from16 v0, p1

    #@43f
    move-object/from16 v1, v65

    #@441
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@444
    move-result-object v31

    #@445
    .line 741
    .local v31, "forkedSubscriptions":Ljava/lang/String;
    if-eqz v31, :cond_e

    #@447
    .line 742
    new-instance v55, Ljava/util/StringTokenizer;

    #@449
    move-object/from16 v0, v55

    #@44b
    move-object/from16 v1, v31

    #@44d
    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    #@450
    .line 743
    .restart local v55    # "st":Ljava/util/StringTokenizer;
    :goto_2
    invoke-virtual/range {v55 .. v55}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@453
    move-result v65

    #@454
    if-eqz v65, :cond_e

    #@456
    .line 744
    invoke-virtual/range {v55 .. v55}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@459
    move-result-object v42

    #@45a
    .line 745
    .local v42, "nextEvent":Ljava/lang/String;
    move-object/from16 v0, p0

    #@45c
    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->forkedEvents:Ljava/util/HashSet;

    #@45e
    move-object/from16 v65, v0

    #@460
    move-object/from16 v0, v65

    #@462
    move-object/from16 v1, v42

    #@464
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@467
    goto :goto_2

    #@468
    .line 756
    .end local v42    # "nextEvent":Ljava/lang/String;
    .end local v55    # "st":Ljava/util/StringTokenizer;
    :cond_e
    const-string/jumbo v7, "gov.nist.javax.sip.NETWORK_LAYER"

    #@46b
    .line 758
    .local v7, "NETWORK_LAYER_KEY":Ljava/lang/String;
    const-string/jumbo v65, "gov.nist.javax.sip.NETWORK_LAYER"

    #@46e
    move-object/from16 v0, p1

    #@470
    move-object/from16 v1, v65

    #@472
    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    #@475
    move-result v65

    #@476
    if-eqz v65, :cond_f

    #@478
    .line 760
    const-string/jumbo v65, "gov.nist.javax.sip.NETWORK_LAYER"

    #@47b
    .line 759
    move-object/from16 v0, p1

    #@47d
    move-object/from16 v1, v65

    #@47f
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@482
    move-result-object v44

    #@483
    .line 762
    .local v44, "path":Ljava/lang/String;
    :try_start_5
    invoke-static/range {v44 .. v44}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@486
    move-result-object v15

    #@487
    .line 763
    .local v15, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v65, 0x0

    #@489
    move/from16 v0, v65

    #@48b
    new-array v0, v0, [Ljava/lang/Class;

    #@48d
    move-object/from16 v65, v0

    #@48f
    move-object/from16 v0, v65

    #@491
    invoke-virtual {v15, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@494
    move-result-object v13

    #@495
    .line 764
    .local v13, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v65, 0x0

    #@497
    move/from16 v0, v65

    #@499
    new-array v0, v0, [Ljava/lang/Object;

    #@49b
    move-object/from16 v65, v0

    #@49d
    move-object/from16 v0, v65

    #@49f
    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@4a2
    move-result-object v65

    #@4a3
    check-cast v65, Lgov/nist/core/net/NetworkLayer;

    #@4a5
    move-object/from16 v0, v65

    #@4a7
    move-object/from16 v1, p0

    #@4a9
    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->networkLayer:Lgov/nist/core/net/NetworkLayer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    #@4ab
    .line 772
    .end local v13    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v15    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v44    # "path":Ljava/lang/String;
    :cond_f
    const-string/jumbo v6, "gov.nist.javax.sip.ADDRESS_RESOLVER"

    #@4ae
    .line 774
    .local v6, "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    const-string/jumbo v65, "gov.nist.javax.sip.ADDRESS_RESOLVER"

    #@4b1
    move-object/from16 v0, p1

    #@4b3
    move-object/from16 v1, v65

    #@4b5
    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    #@4b8
    move-result v65

    #@4b9
    if-eqz v65, :cond_10

    #@4bb
    .line 776
    const-string/jumbo v65, "gov.nist.javax.sip.ADDRESS_RESOLVER"

    #@4be
    .line 775
    move-object/from16 v0, p1

    #@4c0
    move-object/from16 v1, v65

    #@4c2
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4c5
    move-result-object v44

    #@4c6
    .line 778
    .restart local v44    # "path":Ljava/lang/String;
    :try_start_6
    invoke-static/range {v44 .. v44}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@4c9
    move-result-object v15

    #@4ca
    .line 779
    .restart local v15    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v65, 0x0

    #@4cc
    move/from16 v0, v65

    #@4ce
    new-array v0, v0, [Ljava/lang/Class;

    #@4d0
    move-object/from16 v65, v0

    #@4d2
    move-object/from16 v0, v65

    #@4d4
    invoke-virtual {v15, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@4d7
    move-result-object v13

    #@4d8
    .line 781
    .restart local v13    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v65, 0x0

    #@4da
    move/from16 v0, v65

    #@4dc
    new-array v0, v0, [Ljava/lang/Object;

    #@4de
    move-object/from16 v65, v0

    #@4e0
    .line 780
    move-object/from16 v0, v65

    #@4e2
    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@4e5
    move-result-object v65

    #@4e6
    check-cast v65, Lgov/nist/core/net/AddressResolver;

    #@4e8
    move-object/from16 v0, v65

    #@4ea
    move-object/from16 v1, p0

    #@4ec
    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->addressResolver:Lgov/nist/core/net/AddressResolver;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    #@4ee
    .line 790
    .end local v13    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v15    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v44    # "path":Ljava/lang/String;
    :cond_10
    const-string/jumbo v65, "gov.nist.javax.sip.MAX_CONNECTIONS"

    #@4f1
    .line 789
    move-object/from16 v0, p1

    #@4f3
    move-object/from16 v1, v65

    #@4f5
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4f8
    move-result-object v38

    #@4f9
    .line 791
    .local v38, "maxConnections":Ljava/lang/String;
    if-eqz v38, :cond_11

    #@4fb
    .line 793
    :try_start_7
    new-instance v65, Ljava/lang/Integer;

    #@4fd
    move-object/from16 v0, v65

    #@4ff
    move-object/from16 v1, v38

    #@501
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    #@504
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Integer;->intValue()I

    #@507
    move-result v65

    #@508
    move/from16 v0, v65

    #@50a
    move-object/from16 v1, p0

    #@50c
    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->maxConnections:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_a

    #@50e
    .line 802
    :cond_11
    :goto_3
    const-string/jumbo v65, "gov.nist.javax.sip.THREAD_POOL_SIZE"

    #@511
    .line 801
    move-object/from16 v0, p1

    #@513
    move-object/from16 v1, v65

    #@515
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@518
    move-result-object v61

    #@519
    .line 803
    .local v61, "threadPoolSize":Ljava/lang/String;
    if-eqz v61, :cond_12

    #@51b
    .line 805
    :try_start_8
    new-instance v65, Ljava/lang/Integer;

    #@51d
    move-object/from16 v0, v65

    #@51f
    move-object/from16 v1, v61

    #@521
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    #@524
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Integer;->intValue()I

    #@527
    move-result v65

    #@528
    move/from16 v0, v65

    #@52a
    move-object/from16 v1, p0

    #@52c
    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->threadPoolSize:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_b

    #@52e
    .line 814
    :cond_12
    :goto_4
    const-string/jumbo v65, "gov.nist.javax.sip.MAX_SERVER_TRANSACTIONS"

    #@531
    .line 813
    move-object/from16 v0, p1

    #@533
    move-object/from16 v1, v65

    #@535
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@538
    move-result-object v54

    #@539
    .line 815
    .local v54, "serverTransactionTableSize":Ljava/lang/String;
    if-eqz v54, :cond_1b

    #@53b
    .line 817
    :try_start_9
    new-instance v65, Ljava/lang/Integer;

    #@53d
    move-object/from16 v0, v65

    #@53f
    move-object/from16 v1, v54

    #@541
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    #@544
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Integer;->intValue()I

    #@547
    move-result v65

    #@548
    move/from16 v0, v65

    #@54a
    move-object/from16 v1, p0

    #@54c
    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->serverTransactionTableHighwaterMark:I

    #@54e
    .line 819
    move-object/from16 v0, p0

    #@550
    iget v0, v0, Lgov/nist/javax/sip/SipStackImpl;->serverTransactionTableHighwaterMark:I

    #@552
    move/from16 v65, v0

    #@554
    mul-int/lit8 v65, v65, 0x50

    #@556
    div-int/lit8 v65, v65, 0x64

    #@558
    move/from16 v0, v65

    #@55a
    move-object/from16 v1, p0

    #@55c
    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->serverTransactionTableLowaterMark:I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_c

    #@55e
    .line 835
    :cond_13
    :goto_5
    const-string/jumbo v65, "gov.nist.javax.sip.MAX_CLIENT_TRANSACTIONS"

    #@561
    .line 834
    move-object/from16 v0, p1

    #@563
    move-object/from16 v1, v65

    #@565
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@568
    move-result-object v16

    #@569
    .line 836
    .local v16, "clientTransactionTableSize":Ljava/lang/String;
    if-eqz v16, :cond_1c

    #@56b
    .line 838
    :try_start_a
    new-instance v65, Ljava/lang/Integer;

    #@56d
    move-object/from16 v0, v65

    #@56f
    move-object/from16 v1, v16

    #@571
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    #@574
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Integer;->intValue()I

    #@577
    move-result v65

    #@578
    move/from16 v0, v65

    #@57a
    move-object/from16 v1, p0

    #@57c
    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->clientTransactionTableHiwaterMark:I

    #@57e
    .line 840
    move-object/from16 v0, p0

    #@580
    iget v0, v0, Lgov/nist/javax/sip/SipStackImpl;->clientTransactionTableLowaterMark:I

    #@582
    move/from16 v65, v0

    #@584
    mul-int/lit8 v65, v65, 0x50

    #@586
    div-int/lit8 v65, v65, 0x64

    #@588
    move/from16 v0, v65

    #@58a
    move-object/from16 v1, p0

    #@58c
    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->clientTransactionTableLowaterMark:I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_d

    #@58e
    .line 853
    :cond_14
    :goto_6
    const/16 v65, 0x1

    #@590
    move/from16 v0, v65

    #@592
    move-object/from16 v1, p0

    #@594
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    #@596
    .line 855
    const-string/jumbo v65, "gov.nist.javax.sip.CACHE_SERVER_CONNECTIONS"

    #@599
    .line 854
    move-object/from16 v0, p1

    #@59b
    move-object/from16 v1, v65

    #@59d
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5a0
    move-result-object v30

    #@5a1
    .line 857
    .local v30, "flag":Ljava/lang/String;
    if-eqz v30, :cond_15

    #@5a3
    const-string/jumbo v65, "false"

    #@5a6
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@5a9
    move-result-object v66

    #@5aa
    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5ad
    move-result v65

    #@5ae
    if-eqz v65, :cond_15

    #@5b0
    .line 858
    const/16 v65, 0x0

    #@5b2
    move/from16 v0, v65

    #@5b4
    move-object/from16 v1, p0

    #@5b6
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    #@5b8
    .line 861
    :cond_15
    const/16 v65, 0x1

    #@5ba
    move/from16 v0, v65

    #@5bc
    move-object/from16 v1, p0

    #@5be
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    #@5c0
    .line 863
    const-string/jumbo v65, "gov.nist.javax.sip.CACHE_CLIENT_CONNECTIONS"

    #@5c3
    .line 862
    move-object/from16 v0, p1

    #@5c5
    move-object/from16 v1, v65

    #@5c7
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5ca
    move-result-object v14

    #@5cb
    .line 865
    .local v14, "cacheflag":Ljava/lang/String;
    if-eqz v14, :cond_16

    #@5cd
    const-string/jumbo v65, "false"

    #@5d0
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@5d3
    move-result-object v66

    #@5d4
    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5d7
    move-result v65

    #@5d8
    if-eqz v65, :cond_16

    #@5da
    .line 866
    const/16 v65, 0x0

    #@5dc
    move/from16 v0, v65

    #@5de
    move-object/from16 v1, p0

    #@5e0
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    #@5e2
    .line 870
    :cond_16
    const-string/jumbo v65, "gov.nist.javax.sip.READ_TIMEOUT"

    #@5e5
    .line 869
    move-object/from16 v0, p1

    #@5e7
    move-object/from16 v1, v65

    #@5e9
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5ec
    move-result-object v46

    #@5ed
    .line 871
    .local v46, "readTimeout":Ljava/lang/String;
    if-eqz v46, :cond_17

    #@5ef
    .line 874
    :try_start_b
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5f2
    move-result v51

    #@5f3
    .line 875
    .local v51, "rt":I
    const/16 v65, 0x64

    #@5f5
    move/from16 v0, v51

    #@5f7
    move/from16 v1, v65

    #@5f9
    if-lt v0, v1, :cond_1d

    #@5fb
    .line 876
    move/from16 v0, v51

    #@5fd
    move-object/from16 v1, p0

    #@5ff
    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_e

    #@601
    .line 890
    .end local v51    # "rt":I
    :cond_17
    :goto_7
    const-string/jumbo v65, "gov.nist.javax.sip.STUN_SERVER"

    #@604
    .line 889
    move-object/from16 v0, p1

    #@606
    move-object/from16 v1, v65

    #@608
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@60b
    move-result-object v60

    #@60c
    .line 892
    .local v60, "stunAddr":Ljava/lang/String;
    if-eqz v60, :cond_18

    #@60e
    .line 893
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@611
    move-result-object v65

    #@612
    .line 894
    const-string/jumbo v66, "Ignoring obsolete property gov.nist.javax.sip.STUN_SERVER"

    #@615
    .line 893
    invoke-interface/range {v65 .. v66}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@618
    .line 898
    :cond_18
    const-string/jumbo v65, "gov.nist.javax.sip.MAX_MESSAGE_SIZE"

    #@61b
    .line 897
    move-object/from16 v0, p1

    #@61d
    move-object/from16 v1, v65

    #@61f
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@622
    move-result-object v39

    #@623
    .line 901
    .local v39, "maxMsgSize":Ljava/lang/String;
    if-eqz v39, :cond_1e

    #@625
    .line 902
    :try_start_c
    new-instance v65, Ljava/lang/Integer;

    #@627
    move-object/from16 v0, v65

    #@629
    move-object/from16 v1, v39

    #@62b
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    #@62e
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Integer;->intValue()I

    #@631
    move-result v65

    #@632
    move/from16 v0, v65

    #@634
    move-object/from16 v1, p0

    #@636
    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I

    #@638
    .line 903
    move-object/from16 v0, p0

    #@63a
    iget v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I

    #@63c
    move/from16 v65, v0

    #@63e
    const/16 v66, 0x1000

    #@640
    move/from16 v0, v65

    #@642
    move/from16 v1, v66

    #@644
    if-ge v0, v1, :cond_19

    #@646
    .line 904
    const/16 v65, 0x1000

    #@648
    move/from16 v0, v65

    #@64a
    move-object/from16 v1, p0

    #@64c
    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_f

    #@64e
    .line 916
    :cond_19
    :goto_8
    const-string/jumbo v65, "gov.nist.javax.sip.REENTRANT_LISTENER"

    #@651
    .line 915
    move-object/from16 v0, p1

    #@653
    move-object/from16 v1, v65

    #@655
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@658
    move-result-object v47

    #@659
    .line 917
    .local v47, "rel":Ljava/lang/String;
    if-eqz v47, :cond_1f

    #@65b
    const-string/jumbo v65, "true"

    #@65e
    move-object/from16 v0, v65

    #@660
    move-object/from16 v1, v47

    #@662
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@665
    move-result v65

    #@666
    :goto_9
    move/from16 v0, v65

    #@668
    move-object/from16 v1, p0

    #@66a
    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->reEntrantListener:Z

    #@66c
    .line 921
    const-string/jumbo v65, "gov.nist.javax.sip.THREAD_AUDIT_INTERVAL_IN_MILLISECS"

    #@66f
    .line 920
    move-object/from16 v0, p1

    #@671
    move-object/from16 v1, v65

    #@673
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@676
    move-result-object v35

    #@677
    .line 922
    .local v35, "interval":Ljava/lang/String;
    if-eqz v35, :cond_1a

    #@679
    .line 926
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    #@67c
    move-result-object v65

    #@67d
    .line 927
    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@680
    move-result-object v66

    #@681
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Long;->longValue()J

    #@684
    move-result-wide v66

    #@685
    const-wide/16 v68, 0x2

    #@687
    div-long v66, v66, v68

    #@689
    .line 926
    invoke-virtual/range {v65 .. v67}, Lgov/nist/core/ThreadAuditor;->setPingIntervalInMillisecs(J)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_10

    #@68c
    .line 942
    :cond_1a
    :goto_a
    const-string/jumbo v65, "gov.nist.javax.sip.PASS_INVITE_NON_2XX_ACK_TO_LISTENER"

    #@68f
    .line 943
    const-string/jumbo v66, "false"

    #@692
    .line 940
    move-object/from16 v0, p1

    #@694
    move-object/from16 v1, v65

    #@696
    move-object/from16 v2, v66

    #@698
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@69b
    move-result-object v65

    #@69c
    .line 938
    invoke-static/range {v65 .. v65}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@69f
    move-result-object v65

    #@6a0
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Boolean;->booleanValue()Z

    #@6a3
    move-result v65

    #@6a4
    .line 937
    move-object/from16 v0, p0

    #@6a6
    move/from16 v1, v65

    #@6a8
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->setNon2XXAckPassedToListener(Z)V

    #@6ab
    .line 947
    const-string/jumbo v65, "gov.nist.javax.sip.AUTO_GENERATE_TIMESTAMP"

    #@6ae
    const-string/jumbo v66, "false"

    #@6b1
    .line 946
    move-object/from16 v0, p1

    #@6b3
    move-object/from16 v1, v65

    #@6b5
    move-object/from16 v2, v66

    #@6b7
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6ba
    move-result-object v65

    #@6bb
    .line 945
    invoke-static/range {v65 .. v65}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@6be
    move-result-object v65

    #@6bf
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Boolean;->booleanValue()Z

    #@6c2
    move-result v65

    #@6c3
    move/from16 v0, v65

    #@6c5
    move-object/from16 v1, p0

    #@6c7
    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->generateTimeStampHeader:Z

    #@6c9
    .line 951
    const-string/jumbo v65, "gov.nist.javax.sip.LOG_FACTORY"

    #@6cc
    .line 950
    move-object/from16 v0, p1

    #@6ce
    move-object/from16 v1, v65

    #@6d0
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6d3
    move-result-object v40

    #@6d4
    .line 952
    .local v40, "messageLogFactoryClasspath":Ljava/lang/String;
    if-eqz v40, :cond_21

    #@6d6
    .line 954
    :try_start_e
    invoke-static/range {v40 .. v40}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6d9
    move-result-object v15

    #@6da
    .line 955
    .restart local v15    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v65, 0x0

    #@6dc
    move/from16 v0, v65

    #@6de
    new-array v0, v0, [Ljava/lang/Class;

    #@6e0
    move-object/from16 v65, v0

    #@6e2
    move-object/from16 v0, v65

    #@6e4
    invoke-virtual {v15, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@6e7
    move-result-object v13

    #@6e8
    .line 957
    .restart local v13    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v65, 0x0

    #@6ea
    move/from16 v0, v65

    #@6ec
    new-array v0, v0, [Ljava/lang/Object;

    #@6ee
    move-object/from16 v65, v0

    #@6f0
    .line 956
    move-object/from16 v0, v65

    #@6f2
    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@6f5
    move-result-object v65

    #@6f6
    check-cast v65, Lgov/nist/javax/sip/LogRecordFactory;

    #@6f8
    move-object/from16 v0, v65

    #@6fa
    move-object/from16 v1, p0

    #@6fc
    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    #@6fe
    .line 971
    .end local v13    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v15    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_b
    const-string/jumbo v65, "gov.nist.javax.sip.COMPUTE_CONTENT_LENGTH_FROM_MESSAGE_BODY"

    #@701
    .line 972
    const-string/jumbo v66, "false"

    #@704
    .line 970
    move-object/from16 v0, p1

    #@706
    move-object/from16 v1, v65

    #@708
    move-object/from16 v2, v66

    #@70a
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@70d
    move-result-object v65

    #@70e
    .line 972
    const-string/jumbo v66, "true"

    #@711
    .line 970
    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@714
    move-result v17

    #@715
    .line 973
    .local v17, "computeContentLength":Z
    invoke-static/range {v17 .. v17}, Lgov/nist/javax/sip/parser/StringMsgParser;->setComputeContentLengthFromMessage(Z)V

    #@718
    .line 977
    const-string/jumbo v65, "gov.nist.javax.sip.TLS_CLIENT_PROTOCOLS"

    #@71b
    .line 976
    move-object/from16 v0, p1

    #@71d
    move-object/from16 v1, v65

    #@71f
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@722
    move-result-object v62

    #@723
    .line 978
    .local v62, "tlsClientProtocols":Ljava/lang/String;
    if-eqz v62, :cond_23

    #@725
    .line 980
    new-instance v55, Ljava/util/StringTokenizer;

    #@727
    const-string/jumbo v65, " ,"

    #@72a
    move-object/from16 v0, v55

    #@72c
    move-object/from16 v1, v62

    #@72e
    move-object/from16 v2, v65

    #@730
    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@733
    .line 981
    .restart local v55    # "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v55 .. v55}, Ljava/util/StringTokenizer;->countTokens()I

    #@736
    move-result v65

    #@737
    move/from16 v0, v65

    #@739
    new-array v0, v0, [Ljava/lang/String;

    #@73b
    move-object/from16 v45, v0

    #@73d
    .line 983
    .local v45, "protocols":[Ljava/lang/String;
    const/16 v32, 0x0

    #@73f
    .line 984
    .local v32, "i":I
    :goto_c
    invoke-virtual/range {v55 .. v55}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@742
    move-result v65

    #@743
    if-eqz v65, :cond_22

    #@745
    .line 985
    add-int/lit8 v33, v32, 0x1

    #@747
    .end local v32    # "i":I
    .local v33, "i":I
    invoke-virtual/range {v55 .. v55}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@74a
    move-result-object v65

    #@74b
    aput-object v65, v45, v32

    #@74d
    move/from16 v32, v33

    #@74f
    .end local v33    # "i":I
    .restart local v32    # "i":I
    goto :goto_c

    #@750
    .line 765
    .end local v6    # "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    .end local v14    # "cacheflag":Ljava/lang/String;
    .end local v16    # "clientTransactionTableSize":Ljava/lang/String;
    .end local v17    # "computeContentLength":Z
    .end local v30    # "flag":Ljava/lang/String;
    .end local v32    # "i":I
    .end local v35    # "interval":Ljava/lang/String;
    .end local v38    # "maxConnections":Ljava/lang/String;
    .end local v39    # "maxMsgSize":Ljava/lang/String;
    .end local v40    # "messageLogFactoryClasspath":Ljava/lang/String;
    .end local v45    # "protocols":[Ljava/lang/String;
    .end local v46    # "readTimeout":Ljava/lang/String;
    .end local v47    # "rel":Ljava/lang/String;
    .end local v54    # "serverTransactionTableSize":Ljava/lang/String;
    .end local v55    # "st":Ljava/util/StringTokenizer;
    .end local v60    # "stunAddr":Ljava/lang/String;
    .end local v61    # "threadPoolSize":Ljava/lang/String;
    .end local v62    # "tlsClientProtocols":Ljava/lang/String;
    .restart local v44    # "path":Ljava/lang/String;
    :catch_8
    move-exception v21

    #@751
    .line 766
    .local v21, "e":Ljava/lang/Exception;
    new-instance v65, Ljavax/sip/PeerUnavailableException;

    #@753
    .line 767
    new-instance v66, Ljava/lang/StringBuilder;

    #@755
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@758
    const-string/jumbo v67, "can\'t find or instantiate NetworkLayer implementation: "

    #@75b
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75e
    move-result-object v66

    #@75f
    move-object/from16 v0, v66

    #@761
    move-object/from16 v1, v44

    #@763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@766
    move-result-object v66

    #@767
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76a
    move-result-object v66

    #@76b
    .line 766
    invoke-direct/range {v65 .. v66}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    #@76e
    throw v65

    #@76f
    .line 782
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v6    # "ADDRESS_RESOLVER_KEY":Ljava/lang/String;
    :catch_9
    move-exception v21

    #@770
    .line 783
    .restart local v21    # "e":Ljava/lang/Exception;
    new-instance v65, Ljavax/sip/PeerUnavailableException;

    #@772
    .line 784
    new-instance v66, Ljava/lang/StringBuilder;

    #@774
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@777
    const-string/jumbo v67, "can\'t find or instantiate AddressResolver implementation: "

    #@77a
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77d
    move-result-object v66

    #@77e
    move-object/from16 v0, v66

    #@780
    move-object/from16 v1, v44

    #@782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@785
    move-result-object v66

    #@786
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@789
    move-result-object v66

    #@78a
    .line 783
    invoke-direct/range {v65 .. v66}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    #@78d
    throw v65

    #@78e
    .line 794
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v44    # "path":Ljava/lang/String;
    .restart local v38    # "maxConnections":Ljava/lang/String;
    :catch_a
    move-exception v26

    #@78f
    .line 795
    .local v26, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@792
    move-result v65

    #@793
    if-eqz v65, :cond_11

    #@795
    .line 796
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@798
    move-result-object v65

    #@799
    .line 797
    new-instance v66, Ljava/lang/StringBuilder;

    #@79b
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@79e
    const-string/jumbo v67, "max connections - bad value "

    #@7a1
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a4
    move-result-object v66

    #@7a5
    invoke-virtual/range {v26 .. v26}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@7a8
    move-result-object v67

    #@7a9
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7ac
    move-result-object v66

    #@7ad
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b0
    move-result-object v66

    #@7b1
    .line 796
    invoke-interface/range {v65 .. v66}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@7b4
    goto/16 :goto_3

    #@7b6
    .line 806
    .end local v26    # "ex":Ljava/lang/NumberFormatException;
    .restart local v61    # "threadPoolSize":Ljava/lang/String;
    :catch_b
    move-exception v26

    #@7b7
    .line 807
    .restart local v26    # "ex":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@7ba
    move-result v65

    #@7bb
    if-eqz v65, :cond_12

    #@7bd
    .line 808
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@7c0
    move-result-object v65

    #@7c1
    .line 809
    new-instance v66, Ljava/lang/StringBuilder;

    #@7c3
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@7c6
    const-string/jumbo v67, "thread pool size - bad value "

    #@7c9
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7cc
    move-result-object v66

    #@7cd
    invoke-virtual/range {v26 .. v26}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@7d0
    move-result-object v67

    #@7d1
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d4
    move-result-object v66

    #@7d5
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d8
    move-result-object v66

    #@7d9
    .line 808
    invoke-interface/range {v65 .. v66}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@7dc
    goto/16 :goto_4

    #@7de
    .line 821
    .end local v26    # "ex":Ljava/lang/NumberFormatException;
    .restart local v54    # "serverTransactionTableSize":Ljava/lang/String;
    :catch_c
    move-exception v26

    #@7df
    .line 822
    .restart local v26    # "ex":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@7e2
    move-result v65

    #@7e3
    if-eqz v65, :cond_13

    #@7e5
    .line 823
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@7e8
    move-result-object v65

    #@7e9
    .line 825
    new-instance v66, Ljava/lang/StringBuilder;

    #@7eb
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@7ee
    const-string/jumbo v67, "transaction table size - bad value "

    #@7f1
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f4
    move-result-object v66

    #@7f5
    .line 826
    invoke-virtual/range {v26 .. v26}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@7f8
    move-result-object v67

    #@7f9
    .line 825
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7fc
    move-result-object v66

    #@7fd
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@800
    move-result-object v66

    #@801
    .line 823
    invoke-interface/range {v65 .. v66}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@804
    goto/16 :goto_5

    #@806
    .line 831
    .end local v26    # "ex":Ljava/lang/NumberFormatException;
    :cond_1b
    const/16 v65, 0x1

    #@808
    move/from16 v0, v65

    #@80a
    move-object/from16 v1, p0

    #@80c
    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->unlimitedServerTransactionTableSize:Z

    #@80e
    goto/16 :goto_5

    #@810
    .line 842
    .restart local v16    # "clientTransactionTableSize":Ljava/lang/String;
    :catch_d
    move-exception v26

    #@811
    .line 843
    .restart local v26    # "ex":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@814
    move-result v65

    #@815
    if-eqz v65, :cond_14

    #@817
    .line 844
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@81a
    move-result-object v65

    #@81b
    .line 846
    new-instance v66, Ljava/lang/StringBuilder;

    #@81d
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@820
    const-string/jumbo v67, "transaction table size - bad value "

    #@823
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@826
    move-result-object v66

    #@827
    .line 847
    invoke-virtual/range {v26 .. v26}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@82a
    move-result-object v67

    #@82b
    .line 846
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82e
    move-result-object v66

    #@82f
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@832
    move-result-object v66

    #@833
    .line 844
    invoke-interface/range {v65 .. v66}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@836
    goto/16 :goto_6

    #@838
    .line 850
    .end local v26    # "ex":Ljava/lang/NumberFormatException;
    :cond_1c
    const/16 v65, 0x1

    #@83a
    move/from16 v0, v65

    #@83c
    move-object/from16 v1, p0

    #@83e
    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->unlimitedClientTransactionTableSize:Z

    #@840
    goto/16 :goto_6

    #@842
    .line 878
    .restart local v14    # "cacheflag":Ljava/lang/String;
    .restart local v30    # "flag":Ljava/lang/String;
    .restart local v46    # "readTimeout":Ljava/lang/String;
    .restart local v51    # "rt":I
    :cond_1d
    :try_start_f
    sget-object v65, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@844
    new-instance v66, Ljava/lang/StringBuilder;

    #@846
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@849
    const-string/jumbo v67, "Value too low "

    #@84c
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84f
    move-result-object v66

    #@850
    move-object/from16 v0, v66

    #@852
    move-object/from16 v1, v46

    #@854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@857
    move-result-object v66

    #@858
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85b
    move-result-object v66

    #@85c
    invoke-virtual/range {v65 .. v66}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_e

    #@85f
    goto/16 :goto_7

    #@861
    .line 880
    .end local v51    # "rt":I
    :catch_e
    move-exception v43

    #@862
    .line 882
    .local v43, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@865
    move-result v65

    #@866
    if-eqz v65, :cond_17

    #@868
    .line 883
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@86b
    move-result-object v65

    #@86c
    new-instance v66, Ljava/lang/StringBuilder;

    #@86e
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@871
    const-string/jumbo v67, "Bad read timeout "

    #@874
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@877
    move-result-object v66

    #@878
    move-object/from16 v0, v66

    #@87a
    move-object/from16 v1, v46

    #@87c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87f
    move-result-object v66

    #@880
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@883
    move-result-object v66

    #@884
    invoke-interface/range {v65 .. v66}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@887
    goto/16 :goto_7

    #@889
    .line 907
    .end local v43    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v39    # "maxMsgSize":Ljava/lang/String;
    .restart local v60    # "stunAddr":Ljava/lang/String;
    :cond_1e
    const/16 v65, 0x0

    #@88b
    :try_start_10
    move/from16 v0, v65

    #@88d
    move-object/from16 v1, p0

    #@88f
    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_f

    #@891
    goto/16 :goto_8

    #@893
    .line 909
    :catch_f
    move-exception v26

    #@894
    .line 910
    .restart local v26    # "ex":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@897
    move-result v65

    #@898
    if-eqz v65, :cond_19

    #@89a
    .line 911
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@89d
    move-result-object v65

    #@89e
    .line 912
    new-instance v66, Ljava/lang/StringBuilder;

    #@8a0
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@8a3
    const-string/jumbo v67, "maxMessageSize - bad value "

    #@8a6
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a9
    move-result-object v66

    #@8aa
    invoke-virtual/range {v26 .. v26}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@8ad
    move-result-object v67

    #@8ae
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b1
    move-result-object v66

    #@8b2
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b5
    move-result-object v66

    #@8b6
    .line 911
    invoke-interface/range {v65 .. v66}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@8b9
    goto/16 :goto_8

    #@8bb
    .line 917
    .end local v26    # "ex":Ljava/lang/NumberFormatException;
    .restart local v47    # "rel":Ljava/lang/String;
    :cond_1f
    const/16 v65, 0x0

    #@8bd
    goto/16 :goto_9

    #@8bf
    .line 928
    .restart local v35    # "interval":Ljava/lang/String;
    :catch_10
    move-exception v26

    #@8c0
    .line 929
    .restart local v26    # "ex":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@8c3
    move-result v65

    #@8c4
    if-eqz v65, :cond_1a

    #@8c6
    .line 930
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@8c9
    move-result-object v65

    #@8ca
    .line 931
    new-instance v66, Ljava/lang/StringBuilder;

    #@8cc
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@8cf
    const-string/jumbo v67, "THREAD_AUDIT_INTERVAL_IN_MILLISECS - bad value ["

    #@8d2
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d5
    move-result-object v66

    #@8d6
    move-object/from16 v0, v66

    #@8d8
    move-object/from16 v1, v35

    #@8da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8dd
    move-result-object v66

    #@8de
    .line 932
    const-string/jumbo v67, "] "

    #@8e1
    .line 931
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e4
    move-result-object v66

    #@8e5
    .line 932
    invoke-virtual/range {v26 .. v26}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@8e8
    move-result-object v67

    #@8e9
    .line 931
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8ec
    move-result-object v66

    #@8ed
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f0
    move-result-object v66

    #@8f1
    .line 930
    invoke-interface/range {v65 .. v66}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@8f4
    goto/16 :goto_a

    #@8f6
    .line 958
    .end local v26    # "ex":Ljava/lang/NumberFormatException;
    .restart local v40    # "messageLogFactoryClasspath":Ljava/lang/String;
    :catch_11
    move-exception v25

    #@8f7
    .line 959
    .restart local v25    # "ex":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@8fa
    move-result v65

    #@8fb
    if-eqz v65, :cond_20

    #@8fd
    .line 960
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@900
    move-result-object v65

    #@901
    .line 962
    const-string/jumbo v66, "Bad configuration value for LOG_FACTORY -- using default logger"

    #@904
    .line 960
    invoke-interface/range {v65 .. v66}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@907
    .line 963
    :cond_20
    new-instance v65, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;

    #@909
    invoke-direct/range {v65 .. v65}, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;-><init>()V

    #@90c
    move-object/from16 v0, v65

    #@90e
    move-object/from16 v1, p0

    #@910
    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    #@912
    goto/16 :goto_b

    #@914
    .line 967
    .end local v25    # "ex":Ljava/lang/Exception;
    :cond_21
    new-instance v65, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;

    #@916
    invoke-direct/range {v65 .. v65}, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;-><init>()V

    #@919
    move-object/from16 v0, v65

    #@91b
    move-object/from16 v1, p0

    #@91d
    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    #@91f
    goto/16 :goto_b

    #@921
    .line 987
    .restart local v17    # "computeContentLength":Z
    .restart local v32    # "i":I
    .restart local v45    # "protocols":[Ljava/lang/String;
    .restart local v55    # "st":Ljava/util/StringTokenizer;
    .restart local v62    # "tlsClientProtocols":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, v45

    #@923
    move-object/from16 v1, p0

    #@925
    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    #@927
    .line 991
    .end local v32    # "i":I
    .end local v45    # "protocols":[Ljava/lang/String;
    .end local v55    # "st":Ljava/util/StringTokenizer;
    :cond_23
    const-string/jumbo v65, "gov.nist.javax.sip.RFC_2543_SUPPORT_ENABLED"

    #@92a
    const-string/jumbo v66, "true"

    #@92d
    .line 990
    move-object/from16 v0, p1

    #@92f
    move-object/from16 v1, v65

    #@931
    move-object/from16 v2, v66

    #@933
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@936
    move-result-object v65

    #@937
    .line 992
    const-string/jumbo v66, "true"

    #@93a
    .line 990
    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@93d
    move-result v65

    #@93e
    move/from16 v0, v65

    #@940
    move-object/from16 v1, p0

    #@942
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    #@944
    .line 996
    const-string/jumbo v65, "gov.nist.javax.sip.CANCEL_CLIENT_TRANSACTION_CHECKED"

    #@947
    .line 997
    const-string/jumbo v66, "true"

    #@94a
    .line 994
    move-object/from16 v0, p1

    #@94c
    move-object/from16 v1, v65

    #@94e
    move-object/from16 v2, v66

    #@950
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@953
    move-result-object v65

    #@954
    .line 997
    const-string/jumbo v66, "true"

    #@957
    .line 994
    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@95a
    move-result v65

    #@95b
    move/from16 v0, v65

    #@95d
    move-object/from16 v1, p0

    #@95f
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    #@961
    .line 999
    const-string/jumbo v65, "gov.nist.javax.sip.LOG_STACK_TRACE_ON_MESSAGE_SEND"

    #@964
    const-string/jumbo v66, "false"

    #@967
    .line 998
    move-object/from16 v0, p1

    #@969
    move-object/from16 v1, v65

    #@96b
    move-object/from16 v2, v66

    #@96d
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@970
    move-result-object v65

    #@971
    .line 1000
    const-string/jumbo v66, "true"

    #@974
    .line 998
    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@977
    move-result v65

    #@978
    move/from16 v0, v65

    #@97a
    move-object/from16 v1, p0

    #@97c
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    #@97e
    .line 1001
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@981
    move-result v65

    #@982
    if-eqz v65, :cond_24

    #@984
    .line 1002
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@987
    move-result-object v65

    #@988
    .line 1003
    new-instance v66, Ljava/lang/StringBuilder;

    #@98a
    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    #@98d
    const-string/jumbo v67, "created Sip stack. Properties = "

    #@990
    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@993
    move-result-object v66

    #@994
    move-object/from16 v0, v66

    #@996
    move-object/from16 v1, p1

    #@998
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99b
    move-result-object v66

    #@99c
    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99f
    move-result-object v66

    #@9a0
    .line 1002
    invoke-interface/range {v65 .. v66}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@9a3
    .line 1004
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getClass()Ljava/lang/Class;

    #@9a6
    move-result-object v65

    #@9a7
    const-string/jumbo v66, "/TIMESTAMP"

    #@9aa
    invoke-virtual/range {v65 .. v66}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@9ad
    move-result-object v34

    #@9ae
    .line 1005
    .local v34, "in":Ljava/io/InputStream;
    if-eqz v34, :cond_26

    #@9b0
    .line 1006
    new-instance v59, Ljava/io/BufferedReader;

    #@9b2
    .line 1007
    new-instance v65, Ljava/io/InputStreamReader;

    #@9b4
    move-object/from16 v0, v65

    #@9b6
    move-object/from16 v1, v34

    #@9b8
    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@9bb
    .line 1006
    move-object/from16 v0, v59

    #@9bd
    move-object/from16 v1, v65

    #@9bf
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@9c2
    .line 1010
    .local v59, "streamReader":Ljava/io/BufferedReader;
    :try_start_11
    invoke-virtual/range {v59 .. v59}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@9c5
    move-result-object v12

    #@9c6
    .line 1011
    .local v12, "buildTimeStamp":Ljava/lang/String;
    if-eqz v34, :cond_25

    #@9c8
    .line 1012
    invoke-virtual/range {v34 .. v34}, Ljava/io/InputStream;->close()V

    #@9cb
    .line 1014
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@9ce
    move-result-object v65

    #@9cf
    move-object/from16 v0, v65

    #@9d1
    invoke-interface {v0, v12}, Lgov/nist/core/StackLogger;->setBuildTimeStamp(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_12

    #@9d4
    .line 1021
    .end local v12    # "buildTimeStamp":Ljava/lang/String;
    .end local v59    # "streamReader":Ljava/io/BufferedReader;
    :cond_26
    :goto_d
    const-string/jumbo v65, "gov.nist.javax.sip.RECEIVE_UDP_BUFFER_SIZE"

    #@9d7
    sget-object v66, Lgov/nist/javax/sip/SipStackImpl;->MAX_DATAGRAM_SIZE:Ljava/lang/Integer;

    #@9d9
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@9dc
    move-result-object v66

    #@9dd
    .line 1020
    move-object/from16 v0, p1

    #@9df
    move-object/from16 v1, v65

    #@9e1
    move-object/from16 v2, v66

    #@9e3
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9e6
    move-result-object v10

    #@9e7
    .line 1023
    .local v10, "bufferSize":Ljava/lang/String;
    new-instance v65, Ljava/lang/Integer;

    #@9e9
    move-object/from16 v0, v65

    #@9eb
    invoke-direct {v0, v10}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    #@9ee
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Integer;->intValue()I

    #@9f1
    move-result v11

    #@9f2
    .line 1024
    .local v11, "bufferSizeInteger":I
    move-object/from16 v0, p0

    #@9f4
    invoke-super {v0, v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setReceiveUdpBufferSize(I)V

    #@9f7
    .line 1027
    const-string/jumbo v65, "gov.nist.javax.sip.SEND_UDP_BUFFER_SIZE"

    #@9fa
    sget-object v66, Lgov/nist/javax/sip/SipStackImpl;->MAX_DATAGRAM_SIZE:Ljava/lang/Integer;

    #@9fc
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@9ff
    move-result-object v66

    #@a00
    .line 1026
    move-object/from16 v0, p1

    #@a02
    move-object/from16 v1, v65

    #@a04
    move-object/from16 v2, v66

    #@a06
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a09
    move-result-object v10

    #@a0a
    .line 1029
    new-instance v65, Ljava/lang/Integer;

    #@a0c
    move-object/from16 v0, v65

    #@a0e
    invoke-direct {v0, v10}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    #@a11
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Integer;->intValue()I

    #@a14
    move-result v11

    #@a15
    .line 1030
    move-object/from16 v0, p0

    #@a17
    invoke-super {v0, v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setSendUdpBufferSize(I)V

    #@a1a
    .line 1034
    const-string/jumbo v65, "gov.nist.javax.sip.CONGESTION_CONTROL_ENABLED"

    #@a1d
    .line 1035
    sget-object v66, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@a1f
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    #@a22
    move-result-object v66

    #@a23
    .line 1033
    move-object/from16 v0, p1

    #@a25
    move-object/from16 v1, v65

    #@a27
    move-object/from16 v2, v66

    #@a29
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a2c
    move-result-object v65

    #@a2d
    .line 1032
    invoke-static/range {v65 .. v65}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@a30
    move-result v18

    #@a31
    .line 1036
    .local v18, "congetstionControlEnabled":Z
    move/from16 v0, v18

    #@a33
    move-object/from16 v1, p0

    #@a35
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    #@a37
    .line 1040
    const-string/jumbo v65, "gov.nist.javax.sip.IS_BACK_TO_BACK_USER_AGENT"

    #@a3a
    .line 1041
    sget-object v66, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@a3c
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    #@a3f
    move-result-object v66

    #@a40
    .line 1039
    move-object/from16 v0, p1

    #@a42
    move-object/from16 v1, v65

    #@a44
    move-object/from16 v2, v66

    #@a46
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a49
    move-result-object v65

    #@a4a
    .line 1038
    invoke-static/range {v65 .. v65}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@a4d
    move-result v65

    #@a4e
    move/from16 v0, v65

    #@a50
    move-object/from16 v1, p0

    #@a52
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    #@a54
    .line 1043
    const-string/jumbo v65, "gov.nist.javax.sip.REJECT_STRAY_RESPONSES"

    #@a57
    .line 1044
    sget-object v66, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@a59
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    #@a5c
    move-result-object v66

    #@a5d
    .line 1042
    move-object/from16 v0, p1

    #@a5f
    move-object/from16 v1, v65

    #@a61
    move-object/from16 v2, v66

    #@a63
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a66
    move-result-object v65

    #@a67
    invoke-static/range {v65 .. v65}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@a6a
    move-result v65

    #@a6b
    move/from16 v0, v65

    #@a6d
    move-object/from16 v1, p0

    #@a6f
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->checkBranchId:Z

    #@a71
    .line 1046
    const-string/jumbo v65, "gov.nist.javax.sip.DELIVER_TERMINATED_EVENT_FOR_NULL_DIALOG"

    #@a74
    .line 1047
    sget-object v66, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@a76
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    #@a79
    move-result-object v66

    #@a7a
    .line 1046
    move-object/from16 v0, p1

    #@a7c
    move-object/from16 v1, v65

    #@a7e
    move-object/from16 v2, v66

    #@a80
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a83
    move-result-object v65

    #@a84
    invoke-static/range {v65 .. v65}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@a87
    move-result v65

    #@a88
    move/from16 v0, v65

    #@a8a
    move-object/from16 v1, p0

    #@a8c
    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    #@a8e
    .line 1051
    const-string/jumbo v65, "gov.nist.javax.sip.MAX_FORK_TIME_SECONDS"

    #@a91
    const-string/jumbo v66, "0"

    #@a94
    move-object/from16 v0, p1

    #@a96
    move-object/from16 v1, v65

    #@a98
    move-object/from16 v2, v66

    #@a9a
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a9d
    move-result-object v65

    #@a9e
    .line 1050
    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@aa1
    move-result v65

    #@aa2
    move/from16 v0, v65

    #@aa4
    move-object/from16 v1, p0

    #@aa6
    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    #@aa8
    .line 533
    return-void

    #@aa9
    .line 1015
    .end local v10    # "bufferSize":Ljava/lang/String;
    .end local v11    # "bufferSizeInteger":I
    .end local v18    # "congetstionControlEnabled":Z
    .restart local v59    # "streamReader":Ljava/io/BufferedReader;
    :catch_12
    move-exception v24

    #@aaa
    .line 1016
    .local v24, "ex":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@aad
    move-result-object v65

    #@aae
    const-string/jumbo v66, "Could not open build timestamp."

    #@ab1
    invoke-interface/range {v65 .. v66}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@ab4
    goto/16 :goto_d
.end method

.method private reInitialize()V
    .locals 1

    #@0
    .prologue
    .line 506
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->reInit()V

    #@3
    .line 507
    new-instance v0, Lgov/nist/javax/sip/EventScanner;

    #@5
    invoke-direct {v0, p0}, Lgov/nist/javax/sip/EventScanner;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    #@8
    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    #@a
    .line 508
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    #@11
    .line 509
    new-instance v0, Ljava/util/LinkedList;

    #@13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@16
    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    #@18
    .line 510
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    #@1b
    .line 505
    return-void
.end method


# virtual methods
.method public acquireSem()Z
    .locals 5

    #@0
    .prologue
    .line 1483
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    #@2
    const-wide/16 v2, 0xa

    #@4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@6
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1484
    :catch_0
    move-exception v0

    #@c
    .line 1485
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public createListeningPoint(ILjava/lang/String;)Ljavax/sip/ListeningPoint;
    .locals 2
    .param p1, "port"    # I
    .param p2, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransportNotSupportedException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 1261
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1262
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    .line 1263
    const-string/jumbo v1, "Stack does not have a default IP Address!"

    #@9
    .line 1262
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1264
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    #@f
    invoke-virtual {p0, v0, p1, p2}, Lgov/nist/javax/sip/SipStackImpl;->createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public declared-synchronized createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransportNotSupportedException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1064
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@4
    move-result v6

    #@5
    if-eqz v6, :cond_0

    #@7
    .line 1065
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@a
    move-result-object v6

    #@b
    .line 1066
    new-instance v7, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v8, "createListeningPoint : address = "

    #@13
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v7

    #@17
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v7

    #@1b
    const-string/jumbo v8, " port = "

    #@1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    .line 1067
    const-string/jumbo v8, " transport = "

    #@29
    .line 1066
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    .line 1065
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@38
    .line 1069
    :cond_0
    if-nez p1, :cond_1

    #@3a
    .line 1070
    new-instance v6, Ljava/lang/NullPointerException;

    #@3c
    .line 1071
    const-string/jumbo v7, "Address for listening point is null!"

    #@3f
    .line 1070
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@42
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    :catchall_0
    move-exception v6

    #@44
    monitor-exit p0

    #@45
    throw v6

    #@46
    .line 1072
    :cond_1
    if-nez p3, :cond_2

    #@48
    .line 1073
    :try_start_1
    new-instance v6, Ljava/lang/NullPointerException;

    #@4a
    const-string/jumbo v7, "null transport"

    #@4d
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@50
    throw v6

    #@51
    .line 1074
    :cond_2
    if-gtz p2, :cond_3

    #@53
    .line 1075
    new-instance v6, Ljavax/sip/InvalidArgumentException;

    #@55
    const-string/jumbo v7, "bad port"

    #@58
    invoke-direct {v6, v7}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v6

    #@5c
    .line 1077
    :cond_3
    const-string/jumbo v6, "UDP"

    #@5f
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@62
    move-result v6

    #@63
    if-nez v6, :cond_4

    #@65
    .line 1078
    const-string/jumbo v6, "TLS"

    #@68
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6b
    move-result v6

    #@6c
    if-eqz v6, :cond_6

    #@6e
    .line 1085
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    #@71
    move-result v6

    #@72
    if-nez v6, :cond_5

    #@74
    .line 1086
    const/4 v6, 0x0

    #@75
    iput-boolean v6, p0, Lgov/nist/javax/sip/SipStackImpl;->toExit:Z

    #@77
    .line 1087
    invoke-direct {p0}, Lgov/nist/javax/sip/SipStackImpl;->reInitialize()V

    #@7a
    .line 1090
    :cond_5
    invoke-static {p1, p2, p3}, Lgov/nist/javax/sip/ListeningPointImpl;->makeKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@7d
    move-result-object v2

    #@7e
    .line 1092
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    #@80
    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    move-result-object v3

    #@84
    check-cast v3, Lgov/nist/javax/sip/ListeningPointImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@86
    .line 1093
    .local v3, "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    if-eqz v3, :cond_7

    #@88
    monitor-exit p0

    #@89
    .line 1094
    return-object v3

    #@8a
    .line 1079
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_6
    :try_start_2
    const-string/jumbo v6, "TCP"

    #@8d
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@90
    move-result v6

    #@91
    if-nez v6, :cond_4

    #@93
    .line 1080
    const-string/jumbo v6, "SCTP"

    #@96
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@99
    move-result v6

    #@9a
    if-nez v6, :cond_4

    #@9c
    .line 1081
    new-instance v6, Ljavax/sip/TransportNotSupportedException;

    #@9e
    new-instance v7, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v8, "bad transport "

    #@a6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v7

    #@aa
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v7

    #@ae
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v7

    #@b2
    invoke-direct {v6, v7}, Ljavax/sip/TransportNotSupportedException;-><init>(Ljava/lang/String;)V

    #@b5
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b6
    .line 1097
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_7
    :try_start_3
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@b9
    move-result-object v1

    #@ba
    .line 1098
    .local v1, "inetAddr":Ljava/net/InetAddress;
    invoke-virtual {p0, v1, p2, p3}, Lgov/nist/javax/sip/SipStackImpl;->createMessageProcessor(Ljava/net/InetAddress;ILjava/lang/String;)Lgov/nist/javax/sip/stack/MessageProcessor;

    #@bd
    move-result-object v5

    #@be
    .line 1100
    .local v5, "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@c1
    move-result v6

    #@c2
    if-eqz v6, :cond_8

    #@c4
    .line 1101
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@c7
    move-result-object v6

    #@c8
    .line 1102
    new-instance v7, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v8, "Created Message Processor: "

    #@d0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v7

    #@d4
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v7

    #@d8
    .line 1103
    const-string/jumbo v8, " port = "

    #@db
    .line 1102
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v7

    #@df
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v7

    #@e3
    .line 1103
    const-string/jumbo v8, " transport = "

    #@e6
    .line 1102
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v7

    #@ea
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v7

    #@ee
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v7

    #@f2
    .line 1101
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@f5
    .line 1106
    :cond_8
    new-instance v4, Lgov/nist/javax/sip/ListeningPointImpl;

    #@f7
    invoke-direct {v4, p0, p2, p3}, Lgov/nist/javax/sip/ListeningPointImpl;-><init>(Ljavax/sip/SipStack;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@fa
    .line 1107
    .end local v3    # "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    .local v4, "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    :try_start_4
    iput-object v5, v4, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@fc
    .line 1108
    invoke-virtual {v5, v4}, Lgov/nist/javax/sip/stack/MessageProcessor;->setListeningPoint(Lgov/nist/javax/sip/ListeningPointImpl;)V

    #@ff
    .line 1109
    iget-object v6, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    #@101
    invoke-virtual {v6, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@104
    .line 1111
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/MessageProcessor;->start()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@107
    monitor-exit p0

    #@108
    .line 1112
    return-object v4

    #@109
    .line 1113
    .end local v1    # "inetAddr":Ljava/net/InetAddress;
    .end local v4    # "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v5    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    .restart local v3    # "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    :catch_0
    move-exception v0

    #@10a
    .line 1114
    .local v0, "ex":Ljava/io/IOException;
    :goto_0
    :try_start_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@10d
    move-result v6

    #@10e
    if-eqz v6, :cond_9

    #@110
    .line 1115
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@113
    move-result-object v6

    #@114
    .line 1116
    new-instance v7, Ljava/lang/StringBuilder;

    #@116
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@119
    const-string/jumbo v8, "Invalid argument address = "

    #@11c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v7

    #@120
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v7

    #@124
    const-string/jumbo v8, " port = "

    #@127
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v7

    #@12b
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v7

    #@12f
    .line 1117
    const-string/jumbo v8, " transport = "

    #@132
    .line 1116
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v7

    #@136
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v7

    #@13a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v7

    #@13e
    .line 1115
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@141
    .line 1118
    :cond_9
    new-instance v6, Ljavax/sip/InvalidArgumentException;

    #@143
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@146
    move-result-object v7

    #@147
    invoke-direct {v6, v7, v0}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14a
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@14b
    .line 1113
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local v1    # "inetAddr":Ljava/net/InetAddress;
    .restart local v4    # "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local v5    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :catch_1
    move-exception v0

    #@14c
    .restart local v0    # "ex":Ljava/io/IOException;
    move-object v3, v4

    #@14d
    .end local v4    # "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local v3    # "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    goto :goto_0
.end method

.method public createSipProvider(Ljavax/sip/ListeningPoint;)Ljavax/sip/SipProvider;
    .locals 5
    .param p1, "listeningPoint"    # Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1130
    if-nez p1, :cond_0

    #@2
    .line 1131
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "null listeningPoint"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1132
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 1133
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@14
    move-result-object v2

    #@15
    .line 1134
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "createSipProvider: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 1133
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2c
    :cond_1
    move-object v0, p1

    #@2d
    .line 1135
    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    #@2f
    .line 1136
    .local v0, "listeningPointImpl":Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v2, v0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@31
    if-eqz v2, :cond_2

    #@33
    .line 1137
    new-instance v2, Ljavax/sip/ObjectInUseException;

    #@35
    const-string/jumbo v3, "Provider already attached!"

    #@38
    invoke-direct {v2, v3}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v2

    #@3c
    .line 1139
    :cond_2
    new-instance v1, Lgov/nist/javax/sip/SipProviderImpl;

    #@3e
    invoke-direct {v1, p0}, Lgov/nist/javax/sip/SipProviderImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    #@41
    .line 1141
    .local v1, "provider":Lgov/nist/javax/sip/SipProviderImpl;
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/SipProviderImpl;->setListeningPoint(Ljavax/sip/ListeningPoint;)V

    #@44
    .line 1142
    iput-object v1, v0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@46
    .line 1143
    iget-object v2, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    #@48
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@4b
    .line 1144
    return-object v1
.end method

.method public deleteListeningPoint(Ljavax/sip/ListeningPoint;)V
    .locals 4
    .param p1, "listeningPoint"    # Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1154
    if-nez p1, :cond_0

    #@2
    .line 1155
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "null listeningPoint arg"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    :cond_0
    move-object v1, p1

    #@c
    .line 1156
    check-cast v1, Lgov/nist/javax/sip/ListeningPointImpl;

    #@e
    .line 1158
    .local v1, "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v2, v1, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@10
    invoke-super {p0, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    #@13
    .line 1159
    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->getKey()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 1160
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    #@19
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 1153
    return-void
.end method

.method public deleteSipProvider(Ljavax/sip/SipProvider;)V
    .locals 3
    .param p1, "sipProvider"    # Ljavax/sip/SipProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1172
    if-nez p1, :cond_0

    #@2
    .line 1173
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null provider arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    :cond_0
    move-object v0, p1

    #@c
    .line 1174
    check-cast v0, Lgov/nist/javax/sip/SipProviderImpl;

    #@e
    .line 1180
    .local v0, "sipProviderImpl":Lgov/nist/javax/sip/SipProviderImpl;
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1181
    new-instance v1, Ljavax/sip/ObjectInUseException;

    #@16
    .line 1182
    const-string/jumbo v2, "SipProvider still has an associated SipListener!"

    #@19
    .line 1181
    invoke-direct {v1, v2}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 1185
    :cond_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->removeListeningPoints()V

    #@20
    .line 1188
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->stop()V

    #@23
    .line 1189
    iget-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    #@25
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    #@28
    .line 1190
    iget-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    #@2a
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 1191
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->stopStack()V

    #@33
    .line 1170
    :cond_2
    return-void
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 1249
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->stopStack()V

    #@3
    .line 1248
    return-void
.end method

.method public getAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    .locals 1
    .param p1, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .param p2, "headerFactory"    # Ljavax/sip/header/HeaderFactory;

    #@0
    .prologue
    .line 1375
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)V

    #@5
    return-object v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1420
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1453
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEventScanner()Lgov/nist/javax/sip/EventScanner;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1363
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    #@2
    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1202
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getHostAddress()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getListeningPoints()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 1211
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getLogRecordFactory()Lgov/nist/javax/sip/LogRecordFactory;
    .locals 1

    #@0
    .prologue
    .line 1320
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    #@2
    return-object v0
.end method

.method public getSecureAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    .locals 1
    .param p1, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;
    .param p2, "headerFactory"    # Ljavax/sip/header/HeaderFactory;

    #@0
    .prologue
    .line 1387
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)V

    #@5
    return-object v0
.end method

.method public getSipListener()Ljavax/sip/SipListener;
    .locals 1

    #@0
    .prologue
    .line 1311
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    #@2
    return-object v0
.end method

.method public getSipProviders()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgov/nist/javax/sip/SipProviderImpl;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1230
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStackName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1239
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->stackName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isAutomaticDialogErrorHandlingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1478
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    #@2
    return v0
.end method

.method isAutomaticDialogSupportEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 521
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    #@2
    return v0
.end method

.method public isBackToBackUserAgent()Z
    .locals 1

    #@0
    .prologue
    .line 1474
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    #@2
    return v0
.end method

.method public isRetransmissionFilterActive()Z
    .locals 1

    #@0
    .prologue
    .line 1221
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public releaseSem()V
    .locals 1

    #@0
    .prologue
    .line 1490
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    #@5
    .line 1489
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0
    .param p1, "newCipherSuites"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1411
    iput-object p1, p0, Lgov/nist/javax/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    #@2
    .line 1410
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0
    .param p1, "newProtocols"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1444
    iput-object p1, p0, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    #@2
    .line 1443
    return-void
.end method

.method public setIsBackToBackUserAgent(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 1464
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    #@2
    .line 1463
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ProviderDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 1296
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1297
    new-instance v0, Lgov/nist/javax/sip/EventScanner;

    #@6
    invoke-direct {v0, p0}, Lgov/nist/javax/sip/EventScanner;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    #@b
    .line 1294
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1273
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1274
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "stopStack -- stoppping the stack"

    #@e
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@11
    .line 1276
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->stopStack()V

    #@14
    .line 1277
    new-instance v0, Ljava/util/LinkedList;

    #@16
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@19
    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    #@1b
    .line 1278
    new-instance v0, Ljava/util/Hashtable;

    #@1d
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@20
    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    #@22
    .line 1283
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 1284
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    #@28
    invoke-virtual {v0}, Lgov/nist/javax/sip/EventScanner;->forceStop()V

    #@2b
    .line 1285
    :cond_1
    iput-object v2, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    #@2d
    .line 1272
    return-void
.end method
