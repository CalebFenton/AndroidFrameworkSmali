.class public Lgov/nist/javax/sip/SipProviderImpl;
.super Ljava/lang/Object;
.source "SipProviderImpl.java"

# interfaces
.implements Ljavax/sip/SipProvider;
.implements Lgov/nist/javax/sip/SipProviderExt;
.implements Lgov/nist/javax/sip/stack/SIPTransactionEventListener;
.implements Lgov/nist/javax/sip/stack/SIPDialogEventListener;


# instance fields
.field private IN6_ADDR_ANY:Ljava/lang/String;

.field private IN_ADDR_ANY:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private automaticDialogSupportEnabled:Z

.field private dialogErrorsAutomaticallyHandled:Z

.field private eventScanner:Lgov/nist/javax/sip/EventScanner;

.field private listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

.field private port:I

.field private sipListener:Ljavax/sip/SipListener;

.field protected sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 117
    const-string/jumbo v0, "0.0.0.0"

    #@6
    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN_ADDR_ANY:Ljava/lang/String;

    #@8
    .line 122
    const-string/jumbo v0, "::0"

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN6_ADDR_ANY:Ljava/lang/String;

    #@d
    .line 124
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    #@10
    .line 126
    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .locals 1
    .param p1, "sipStack"    # Lgov/nist/javax/sip/SipStackImpl;

    #@0
    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 117
    const-string/jumbo v0, "0.0.0.0"

    #@6
    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN_ADDR_ANY:Ljava/lang/String;

    #@8
    .line 122
    const-string/jumbo v0, "::0"

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN6_ADDR_ANY:Ljava/lang/String;

    #@d
    .line 124
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    #@10
    .line 198
    invoke-virtual {p1}, Lgov/nist/javax/sip/SipStackImpl;->getEventScanner()Lgov/nist/javax/sip/EventScanner;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    #@16
    .line 199
    iput-object p1, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@18
    .line 200
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    #@1a
    invoke-virtual {v0}, Lgov/nist/javax/sip/EventScanner;->incrementRefcount()V

    #@1d
    .line 201
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@1f
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@22
    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@24
    .line 202
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@26
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isAutomaticDialogSupportEnabled()Z

    #@29
    move-result v0

    #@2a
    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    #@2c
    .line 204
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2e
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isAutomaticDialogErrorHandlingEnabled()Z

    #@31
    move-result v0

    #@32
    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    #@34
    .line 197
    return-void
.end method


# virtual methods
.method public declared-synchronized addListeningPoint(Ljavax/sip/ListeningPoint;)V
    .locals 5
    .param p1, "listeningPoint"    # Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1018
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    #@4
    move-object v1, v0

    #@5
    .line 1019
    .local v1, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v3, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@7
    if-eqz v3, :cond_0

    #@9
    iget-object v3, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@b
    if-eq v3, p0, :cond_0

    #@d
    .line 1020
    new-instance v3, Ljavax/sip/ObjectInUseException;

    #@f
    .line 1021
    const-string/jumbo v4, "Listening point assigned to another provider"

    #@12
    .line 1020
    invoke-direct {v3, v4}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .end local v1    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    :catchall_0
    move-exception v3

    #@17
    monitor-exit p0

    #@18
    throw v3

    #@19
    .line 1022
    .restart local v1    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 1023
    .local v2, "transport":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@23
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 1026
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    iput-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->address:Ljava/lang/String;

    #@2f
    .line 1027
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getPort()I

    #@32
    move-result v3

    #@33
    iput v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->port:I

    #@35
    .line 1035
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@37
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_4

    #@3d
    .line 1036
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@3f
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v3

    #@43
    if-eq v3, p1, :cond_4

    #@45
    .line 1037
    new-instance v3, Ljavax/sip/ObjectInUseException;

    #@47
    .line 1038
    const-string/jumbo v4, "Listening point already assigned for transport!"

    #@4a
    .line 1037
    invoke-direct {v3, v4}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v3

    #@4e
    .line 1029
    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->address:Ljava/lang/String;

    #@50
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_3

    #@5a
    .line 1030
    iget v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->port:I

    #@5c
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getPort()I

    #@5f
    move-result v4

    #@60
    if-eq v3, v4, :cond_1

    #@62
    .line 1031
    :cond_3
    new-instance v3, Ljavax/sip/ObjectInUseException;

    #@64
    .line 1032
    const-string/jumbo v4, "Provider already has different IP Address associated"

    #@67
    .line 1031
    invoke-direct {v3, v4}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v3

    #@6b
    .line 1041
    :cond_4
    iput-object p0, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@6d
    .line 1043
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@6f
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@72
    monitor-exit p0

    #@73
    .line 1017
    return-void
.end method

.method public addSipListener(Ljavax/sip/SipListener;)V
    .locals 3
    .param p1, "sipListener"    # Ljavax/sip/SipListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/TooManyListenersException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2
    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    #@4
    if-nez v0, :cond_2

    #@6
    .line 226
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@8
    iput-object p1, v0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    #@a
    .line 232
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@c
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 233
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@14
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@17
    move-result-object v0

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "add SipListener "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2f
    .line 234
    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipListener:Ljavax/sip/SipListener;

    #@31
    .line 223
    return-void

    #@32
    .line 227
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@34
    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    #@36
    if-eq v0, p1, :cond_0

    #@38
    .line 228
    new-instance v0, Ljava/util/TooManyListenersException;

    #@3a
    .line 229
    const-string/jumbo v1, "Stack already has a listener. Only one listener per stack allowed"

    #@3d
    .line 228
    invoke-direct {v0, v1}, Ljava/util/TooManyListenersException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 213
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    #@2
    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    #@5
    throw v0
.end method

.method public declared-synchronized dialogErrorEvent(Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;)V
    .locals 6
    .param p1, "dialogErrorEvent"    # Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 982
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getSource()Ljava/lang/Object;

    #@4
    move-result-object v2

    #@5
    check-cast v2, Lgov/nist/javax/sip/stack/SIPDialog;

    #@7
    .line 983
    .local v2, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotReceived:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@9
    .line 984
    .local v1, "reason":Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getErrorID()I

    #@c
    move-result v3

    #@d
    const/4 v4, 0x2

    #@e
    if-ne v3, v4, :cond_2

    #@10
    .line 985
    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotSent:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@12
    .line 989
    :cond_0
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@14
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 990
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1c
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1f
    move-result-object v3

    #@20
    .line 991
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "Dialog TimeoutError occured on "

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    .line 990
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@37
    .line 993
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/DialogTimeoutEvent;

    #@39
    invoke-direct {v0, p0, v2, v1}, Lgov/nist/javax/sip/DialogTimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;)V

    #@3c
    .line 995
    .local v0, "ev":Lgov/nist/javax/sip/DialogTimeoutEvent;
    const/4 v3, 0x0

    #@3d
    invoke-virtual {p0, v0, v3}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    monitor-exit p0

    #@41
    .line 981
    return-void

    #@42
    .line 986
    .end local v0    # "ev":Lgov/nist/javax/sip/DialogTimeoutEvent;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getErrorID()I

    #@45
    move-result v3

    #@46
    const/4 v4, 0x3

    #@47
    if-ne v3, v4, :cond_0

    #@49
    .line 987
    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->ReInviteTimeout:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .end local v1    # "reason":Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    .end local v2    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :catchall_0
    move-exception v3

    #@4d
    monitor-exit p0

    #@4e
    throw v3
.end method

.method public getListeningPoint()Ljavax/sip/ListeningPoint;
    .locals 1

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_0

    #@8
    .line 246
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljavax/sip/ListeningPoint;

    #@18
    return-object v0

    #@19
    .line 249
    :cond_0
    const/4 v0, 0x0

    #@1a
    return-object v0
.end method

.method public getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
    if-nez p1, :cond_0

    #@2
    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "Null transport param"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 154
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@d
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljavax/sip/ListeningPoint;

    #@17
    return-object v0
.end method

