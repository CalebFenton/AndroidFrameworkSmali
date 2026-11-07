.class Lcom/android/org/conscrypt/PeerInfoProvider$2;
.super Lcom/android/org/conscrypt/PeerInfoProvider;
.source "PeerInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/PeerInfoProvider;->forHostAndPort(Ljava/lang/String;I)Lcom/android/org/conscrypt/PeerInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$host:Ljava/lang/String;

.field final synthetic blacklist val$port:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3

    .line 62
    iput-object p1, p0, Lcom/android/org/conscrypt/PeerInfoProvider$2;->val$host:Ljava/lang/String;

    iput p2, p0, Lcom/android/org/conscrypt/PeerInfoProvider$2;->val$port:I

    invoke-direct {p0}, Lcom/android/org/conscrypt/PeerInfoProvider;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getHostname()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/org/conscrypt/PeerInfoProvider$2;->val$host:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHostnameOrIP()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/org/conscrypt/PeerInfoProvider$2;->val$host:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPort()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/android/org/conscrypt/PeerInfoProvider$2;->val$port:I

    return v0
.end method
