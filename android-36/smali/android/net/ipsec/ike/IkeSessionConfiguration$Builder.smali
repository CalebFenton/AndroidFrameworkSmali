.class public final Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;
.super Ljava/lang/Object;
.source "IkeSessionConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/IkeSessionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEapInfo:Landroid/net/eap/EapInfo;

.field private final blacklist mEnabledExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIkeConnInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

.field private final blacklist mPcscfServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteApplicationVersion:Ljava/lang/String;

.field private final blacklist mRemoteVendorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 3
    .param p1, "ikeConnInfo"    # Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mPcscfServers:Ljava/util/List;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mRemoteVendorIds:Ljava/util/List;

    .line 240
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mEnabledExtensions:Ljava/util/Set;

    .line 241
    const-string v0, ""

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mRemoteApplicationVersion:Ljava/lang/String;

    .line 250
    const-string v0, "ikeConnInfo was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mIkeConnInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 252
    return-void
.end method

.method private static blacklist validateExtensionOrThrow(I)V
    .registers 4
    .param p0, "extensionType"    # I

    .line 333
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v0, 0x2

    if-gt p0, v0, :cond_7

    .line 334
    return-void

    .line 336
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid extension type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addIkeExtension(I)Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;
    .registers 4
    .param p1, "extensionType"    # I

    .line 351
    invoke-static {p1}, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->validateExtensionOrThrow(I)V

    .line 352
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mEnabledExtensions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    return-object p0
.end method

.method public whitelist addPcscfServer(Ljava/net/InetAddress;)Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;
    .registers 3
    .param p1, "pcscfServer"    # Ljava/net/InetAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 264
    const-string v0, "pcscfServer was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mPcscfServers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-object p0
.end method

.method public whitelist addRemoteVendorId([B)Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;
    .registers 3
    .param p1, "remoteVendorId"    # [B

    .line 290
    const-string v0, "remoteVendorId was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mRemoteVendorIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    return-object p0
.end method

.method public whitelist build()Landroid/net/ipsec/ike/IkeSessionConfiguration;
    .registers 9

    .line 381
    new-instance v0, Landroid/net/ipsec/ike/IkeSessionConfiguration;

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mIkeConnInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mPcscfServers:Ljava/util/List;

    iget-object v3, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mRemoteVendorIds:Ljava/util/List;

    iget-object v4, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mEnabledExtensions:Ljava/util/Set;

    iget-object v5, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mRemoteApplicationVersion:Ljava/lang/String;

    iget-object v6, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mEapInfo:Landroid/net/eap/EapInfo;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/net/ipsec/ike/IkeSessionConfiguration;-><init>(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;Landroid/net/eap/EapInfo;Landroid/net/ipsec/ike/IkeSessionConfiguration-IA;)V

    return-object v0
.end method

.method public whitelist clearIkeExtensions()Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;
    .registers 2

    .line 363
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mEnabledExtensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 364
    return-object p0
.end method

.method public whitelist clearPcscfServers()Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mPcscfServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 279
    return-object p0
.end method

.method public whitelist clearRemoteApplicationVersion()Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;
    .registers 2

    .line 328
    const-string v0, ""

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mRemoteApplicationVersion:Ljava/lang/String;

    .line 329
    return-object p0
.end method

.method public whitelist clearRemoteVendorIds()Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mRemoteVendorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 303
    return-object p0
.end method

.method public whitelist setEapInfo(Landroid/net/eap/EapInfo;)Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;
    .registers 2
    .param p1, "eapInfo"    # Landroid/net/eap/EapInfo;

    .line 374
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mEapInfo:Landroid/net/eap/EapInfo;

    .line 375
    return-object p0
.end method

.method public whitelist setRemoteApplicationVersion(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;
    .registers 3
    .param p1, "remoteApplicationVersion"    # Ljava/lang/String;

    .line 315
    const-string v0, "remoteApplicationVersion was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;->mRemoteApplicationVersion:Ljava/lang/String;

    .line 317
    return-object p0
.end method
