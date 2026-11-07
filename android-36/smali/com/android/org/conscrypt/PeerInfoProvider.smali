.class abstract Lcom/android/org/conscrypt/PeerInfoProvider;
.super Ljava/lang/Object;
.source "PeerInfoProvider.java"


# static fields
.field private static final greylist-max-o NULL_PEER_INFO_PROVIDER:Lcom/android/org/conscrypt/PeerInfoProvider;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/android/org/conscrypt/PeerInfoProvider$1;

    invoke-direct {v0}, Lcom/android/org/conscrypt/PeerInfoProvider$1;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/PeerInfoProvider;->NULL_PEER_INFO_PROVIDER:Lcom/android/org/conscrypt/PeerInfoProvider;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o forHostAndPort(Ljava/lang/String;I)Lcom/android/org/conscrypt/PeerInfoProvider;
    .registers 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 62
    new-instance v0, Lcom/android/org/conscrypt/PeerInfoProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/PeerInfoProvider$2;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static greylist-max-o nullProvider()Lcom/android/org/conscrypt/PeerInfoProvider;
    .registers 1

    .line 58
    sget-object v0, Lcom/android/org/conscrypt/PeerInfoProvider;->NULL_PEER_INFO_PROVIDER:Lcom/android/org/conscrypt/PeerInfoProvider;

    return-object v0
.end method


# virtual methods
.method abstract greylist-max-o getHostname()Ljava/lang/String;
.end method

.method abstract greylist-max-o getHostnameOrIP()Ljava/lang/String;
.end method

.method abstract greylist-max-o getPort()I
.end method