.method public declared-synchronized getListeningPoints()[Ljavax/sip/ListeningPoint;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1005
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    #@6
    move-result v1

    #@7
    new-array v0, v1, [Lgov/nist/javax/sip/ListeningPointImpl;

    #@9
    .line 1007
    .local v0, "retval":[Ljavax/sip/ListeningPoint;
    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@b
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 1008
    return-object v0

    #@14
    .end local v0    # "retval":[Ljavax/sip/ListeningPoint;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method

.method public getNewCallId()Ljavax/sip/header/CallIdHeader;
    .locals 5

    #@0
    .prologue
    .line 258
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint()Ljavax/sip/ListeningPoint;

    #@7
    move-result-object v4

    #@8
    invoke-interface {v4}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/Utils;->generateCallIdentifier(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 260
    .local v0, "callId":Ljava/lang/String;
    new-instance v1, Lgov/nist/javax/sip/header/CallID;

    #@12
    invoke-direct {v1}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    #@15
    .line 262
    .local v1, "callid":Lgov/nist/javax/sip/header/CallID;
    :try_start_0
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 265
    :goto_0
    return-object v1

    #@19
    .line 263
    :catch_0
    move-exception v2

    #@1a
    .local v2, "ex":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;
    .locals 23
    .param p1, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionUnavailableException;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    if-nez p1, :cond_0

    #@2
    .line 277
    new-instance v20, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v21, "null request"

    #@7
    invoke-direct/range {v20 .. v21}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v20

    #@b
    .line 278
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@f
    move-object/from16 v20, v0

    #@11
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    #@14
    move-result v20

    #@15
    if-nez v20, :cond_1

    #@17
    .line 279
    new-instance v20, Ljavax/sip/TransactionUnavailableException;

    #@19
    const-string/jumbo v21, "Stack is stopped"

    #@1c
    invoke-direct/range {v20 .. v21}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v20

    #@20
    :cond_1
    move-object/from16 v16, p1

    #@22
    .line 281
    check-cast v16, Lgov/nist/javax/sip/message/SIPRequest;

    #@24
    .line 282
    .local v16, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    #@27
    move-result-object v20

    #@28
    if-eqz v20, :cond_2

    #@2a
    .line 283
    new-instance v20, Ljavax/sip/TransactionUnavailableException;

    #@2c
    .line 284
    const-string/jumbo v21, "Transaction already assigned to request"

    #@2f
    .line 283
    invoke-direct/range {v20 .. v21}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@32
    throw v20

    #@33
    .line 285
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@36
    move-result-object v20

    #@37
    const-string/jumbo v21, "ACK"

    #@3a
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v20

    #@3e
    if-eqz v20, :cond_3

    #@40
    .line 286
    new-instance v20, Ljavax/sip/TransactionUnavailableException;

    #@42
    const-string/jumbo v21, "Cannot create client transaction for  ACK"

    #@45
    invoke-direct/range {v20 .. v21}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@48
    throw v20

    #@49
    .line 290
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@4c
    move-result-object v20

    #@4d
    if-nez v20, :cond_4

    #@4f
    .line 292
    const-string/jumbo v20, "udp"

    #@52
    .line 291
    move-object/from16 v0, p0

    #@54
    move-object/from16 v1, v20

    #@56
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@59
    move-result-object v13

    #@5a
    check-cast v13, Lgov/nist/javax/sip/ListeningPointImpl;

    #@5c
    .line 293
    .local v13, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    invoke-virtual {v13}, Lgov/nist/javax/sip/ListeningPointImpl;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    #@5f
    move-result-object v19

    #@60
    .line 294
    .local v19, "via":Lgov/nist/javax/sip/header/Via;
    move-object/from16 v0, p1

    #@62
    move-object/from16 v1, v19

    #@64
    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->setHeader(Ljavax/sip/header/Header;)V

    #@67
    .line 298
    .end local v13    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v19    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_4
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    .line 307
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@6d
    move-result-object v20

    #@6e
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@71
    move-result-object v20

    #@72
    if-eqz v20, :cond_5

    #@74
    .line 308
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@77
    move-result-object v20

    #@78
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@7b
    move-result-object v20

    #@7c
    .line 309
    const-string/jumbo v21, "z9hG4bK"

    #@7f
    .line 308
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@82
    move-result v20

    #@83
    .line 307
    if-eqz v20, :cond_5

    #@85
    .line 310
    move-object/from16 v0, p0

    #@87
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@89
    move-object/from16 v21, v0

    #@8b
    move-object/from16 v20, p1

    #@8d
    check-cast v20, Lgov/nist/javax/sip/message/SIPRequest;

    #@8f
    const/16 v22, 0x0

    #@91
    move-object/from16 v0, v21

    #@93
    move-object/from16 v1, v20

    #@95
    move/from16 v2, v22

    #@97
    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    #@9a
    move-result-object v20

    #@9b
    if-eqz v20, :cond_5

    #@9d
    .line 311
    new-instance v20, Ljavax/sip/TransactionUnavailableException;

    #@9f
    .line 312
    const-string/jumbo v21, "Transaction already exists!"

    #@a2
    .line 311
    invoke-direct/range {v20 .. v21}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v20

    #@a6
    .line 299
    :catch_0
    move-exception v8

    #@a7
    .line 300
    .local v8, "ex":Ljava/text/ParseException;
    new-instance v20, Ljavax/sip/TransactionUnavailableException;

    #@a9
    invoke-virtual {v8}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@ac
    move-result-object v21

    #@ad
    move-object/from16 v0, v20

    #@af
    move-object/from16 v1, v21

    #@b1
    invoke-direct {v0, v1, v8}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b4
    throw v20

    #@b5
    .line 318
    .end local v8    # "ex":Ljava/text/ParseException;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@b8
    move-result-object v20

    #@b9
    const-string/jumbo v21, "CANCEL"

    #@bc
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@bf
    move-result v20

    #@c0
    if-eqz v20, :cond_7

    #@c2
    .line 319
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@c6
    move-object/from16 v21, v0

    #@c8
    move-object/from16 v20, p1

    #@ca
    .line 320
    check-cast v20, Lgov/nist/javax/sip/message/SIPRequest;

    #@cc
    const/16 v22, 0x0

    #@ce
    .line 319
    move-object/from16 v0, v21

    #@d0
    move-object/from16 v1, v20

    #@d2
    move/from16 v2, v22

    #@d4
    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    #@d7
    move-result-object v4

    #@d8
    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@da
    .line 321
    .local v4, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v4, :cond_7

    #@dc
    .line 322
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@e0
    move-object/from16 v20, v0

    #@e2
    .line 323
    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    #@e4
    .end local p1    # "request":Ljavax/sip/message/Request;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@e7
    move-result-object v21

    #@e8
    .line 322
    move-object/from16 v0, v20

    #@ea
    move-object/from16 v1, p1

    #@ec
    move-object/from16 v2, v21

    #@ee
    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@f1
    move-result-object v14

    #@f2
    .local v14, "retval":Ljavax/sip/ClientTransaction;
    move-object/from16 v20, v14

    #@f4
    .line 325
    check-cast v20, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@f6
    move-object/from16 v0, v20

    #@f8
    move-object/from16 v1, p0

    #@fa
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    #@fd
    .line 326
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@101
    move-object/from16 v21, v0

    #@103
    move-object/from16 v20, v14

    #@105
    check-cast v20, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@107
    move-object/from16 v0, v21

    #@109
    move-object/from16 v1, v20

    #@10b
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    #@10e
    .line 327
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@111
    move-result-object v20

    #@112
    if-eqz v20, :cond_6

    #@114
    move-object/from16 v20, v14

    #@116
    .line 328
    check-cast v20, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@118
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@11b
    move-result-object v21

    #@11c
    check-cast v21, Lgov/nist/javax/sip/stack/SIPDialog;

    #@11e
    .line 329
    const/16 v22, 0x0

    #@120
    move-object/from16 v0, v16

    #@122
    move/from16 v1, v22

    #@124
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@127
    move-result-object v22

    #@128
    .line 328
    invoke-virtual/range {v20 .. v22}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@12b
    .line 332
    :cond_6
    return-object v14

    #@12c
    .line 336
    .end local v4    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v14    # "retval":Ljavax/sip/ClientTransaction;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :cond_7
    move-object/from16 v0, p0

    #@12e
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@130
    move-object/from16 v20, v0

    #@132
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@135
    move-result v20

    #@136
    if-eqz v20, :cond_8

    #@138
    .line 337
    move-object/from16 v0, p0

    #@13a
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@13c
    move-object/from16 v20, v0

    #@13e
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@141
    move-result-object v21

    #@142
    .line 338
    new-instance v20, Ljava/lang/StringBuilder;

    #@144
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v22, "could not find existing transaction for "

    #@14a
    move-object/from16 v0, v20

    #@14c
    move-object/from16 v1, v22

    #@14e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v22

    #@152
    move-object/from16 v20, p1

    #@154
    .line 339
    check-cast v20, Lgov/nist/javax/sip/message/SIPRequest;

    #@156
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@159
    move-result-object v20

    #@15a
    .line 338
    move-object/from16 v0, v22

    #@15c
    move-object/from16 v1, v20

    #@15e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v20

    #@162
    .line 340
    const-string/jumbo v22, " creating a new one "

    #@165
    .line 338
    move-object/from16 v0, v20

    #@167
    move-object/from16 v1, v22

    #@169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v20

    #@16d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@170
    move-result-object v20

    #@171
    .line 337
    move-object/from16 v0, v21

    #@173
    move-object/from16 v1, v20

    #@175
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@178
    .line 344
    :cond_8
    const/4 v11, 0x0

    #@179
    .line 346
    .local v11, "hop":Ljavax/sip/address/Hop;
    :try_start_1
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@17d
    move-object/from16 v21, v0

    #@17f
    move-object/from16 v0, p1

    #@181
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@183
    move-object/from16 v20, v0

    #@185
    move-object/from16 v0, v21

    #@187
    move-object/from16 v1, v20

    #@189
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->getNextHop(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Hop;

    #@18c
    move-result-object v11

    #@18d
    .line 347
    .local v11, "hop":Ljavax/sip/address/Hop;
    if-nez v11, :cond_9

    #@18f
    .line 348
    new-instance v20, Ljavax/sip/TransactionUnavailableException;

    #@191
    .line 349
    const-string/jumbo v21, "Cannot resolve next hop -- transaction unavailable"

    #@194
    .line 348
    invoke-direct/range {v20 .. v21}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@197
    throw v20
    :try_end_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_1

    #@198
    .line 350
    .end local v11    # "hop":Ljavax/sip/address/Hop;
    :catch_1
    move-exception v10

    #@199
    .line 351
    .local v10, "ex":Ljavax/sip/SipException;
    new-instance v20, Ljavax/sip/TransactionUnavailableException;

    #@19b
    .line 352
    const-string/jumbo v21, "Cannot resolve next hop -- transaction unavailable"

    #@19e
    .line 351
    move-object/from16 v0, v20

    #@1a0
    move-object/from16 v1, v21

    #@1a2
    invoke-direct {v0, v1, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a5
    throw v20

    #@1a6
    .line 354
    .end local v10    # "ex":Ljavax/sip/SipException;
    .restart local v11    # "hop":Ljavax/sip/address/Hop;
    :cond_9
    invoke-interface {v11}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@1a9
    move-result-object v18

    #@1aa
    .line 355
    .local v18, "transport":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1ac
    move-object/from16 v1, v18

    #@1ae
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@1b1
    move-result-object v12

    #@1b2
    check-cast v12, Lgov/nist/javax/sip/ListeningPointImpl;

    #@1b4
    .line 358
    .local v12, "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    const/16 v20, 0x0

    #@1b6
    move-object/from16 v0, v16

    #@1b8
    move/from16 v1, v20

    #@1ba
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@1bd
    move-result-object v6

    #@1be
    .line 359
    .local v6, "dialogId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1c0
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1c2
    move-object/from16 v20, v0

    #@1c4
    move-object/from16 v0, v20

    #@1c6
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@1c9
    move-result-object v5

    #@1ca
    .line 360
    .local v5, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v5, :cond_a

    #@1cc
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@1cf
    move-result-object v20

    #@1d0
    sget-object v21, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@1d2
    move-object/from16 v0, v20

    #@1d4
    move-object/from16 v1, v21

    #@1d6
    if-ne v0, v1, :cond_a

    #@1d8
    .line 365
    move-object/from16 v0, p0

    #@1da
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1dc
    move-object/from16 v20, v0

    #@1de
    move-object/from16 v0, v20

    #@1e0
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@1e3
    .line 378
    :cond_a
    const/4 v3, 0x0

    #@1e4
    .line 379
    .local v3, "branchId":Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@1e7
    move-result-object v20

    #@1e8
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@1eb
    move-result-object v20

    #@1ec
    if-eqz v20, :cond_b

    #@1ee
    .line 380
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@1f1
    move-result-object v20

    #@1f2
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@1f5
    move-result-object v20

    #@1f6
    .line 381
    const-string/jumbo v21, "z9hG4bK"

    #@1f9
    .line 380
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1fc
    move-result v20

    #@1fd
    if-eqz v20, :cond_b

    #@1ff
    .line 382
    move-object/from16 v0, p0

    #@201
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@203
    move-object/from16 v20, v0

    #@205
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    #@208
    move-result v20

    #@209
    .line 379
    if-eqz v20, :cond_c

    #@20b
    .line 383
    :cond_b
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    #@20e
    move-result-object v20

    #@20f
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    #@212
    move-result-object v3

    #@213
    .line 385
    .local v3, "branchId":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@216
    move-result-object v20

    #@217
    move-object/from16 v0, v20

    #@219
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    #@21c
    .line 387
    .end local v3    # "branchId":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@21f
    move-result-object v17

    #@220
    .line 390
    .local v17, "topmostVia":Lgov/nist/javax/sip/header/Via;
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    #@223
    move-result-object v20

    #@224
    if-nez v20, :cond_d

    #@226
    .line 391
    invoke-virtual/range {v17 .. v18}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V

    #@229
    .line 393
    :cond_d
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Via;->getPort()I

    #@22c
    move-result v20

    #@22d
    const/16 v21, -0x1

    #@22f
    move/from16 v0, v20

    #@231
    move/from16 v1, v21

    #@233
    if-ne v0, v1, :cond_e

    #@235
    .line 394
    invoke-virtual {v12}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    #@238
    move-result v20

    #@239
    move-object/from16 v0, v17

    #@23b
    move/from16 v1, v20

    #@23d
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Via;->setPort(I)V

    #@240
    .line 395
    :cond_e
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@243
    move-result-object v20

    #@244
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@247
    move-result-object v3

    #@248
    .line 397
    .restart local v3    # "branchId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@24a
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@24c
    move-object/from16 v20, v0

    #@24e
    .line 398
    invoke-virtual {v12}, Lgov/nist/javax/sip/ListeningPointImpl;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    #@251
    move-result-object v21

    #@252
    .line 397
    move-object/from16 v0, v20

    #@254
    move-object/from16 v1, v16

    #@256
    move-object/from16 v2, v21

    #@258
    invoke-virtual {v0, v1, v2, v11}, Lgov/nist/javax/sip/SipStackImpl;->createMessageChannel(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageProcessor;Ljavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    #@25b
    move-result-object v4

    #@25c
    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@25e
    .line 400
    .restart local v4    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-nez v4, :cond_f

    #@260
    .line 401
    new-instance v20, Ljavax/sip/TransactionUnavailableException;

    #@262
    const-string/jumbo v21, "Cound not create tx"

    #@265
    invoke-direct/range {v20 .. v21}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@268
    throw v20
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    #@269
    .line 428
    .end local v3    # "branchId":Ljava/lang/String;
    .end local v4    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v17    # "topmostVia":Lgov/nist/javax/sip/header/Via;
    :catch_2
    move-exception v7

    #@26a
    .line 430
    .local v7, "ex":Ljava/io/IOException;
    new-instance v20, Ljavax/sip/TransactionUnavailableException;

    #@26c
    .line 431
    const-string/jumbo v21, "Could not resolve next hop or listening point unavailable! "

    #@26f
    .line 430
    move-object/from16 v0, v20

    #@271
    move-object/from16 v1, v21

    #@273
    invoke-direct {v0, v1, v7}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@276
    throw v20

    #@277
    .line 402
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v3    # "branchId":Ljava/lang/String;
    .restart local v4    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v17    # "topmostVia":Lgov/nist/javax/sip/header/Via;
    :cond_f
    :try_start_3
    invoke-virtual {v4, v11}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setNextHop(Ljavax/sip/address/Hop;)V

    #@27a
    .line 403
    move-object/from16 v0, v16

    #@27c
    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@27f
    .line 404
    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setBranch(Ljava/lang/String;)V

    #@282
    .line 406
    move-object/from16 v0, p0

    #@284
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@286
    move-object/from16 v20, v0

    #@288
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@28b
    move-result-object v20

    #@28c
    invoke-static/range {v20 .. v20}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    #@28f
    move-result v20

    #@290
    if-eqz v20, :cond_12

    #@292
    .line 412
    if-eqz v5, :cond_11

    #@294
    .line 413
    const/16 v20, 0x0

    #@296
    move-object/from16 v0, v16

    #@298
    move/from16 v1, v20

    #@29a
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@29d
    move-result-object v20

    #@29e
    move-object/from16 v0, v20

    #@2a0
    invoke-virtual {v4, v5, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@2a3
    .line 426
    :cond_10
    :goto_0
    move-object/from16 v0, p0

    #@2a5
    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    #@2a8
    .line 427
    return-object v4

    #@2a9
    .line 414
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@2ac
    move-result v20

    #@2ad
    if-eqz v20, :cond_10

    #@2af
    .line 415
    move-object/from16 v0, p0

    #@2b1
    iget-object v0, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2b3
    move-object/from16 v20, v0

    #@2b5
    move-object/from16 v0, v20

    #@2b7
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@2ba
    move-result-object v15

    #@2bb
    .line 416
    .local v15, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    const/16 v20, 0x0

    #@2bd
    move-object/from16 v0, v16

    #@2bf
    move/from16 v1, v20

    #@2c1
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@2c4
    move-result-object v20

    #@2c5
    move-object/from16 v0, v20

    #@2c7
    invoke-virtual {v4, v15, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    #@2ca
    goto :goto_0

    #@2cb
    .line 434
    .end local v3    # "branchId":Ljava/lang/String;
    .end local v4    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v15    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v17    # "topmostVia":Lgov/nist/javax/sip/header/Via;
    :catch_3
    move-exception v8

    #@2cc
    .line 435
    .restart local v8    # "ex":Ljava/text/ParseException;
    invoke-static {v8}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@2cf
    .line 436
    new-instance v20, Ljavax/sip/TransactionUnavailableException;

    #@2d1
    .line 437
    const-string/jumbo v21, "Unexpected Exception FIXME! "

    #@2d4
    .line 436
    move-object/from16 v0, v20

    #@2d6
    move-object/from16 v1, v21

    #@2d8
    invoke-direct {v0, v1, v8}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2db
    throw v20

    #@2dc
    .line 419
    .end local v8    # "ex":Ljava/text/ParseException;
    .restart local v3    # "branchId":Ljava/lang/String;
    .restart local v4    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v17    # "topmostVia":Lgov/nist/javax/sip/header/Via;
    :cond_12
    if-eqz v5, :cond_10

    #@2de
    .line 420
    const/16 v20, 0x0

    #@2e0
    :try_start_4
    move-object/from16 v0, v16

    #@2e2
    move/from16 v1, v20

    #@2e4
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@2e7
    move-result-object v20

    #@2e8
    move-object/from16 v0, v20

    #@2ea
    invoke-virtual {v4, v5, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    #@2ed
    goto :goto_0

    #@2ee
    .line 438
    .end local v3    # "branchId":Ljava/lang/String;
    .end local v4    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v17    # "topmostVia":Lgov/nist/javax/sip/header/Via;
    :catch_4
    move-exception v9

    #@2ef
    .line 439
    .local v9, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-static {v9}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@2f2
    .line 440
    new-instance v20, Ljavax/sip/TransactionUnavailableException;

    #@2f4
    .line 441
    const-string/jumbo v21, "Unexpected Exception FIXME! "

    #@2f7
    .line 440
    move-object/from16 v0, v20

    #@2f9
    move-object/from16 v1, v21

    #@2fb
    invoke-direct {v0, v1, v9}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2fe
    throw v20
.end method

.method public getNewDialog(Ljavax/sip/Transaction;)Ljavax/sip/Dialog;
    .locals 13
    .param p1, "transaction"    # Ljavax/sip/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 823
    if-nez p1, :cond_0

    #@4
    .line 824
    new-instance v9, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v10, "Null transaction!"

    #@9
    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v9

    #@d
    .line 826
    :cond_0
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@f
    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    #@12
    move-result v9

    #@13
    if-nez v9, :cond_1

    #@15
    .line 827
    new-instance v9, Ljavax/sip/SipException;

    #@17
    const-string/jumbo v10, "Stack is stopped."

    #@1a
    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v9

    #@1e
    .line 829
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@21
    move-result v9

    #@22
    if-eqz v9, :cond_2

    #@24
    .line 830
    new-instance v9, Ljavax/sip/SipException;

    #@26
    const-string/jumbo v10, " Error - AUTOMATIC_DIALOG_SUPPORT is on"

    #@29
    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v9

    #@2d
    .line 832
    :cond_2
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2f
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    #@32
    move-result-object v9

    #@33
    invoke-interface {v9}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@36
    move-result-object v9

    #@37
    invoke-static {v9}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    #@3a
    move-result v9

    #@3b
    if-nez v9, :cond_3

    #@3d
    .line 833
    new-instance v9, Ljavax/sip/SipException;

    #@3f
    new-instance v10, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v11, "Dialog cannot be created for this method "

    #@47
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v10

    #@4b
    .line 834
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    #@4e
    move-result-object v11

    #@4f
    invoke-interface {v11}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@52
    move-result-object v11

    #@53
    .line 833
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v10

    #@57
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v10

    #@5b
    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v9

    #@5f
    .line 836
    :cond_3
    const/4 v0, 0x0

    #@60
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    move-object v7, p1

    #@61
    .line 837
    check-cast v7, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@63
    .line 839
    .local v7, "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    instance-of v9, p1, Ljavax/sip/ServerTransaction;

    #@65
    if-eqz v9, :cond_7

    #@67
    move-object v8, p1

    #@68
    .line 840
    check-cast v8, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@6a
    .line 841
    .local v8, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    #@6d
    move-result-object v4

    #@6e
    .line 842
    .local v4, "response":Ljavax/sip/message/Response;
    if-eqz v4, :cond_4

    #@70
    .line 843
    invoke-interface {v4}, Ljavax/sip/message/Response;->getStatusCode()I

    #@73
    move-result v9

    #@74
    const/16 v10, 0x64

    #@76
    if-eq v9, v10, :cond_4

    #@78
    .line 844
    new-instance v9, Ljavax/sip/SipException;

    #@7a
    .line 845
    const-string/jumbo v10, "Cannot set dialog after response has been sent"

    #@7d
    .line 844
    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@80
    throw v9

    #@81
    .line 847
    :cond_4
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    #@84
    move-result-object v6

    #@85
    check-cast v6, Lgov/nist/javax/sip/message/SIPRequest;

    #@87
    .line 848
    .local v6, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v6, v12}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    .line 849
    .local v1, "dialogId":Ljava/lang/String;
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@8d
    invoke-virtual {v9, v1}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@90
    move-result-object v0

    #@91
    .line 850
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-nez v0, :cond_6

    #@93
    .line 851
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@95
    check-cast p1, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@97
    .end local p1    # "transaction":Ljavax/sip/Transaction;
    invoke-virtual {v9, p1}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@9a
    move-result-object v0

    #@9b
    .line 853
    invoke-virtual {v0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@9e
    .line 854
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@a1
    .line 855
    invoke-virtual {v7, v0, v11}, Lgov/nist/javax/sip/stack/SIPTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@a4
    .line 860
    :goto_0
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@a7
    move-result-object v9

    #@a8
    const-string/jumbo v10, "INVITE"

    #@ab
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ae
    move-result v9

    #@af
    if-eqz v9, :cond_5

    #@b1
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    #@b4
    move-result v9

    #@b5
    if-eqz v9, :cond_5

    #@b7
    .line 861
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@b9
    invoke-virtual {v9, v8, v6}, Lgov/nist/javax/sip/SipStackImpl;->putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V

    #@bc
    .line 888
    .end local v4    # "response":Ljavax/sip/message/Response;
    .end local v6    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v8    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_5
    :goto_1
    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/SIPDialog;->addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V

    #@bf
    .line 889
    return-object v0

    #@c0
    .line 858
    .restart local v4    # "response":Ljavax/sip/message/Response;
    .restart local v6    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v8    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p1    # "transaction":Ljavax/sip/Transaction;
    :cond_6
    invoke-virtual {v6, v12}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@c3
    move-result-object v9

    #@c4
    invoke-virtual {v7, v0, v9}, Lgov/nist/javax/sip/stack/SIPTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@c7
    goto :goto_0

    #@c8
    .end local v1    # "dialogId":Ljava/lang/String;
    .end local v4    # "response":Ljavax/sip/message/Response;
    .end local v6    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v8    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_7
    move-object v5, p1

    #@c9
    .line 865
    check-cast v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@cb
    .line 867
    .local v5, "sipClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    #@ce
    move-result-object v3

    #@cf
    .line 869
    .local v3, "response":Lgov/nist/javax/sip/message/SIPResponse;
    if-nez v3, :cond_9

    #@d1
    .line 872
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getRequest()Ljavax/sip/message/Request;

    #@d4
    move-result-object v2

    #@d5
    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    #@d7
    .line 874
    .local v2, "request":Lgov/nist/javax/sip/message/SIPRequest;
    const/4 v9, 0x0

    #@d8
    invoke-virtual {v2, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@db
    move-result-object v1

    #@dc
    .line 875
    .restart local v1    # "dialogId":Ljava/lang/String;
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@de
    invoke-virtual {v9, v1}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@e1
    move-result-object v0

    #@e2
    .line 876
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v0, :cond_8

    #@e4
    .line 877
    new-instance v9, Ljavax/sip/SipException;

    #@e6
    const-string/jumbo v10, "Dialog already exists!"

    #@e9
    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@ec
    throw v9

    #@ed
    .line 879
    :cond_8
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@ef
    invoke-virtual {v9, v7}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@f2
    move-result-object v0

    #@f3
    .line 881
    invoke-virtual {v5, v0, v11}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@f6
    goto :goto_1

    #@f7
    .line 884
    .end local v1    # "dialogId":Ljava/lang/String;
    .end local v2    # "request":Lgov/nist/javax/sip/message/SIPRequest;
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_9
    new-instance v9, Ljavax/sip/SipException;

    #@f9
    .line 885
    const-string/jumbo v10, "Cannot call this method after response is received!"

    #@fc
    .line 884
    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@ff
    throw v9
.end method

.method public getNewServerTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ServerTransaction;
    .locals 12
    .param p1, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionAlreadyExistsException;,
            Ljavax/sip/TransactionUnavailableException;
        }
    .end annotation

    #@0
    .prologue
    .line 455
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2
    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    #@5
    move-result v9

    #@6
    if-nez v9, :cond_0

    #@8
    .line 456
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    #@a
    const-string/jumbo v10, "Stack is stopped"

    #@d
    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@10
    throw v9

    #@11
    .line 457
    :cond_0
    const/4 v8, 0x0

    #@12
    .local v8, "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    move-object v7, p1

    #@13
    .line 458
    check-cast v7, Lgov/nist/javax/sip/message/SIPRequest;

    #@15
    .line 460
    .local v7, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :try_start_0
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 465
    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    const-string/jumbo v10, "ACK"

    #@1f
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v9

    #@23
    if-eqz v9, :cond_2

    #@25
    .line 466
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@27
    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@2a
    move-result v9

    #@2b
    if-eqz v9, :cond_1

    #@2d
    .line 467
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2f
    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@32
    move-result-object v9

    #@33
    const-string/jumbo v10, "Creating server transaction for ACK -- makes no sense!"

    #@36
    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@39
    .line 468
    :cond_1
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    #@3b
    const-string/jumbo v10, "Cannot create Server transaction for ACK "

    #@3e
    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@41
    throw v9

    #@42
    .line 461
    :catch_0
    move-exception v5

    #@43
    .line 462
    .local v5, "ex":Ljava/text/ParseException;
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    #@45
    invoke-virtual {v5}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@48
    move-result-object v10

    #@49
    invoke-direct {v9, v10, v5}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4c
    throw v9

    #@4d
    .line 473
    .end local v5    # "ex":Ljava/text/ParseException;
    :cond_2
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@50
    move-result-object v9

    #@51
    const-string/jumbo v10, "NOTIFY"

    #@54
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v9

    #@58
    if-eqz v9, :cond_3

    #@5a
    .line 474
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    #@5d
    move-result-object v9

    #@5e
    if-eqz v9, :cond_3

    #@60
    .line 475
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    #@63
    move-result-object v9

    #@64
    if-nez v9, :cond_3

    #@66
    .line 477
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@68
    .line 478
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint()Ljavax/sip/ListeningPoint;

    #@6b
    move-result-object v9

    #@6c
    check-cast v9, Lgov/nist/javax/sip/ListeningPointImpl;

    #@6e
    .line 477
    invoke-virtual {v10, v7, v9}, Lgov/nist/javax/sip/SipStackImpl;->findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@71
    move-result-object v1

    #@72
    .line 480
    .local v1, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-nez v1, :cond_3

    #@74
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@76
    iget-boolean v9, v9, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    #@78
    if-eqz v9, :cond_4

    #@7a
    .line 485
    .end local v1    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_3
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@7c
    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->acquireSem()Z

    #@7f
    move-result v9

    #@80
    if-nez v9, :cond_5

    #@82
    .line 486
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    #@84
    .line 487
    const-string/jumbo v10, "Transaction not available -- could not acquire stack lock"

    #@87
    .line 486
    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v9

    #@8b
    .line 481
    .restart local v1    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_4
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    #@8d
    .line 482
    const-string/jumbo v10, "Cannot find matching Subscription (and gov.nist.javax.sip.DELIVER_UNSOLICITED_NOTIFY not set)"

    #@90
    .line 481
    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@93
    throw v9

    #@94
    .line 490
    .end local v1    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_5
    :try_start_1
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@96
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@99
    move-result-object v9

    #@9a
    invoke-static {v9}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    #@9d
    move-result v9

    #@9e
    if-eqz v9, :cond_c

    #@a0
    .line 491
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a2
    move-object v0, p1

    #@a3
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@a5
    move-object v9, v0

    #@a6
    const/4 v11, 0x1

    #@a7
    invoke-virtual {v10, v9, v11}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    #@aa
    move-result-object v9

    #@ab
    if-eqz v9, :cond_6

    #@ad
    .line 492
    new-instance v9, Ljavax/sip/TransactionAlreadyExistsException;

    #@af
    .line 493
    const-string/jumbo v10, "server transaction already exists!"

    #@b2
    .line 492
    invoke-direct {v9, v10}, Ljavax/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    #@b5
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b6
    .line 623
    .end local v8    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local p1    # "request":Ljavax/sip/message/Request;
    :catchall_0
    move-exception v9

    #@b7
    .line 624
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@b9
    invoke-virtual {v10}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    #@bc
    .line 623
    throw v9

    #@bd
    .line 495
    .restart local v8    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :cond_6
    :try_start_2
    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    #@bf
    .end local p1    # "request":Ljavax/sip/message/Request;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    #@c2
    move-result-object v9

    #@c3
    move-object v0, v9

    #@c4
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@c6
    move-object v8, v0

    #@c7
    .line 497
    .local v8, "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-nez v8, :cond_7

    #@c9
    .line 498
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    #@cb
    .line 499
    const-string/jumbo v10, "Transaction not available"

    #@ce
    .line 498
    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@d1
    throw v9

    #@d2
    .line 500
    :cond_7
    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@d5
    move-result-object v9

    #@d6
    if-nez v9, :cond_8

    #@d8
    .line 501
    invoke-virtual {v8, v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@db
    .line 503
    :cond_8
    :try_start_3
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@dd
    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e0
    .line 509
    :try_start_4
    invoke-virtual {v8, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    #@e3
    .line 510
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@e6
    move-result v9

    #@e7
    if-eqz v9, :cond_b

    #@e9
    .line 513
    const/4 v9, 0x1

    #@ea
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@ed
    move-result-object v3

    #@ee
    .line 514
    .local v3, "dialogId":Ljava/lang/String;
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@f0
    invoke-virtual {v9, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@f3
    move-result-object v2

    #@f4
    .line 515
    .local v2, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-nez v2, :cond_9

    #@f6
    .line 516
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@f8
    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@fb
    move-result-object v2

    #@fc
    .line 519
    :cond_9
    const/4 v9, 0x1

    #@fd
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@100
    move-result-object v9

    #@101
    invoke-virtual {v8, v2, v9}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@104
    .line 520
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@107
    move-result-object v9

    #@108
    const-string/jumbo v10, "INVITE"

    #@10b
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10e
    move-result v9

    #@10f
    if-eqz v9, :cond_a

    #@111
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    #@114
    move-result v9

    #@115
    if-eqz v9, :cond_a

    #@117
    .line 521
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@119
    invoke-virtual {v9, v8, v7}, Lgov/nist/javax/sip/SipStackImpl;->putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V

    #@11c
    .line 523
    :cond_a
    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@11f
    .line 524
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    #@122
    move-result-object v9

    #@123
    if-eqz v9, :cond_b

    #@125
    .line 525
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@128
    move-result-object v9

    #@129
    if-eqz v9, :cond_b

    #@12b
    .line 526
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@12d
    invoke-virtual {v9, v2}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@130
    .line 624
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v3    # "dialogId":Ljava/lang/String;
    :cond_b
    :goto_0
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@132
    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    #@135
    .line 622
    return-object v8

    #@136
    .line 504
    :catch_1
    move-exception v4

    #@137
    .line 505
    .local v4, "ex":Ljava/io/IOException;
    :try_start_5
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    #@139
    .line 506
    const-string/jumbo v10, "Error sending provisional response"

    #@13c
    .line 505
    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@13f
    throw v9

    #@140
    .line 531
    .end local v4    # "ex":Ljava/io/IOException;
    .local v8, "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@143
    move-result v9

    #@144
    if-eqz v9, :cond_10

    #@146
    .line 537
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@148
    .line 538
    move-object v0, p1

    #@149
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@14b
    move-object v9, v0

    #@14c
    const/4 v11, 0x1

    #@14d
    .line 537
    invoke-virtual {v10, v9, v11}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    #@150
    move-result-object v9

    #@151
    move-object v0, v9

    #@152
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@154
    move-object v8, v0

    #@155
    .line 539
    .local v8, "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v8, :cond_d

    #@157
    .line 540
    new-instance v9, Ljavax/sip/TransactionAlreadyExistsException;

    #@159
    .line 541
    const-string/jumbo v10, "Transaction exists! "

    #@15c
    .line 540
    invoke-direct {v9, v10}, Ljavax/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    #@15f
    throw v9

    #@160
    .line 542
    :cond_d
    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    #@162
    .end local p1    # "request":Ljavax/sip/message/Request;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    #@165
    move-result-object v9

    #@166
    move-object v0, v9

    #@167
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@169
    move-object v8, v0

    #@16a
    .line 544
    if-nez v8, :cond_e

    #@16c
    .line 545
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    #@16e
    .line 546
    const-string/jumbo v10, "Transaction not available!"

    #@171
    .line 545
    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@174
    throw v9

    #@175
    .line 547
    :cond_e
    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@178
    move-result-object v9

    #@179
    if-nez v9, :cond_f

    #@17b
    .line 548
    invoke-virtual {v8, v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@17e
    .line 551
    :cond_f
    :try_start_6
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@180
    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@183
    .line 559
    const/4 v9, 0x1

    #@184
    :try_start_7
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@187
    move-result-object v3

    #@188
    .line 560
    .restart local v3    # "dialogId":Ljava/lang/String;
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@18a
    invoke-virtual {v9, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@18d
    move-result-object v2

    #@18e
    .line 561
    .restart local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v2, :cond_b

    #@190
    .line 562
    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@193
    .line 563
    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@196
    .line 564
    const/4 v9, 0x1

    #@197
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@19a
    move-result-object v9

    #@19b
    invoke-virtual {v8, v2, v9}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@19e
    goto :goto_0

    #@19f
    .line 552
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v3    # "dialogId":Ljava/lang/String;
    :catch_2
    move-exception v4

    #@1a0
    .line 553
    .restart local v4    # "ex":Ljava/io/IOException;
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    #@1a2
    .line 554
    const-string/jumbo v10, "Could not send back provisional response!"

    #@1a5
    .line 553
    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@1a8
    throw v9

    #@1a9
    .line 568
    .end local v4    # "ex":Ljava/io/IOException;
    .local v8, "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :cond_10
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1ab
    .line 569
    move-object v0, p1

    #@1ac
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@1ae
    move-object v9, v0

    #@1af
    const/4 v11, 0x1

    #@1b0
    .line 568
    invoke-virtual {v10, v9, v11}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1b3
    move-result-object v9

    #@1b4
    move-object v0, v9

    #@1b5
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@1b7
    move-object v8, v0

    #@1b8
    .line 570
    .local v8, "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v8, :cond_11

    #@1ba
    .line 571
    new-instance v9, Ljavax/sip/TransactionAlreadyExistsException;

    #@1bc
    .line 572
    const-string/jumbo v10, "Transaction exists! "

    #@1bf
    .line 571
    invoke-direct {v9, v10}, Ljavax/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    #@1c2
    throw v9

    #@1c3
    .line 573
    :cond_11
    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    #@1c5
    .end local p1    # "request":Ljavax/sip/message/Request;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    #@1c8
    move-result-object v9

    #@1c9
    move-object v0, v9

    #@1ca
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@1cc
    move-object v8, v0

    #@1cd
    .line 575
    if-eqz v8, :cond_14

    #@1cf
    .line 576
    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@1d2
    move-result-object v9

    #@1d3
    if-nez v9, :cond_12

    #@1d5
    .line 577
    invoke-virtual {v8, v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@1d8
    .line 579
    :cond_12
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1da
    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@1dd
    .line 583
    const/4 v9, 0x1

    #@1de
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@1e1
    move-result-object v3

    #@1e2
    .line 584
    .restart local v3    # "dialogId":Ljava/lang/String;
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1e4
    invoke-virtual {v9, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@1e7
    move-result-object v2

    #@1e8
    .line 585
    .restart local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v2, :cond_13

    #@1ea
    .line 586
    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@1ed
    .line 587
    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@1f0
    .line 589
    const/4 v9, 0x1

    #@1f1
    .line 588
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@1f4
    move-result-object v9

    #@1f5
    invoke-virtual {v8, v2, v9}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1f8
    .line 624
    :cond_13
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1fa
    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    #@1fd
    .line 592
    return-object v8

    #@1fe
    .line 596
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v3    # "dialogId":Ljava/lang/String;
    :cond_14
    :try_start_8
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getMessageChannel()Ljava/lang/Object;

    #@201
    move-result-object v6

    #@202
    check-cast v6, Lgov/nist/javax/sip/stack/MessageChannel;

    #@204
    .line 598
    .local v6, "mc":Lgov/nist/javax/sip/stack/MessageChannel;
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@206
    invoke-virtual {v9, v6}, Lgov/nist/javax/sip/SipStackImpl;->createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@209
    move-result-object v8

    #@20a
    .line 599
    if-nez v8, :cond_15

    #@20c
    .line 600
    new-instance v9, Ljavax/sip/TransactionUnavailableException;

    #@20e
    .line 601
    const-string/jumbo v10, "Transaction unavailable -- too many servrer transactions"

    #@211
    .line 600
    invoke-direct {v9, v10}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    #@214
    throw v9

    #@215
    .line 603
    :cond_15
    invoke-virtual {v8, v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@218
    .line 604
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@21a
    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@21d
    .line 608
    const/4 v9, 0x1

    #@21e
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@221
    move-result-object v3

    #@222
    .line 609
    .restart local v3    # "dialogId":Ljava/lang/String;
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@224
    invoke-virtual {v9, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@227
    move-result-object v2

    #@228
    .line 610
    .restart local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v2, :cond_16

    #@22a
    .line 611
    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@22d
    .line 612
    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@230
    .line 614
    const/4 v9, 0x1

    #@231
    .line 613
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@234
    move-result-object v9

    #@235
    invoke-virtual {v8, v2, v9}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@238
    .line 624
    :cond_16
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@23a
    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    #@23d
    .line 617
    return-object v8
.end method

.method public getSipListener()Ljavax/sip/SipListener;
    .locals 1

    #@0
    .prologue
    .line 1112
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipListener:Ljavax/sip/SipListener;

    #@2
    return-object v0
.end method

.method public getSipStack()Ljavax/sip/SipStack;
    .locals 1

    #@0
    .prologue
    .line 635
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2
    return-object v0
.end method

.method public handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 5
    .param p1, "sipEvent"    # Ljava/util/EventObject;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    #@0
    .prologue
    .line 169
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 170
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v2

    #@e
    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "handleEvent "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    const-string/jumbo v4, "currentTransaction = "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 172
    const-string/jumbo v4, "this.sipListener = "

    #@2c
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    .line 173
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    #@33
    move-result-object v4

    #@34
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    .line 173
    const-string/jumbo v4, "sipEvent.source = "

    #@3b
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    .line 174
    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    #@42
    move-result-object v4

    #@43
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    .line 170
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@4e
    .line 175
    instance-of v2, p1, Ljavax/sip/RequestEvent;

    #@50
    if-eqz v2, :cond_2

    #@52
    move-object v2, p1

    #@53
    .line 176
    check-cast v2, Ljavax/sip/RequestEvent;

    #@55
    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getDialog()Ljavax/sip/Dialog;

    #@58
    move-result-object v0

    #@59
    .line 177
    .local v0, "dialog":Ljavax/sip/Dialog;
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@5b
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@5e
    move-result v2

    #@5f
    if-eqz v2, :cond_0

    #@61
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@63
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@66
    move-result-object v2

    #@67
    new-instance v3, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v4, "Dialog = "

    #@6f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@7e
    .line 182
    .end local v0    # "dialog":Ljavax/sip/Dialog;
    :cond_0
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@80
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@83
    move-result-object v2

    #@84
    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@87
    .line 185
    :cond_1
    new-instance v1, Lgov/nist/javax/sip/EventWrapper;

    #@89
    invoke-direct {v1, p1, p2}, Lgov/nist/javax/sip/EventWrapper;-><init>(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@8c
    .line 187
    .local v1, "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@8e
    iget-boolean v2, v2, Lgov/nist/javax/sip/SipStackImpl;->reEntrantListener:Z

    #@90
    if-nez v2, :cond_3

    #@92
    .line 189
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    #@94
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/EventScanner;->addEvent(Lgov/nist/javax/sip/EventWrapper;)V

    #@97
    .line 168
    :goto_1
    return-void

    #@98
    .line 178
    .end local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    :cond_2
    instance-of v2, p1, Ljavax/sip/ResponseEvent;

    #@9a
    if-eqz v2, :cond_0

    #@9c
    move-object v2, p1

    #@9d
    .line 179
    check-cast v2, Ljavax/sip/ResponseEvent;

    #@9f
    invoke-virtual {v2}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    #@a2
    move-result-object v0

    #@a3
    .line 180
    .restart local v0    # "dialog":Ljavax/sip/Dialog;
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a5
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@a8
    move-result v2

    #@a9
    if-eqz v2, :cond_0

    #@ab
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@ad
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@b0
    move-result-object v2

    #@b1
    new-instance v3, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v4, "Dialog = "

    #@b9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v3

    #@bd
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v3

    #@c5
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@c8
    goto :goto_0

    #@c9
    .line 192
    .end local v0    # "dialog":Ljavax/sip/Dialog;
    .restart local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    :cond_3
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    #@cb
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/EventScanner;->deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V

    #@ce
    goto :goto_1
.end method

.method public isAutomaticDialogSupportEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1092
    iget-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    #@2
    return v0
.end method

.method public isDialogErrorsAutomaticallyHandled()Z
    .locals 1

    #@0
    .prologue
    .line 1104
    iget-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    #@2
    return v0
.end method

.method public declared-synchronized removeListeningPoint(Ljavax/sip/ListeningPoint;)V
    .locals 4
    .param p1, "listeningPoint"    # Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1054
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    #@4
    move-object v1, v0

    #@5
    .line 1055
    .local v1, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v2, v1, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@7
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->inUse()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1056
    new-instance v2, Ljavax/sip/ObjectInUseException;

    #@f
    const-string/jumbo v3, "Object is in use"

    #@12
    invoke-direct {v2, v3}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .end local v1    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    :catchall_0
    move-exception v2

    #@17
    monitor-exit p0

    #@18
    throw v2

    #@19
    .line 1057
    .restart local v1    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@1b
    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit p0

    #@27
    .line 1053
    return-void
.end method

.method public declared-synchronized removeListeningPoints()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1066
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1068
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lgov/nist/javax/sip/ListeningPointImpl;

    #@17
    .line 1069
    .local v1, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v2, v1, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@19
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->stop()V

    #@1c
    .line 1070
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2

    #@23
    .restart local v0    # "it":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    #@24
    .line 1065
    return-void
.end method

.method public removeSipListener(Ljavax/sip/SipListener;)V
    .locals 5
    .param p1, "sipListener"    # Ljavax/sip/SipListener;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 644
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    #@4
    move-result-object v3

    #@5
    if-ne p1, v3, :cond_0

    #@7
    .line 645
    iput-object v4, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipListener:Ljavax/sip/SipListener;

    #@9
    .line 648
    :cond_0
    const/4 v0, 0x0

    #@a
    .line 650
    .local v0, "found":Z
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@c
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getSipProviders()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/SipProviderImpl;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 651
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Lgov/nist/javax/sip/SipProviderImpl;

    #@1c
    .line 652
    .local v2, "nextProvider":Lgov/nist/javax/sip/SipProviderImpl;
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    #@1f
    move-result-object v3

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 653
    const/4 v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 655
    .end local v2    # "nextProvider":Lgov/nist/javax/sip/SipProviderImpl;
    :cond_2
    if-nez v0, :cond_3

    #@26
    .line 656
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@28
    iput-object v4, v3, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    #@2a
    .line 643
    :cond_3
    return-void
.end method

.method public sendRequest(Ljavax/sip/message/Request;)V
    .locals 12
    .param p1, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 666
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@3
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    #@6
    move-result v8

    #@7
    if-nez v8, :cond_0

    #@9
    .line 667
    new-instance v8, Ljavax/sip/SipException;

    #@b
    const-string/jumbo v9, "Stack is stopped."

    #@e
    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@11
    throw v8

    #@12
    :cond_0
    move-object v8, p1

    #@13
    .line 671
    check-cast v8, Lgov/nist/javax/sip/message/SIPRequest;

    #@15
    invoke-virtual {v8}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    #@18
    move-result-object v8

    #@19
    if-eqz v8, :cond_1

    #@1b
    .line 672
    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@1e
    move-result-object v8

    #@1f
    const-string/jumbo v9, "ACK"

    #@22
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v8

    #@26
    .line 671
    if-eqz v8, :cond_1

    #@28
    .line 673
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2a
    move-object v8, p1

    #@2b
    check-cast v8, Lgov/nist/javax/sip/message/SIPRequest;

    #@2d
    invoke-virtual {v8, v10}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@34
    move-result-object v1

    #@35
    .line 675
    .local v1, "dialog":Ljavax/sip/Dialog;
    if-eqz v1, :cond_1

    #@37
    invoke-interface {v1}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    #@3a
    move-result-object v8

    #@3b
    if-eqz v8, :cond_1

    #@3d
    .line 676
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@3f
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@42
    move-result v8

    #@43
    if-eqz v8, :cond_1

    #@45
    .line 677
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@47
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@4a
    move-result-object v8

    #@4b
    .line 678
    new-instance v9, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v10, "Dialog exists -- you may want to use Dialog.sendAck() "

    #@53
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v9

    #@57
    .line 679
    invoke-interface {v1}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    #@5a
    move-result-object v10

    #@5b
    .line 678
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    .line 677
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@66
    .line 682
    .end local v1    # "dialog":Ljavax/sip/Dialog;
    :cond_1
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@68
    move-object v8, p1

    #@69
    check-cast v8, Lgov/nist/javax/sip/message/SIPRequest;

    #@6b
    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/SipStackImpl;->getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;

    #@6e
    move-result-object v8

    #@6f
    invoke-interface {v8, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    #@72
    move-result-object v4

    #@73
    .line 683
    .local v4, "hop":Ljavax/sip/address/Hop;
    if-nez v4, :cond_2

    #@75
    .line 684
    new-instance v8, Ljavax/sip/SipException;

    #@77
    const-string/jumbo v9, "could not determine next hop!"

    #@7a
    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v8

    #@7e
    :cond_2
    move-object v6, p1

    #@7f
    .line 685
    check-cast v6, Lgov/nist/javax/sip/message/SIPRequest;

    #@81
    .line 688
    .local v6, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    #@84
    move-result v8

    #@85
    if-nez v8, :cond_3

    #@87
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@8a
    move-result-object v8

    #@8b
    if-nez v8, :cond_3

    #@8d
    .line 689
    new-instance v8, Ljavax/sip/SipException;

    #@8f
    const-string/jumbo v9, "Invalid SipRequest -- no via header!"

    #@92
    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@95
    throw v8

    #@96
    .line 697
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    #@99
    move-result v8

    #@9a
    if-nez v8, :cond_5

    #@9c
    .line 698
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@9f
    move-result-object v7

    #@a0
    .line 699
    .local v7, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@a3
    move-result-object v0

    #@a4
    .line 700
    .local v0, "branch":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@a6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@a9
    move-result v8

    #@aa
    if-nez v8, :cond_5

    #@ac
    .line 701
    :cond_4
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    #@af
    move-result-object v8

    #@b0
    invoke-virtual {v7, v8}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    #@b3
    .line 704
    .end local v0    # "branch":Ljava/lang/String;
    .end local v7    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_5
    const/4 v5, 0x0

    #@b4
    .line 705
    .local v5, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@b6
    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@b9
    move-result-object v9

    #@ba
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@bd
    move-result-object v9

    #@be
    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    #@c1
    move-result v8

    #@c2
    if-eqz v8, :cond_6

    #@c4
    .line 707
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@c6
    .line 708
    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@c9
    move-result-object v9

    #@ca
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@cd
    move-result-object v9

    #@ce
    invoke-interface {v9}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    #@d1
    move-result-object v9

    #@d2
    .line 709
    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@d5
    move-result-object v10

    #@d6
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@d9
    move-result-object v10

    #@da
    invoke-interface {v10}, Ljavax/sip/ListeningPoint;->getPort()I

    #@dd
    move-result v10

    #@de
    .line 707
    invoke-virtual {v8, v9, v10, v4}, Lgov/nist/javax/sip/SipStackImpl;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    #@e1
    move-result-object v5

    #@e2
    .line 710
    .end local v5    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_6
    if-eqz v5, :cond_8

    #@e4
    .line 711
    invoke-virtual {v5, v6, v4}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljavax/sip/address/Hop;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e7
    .line 728
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@e9
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@ec
    move-result v8

    #@ed
    if-eqz v8, :cond_7

    #@ef
    .line 729
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@f1
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@f4
    move-result-object v8

    #@f5
    .line 730
    new-instance v9, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    const-string/jumbo v10, "done sending "

    #@fd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v9

    #@101
    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@104
    move-result-object v10

    #@105
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v9

    #@109
    const-string/jumbo v10, " to hop "

    #@10c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v9

    #@110
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v9

    #@114
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@117
    move-result-object v9

    #@118
    .line 729
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@11b
    .line 665
    :cond_7
    :goto_0
    return-void

    #@11c
    .line 713
    :cond_8
    :try_start_1
    new-instance v8, Ljavax/sip/SipException;

    #@11e
    .line 714
    new-instance v9, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v10, "Could not create a message channel for "

    #@126
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v9

    #@12a
    .line 715
    invoke-interface {v4}, Ljavax/sip/address/Hop;->toString()Ljava/lang/String;

    #@12d
    move-result-object v10

    #@12e
    .line 714
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v9

    #@132
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v9

    #@136
    .line 713
    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@139
    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13a
    .line 717
    :catch_0
    move-exception v2

    #@13b
    .line 718
    .local v2, "ex":Ljava/io/IOException;
    :try_start_2
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@13d
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@140
    move-result v8

    #@141
    if-eqz v8, :cond_9

    #@143
    .line 719
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@145
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@148
    move-result-object v8

    #@149
    invoke-interface {v8, v2}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@14c
    .line 722
    :cond_9
    new-instance v8, Ljavax/sip/SipException;

    #@14e
    .line 723
    const-string/jumbo v9, "IO Exception occured while Sending Request"

    #@151
    .line 722
    invoke-direct {v8, v9, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@154
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@155
    .line 727
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    #@156
    .line 728
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@158
    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@15b
    move-result v9

    #@15c
    if-eqz v9, :cond_a

    #@15e
    .line 729
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@160
    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@163
    move-result-object v9

    #@164
    .line 730
    new-instance v10, Ljava/lang/StringBuilder;

    #@166
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@169
    const-string/jumbo v11, "done sending "

    #@16c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v10

    #@170
    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@173
    move-result-object v11

    #@174
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v10

    #@178
    const-string/jumbo v11, " to hop "

    #@17b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v10

    #@17f
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v10

    #@183
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@186
    move-result-object v10

    #@187
    .line 729
    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@18a
    .line 727
    :cond_a
    throw v8

    #@18b
    .line 725
    :catch_1
    move-exception v3

    #@18c
    .line 726
    .local v3, "ex1":Ljava/text/ParseException;
    :try_start_3
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@18f
    .line 728
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@191
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@194
    move-result v8

    #@195
    if-eqz v8, :cond_7

    #@197
    .line 729
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@199
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@19c
    move-result-object v8

    #@19d
    .line 730
    new-instance v9, Ljava/lang/StringBuilder;

    #@19f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1a2
    const-string/jumbo v10, "done sending "

    #@1a5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v9

    #@1a9
    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@1ac
    move-result-object v10

    #@1ad
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v9

    #@1b1
    const-string/jumbo v10, " to hop "

    #@1b4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v9

    #@1b8
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v9

    #@1bc
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bf
    move-result-object v9

    #@1c0
    .line 729
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1c3
    goto/16 :goto_0
.end method

.method public sendResponse(Ljavax/sip/message/Response;)V
    .locals 13
    .param p1, "response"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, -0x1

    #@1
    .line 741
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@3
    invoke-virtual {v10}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    #@6
    move-result v10

    #@7
    if-nez v10, :cond_0

    #@9
    .line 742
    new-instance v10, Ljavax/sip/SipException;

    #@b
    const-string/jumbo v11, "Stack is stopped"

    #@e
    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@11
    throw v10

    #@12
    :cond_0
    move-object v6, p1

    #@13
    .line 743
    check-cast v6, Lgov/nist/javax/sip/message/SIPResponse;

    #@15
    .line 744
    .local v6, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@18
    move-result-object v9

    #@19
    .line 745
    .local v9, "via":Lgov/nist/javax/sip/header/Via;
    if-nez v9, :cond_1

    #@1b
    .line 746
    new-instance v10, Ljavax/sip/SipException;

    #@1d
    const-string/jumbo v11, "No via header in response!"

    #@20
    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@23
    throw v10

    #@24
    .line 747
    :cond_1
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@26
    check-cast p1, Lgov/nist/javax/sip/message/SIPMessage;

    #@28
    .end local p1    # "response":Ljavax/sip/message/Response;
    const/4 v11, 0x1

    #@29
    invoke-virtual {v10, p1, v11}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2c
    move-result-object v7

    #@2d
    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2f
    .line 748
    .local v7, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v7, :cond_2

    #@31
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    #@34
    move-result-object v10

    #@35
    sget-object v11, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@37
    if-eq v10, v11, :cond_2

    #@39
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@3c
    move-result v10

    #@3d
    if-eqz v10, :cond_2

    #@3f
    .line 749
    new-instance v10, Ljavax/sip/SipException;

    #@41
    const-string/jumbo v11, "Transaction exists -- cannot send response statelessly"

    #@44
    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@47
    throw v10

    #@48
    .line 751
    :cond_2
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    #@4b
    move-result-object v8

    #@4c
    .line 756
    .local v8, "transport":Ljava/lang/String;
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getReceived()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 758
    .local v2, "host":Ljava/lang/String;
    if-nez v2, :cond_3

    #@52
    .line 759
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    .line 762
    :cond_3
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    #@59
    move-result v5

    #@5a
    .line 763
    .local v5, "port":I
    if-ne v5, v12, :cond_4

    #@5c
    .line 764
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/Via;->getPort()I

    #@5f
    move-result v5

    #@60
    .line 765
    if-ne v5, v12, :cond_4

    #@62
    .line 766
    const-string/jumbo v10, "TLS"

    #@65
    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@68
    move-result v10

    #@69
    if-eqz v10, :cond_6

    #@6b
    .line 767
    const/16 v5, 0x13c5

    #@6d
    .line 774
    :cond_4
    :goto_0
    const-string/jumbo v10, ":"

    #@70
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@73
    move-result v10

    #@74
    if-lez v10, :cond_5

    #@76
    .line 775
    const-string/jumbo v10, "["

    #@79
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7c
    move-result v10

    #@7d
    if-gez v10, :cond_5

    #@7f
    .line 776
    new-instance v10, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v11, "["

    #@87
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v10

    #@8b
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v10

    #@8f
    const-string/jumbo v11, "]"

    #@92
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v10

    #@96
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v2

    #@9a
    .line 778
    :cond_5
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@9c
    invoke-virtual {v10}, Lgov/nist/javax/sip/SipStackImpl;->getAddressResolver()Lgov/nist/core/net/AddressResolver;

    #@9f
    move-result-object v10

    #@a0
    .line 779
    new-instance v11, Lgov/nist/javax/sip/stack/HopImpl;

    #@a2
    invoke-direct {v11, v2, v5, v8}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@a5
    .line 778
    invoke-interface {v10, v11}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    #@a8
    move-result-object v1

    #@a9
    .line 782
    .local v1, "hop":Ljavax/sip/address/Hop;
    :try_start_0
    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@ac
    move-result-object v3

    #@ad
    check-cast v3, Lgov/nist/javax/sip/ListeningPointImpl;

    #@af
    .line 784
    .local v3, "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    if-nez v3, :cond_7

    #@b1
    .line 785
    new-instance v10, Ljavax/sip/SipException;

    #@b3
    .line 786
    new-instance v11, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v12, "whoopsa daisy! no listening point found for transport "

    #@bb
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v11

    #@bf
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v11

    #@c3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v11

    #@c7
    .line 785
    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@ca
    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@cb
    .line 792
    .end local v3    # "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    :catch_0
    move-exception v0

    #@cc
    .line 793
    .local v0, "ex":Ljava/io/IOException;
    new-instance v10, Ljavax/sip/SipException;

    #@ce
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@d1
    move-result-object v11

    #@d2
    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@d5
    throw v10

    #@d6
    .line 769
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "hop":Ljavax/sip/address/Hop;
    :cond_6
    const/16 v5, 0x13c4

    #@d8
    goto :goto_0

    #@d9
    .line 788
    .restart local v1    # "hop":Ljavax/sip/address/Hop;
    .restart local v3    # "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_7
    :try_start_1
    iget-object v10, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@db
    .line 789
    invoke-interface {v1}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@de
    move-result-object v11

    #@df
    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@e2
    move-result-object v11

    #@e3
    invoke-interface {v11}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    #@e6
    move-result-object v11

    #@e7
    .line 790
    iget v12, v3, Lgov/nist/javax/sip/ListeningPointImpl;->port:I

    #@e9
    .line 788
    invoke-virtual {v10, v11, v12, v1}, Lgov/nist/javax/sip/SipStackImpl;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    #@ec
    move-result-object v4

    #@ed
    .line 791
    .local v4, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@f0
    .line 740
    return-void
.end method

.method public setAutomaticDialogSupportEnabled(Z)V
    .locals 1
    .param p1, "automaticDialogSupportEnabled"    # Z

    #@0
    .prologue
    .line 1082
    iput-boolean p1, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    #@2
    .line 1083
    iget-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1084
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    #@9
    .line 1081
    :cond_0
    return-void
.end method

.method public setDialogErrorsAutomaticallyHandled()V
    .locals 1

    #@0
    .prologue
    .line 1100
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    #@3
    .line 1099
    return-void
.end method

.method public declared-synchronized setListeningPoint(Ljavax/sip/ListeningPoint;)V
    .locals 5
    .param p1, "listeningPoint"    # Ljavax/sip/ListeningPoint;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 803
    if-nez p1, :cond_0

    #@3
    .line 804
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v4, "Null listening point"

    #@8
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v3

    #@d
    monitor-exit p0

    #@e
    throw v3

    #@f
    .line 805
    :cond_0
    :try_start_1
    move-object v0, p1

    #@10
    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    #@12
    move-object v1, v0

    #@13
    .line 806
    .local v1, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    iput-object p0, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@15
    .line 807
    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 808
    .local v2, "transport":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    iput-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->address:Ljava/lang/String;

    #@23
    .line 809
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getPort()I

    #@26
    move-result v3

    #@27
    iput v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->port:I

    #@29
    .line 811
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@2b
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    #@2e
    .line 812
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@30
    invoke-virtual {v3, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    monitor-exit p0

    #@34
    .line 802
    return-void
.end method

.method protected stop()V
    .locals 4

    #@0
    .prologue
    .line 136
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 137
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, "Exiting provider"

    #@11
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@14
    .line 138
    :cond_0
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    #@16
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v0

    #@1e
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lgov/nist/javax/sip/ListeningPointImpl;

    #@2a
    .line 140
    .local v1, "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->removeSipProvider()V

    #@2d
    goto :goto_0

    #@2e
    .line 142
    .end local v1    # "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    #@30
    invoke-virtual {v2}, Lgov/nist/javax/sip/EventScanner;->stop()V

    #@33
    .line 134
    return-void
.end method

.method public transactionErrorEvent(Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;)V
    .locals 10
    .param p1, "transactionErrorEvent"    # Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;

    #@0
    .prologue
    .line 902
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    #@3
    move-result-object v5

    #@4
    check-cast v5, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@6
    .line 905
    .local v5, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    #@9
    move-result v7

    #@a
    const/4 v8, 0x2

    #@b
    if-ne v7, v8, :cond_4

    #@d
    .line 907
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@f
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@12
    move-result v7

    #@13
    if-eqz v7, :cond_0

    #@15
    .line 908
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@17
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1a
    move-result-object v7

    #@1b
    .line 909
    new-instance v8, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v9, "TransportError occured on "

    #@23
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v8

    #@27
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v8

    #@2b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    .line 908
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@32
    .line 912
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    .line 913
    .local v1, "errorObject":Ljava/lang/Object;
    sget-object v4, Ljavax/sip/Timeout;->TRANSACTION:Ljavax/sip/Timeout;

    #@38
    .line 914
    .local v4, "timeout":Ljavax/sip/Timeout;
    const/4 v2, 0x0

    #@39
    .line 916
    .local v2, "ev":Ljavax/sip/TimeoutEvent;
    instance-of v7, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@3b
    if-eqz v7, :cond_2

    #@3d
    .line 917
    new-instance v2, Ljavax/sip/TimeoutEvent;

    #@3f
    .end local v2    # "ev":Ljavax/sip/TimeoutEvent;
    move-object v7, v1

    #@40
    check-cast v7, Ljavax/sip/ServerTransaction;

    #@42
    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    #@45
    .line 929
    .local v2, "ev":Ljavax/sip/TimeoutEvent;
    :goto_0
    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@47
    .end local v1    # "errorObject":Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@4a
    .line 901
    .end local v2    # "ev":Ljavax/sip/TimeoutEvent;
    .end local v4    # "timeout":Ljavax/sip/Timeout;
    :cond_1
    :goto_1
    return-void

    #@4b
    .restart local v1    # "errorObject":Ljava/lang/Object;
    .local v2, "ev":Ljavax/sip/TimeoutEvent;
    .restart local v4    # "timeout":Ljavax/sip/Timeout;
    :cond_2
    move-object v0, v1

    #@4c
    .line 920
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@4e
    .line 921
    .local v0, "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    #@51
    move-result-object v3

    #@52
    .line 922
    .local v3, "hop":Ljavax/sip/address/Hop;
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@54
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    #@57
    move-result-object v7

    #@58
    instance-of v7, v7, Lgov/nist/javax/sip/address/RouterExt;

    #@5a
    if-eqz v7, :cond_3

    #@5c
    .line 923
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@5e
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    #@61
    move-result-object v7

    #@62
    check-cast v7, Lgov/nist/javax/sip/address/RouterExt;

    #@64
    invoke-interface {v7, v3}, Lgov/nist/javax/sip/address/RouterExt;->transactionTimeout(Ljavax/sip/address/Hop;)V

    #@67
    .line 925
    :cond_3
    new-instance v2, Ljavax/sip/TimeoutEvent;

    #@69
    .end local v2    # "ev":Ljavax/sip/TimeoutEvent;
    move-object v7, v1

    #@6a
    check-cast v7, Ljavax/sip/ClientTransaction;

    #@6c
    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    #@6f
    .local v2, "ev":Ljavax/sip/TimeoutEvent;
    goto :goto_0

    #@70
    .line 930
    .end local v0    # "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v1    # "errorObject":Ljava/lang/Object;
    .end local v2    # "ev":Ljavax/sip/TimeoutEvent;
    .end local v3    # "hop":Ljavax/sip/address/Hop;
    .end local v4    # "timeout":Ljavax/sip/Timeout;
    :cond_4
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    #@73
    move-result v7

    #@74
    const/4 v8, 0x1

    #@75
    if-ne v7, v8, :cond_7

    #@77
    .line 932
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    #@7a
    move-result-object v1

    #@7b
    .line 933
    .restart local v1    # "errorObject":Ljava/lang/Object;
    sget-object v4, Ljavax/sip/Timeout;->TRANSACTION:Ljavax/sip/Timeout;

    #@7d
    .line 934
    .restart local v4    # "timeout":Ljavax/sip/Timeout;
    const/4 v2, 0x0

    #@7e
    .line 936
    .local v2, "ev":Ljavax/sip/TimeoutEvent;
    instance-of v7, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@80
    if-eqz v7, :cond_5

    #@82
    .line 937
    new-instance v2, Ljavax/sip/TimeoutEvent;

    #@84
    .end local v2    # "ev":Ljavax/sip/TimeoutEvent;
    move-object v7, v1

    #@85
    check-cast v7, Ljavax/sip/ServerTransaction;

    #@87
    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    #@8a
    .line 949
    .local v2, "ev":Ljavax/sip/TimeoutEvent;
    :goto_2
    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@8c
    .end local v1    # "errorObject":Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@8f
    goto :goto_1

    #@90
    .restart local v1    # "errorObject":Ljava/lang/Object;
    .local v2, "ev":Ljavax/sip/TimeoutEvent;
    :cond_5
    move-object v0, v1

    #@91
    .line 940
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@93
    .line 941
    .restart local v0    # "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    #@96
    move-result-object v3

    #@97
    .line 942
    .restart local v3    # "hop":Ljavax/sip/address/Hop;
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@99
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    #@9c
    move-result-object v7

    #@9d
    instance-of v7, v7, Lgov/nist/javax/sip/address/RouterExt;

    #@9f
    if-eqz v7, :cond_6

    #@a1
    .line 943
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a3
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    #@a6
    move-result-object v7

    #@a7
    check-cast v7, Lgov/nist/javax/sip/address/RouterExt;

    #@a9
    invoke-interface {v7, v3}, Lgov/nist/javax/sip/address/RouterExt;->transactionTimeout(Ljavax/sip/address/Hop;)V

    #@ac
    .line 946
    :cond_6
    new-instance v2, Ljavax/sip/TimeoutEvent;

    #@ae
    .end local v2    # "ev":Ljavax/sip/TimeoutEvent;
    move-object v7, v1

    #@af
    check-cast v7, Ljavax/sip/ClientTransaction;

    #@b1
    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    #@b4
    .local v2, "ev":Ljavax/sip/TimeoutEvent;
    goto :goto_2

    #@b5
    .line 951
    .end local v0    # "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v1    # "errorObject":Ljava/lang/Object;
    .end local v2    # "ev":Ljavax/sip/TimeoutEvent;
    .end local v3    # "hop":Ljavax/sip/address/Hop;
    .end local v4    # "timeout":Ljavax/sip/Timeout;
    :cond_7
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    #@b8
    move-result v7

    #@b9
    const/4 v8, 0x3

    #@ba
    if-ne v7, v8, :cond_1

    #@bc
    .line 956
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    #@bf
    move-result-object v1

    #@c0
    .restart local v1    # "errorObject":Ljava/lang/Object;
    move-object v6, v1

    #@c1
    .line 957
    check-cast v6, Ljavax/sip/Transaction;

    #@c3
    .line 959
    .local v6, "tx":Ljavax/sip/Transaction;
    invoke-interface {v6}, Ljavax/sip/Transaction;->getDialog()Ljavax/sip/Dialog;

    #@c6
    move-result-object v7

    #@c7
    if-eqz v7, :cond_8

    #@c9
    .line 960
    const-string/jumbo v7, "Unexpected event !"

    #@cc
    .line 961
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@ce
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d1
    move-result-object v8

    #@d2
    .line 960
    invoke-static {v7, v8}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    #@d5
    .line 963
    :cond_8
    sget-object v4, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    #@d7
    .line 964
    .restart local v4    # "timeout":Ljavax/sip/Timeout;
    const/4 v2, 0x0

    #@d8
    .line 966
    .local v2, "ev":Ljavax/sip/TimeoutEvent;
    instance-of v7, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@da
    if-eqz v7, :cond_9

    #@dc
    .line 967
    new-instance v2, Ljavax/sip/TimeoutEvent;

    #@de
    .end local v2    # "ev":Ljavax/sip/TimeoutEvent;
    move-object v7, v1

    #@df
    check-cast v7, Ljavax/sip/ServerTransaction;

    #@e1
    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    #@e4
    .line 973
    .local v2, "ev":Ljavax/sip/TimeoutEvent;
    :goto_3
    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@e6
    .end local v1    # "errorObject":Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@e9
    goto/16 :goto_1

    #@eb
    .line 970
    .restart local v1    # "errorObject":Ljava/lang/Object;
    .local v2, "ev":Ljavax/sip/TimeoutEvent;
    :cond_9
    new-instance v2, Ljavax/sip/TimeoutEvent;

    #@ed
    .end local v2    # "ev":Ljavax/sip/TimeoutEvent;
    move-object v7, v1

    #@ee
    check-cast v7, Ljavax/sip/ClientTransaction;

    #@f0
    invoke-direct {v2, p0, v7, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    #@f3
    .local v2, "ev":Ljavax/sip/TimeoutEvent;
    goto :goto_3
.end method
