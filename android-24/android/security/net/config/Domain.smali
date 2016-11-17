.class public final Landroid/security/net/config/Domain;
.super Ljava/lang/Object;
.source "Domain.java"


# instance fields
.field public final hostname:Ljava/lang/String;

.field public final subdomainsIncluded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "subdomainsIncluded"    # Z

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    if-nez p1, :cond_0

    #@5
    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "Hostname must not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 36
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    #@16
    .line 37
    iput-boolean p2, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    #@18
    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 47
    if-ne p1, p0, :cond_0

    #@3
    .line 48
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 50
    :cond_0
    instance-of v2, p1, Landroid/security/net/config/Domain;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 51
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 53
    nop

    #@c
    nop

    #@d
    .line 54
    .local v0, "otherDomain":Landroid/security/net/config/Domain;
    iget-boolean v2, v0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    #@f
    iget-boolean v3, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 55
    iget-object v1, v0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    #@15
    iget-object v2, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    .line 54
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v1

    #@6
    iget-boolean v0, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    const/16 v0, 0x4cf

    #@c
    :goto_0
    xor-int/2addr v0, v1

    #@d
    return v0

    #@e
    :cond_0
    const/16 v0, 0x4d5

    #@10
    goto :goto_0
.end method
