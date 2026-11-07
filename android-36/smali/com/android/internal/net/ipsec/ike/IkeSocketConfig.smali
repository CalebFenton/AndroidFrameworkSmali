.class public final Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
.super Ljava/lang/Object;
.source "IkeSocketConfig.java"


# instance fields
.field private final blacklist mConnectionController:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

.field private final blacklist mDscp:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;I)V
    .registers 3
    .param p1, "connectionController"    # Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
    .param p2, "dscp"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;->mConnectionController:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    .line 37
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;->mDscp:I

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 59
    instance-of v0, p1, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 60
    return v1

    .line 63
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;

    .line 65
    .local v0, "other":Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;->mConnectionController:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;->mConnectionController:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;->mDscp:I

    iget v3, v0, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;->mDscp:I

    if-ne v2, v3, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public blacklist getConnectionController()Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;->mConnectionController:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    return-object v0
.end method

.method public blacklist getDscp()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;->mDscp:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;->mConnectionController:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;->mDscp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
