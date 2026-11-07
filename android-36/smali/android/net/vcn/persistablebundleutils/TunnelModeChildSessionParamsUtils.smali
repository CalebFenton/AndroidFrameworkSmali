.class public final Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;
.super Ljava/lang/Object;
.source "TunnelModeChildSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;
    }
.end annotation


# static fields
.field private static final blacklist CONFIG_REQUESTS_KEY:Ljava/lang/String; = "CONFIG_REQUESTS_KEY"

.field private static final blacklist HARD_LIFETIME_SEC_KEY:Ljava/lang/String; = "HARD_LIFETIME_SEC_KEY"

.field private static final blacklist INBOUND_TS_KEY:Ljava/lang/String; = "INBOUND_TS_KEY"

.field private static final blacklist OUTBOUND_TS_KEY:Ljava/lang/String; = "OUTBOUND_TS_KEY"

.field private static final blacklist SA_PROPOSALS_KEY:Ljava/lang/String; = "SA_PROPOSALS_KEY"

.field private static final blacklist SOFT_LIFETIME_SEC_KEY:Ljava/lang/String; = "SOFT_LIFETIME_SEC_KEY"

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    const-class v0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams;
    .registers 12
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 195
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    new-instance v0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;-><init>()V

    .line 200
    .local v0, "builder":Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    const-string v1, "SA_PROPOSALS_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 201
    .local v1, "proposalBundle":Landroid/os/PersistableBundle;
    const-string v2, "SA proposal was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    new-instance v2, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda4;-><init>()V

    .line 203
    invoke-static {v1, v2}, Landroid/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    .line 205
    .local v2, "proposals":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/ChildSaProposal;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 206
    .local v4, "p":Landroid/net/ipsec/ike/ChildSaProposal;
    invoke-virtual {v0, v4}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 207
    .end local v4    # "p":Landroid/net/ipsec/ike/ChildSaProposal;
    goto :goto_22

    .line 209
    :cond_32
    const-string v3, "INBOUND_TS_KEY"

    invoke-static {p0, v3}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->getTsFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 210
    .local v4, "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    invoke-virtual {v0, v4}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 211
    .end local v4    # "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    goto :goto_3c

    .line 213
    :cond_4c
    const-string v3, "OUTBOUND_TS_KEY"

    invoke-static {p0, v3}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->getTsFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_56
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 214
    .restart local v4    # "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    invoke-virtual {v0, v4}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addOutboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 215
    .end local v4    # "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    goto :goto_56

    .line 217
    :cond_66
    nop

    .line 218
    const-string v3, "HARD_LIFETIME_SEC_KEY"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "SOFT_LIFETIME_SEC_KEY"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 217
    invoke-virtual {v0, v3, v4}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->setLifetimeSeconds(II)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 219
    const-string v3, "CONFIG_REQUESTS_KEY"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 220
    .local v3, "configReqListBundle":Landroid/os/PersistableBundle;
    const-string v4, "Config request list was null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    new-instance v4, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda5;-><init>()V

    .line 222
    invoke-static {v3, v4}, Landroid/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v4

    .line 224
    .local v4, "reqList":Ljava/util/List;, "Ljava/util/List<Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;>;"
    const/4 v5, 0x0

    .line 225
    .local v5, "hasIpv4AddressReq":Z
    const/4 v6, 0x0

    .line 226
    .local v6, "hasIpv4NetmaskReq":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_90
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;

    .line 227
    .local v8, "req":Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;
    iget v9, v8, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    packed-switch v9, :pswitch_data_138

    .line 268
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unrecognized config request type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v8, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 247
    :pswitch_bc
    const/4 v6, 0x1

    .line 248
    goto :goto_118

    .line 262
    :pswitch_be
    iget-object v9, v8, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-eqz v9, :cond_c9

    .line 263
    sget-object v9, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->TAG:Ljava/lang/String;

    const-string v10, "Requesting a specific IPv4 DHCP server is unsupported"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_c9
    sget v9, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v0, v9}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDhcpServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 266
    goto :goto_118

    .line 256
    :pswitch_cf
    iget-object v9, v8, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-eqz v9, :cond_da

    .line 257
    sget-object v9, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->TAG:Ljava/lang/String;

    const-string v10, "Requesting a specific IPv6 DNS server is unsupported"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_da
    sget v9, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, v9}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 260
    goto :goto_118

    .line 250
    :pswitch_e0
    iget-object v9, v8, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-eqz v9, :cond_eb

    .line 251
    sget-object v9, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->TAG:Ljava/lang/String;

    const-string v10, "Requesting a specific IPv4 DNS server is unsupported"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_eb
    sget v9, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v0, v9}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 254
    goto :goto_118

    .line 237
    :pswitch_f1
    iget-object v9, v8, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-nez v9, :cond_fb

    .line 238
    sget v9, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, v9}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    goto :goto_118

    .line 240
    :cond_fb
    iget-object v9, v8, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    check-cast v9, Ljava/net/Inet6Address;

    iget v10, v8, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->ip6PrefixLen:I

    invoke-virtual {v0, v9, v10}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(Ljava/net/Inet6Address;I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 243
    goto :goto_118

    .line 229
    :pswitch_105
    const/4 v5, 0x1

    .line 230
    iget-object v9, v8, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-nez v9, :cond_110

    .line 231
    sget v9, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v0, v9}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    goto :goto_118

    .line 233
    :cond_110
    iget-object v9, v8, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    check-cast v9, Ljava/net/Inet4Address;

    invoke-virtual {v0, v9}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(Ljava/net/Inet4Address;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 235
    nop

    .line 271
    .end local v8    # "req":Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;
    :goto_118
    goto/16 :goto_90

    .line 273
    :cond_11a
    if-eq v5, v6, :cond_133

    .line 274
    sget-object v7, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->TAG:Ljava/lang/String;

    .line 280
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    .line 276
    const-string v9, "Expect IPv4 address request and IPv4 netmask request either both exist or both absent, but found hasIpv4AddressReq exists? %b, hasIpv4AddressReq exists? %b, "

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 274
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_133
    invoke-virtual {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->build()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v7

    return-object v7

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_105
        :pswitch_f1
        :pswitch_e0
        :pswitch_cf
        :pswitch_be
        :pswitch_bc
    .end packed-switch
.end method

.method private static blacklist getTsFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p0, "in"    # Landroid/os/PersistableBundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 186
    .local v0, "tsBundle":Landroid/os/PersistableBundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    new-instance v1, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/TunnelModeChildSessionParams;)Landroid/os/PersistableBundle;
    .registers 9
    .param p0, "params"    # Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    .line 150
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 152
    .local v0, "result":Landroid/os/PersistableBundle;
    nop

    .line 154
    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getSaProposals()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 153
    invoke-static {v1, v2}, Landroid/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 155
    .local v1, "saProposalBundle":Landroid/os/PersistableBundle;
    const-string v2, "SA_PROPOSALS_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 157
    nop

    .line 159
    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getInboundTrafficSelectors()Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 158
    invoke-static {v2, v3}, Landroid/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 161
    .local v2, "inTsBundle":Landroid/os/PersistableBundle;
    const-string v3, "INBOUND_TS_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 163
    nop

    .line 165
    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getOutboundTrafficSelectors()Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 164
    invoke-static {v3, v4}, Landroid/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 167
    .local v3, "outTsBundle":Landroid/os/PersistableBundle;
    const-string v4, "OUTBOUND_TS_KEY"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 169
    const-string v4, "HARD_LIFETIME_SEC_KEY"

    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getHardLifetimeSeconds()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v4, "SOFT_LIFETIME_SEC_KEY"

    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getSoftLifetimeSeconds()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v4, "reqList":Ljava/util/List;, "Ljava/util/List<Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;>;"
    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getConfigurationRequests()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$TunnelModeChildConfigRequest;

    .line 174
    .local v6, "req":Landroid/net/ipsec/ike/TunnelModeChildSessionParams$TunnelModeChildConfigRequest;
    new-instance v7, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;

    invoke-direct {v7, v6}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;-><init>(Landroid/net/ipsec/ike/TunnelModeChildSessionParams$TunnelModeChildConfigRequest;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v6    # "req":Landroid/net/ipsec/ike/TunnelModeChildSessionParams$TunnelModeChildConfigRequest;
    goto :goto_5d

    .line 176
    :cond_72
    new-instance v5, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda3;-><init>()V

    .line 177
    invoke-static {v4, v5}, Landroid/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 178
    .local v5, "configReqListBundle":Landroid/os/PersistableBundle;
    const-string v6, "CONFIG_REQUESTS_KEY"

    invoke-virtual {v0, v6, v5}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 180
    return-object v0
.end method
