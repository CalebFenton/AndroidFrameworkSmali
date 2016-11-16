.class public Landroid/net/sip/SipProfile$Builder;
.super Ljava/lang/Object;
.source "SipProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAddressFactory:Ljavax/sip/address/AddressFactory;

.field private mDisplayName:Ljava/lang/String;

.field private mProfile:Landroid/net/sip/SipProfile;

.field private mProxyAddress:Ljava/lang/String;

.field private mUri:Ljavax/sip/address/SipURI;


# direct methods
.method public constructor <init>(Landroid/net/sip/SipProfile;)V
    .locals 4
    .param p1, "profile"    # Landroid/net/sip/SipProfile;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 81
    new-instance v2, Landroid/net/sip/SipProfile;

    #@6
    invoke-direct {v2, v3}, Landroid/net/sip/SipProfile;-><init>(Landroid/net/sip/SipProfile;)V

    #@9
    iput-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@b
    .line 89
    :try_start_0
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    #@12
    move-result-object v2

    #@13
    .line 88
    iput-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;
    :try_end_0
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 99
    if-nez p1, :cond_0

    #@17
    new-instance v2, Ljava/lang/NullPointerException;

    #@19
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@1c
    throw v2

    #@1d
    .line 90
    :catch_0
    move-exception v1

    #@1e
    .line 91
    .local v1, "e":Ljavax/sip/PeerUnavailableException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@20
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@23
    throw v2

    #@24
    .line 101
    .end local v1    # "e":Ljavax/sip/PeerUnavailableException;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->clone()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/net/sip/SipProfile;

    #@2a
    iput-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    #@2c
    .line 105
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@2e
    invoke-static {v2, v3}, Landroid/net/sip/SipProfile;->-set0(Landroid/net/sip/SipProfile;Ljavax/sip/address/Address;)Ljavax/sip/address/Address;

    #@31
    .line 106
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    #@34
    move-result-object v2

    #@35
    iput-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    #@37
    .line 107
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    #@39
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getPassword()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-interface {v2, v3}, Ljavax/sip/address/SipURI;->setUserPassword(Ljava/lang/String;)V

    #@40
    .line 108
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    iput-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mDisplayName:Ljava/lang/String;

    #@46
    .line 109
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProxyAddress()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    iput-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProxyAddress:Ljava/lang/String;

    #@4c
    .line 110
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@4e
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getPort()I

    #@51
    move-result v3

    #@52
    invoke-static {v2, v3}, Landroid/net/sip/SipProfile;->-set5(Landroid/net/sip/SipProfile;I)I

    #@55
    .line 98
    return-void

    #@56
    .line 102
    :catch_1
    move-exception v0

    #@57
    .line 103
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@59
    const-string/jumbo v3, "should not occur"

    #@5c
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5f
    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 81
    new-instance v2, Landroid/net/sip/SipProfile;

    #@6
    invoke-direct {v2, v3}, Landroid/net/sip/SipProfile;-><init>(Landroid/net/sip/SipProfile;)V

    #@9
    iput-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@b
    .line 89
    :try_start_0
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    #@12
    move-result-object v2

    #@13
    .line 88
    iput-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;
    :try_end_0
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 120
    if-nez p1, :cond_0

    #@17
    .line 121
    new-instance v2, Ljava/lang/NullPointerException;

    #@19
    const-string/jumbo v3, "uriString cannot be null"

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 90
    :catch_0
    move-exception v0

    #@21
    .line 91
    .local v0, "e":Ljavax/sip/PeerUnavailableException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@23
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@26
    throw v2

    #@27
    .line 123
    .end local v0    # "e":Ljavax/sip/PeerUnavailableException;
    :cond_0
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    #@29
    invoke-direct {p0, p1}, Landroid/net/sip/SipProfile$Builder;->fix(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-interface {v2, v3}, Ljavax/sip/address/AddressFactory;->createURI(Ljava/lang/String;)Ljavax/sip/address/URI;

    #@30
    move-result-object v1

    #@31
    .line 124
    .local v1, "uri":Ljavax/sip/address/URI;
    instance-of v2, v1, Ljavax/sip/address/SipURI;

    #@33
    if-eqz v2, :cond_1

    #@35
    .line 125
    check-cast v1, Ljavax/sip/address/SipURI;

    #@37
    .end local v1    # "uri":Ljavax/sip/address/URI;
    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    #@39
    .line 129
    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@3b
    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    #@3d
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-static {v2, v3}, Landroid/net/sip/SipProfile;->-set3(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    #@44
    .line 119
    return-void

    #@45
    .line 127
    .restart local v1    # "uri":Ljavax/sip/address/URI;
    :cond_1
    new-instance v2, Ljava/text/ParseException;

    #@47
    new-instance v3, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    const-string/jumbo v4, " is not a SIP URI"

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    const/4 v4, 0x0

    #@5c
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@5f
    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "serverDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 81
    new-instance v1, Landroid/net/sip/SipProfile;

    #@6
    invoke-direct {v1, v2}, Landroid/net/sip/SipProfile;-><init>(Landroid/net/sip/SipProfile;)V

    #@9
    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@b
    .line 89
    :try_start_0
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    #@12
    move-result-object v1

    #@13
    .line 88
    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;
    :try_end_0
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 143
    if-eqz p1, :cond_0

    #@17
    if-nez p2, :cond_1

    #@19
    .line 144
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@1b
    .line 145
    const-string/jumbo v2, "username and serverDomain cannot be null"

    #@1e
    .line 144
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 90
    :catch_0
    move-exception v0

    #@23
    .line 91
    .local v0, "e":Ljavax/sip/PeerUnavailableException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@25
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@28
    throw v1

    #@29
    .line 147
    .end local v0    # "e":Ljavax/sip/PeerUnavailableException;
    :cond_1
    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    #@2b
    invoke-interface {v1, p1, p2}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    #@31
    .line 148
    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@33
    invoke-static {v1, p2}, Landroid/net/sip/SipProfile;->-set3(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    #@36
    .line 142
    return-void
.end method

.method private fix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uriString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "sip:"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .end local p1    # "uriString":Ljava/lang/String;
    :goto_0
    return-object p1

    #@12
    .line 154
    .restart local p1    # "uriString":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v1, "sip:"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p1

    #@26
    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/net/sip/SipProfile;
    .locals 7

    #@0
    .prologue
    .line 281
    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@2
    iget-object v4, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    #@4
    invoke-interface {v4}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    invoke-static {v3, v4}, Landroid/net/sip/SipProfile;->-set4(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    #@b
    .line 282
    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    #@d
    const/4 v4, 0x0

    #@e
    invoke-interface {v3, v4}, Ljavax/sip/address/SipURI;->setUserPassword(Ljava/lang/String;)V

    #@11
    .line 284
    :try_start_0
    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mProxyAddress:Ljava/lang/String;

    #@13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_1

    #@19
    .line 286
    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    #@1b
    iget-object v4, p0, Landroid/net/sip/SipProfile$Builder;->mProxyAddress:Ljava/lang/String;

    #@1d
    invoke-direct {p0, v4}, Landroid/net/sip/SipProfile$Builder;->fix(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-interface {v3, v4}, Ljavax/sip/address/AddressFactory;->createURI(Ljava/lang/String;)Ljavax/sip/address/URI;

    #@24
    move-result-object v2

    #@25
    .line 285
    check-cast v2, Ljavax/sip/address/SipURI;

    #@27
    .line 287
    .local v2, "uri":Ljavax/sip/address/SipURI;
    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@29
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-static {v3, v4}, Landroid/net/sip/SipProfile;->-set8(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    #@30
    .line 296
    .end local v2    # "uri":Ljavax/sip/address/SipURI;
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@32
    iget-object v4, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    #@34
    .line 297
    iget-object v5, p0, Landroid/net/sip/SipProfile$Builder;->mDisplayName:Ljava/lang/String;

    #@36
    iget-object v6, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    #@38
    .line 296
    invoke-interface {v4, v5, v6}, Ljavax/sip/address/AddressFactory;->createAddress(Ljava/lang/String;Ljavax/sip/address/URI;)Ljavax/sip/address/Address;

    #@3b
    move-result-object v4

    #@3c
    invoke-static {v3, v4}, Landroid/net/sip/SipProfile;->-set0(Landroid/net/sip/SipProfile;Ljavax/sip/address/Address;)Ljavax/sip/address/Address;
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    #@3f
    .line 304
    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@41
    return-object v3

    #@42
    .line 289
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@44
    invoke-static {v3}, Landroid/net/sip/SipProfile;->-get1(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    const-string/jumbo v4, "UDP"

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v3

    #@4f
    if-nez v3, :cond_2

    #@51
    .line 290
    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    #@53
    iget-object v4, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@55
    invoke-static {v4}, Landroid/net/sip/SipProfile;->-get1(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-interface {v3, v4}, Ljavax/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V

    #@5c
    .line 292
    :cond_2
    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@5e
    invoke-static {v3}, Landroid/net/sip/SipProfile;->-get0(Landroid/net/sip/SipProfile;)I

    #@61
    move-result v3

    #@62
    const/16 v4, 0x13c4

    #@64
    if-eq v3, v4, :cond_0

    #@66
    .line 293
    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    #@68
    iget-object v4, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@6a
    invoke-static {v4}, Landroid/net/sip/SipProfile;->-get0(Landroid/net/sip/SipProfile;)I

    #@6d
    move-result v4

    #@6e
    invoke-interface {v3, v4}, Ljavax/sip/address/SipURI;->setPort(I)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    #@71
    goto :goto_0

    #@72
    .line 298
    :catch_0
    move-exception v1

    #@73
    .line 299
    .local v1, "e":Ljavax/sip/InvalidArgumentException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@75
    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@78
    throw v3

    #@79
    .line 300
    .end local v1    # "e":Ljavax/sip/InvalidArgumentException;
    :catch_1
    move-exception v0

    #@7a
    .line 302
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@7c
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@7f
    throw v3
.end method

.method public setAuthUserName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@2
    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->-set1(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    #@5
    .line 165
    return-object p0
.end method

.method public setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;
    .locals 1
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@2
    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->-set2(Landroid/net/sip/SipProfile;Z)Z

    #@5
    .line 271
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
    iput-object p1, p0, Landroid/net/sip/SipProfile$Builder;->mDisplayName:Ljava/lang/String;

    #@2
    .line 246
    return-object p0
.end method

.method public setOutboundProxy(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .locals 0
    .param p1, "outboundProxy"    # Ljava/lang/String;

    #@0
    .prologue
    .line 234
    iput-object p1, p0, Landroid/net/sip/SipProfile$Builder;->mProxyAddress:Ljava/lang/String;

    #@2
    .line 235
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    #@2
    invoke-interface {v0, p1}, Ljavax/sip/address/SipURI;->setUserPassword(Ljava/lang/String;)V

    #@5
    .line 187
    return-object p0
.end method

.method public setPort(I)Landroid/net/sip/SipProfile$Builder;
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    const v0, 0xffff

    #@3
    if-gt p1, v0, :cond_0

    #@5
    const/16 v0, 0x3e8

    #@7
    if-ge p1, v0, :cond_1

    #@9
    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "incorrect port arugment: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 201
    :cond_1
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@25
    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->-set5(Landroid/net/sip/SipProfile;I)I

    #@28
    .line 202
    return-object p0
.end method

.method public setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@2
    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->-set6(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    #@5
    .line 176
    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .locals 3
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    if-nez p1, :cond_0

    #@2
    .line 216
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "protocol cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 218
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    .line 219
    const-string/jumbo v0, "UDP"

    #@12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    const-string/jumbo v0, "TCP"

    #@1b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 223
    :cond_1
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@23
    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->-set7(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljava/lang/String;

    #@26
    .line 224
    return-object p0

    #@27
    .line 220
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "unsupported protocol: "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 220
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0
.end method

.method public setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;
    .locals 1
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    #@2
    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->-set9(Landroid/net/sip/SipProfile;Z)Z

    #@5
    .line 258
    return-object p0
.end method
