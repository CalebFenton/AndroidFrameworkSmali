.class public Ljavax/sip/SipFactory;
.super Ljava/lang/Object;
.source "SipFactory.java"


# static fields
.field private static final blacklist IP_ADDRESS_PROP:Ljava/lang/String; = "javax.sip.IP_ADDRESS"

.field private static final blacklist STACK_NAME_PROP:Ljava/lang/String; = "javax.sip.STACK_NAME"

.field private static blacklist sSipFactory:Ljavax/sip/SipFactory;


# instance fields
.field private blacklist mNameSipStackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/sip/SipStack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Ljavax/sip/SipFactory;
    .registers 2

    const-class v0, Ljavax/sip/SipFactory;

    monitor-enter v0

    .line 18
    :try_start_3
    sget-object v1, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;

    if-nez v1, :cond_e

    new-instance v1, Ljavax/sip/SipFactory;

    invoke-direct {v1}, Ljavax/sip/SipFactory;-><init>()V

    sput-object v1, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;

    .line 19
    :cond_e
    sget-object v1, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 17
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public blacklist createAddressFactory()Ljavax/sip/address/AddressFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .line 67
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/address/AddressFactoryImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressFactoryImpl;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 68
    :catch_6
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljavax/sip/PeerUnavailableException;

    if-eqz v1, :cond_f

    .line 70
    move-object v1, v0

    check-cast v1, Ljavax/sip/PeerUnavailableException;

    throw v1

    .line 72
    :cond_f
    new-instance v1, Ljavax/sip/PeerUnavailableException;

    const-string v2, "Failed to create AddressFactory"

    invoke-direct {v1, v2, v0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist createHeaderFactory()Ljavax/sip/header/HeaderFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .line 80
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 81
    :catch_6
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljavax/sip/PeerUnavailableException;

    if-eqz v1, :cond_f

    .line 83
    move-object v1, v0

    check-cast v1, Ljavax/sip/PeerUnavailableException;

    throw v1

    .line 85
    :cond_f
    new-instance v1, Ljavax/sip/PeerUnavailableException;

    const-string v2, "Failed to create HeaderFactory"

    invoke-direct {v1, v2, v0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist createMessageFactory()Ljavax/sip/message/MessageFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .line 94
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/MessageFactoryImpl;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 95
    :catch_6
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljavax/sip/PeerUnavailableException;

    if-eqz v1, :cond_f

    .line 97
    move-object v1, v0

    check-cast v1, Ljavax/sip/PeerUnavailableException;

    throw v1

    .line 99
    :cond_f
    new-instance v1, Ljavax/sip/PeerUnavailableException;

    const-string v2, "Failed to create MessageFactory"

    invoke-direct {v1, v2, v0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized blacklist createSipStack(Ljava/util/Properties;)Ljavax/sip/SipStack;
    .registers 9
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    monitor-enter p0

    .line 37
    :try_start_1
    const-string v0, "javax.sip.IP_ADDRESS"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 39
    const-string v1, "javax.sip.STACK_NAME"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 40
    if-eqz v0, :cond_13

    goto :goto_1b

    .line 41
    :cond_13
    new-instance v1, Ljavax/sip/PeerUnavailableException;

    const-string v2, "javax.sip.STACK_NAME property not found"

    invoke-direct {v1, v2}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    .end local p0    # "this":Ljavax/sip/SipFactory;
    :cond_1b
    :goto_1b
    iget-object v1, p0, Ljavax/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/SipStack;

    .line 47
    .local v1, "sipStack":Ljavax/sip/SipStack;
    if-nez v1, :cond_86

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gov.nist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Ljavax/sip/SipStack;

    .line 49
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Impl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_88

    .line 51
    .local v2, "implClassName":Ljava/lang/String;
    :try_start_44
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljavax/sip/SipStack;

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/util/Properties;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/sip/SipStack;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_64} :catch_6c
    .catchall {:try_start_44 .. :try_end_64} :catchall_88

    move-object v1, v3

    .line 58
    nop

    .line 59
    :try_start_66
    iget-object v3, p0, Ljavax/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_86

    .line 55
    :catch_6c
    move-exception v3

    .line 56
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljavax/sip/PeerUnavailableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to initiate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_86
    .catchall {:try_start_66 .. :try_end_86} :catchall_88

    .line 61
    .end local v2    # "implClassName":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_86
    :goto_86
    monitor-exit p0

    return-object v1

    .line 36
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "sipStack":Ljavax/sip/SipStack;
    .end local p1    # "properties":Ljava/util/Properties;
    :catchall_88
    move-exception p1

    :try_start_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p1
.end method

.method public declared-synchronized blacklist resetFactory()V
    .registers 2

    monitor-enter p0

    .line 30
    :try_start_1
    iget-object v0, p0, Ljavax/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 31
    monitor-exit p0

    return-void

    .line 29
    .end local p0    # "this":Ljavax/sip/SipFactory;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method
