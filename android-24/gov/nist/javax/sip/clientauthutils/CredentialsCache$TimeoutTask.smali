.class Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;
.super Ljava/util/TimerTask;
.source "CredentialsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/clientauthutils/CredentialsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeoutTask"
.end annotation


# instance fields
.field callId:Ljava/lang/String;

.field final synthetic this$0:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/clientauthutils/CredentialsCache;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgov/nist/javax/sip/clientauthutils/CredentialsCache;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "proxyDomain"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;->this$0:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    #@2
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@5
    .line 34
    iput-object p3, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;->callId:Ljava/lang/String;

    #@7
    .line 35
    iput-object p2, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;->userName:Ljava/lang/String;

    #@9
    .line 33
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;->this$0:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    #@2
    invoke-static {v0}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->-get0(Lgov/nist/javax/sip/clientauthutils/CredentialsCache;)Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache$TimeoutTask;->callId:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 39
    return-void
.end method
