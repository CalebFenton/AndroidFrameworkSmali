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
.field private greylist-max-o mAddressFactory:Ljavax/sip/address/AddressFactory;

.field private greylist-max-o mDisplayName:Ljava/lang/String;

.field private greylist-max-o mProfile:Landroid/net/sip/SipProfile;

.field private greylist-max-o mProxyAddress:Ljava/lang/String;

.field private greylist-max-o mUri:Ljavax/sip/address/SipURI;


# direct methods
.method public constructor whitelist <init>(Landroid/net/sip/SipProfile;)V
    .registers 5
    .param p1, "profile"    # Landroid/net/sip/SipProfile;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/net/sip/SipProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/sip/SipProfile;-><init>(Landroid/net/sip/SipProfile-IA;)V

    iput-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    .line 91
    nop

    .line 92
    :try_start_c
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;
    :try_end_16
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_c .. :try_end_16} :catch_5b

    .line 95
    nop

    .line 102
    if-eqz p1, :cond_55

    .line 104
    :try_start_19
    # invokes: Ljava/lang/Object;->clone()Ljava/lang/Object;
    invoke-static {p1}, Landroid/net/sip/SipProfile;->access$000(Landroid/net/sip/SipProfile;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/SipProfile;

    iput-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;
    :try_end_21
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_19 .. :try_end_21} :catch_4c

    .line 107
    nop

    .line 108
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-static {v0, v1}, Landroid/net/sip/SipProfile;->-$$Nest$fputmAddress(Landroid/net/sip/SipProfile;Ljavax/sip/address/Address;)V

    .line 109
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    .line 110
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/sip/address/SipURI;->setUserPassword(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mDisplayName:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProxyAddress:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/sip/SipProfile;->-$$Nest$fputmPort(Landroid/net/sip/SipProfile;I)V

    .line 114
    return-void

    .line 105
    :catch_4c
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "should not occur"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 102
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_55
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 93
    :catch_5b
    move-exception v0

    .line 94
    .local v0, "e":Ljavax/sip/PeerUnavailableException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/net/sip/SipProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/sip/SipProfile;-><init>(Landroid/net/sip/SipProfile-IA;)V

    iput-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    .line 91
    nop

    .line 92
    :try_start_c
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;
    :try_end_16
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_c .. :try_end_16} :catch_5a

    .line 95
    nop

    .line 123
    if-eqz p1, :cond_52

    .line 126
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-direct {p0, p1}, Landroid/net/sip/SipProfile$Builder;->fix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/sip/address/AddressFactory;->createURI(Ljava/lang/String;)Ljavax/sip/address/URI;

    move-result-object v0

    .line 127
    .local v0, "uri":Ljavax/sip/address/URI;
    instance-of v1, v0, Ljavax/sip/address/SipURI;

    if-eqz v1, :cond_38

    .line 128
    move-object v1, v0

    check-cast v1, Ljavax/sip/address/SipURI;

    iput-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    .line 132
    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/sip/SipProfile;->-$$Nest$fputmDomain(Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 133
    return-void

    .line 130
    :cond_38
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a SIP URI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 124
    .end local v0    # "uri":Ljavax/sip/address/URI;
    :cond_52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uriString cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :catch_5a
    move-exception v0

    .line 94
    .local v0, "e":Ljavax/sip/PeerUnavailableException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "serverDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/net/sip/SipProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/sip/SipProfile;-><init>(Landroid/net/sip/SipProfile-IA;)V

    iput-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    .line 91
    nop

    .line 92
    :try_start_c
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;
    :try_end_16
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_c .. :try_end_16} :catch_31

    .line 95
    nop

    .line 146
    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    .line 150
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-interface {v0, p1, p2}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    .line 151
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-static {v0, p2}, Landroid/net/sip/SipProfile;->-$$Nest$fputmDomain(Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 152
    return-void

    .line 147
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username and serverDomain cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :catch_31
    move-exception v0

    .line 94
    .local v0, "e":Ljavax/sip/PeerUnavailableException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o fix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uriString"    # Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 156
    move-object v0, p1

    goto :goto_23

    .line 157
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_23
    return-object v0
.end method


# virtual methods
.method public whitelist build()Landroid/net/sip/SipProfile;
    .registers 5

    .line 284
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/sip/SipProfile;->-$$Nest$fputmPassword(Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljavax/sip/address/SipURI;->setUserPassword(Ljava/lang/String;)V

    .line 287
    :try_start_11
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProxyAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 288
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProxyAddress:Ljava/lang/String;

    .line 289
    invoke-direct {p0, v1}, Landroid/net/sip/SipProfile$Builder;->fix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/sip/address/AddressFactory;->createURI(Ljava/lang/String;)Ljavax/sip/address/URI;

    move-result-object v0

    check-cast v0, Ljavax/sip/address/SipURI;

    .line 290
    .local v0, "uri":Ljavax/sip/address/SipURI;
    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-interface {v0}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/sip/SipProfile;->-$$Nest$fputmProxyAddress(Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 291
    .end local v0    # "uri":Ljavax/sip/address/SipURI;
    goto :goto_5f

    .line 292
    :cond_31
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-static {v0}, Landroid/net/sip/SipProfile;->-$$Nest$fgetmProtocol(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UDP"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 293
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-static {v1}, Landroid/net/sip/SipProfile;->-$$Nest$fgetmProtocol(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V

    .line 295
    :cond_4a
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-static {v0}, Landroid/net/sip/SipProfile;->-$$Nest$fgetmPort(Landroid/net/sip/SipProfile;)I

    move-result v0

    const/16 v1, 0x13c4

    if-eq v0, v1, :cond_5f

    .line 296
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-static {v1}, Landroid/net/sip/SipProfile;->-$$Nest$fgetmPort(Landroid/net/sip/SipProfile;)I

    move-result v1

    invoke-interface {v0, v1}, Ljavax/sip/address/SipURI;->setPort(I)V

    .line 299
    :cond_5f
    :goto_5f
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    iget-object v1, p0, Landroid/net/sip/SipProfile$Builder;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    iget-object v2, p0, Landroid/net/sip/SipProfile$Builder;->mDisplayName:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    invoke-interface {v1, v2, v3}, Ljavax/sip/address/AddressFactory;->createAddress(Ljava/lang/String;Ljavax/sip/address/URI;)Ljavax/sip/address/Address;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/sip/SipProfile;->-$$Nest$fputmAddress(Landroid/net/sip/SipProfile;Ljavax/sip/address/Address;)V
    :try_end_6e
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_11 .. :try_end_6e} :catch_79
    .catch Ljava/text/ParseException; {:try_start_11 .. :try_end_6e} :catch_72

    .line 306
    nop

    .line 307
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    return-object v0

    .line 303
    :catch_72
    move-exception v0

    .line 305
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 301
    .end local v0    # "e":Ljava/text/ParseException;
    :catch_79
    move-exception v0

    .line 302
    .local v0, "e":Ljavax/sip/InvalidArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setAuthUserName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->-$$Nest$fputmAuthUserName(Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 168
    return-object p0
.end method

.method public whitelist setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;
    .registers 3
    .param p1, "flag"    # Z

    .line 273
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->-$$Nest$fputmAutoRegistration(Landroid/net/sip/SipProfile;Z)V

    .line 274
    return-object p0
.end method

.method public whitelist setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .registers 2
    .param p1, "displayName"    # Ljava/lang/String;

    .line 248
    iput-object p1, p0, Landroid/net/sip/SipProfile$Builder;->mDisplayName:Ljava/lang/String;

    .line 249
    return-object p0
.end method

.method public whitelist setOutboundProxy(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .registers 2
    .param p1, "outboundProxy"    # Ljava/lang/String;

    .line 237
    iput-object p1, p0, Landroid/net/sip/SipProfile$Builder;->mProxyAddress:Ljava/lang/String;

    .line 238
    return-object p0
.end method

.method public whitelist setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mUri:Ljavax/sip/address/SipURI;

    invoke-interface {v0, p1}, Ljavax/sip/address/SipURI;->setUserPassword(Ljava/lang/String;)V

    .line 190
    return-object p0
.end method

.method public whitelist setPort(I)Landroid/net/sip/SipProfile$Builder;
    .registers 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 201
    const v0, 0xffff

    if-gt p1, v0, :cond_f

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_f

    .line 204
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->-$$Nest$fputmPort(Landroid/net/sip/SipProfile;I)V

    .line 205
    return-object p0

    .line 202
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incorrect port arugment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->-$$Nest$fputmProfileName(Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 179
    return-object p0
.end method

.method public whitelist setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;
    .registers 5
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 218
    if-eqz p1, :cond_36

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 222
    const-string v0, "UDP"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "TCP"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_30

    .line 223
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_30
    :goto_30
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->-$$Nest$fputmProtocol(Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 227
    return-object p0

    .line 219
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocol cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;
    .registers 3
    .param p1, "flag"    # Z

    .line 260
    iget-object v0, p0, Landroid/net/sip/SipProfile$Builder;->mProfile:Landroid/net/sip/SipProfile;

    invoke-static {v0, p1}, Landroid/net/sip/SipProfile;->-$$Nest$fputmSendKeepAlive(Landroid/net/sip/SipProfile;Z)V

    .line 261
    return-object p0
.end method
