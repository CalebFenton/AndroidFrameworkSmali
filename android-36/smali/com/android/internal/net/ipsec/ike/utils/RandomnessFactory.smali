.class public Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
.super Ljava/lang/Object;
.source "RandomnessFactory.java"

# interfaces
.implements Lcom/android/internal/net/eap/EapAuthenticator$EapRandomFactory;


# static fields
.field public static final blacklist TRANSPORT_TEST:I = 0x7


# instance fields
.field private final blacklist mIsTestModeEnabled:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/Network;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerConfiguredNetwork"    # Landroid/net/Network;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    if-nez p2, :cond_9

    .line 52
    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;->mIsTestModeEnabled:Z

    goto :goto_24

    .line 54
    :cond_9
    const-class v1, Landroid/net/ConnectivityManager;

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 56
    .local v1, "connectManager":Landroid/net/ConnectivityManager;
    nop

    .line 57
    invoke-virtual {v1, p2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 59
    .local v2, "networkCapabilities":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_21

    .line 60
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    nop

    :goto_22
    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;->mIsTestModeEnabled:Z

    .line 62
    .end local v1    # "connectManager":Landroid/net/ConnectivityManager;
    .end local v2    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :goto_24
    return-void
.end method


# virtual methods
.method public blacklist getRandom()Ljava/security/SecureRandom;
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;->mIsTestModeEnabled:Z

    if-eqz v0, :cond_a

    .line 76
    new-instance v0, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;-><init>()V

    return-object v0

    .line 79
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method
