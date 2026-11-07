.class public final Landroid/net/ipsec/ike/IkeSessionConfiguration;
.super Ljava/lang/Object;
.source "IkeSessionConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/IkeSessionConfiguration$Builder;,
        Landroid/net/ipsec/ike/IkeSessionConfiguration$ExtensionType;
    }
.end annotation


# static fields
.field public static final whitelist EXTENSION_TYPE_FRAGMENTATION:I = 0x1

.field public static final whitelist EXTENSION_TYPE_MOBIKE:I = 0x2

.field private static final blacklist VALID_EXTENSION_MAX:I = 0x2

.field private static final blacklist VALID_EXTENSION_MIN:I = 0x1


# instance fields
.field private final blacklist mEapInfo:Landroid/net/eap/EapInfo;

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

.field private final blacklist mRemoteApplicationVersion:Ljava/lang/String;

.field private final blacklist mRemoteVendorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;Ljava/util/List;Ljava/util/List;Landroid/net/eap/EapInfo;)V
    .registers 12
    .param p1, "ikeConnInfo"    # Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    .param p2, "configPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
    .param p5, "eapInfo"    # Landroid/net/eap/EapInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ipsec/ike/IkeSessionConnectionInfo;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/net/eap/EapInfo;",
            ")V"
        }
    .end annotation

    .line 86
    .local p3, "remoteVendorIds":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p4, "enabledExtensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mPcscfServers:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mRemoteVendorIds:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mEnabledExtensions:Ljava/util/Set;

    .line 87
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mIkeConnInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 88
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mRemoteVendorIds:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mEnabledExtensions:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 90
    iput-object p5, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mEapInfo:Landroid/net/eap/EapInfo;

    .line 92
    const-string v0, ""

    .line 93
    .local v0, "appVersion":Ljava/lang/String;
    if-eqz p2, :cond_8a

    .line 94
    iget v1, p2, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->configType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6f

    .line 100
    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->recognizedAttributeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    .line 101
    .local v2, "attr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->isEmptyValue()Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_35

    .line 102
    :cond_48
    iget v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->attributeType:I

    sparse-switch v3, :sswitch_data_90

    goto :goto_6e

    .line 112
    :sswitch_4e
    move-object v3, v2

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Pcscf;

    .line 113
    .local v3, "ip6Pcscf":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Pcscf;
    iget-object v4, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mPcscfServers:Ljava/util/List;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Pcscf;->getAddress()Ljava/net/Inet6Address;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    goto :goto_6e

    .line 108
    .end local v3    # "ip6Pcscf":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Pcscf;
    :sswitch_5b
    move-object v3, v2

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Pcscf;

    .line 109
    .local v3, "ip4Pcscf":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Pcscf;
    iget-object v4, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mPcscfServers:Ljava/util/List;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Pcscf;->getAddress()Ljava/net/Inet4Address;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    goto :goto_6e

    .line 104
    .end local v3    # "ip4Pcscf":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Pcscf;
    :sswitch_68
    move-object v3, v2

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;

    .line 105
    .local v3, "appVersionAttr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;
    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;->applicationVersion:Ljava/lang/String;

    .line 106
    nop

    .line 118
    .end local v2    # "attr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    .end local v3    # "appVersionAttr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;
    :goto_6e
    goto :goto_35

    .line 95
    :cond_6f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot build IkeSessionConfiguration with configuration type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->configType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_8a
    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mRemoteApplicationVersion:Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Landroid/net/ipsec/ike/IkeSessionConfiguration;->validateOrThrow()V

    .line 122
    return-void

    :sswitch_data_90
    .sparse-switch
        0x7 -> :sswitch_68
        0x14 -> :sswitch_5b
        0x15 -> :sswitch_4e
    .end sparse-switch
.end method

.method private constructor blacklist <init>(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;Landroid/net/eap/EapInfo;)V
    .registers 8
    .param p1, "ikeConnInfo"    # Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    .param p5, "remoteApplicationVersion"    # Ljava/lang/String;
    .param p6, "eapInfo"    # Landroid/net/eap/EapInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ipsec/ike/IkeSessionConnectionInfo;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/eap/EapInfo;",
            ")V"
        }
    .end annotation

    .line 135
    .local p2, "pcscfServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p3, "remoteVendorIds":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p4, "enabledExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mPcscfServers:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mRemoteVendorIds:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mEnabledExtensions:Ljava/util/Set;

    .line 136
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mIkeConnInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 137
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mPcscfServers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mRemoteVendorIds:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mEnabledExtensions:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 140
    iput-object p5, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mRemoteApplicationVersion:Ljava/lang/String;

    .line 141
    iput-object p6, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mEapInfo:Landroid/net/eap/EapInfo;

    .line 143
    invoke-direct {p0}, Landroid/net/ipsec/ike/IkeSessionConfiguration;->validateOrThrow()V

    .line 144
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;Landroid/net/eap/EapInfo;Landroid/net/ipsec/ike/IkeSessionConfiguration-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/net/ipsec/ike/IkeSessionConfiguration;-><init>(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;Landroid/net/eap/EapInfo;)V

    return-void
.end method

.method private blacklist validateOrThrow()V
    .registers 6

    .line 147
    const-string v0, " was null"

    .line 148
    .local v0, "errMsg":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mIkeConnInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ikeConnInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mPcscfServers:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pcscfServers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mRemoteVendorIds:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remoteVendorIds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mRemoteApplicationVersion:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remoteApplicationVersion"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mRemoteVendorIds:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    return-void
.end method


# virtual methods
.method public whitelist getEapInfo()Landroid/net/eap/EapInfo;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mEapInfo:Landroid/net/eap/EapInfo;

    return-object v0
.end method

.method public whitelist getIkeSessionConnectionInfo()Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mIkeConnInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    return-object v0
.end method

.method public whitelist getPcscfServers()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mPcscfServers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRemoteApplicationVersion()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mRemoteApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRemoteVendorIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mRemoteVendorIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isIkeExtensionEnabled(I)Z
    .registers 4
    .param p1, "extensionType"    # I

    .line 191
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionConfiguration;->mEnabledExtensions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
