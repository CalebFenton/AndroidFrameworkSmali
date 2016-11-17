.class Lgov/nist/javax/sip/clientauthutils/CredentialsCache;
.super Ljava/lang/Object;
.source "CredentialsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;
    }
.end annotation


# instance fields
.field private authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljavax/sip/header/AuthorizationHeader;",
            ">;>;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;


# direct methods
.method static synthetic -get0(Lgov/nist/javax/sip/clientauthutils/CredentialsCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    return-object v0
.end method

.method constructor <init>(Ljava/util/Timer;)V
    .locals 1
    .param p1, "timer"    # Ljava/util/Timer;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@8
    .line 25
    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    .line 49
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->timer:Ljava/util/Timer;

    #@c
    .line 48
    return-void
.end method


# virtual methods
.method cacheAuthorizationHeader(Ljava/lang/String;Ljavax/sip/header/AuthorizationHeader;I)V
    .locals 10
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "authorization"    # Ljavax/sip/header/AuthorizationHeader;
    .param p3, "cacheTime"    # I

    #@0
    .prologue
    .line 63
    invoke-interface {p2}, Ljavax/sip/header/AuthorizationHeader;->getUsername()Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    .line 64
    .local v5, "user":Ljava/lang/String;
    if-nez p1, :cond_0

    #@6
    new-instance v6, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v7, "Call ID is null!"

    #@b
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v6

    #@f
    .line 65
    :cond_0
    if-nez p2, :cond_1

    #@11
    new-instance v6, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v7, "Null authorization domain"

    #@16
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v6

    #@1a
    .line 67
    :cond_1
    iget-object v6, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    #@1c
    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/util/List;

    #@22
    .line 68
    .local v1, "authHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/AuthorizationHeader;>;"
    if-nez v1, :cond_4

    #@24
    .line 69
    new-instance v1, Ljava/util/LinkedList;

    #@26
    .end local v1    # "authHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/AuthorizationHeader;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@29
    .line 70
    .restart local v1    # "authHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/AuthorizationHeader;>;"
    iget-object v6, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    #@2b
    invoke-virtual {v6, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 81
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    .line 83
    new-instance v4, Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;

    #@33
    invoke-direct {v4, p0, p1, v5}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;-><init>(Lgov/nist/javax/sip/clientauthutils/CredentialsCache;Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 84
    .local v4, "timeoutTask":Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;
    const/4 v6, -0x1

    #@37
    if-eq p3, v6, :cond_3

    #@39
    .line 85
    iget-object v6, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->timer:Ljava/util/Timer;

    #@3b
    mul-int/lit16 v7, p3, 0x3e8

    #@3d
    int-to-long v8, v7

    #@3e
    invoke-virtual {v6, v4, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@41
    .line 62
    :cond_3
    return-void

    #@42
    .line 72
    .end local v4    # "timeoutTask":Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;
    :cond_4
    invoke-interface {p2}, Ljavax/sip/header/AuthorizationHeader;->getRealm()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 73
    .local v3, "realm":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@49
    move-result-object v2

    #@4a
    .local v2, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax/sip/header/AuthorizationHeader;>;"
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    #@4d
    move-result v6

    #@4e
    if-eqz v6, :cond_2

    #@50
    .line 74
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Ljavax/sip/header/AuthorizationHeader;

    #@56
    .line 75
    .local v0, "authHeader":Ljavax/sip/header/AuthorizationHeader;
    invoke-interface {v0}, Ljavax/sip/header/AuthorizationHeader;->getRealm()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v6

    #@5e
    if-eqz v6, :cond_5

    #@60
    .line 76
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    #@63
    goto :goto_0
.end method

.method getCachedAuthorizationHeaders(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "callid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljavax/sip/header/AuthorizationHeader;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 103
    if-nez p1, :cond_0

    #@2
    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "Null arg!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 105
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/util/Collection;

    #@13
    return-object v0
.end method

.method public removeAuthenticationHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 114
    return-void
.end method
