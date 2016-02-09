.class public Ljavax/sip/SipFactory;
.super Ljava/lang/Object;
.source "SipFactory.java"


# static fields
.field private static final IP_ADDRESS_PROP:Ljava/lang/String; = "javax.sip.IP_ADDRESS"

.field private static final STACK_NAME_PROP:Ljava/lang/String; = "javax.sip.STACK_NAME"

.field private static sSipFactory:Ljavax/sip/SipFactory;


# instance fields
.field private mNameSipStackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/sip/SipStack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 15
    const/4 v0, 0x0

    #@1
    sput-object v0, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;

    #@3
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 23
    iput-object v0, p0, Ljavax/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    #@a
    .line 26
    return-void
.end method

.method public static declared-synchronized getInstance()Ljavax/sip/SipFactory;
    .locals 2

    #@0
    .prologue
    const-class v1, Ljavax/sip/SipFactory;

    #@2
    monitor-enter v1

    #@3
    .line 18
    :try_start_0
    sget-object v0, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;

    #@5
    if-nez v0, :cond_0

    #@7
    new-instance v0, Ljavax/sip/SipFactory;

    #@9
    invoke-direct {v0}, Ljavax/sip/SipFactory;-><init>()V

    #@c
    sput-object v0, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;

    #@e
    .line 19
    :cond_0
    sget-object v0, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method


# virtual methods
.method public createAddressFactory()Ljavax/sip/address/AddressFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/address/AddressFactoryImpl;

    #@2
    invoke-direct {v1}, Lgov/nist/javax/sip/address/AddressFactoryImpl;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 68
    :catch_0
    move-exception v0

    #@7
    .line 69
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljavax/sip/PeerUnavailableException;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 70
    check-cast v0, Ljavax/sip/PeerUnavailableException;

    #@d
    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    #@e
    .line 72
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljavax/sip/PeerUnavailableException;

    #@10
    .line 73
    const-string/jumbo v2, "Failed to create AddressFactory"

    #@13
    .line 72
    invoke-direct {v1, v2, v0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public createHeaderFactory()Ljavax/sip/header/HeaderFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/HeaderFactoryImpl;

    #@2
    invoke-direct {v1}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 81
    :catch_0
    move-exception v0

    #@7
    .line 82
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljavax/sip/PeerUnavailableException;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 83
    check-cast v0, Ljavax/sip/PeerUnavailableException;

    #@d
    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    #@e
    .line 85
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljavax/sip/PeerUnavailableException;

    #@10
    .line 86
    const-string/jumbo v2, "Failed to create HeaderFactory"

    #@13
    .line 85
    invoke-direct {v1, v2, v0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public createMessageFactory()Ljavax/sip/message/MessageFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;

    #@2
    invoke-direct {v1}, Lgov/nist/javax/sip/message/MessageFactoryImpl;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 95
    :catch_0
    move-exception v0

    #@7
    .line 96
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljavax/sip/PeerUnavailableException;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 97
    check-cast v0, Ljavax/sip/PeerUnavailableException;

    #@d
    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    #@e
    .line 99
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljavax/sip/PeerUnavailableException;

    #@10
    .line 100
    const-string/jumbo v2, "Failed to create MessageFactory"

    #@13
    .line 99
    invoke-direct {v1, v2, v0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public declared-synchronized createSipStack(Ljava/util/Properties;)Ljavax/sip/SipStack;
    .locals 8
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 37
    :try_start_0
    const-string/jumbo v4, "javax.sip.IP_ADDRESS"

    #@4
    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 38
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    #@a
    .line 39
    const-string/jumbo v4, "javax.sip.STACK_NAME"

    #@d
    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 40
    if-nez v2, :cond_0

    #@13
    .line 41
    new-instance v4, Ljavax/sip/PeerUnavailableException;

    #@15
    .line 42
    const-string/jumbo v5, "javax.sip.STACK_NAME property not found"

    #@18
    .line 41
    invoke-direct {v4, v5}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .end local v2    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@1d
    monitor-exit p0

    #@1e
    throw v4

    #@1f
    .line 46
    .restart local v2    # "name":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljavax/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    #@21
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Ljavax/sip/SipStack;

    #@27
    .line 47
    .local v3, "sipStack":Ljavax/sip/SipStack;
    if-nez v3, :cond_1

    #@29
    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "gov.nist."

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    .line 49
    const-class v5, Ljavax/sip/SipStack;

    #@37
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    .line 49
    const-string/jumbo v5, "Impl"

    #@42
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    move-result-object v1

    #@4a
    .line 51
    .local v1, "implClassName":Ljava/lang/String;
    :try_start_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@4d
    move-result-object v4

    #@4e
    .line 52
    const-class v5, Ljavax/sip/SipStack;

    #@50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@53
    move-result-object v4

    #@54
    .line 53
    const/4 v5, 0x1

    #@55
    new-array v5, v5, [Ljava/lang/Class;

    #@57
    const-class v6, Ljava/util/Properties;

    #@59
    const/4 v7, 0x0

    #@5a
    aput-object v6, v5, v7

    #@5c
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@5f
    move-result-object v4

    #@60
    .line 54
    const/4 v5, 0x1

    #@61
    new-array v5, v5, [Ljava/lang/Object;

    #@63
    const/4 v6, 0x0

    #@64
    aput-object p1, v5, v6

    #@66
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    move-result-object v3

    #@6a
    .end local v3    # "sipStack":Ljavax/sip/SipStack;
    check-cast v3, Ljavax/sip/SipStack;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6c
    .line 59
    .restart local v3    # "sipStack":Ljavax/sip/SipStack;
    :try_start_3
    iget-object v4, p0, Ljavax/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    #@6e
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@71
    .end local v1    # "implClassName":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    #@72
    .line 61
    return-object v3

    #@73
    .line 55
    .end local v3    # "sipStack":Ljavax/sip/SipStack;
    .restart local v1    # "implClassName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@74
    .line 56
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Ljavax/sip/PeerUnavailableException;

    #@76
    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v6, "Failed to initiate "

    #@7e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v5

    #@82
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    .line 56
    invoke-direct {v4, v5, v0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8d
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized resetFactory()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 30
    :try_start_0
    iget-object v0, p0, Ljavax/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    #@3
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 29
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method
