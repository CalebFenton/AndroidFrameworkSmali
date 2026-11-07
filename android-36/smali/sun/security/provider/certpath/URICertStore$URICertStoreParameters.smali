.class Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
.super Ljava/lang/Object;
.source "URICertStore.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/URICertStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "URICertStoreParameters"
.end annotation


# instance fields
.field private volatile blacklist hashCode:I

.field private final blacklist uri:Ljava/net/URI;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgeturi(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/net/URI;
    .registers 1

    iget-object p0, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    return-object p0
.end method

.method constructor blacklist <init>(Ljava/net/URI;)V
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->hashCode:I

    .line 455
    iput-object p1, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    .line 456
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 474
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 475
    :catch_5
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 458
    instance-of v0, p1, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    if-nez v0, :cond_6

    .line 459
    const/4 v0, 0x0

    return v0

    .line 461
    :cond_6
    move-object v0, p1

    check-cast v0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    .line 462
    .local v0, "params":Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    iget-object v2, v0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 465
    iget v0, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->hashCode:I

    if-nez v0, :cond_11

    .line 466
    const/16 v0, 0x11

    .line 467
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 468
    .end local v0    # "result":I
    .local v1, "result":I
    iput v1, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->hashCode:I

    .line 470
    .end local v1    # "result":I
    :cond_11
    iget v0, p0, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->hashCode:I

    return v0
.end method
