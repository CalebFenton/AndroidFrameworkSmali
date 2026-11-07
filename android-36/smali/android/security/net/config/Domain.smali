.class public final Landroid/security/net/config/Domain;
.super Ljava/lang/Object;
.source "Domain.java"


# instance fields
.field public final greylist-max-o hostname:Ljava/lang/String;

.field public final greylist-max-o subdomainsIncluded:Z


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "subdomainsIncluded"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_10

    .line 39
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    .line 40
    iput-boolean p2, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    .line 41
    return-void

    .line 37
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Hostname must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 50
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 51
    return v0

    .line 53
    :cond_4
    instance-of v1, p1, Landroid/security/net/config/Domain;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 54
    return v2

    .line 56
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/security/net/config/Domain;

    .line 57
    .local v1, "otherDomain":Landroid/security/net/config/Domain;
    iget-boolean v3, v1, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    iget-boolean v4, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-ne v3, v4, :cond_1e

    iget-object v3, v1, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    iget-object v4, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 57
    :goto_1f
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 45
    iget-object v0, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-eqz v1, :cond_d

    const/16 v1, 0x4cf

    goto :goto_f

    :cond_d
    const/16 v1, 0x4d5

    :goto_f
    xor-int/2addr v0, v1

    return v0
.end method
