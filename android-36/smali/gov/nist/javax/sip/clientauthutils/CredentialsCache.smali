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
.field private greylist authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavax/sip/header/AuthorizationHeader;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist timer:Ljava/util/Timer;


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetauthorizationHeaders(Lgov/nist/javax/sip/clientauthutils/CredentialsCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method constructor greylist <init>(Ljava/util/Timer;)V
    .registers 3
    .param p1, "timer"    # Ljava/util/Timer;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->timer:Ljava/util/Timer;

    .line 50
    return-void
.end method


# virtual methods
.method greylist cacheAuthorizationHeader(Ljava/lang/String;Ljavax/sip/header/AuthorizationHeader;I)V
    .registers 10
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "authorization"    # Ljavax/sip/header/AuthorizationHeader;
    .param p3, "cacheTime"    # I

    .line 63
    invoke-interface {p2}, Ljavax/sip/header/AuthorizationHeader;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "user":Ljava/lang/String;
    if-eqz p1, :cond_5c

    .line 65
    if-eqz p2, :cond_54

    .line 67
    iget-object v1, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 68
    .local v1, "authHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/AuthorizationHeader;>;"
    if-nez v1, :cond_1e

    .line 69
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    .line 70
    iget-object v2, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 72
    :cond_1e
    invoke-interface {p2}, Ljavax/sip/header/AuthorizationHeader;->getRealm()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "realm":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .local v3, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax/sip/header/AuthorizationHeader;>;"
    :goto_26
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 74
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/sip/header/AuthorizationHeader;

    .line 75
    .local v4, "authHeader":Ljavax/sip/header/AuthorizationHeader;
    invoke-interface {v4}, Ljavax/sip/header/AuthorizationHeader;->getRealm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 76
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 78
    .end local v4    # "authHeader":Ljavax/sip/header/AuthorizationHeader;
    :cond_3f
    goto :goto_26

    .line 81
    .end local v2    # "realm":Ljava/lang/String;
    .end local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax/sip/header/AuthorizationHeader;>;"
    :cond_40
    :goto_40
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v2, Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;

    invoke-direct {v2, p0, p1, v0}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;-><init>(Lgov/nist/javax/sip/clientauthutils/CredentialsCache;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v2, "timeoutTask":Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;
    const/4 v3, -0x1

    if-eq p3, v3, :cond_53

    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->timer:Ljava/util/Timer;

    mul-int/lit16 v4, p3, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 88
    :cond_53
    return-void

    .line 65
    .end local v1    # "authHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/AuthorizationHeader;>;"
    .end local v2    # "timeoutTask":Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;
    :cond_54
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null authorization domain"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_5c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Call ID is null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist getCachedAuthorizationHeaders(Ljava/lang/String;)Ljava/util/Collection;
    .registers 4
    .param p1, "callid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljavax/sip/header/AuthorizationHeader;",
            ">;"
        }
    .end annotation

    .line 103
    if-eqz p1, :cond_b

    .line 105
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    .line 104
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null arg!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removeAuthenticationHeader(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->authorizationHeaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method
