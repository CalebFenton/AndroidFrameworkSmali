.class Landroid/net/connectivity/org/chromium/net/impl/UserAgent$UserAgentsHolder;
.super Ljava/lang/Object;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserAgentsHolder"
.end annotation


# static fields
.field static final blacklist DEFAULT_QUIC_USER_AGENT:Ljava/lang/String;

.field static final blacklist DEFAULT_USER_AGENT:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/UserAgent$UserAgentsHolder;->createDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/UserAgent$UserAgentsHolder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 33
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/UserAgent$UserAgentsHolder;->createDefaultQuicUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/UserAgent$UserAgentsHolder;->DEFAULT_QUIC_USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist appendCronetVersion(Ljava/lang/StringBuilder;)V
    .registers 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;

    .line 78
    const-string v0, " Cronet/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/ImplVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    return-void
.end method

.method private static blacklist createDefaultQuicUserAgent()Ljava/lang/String;
    .registers 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "AndroidHttpClient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/UserAgent$UserAgentsHolder;->appendCronetVersion(Ljava/lang/StringBuilder;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist createDefaultUserAgent()Ljava/lang/String;
    .registers 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "AndroidHttpClient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, " (Linux; U; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 58
    .local v2, "model":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_32

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_32
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 64
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_42

    .line 65
    const-string v3, "; Build/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_42
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/UserAgent$UserAgentsHolder;->appendCronetVersion(Ljava/lang/StringBuilder;)V

    .line 72
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
