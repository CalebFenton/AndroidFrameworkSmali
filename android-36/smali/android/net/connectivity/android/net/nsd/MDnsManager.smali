.class public Landroid/net/connectivity/android/net/nsd/MDnsManager;
.super Ljava/lang/Object;
.source "MDnsManager.java"


# static fields
.field public static final blacklist MDNS_SERVICE:Ljava/lang/String; = "mdns"

.field private static final blacklist NETID_UNSET:I = 0x0

.field private static final blacklist NO_RESULT:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mMdns:Landroid/net/connectivity/android/net/mdns/aidl/IMDns;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    const-class v0, Landroid/net/connectivity/android/net/nsd/MDnsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/android/net/nsd/MDnsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/android/net/mdns/aidl/IMDns;)V
    .registers 2
    .param p1, "mdns"    # Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/net/connectivity/android/net/nsd/MDnsManager;->mMdns:Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    .line 46
    return-void
.end method


# virtual methods
.method public blacklist discover(ILjava/lang/String;I)Z
    .registers 12
    .param p1, "id"    # I
    .param p2, "registrationType"    # Ljava/lang/String;
    .param p3, "interfaceIdx"    # I

    .line 104
    new-instance v0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    const-string v5, ""

    const/4 v7, 0x0

    const/4 v2, -0x1

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move v6, p3

    .end local p1    # "id":I
    .end local p2    # "registrationType":Ljava/lang/String;
    .end local p3    # "interfaceIdx":I
    .local v1, "id":I
    .local v4, "registrationType":Ljava/lang/String;
    .local v6, "interfaceIdx":I
    invoke-direct/range {v0 .. v7}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object p1, v0

    .line 107
    .local p1, "info":Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    :try_start_f
    iget-object p2, p0, Landroid/net/connectivity/android/net/nsd/MDnsManager;->mMdns:Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    invoke-interface {p2, p1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns;->discover(Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_14} :catch_17
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f .. :try_end_14} :catch_17

    .line 111
    nop

    .line 112
    const/4 p2, 0x1

    return p2

    .line 108
    :catch_17
    move-exception v0

    move-object p2, v0

    .line 109
    .local p2, "e":Ljava/lang/Exception;
    sget-object p3, Landroid/net/connectivity/android/net/nsd/MDnsManager;->TAG:Ljava/lang/String;

    const-string v0, "Discover service failed."

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const/4 p3, 0x0

    return p3
.end method

.method public blacklist getServiceAddress(ILjava/lang/String;I)Z
    .registers 11
    .param p1, "id"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "interfaceIdx"    # I

    .line 148
    new-instance v0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v2, -0x1

    move v1, p1

    move-object v3, p2

    move v5, p3

    .end local p1    # "id":I
    .end local p2    # "hostname":Ljava/lang/String;
    .end local p3    # "interfaceIdx":I
    .local v1, "id":I
    .local v3, "hostname":Ljava/lang/String;
    .local v5, "interfaceIdx":I
    invoke-direct/range {v0 .. v6}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;-><init>(IILjava/lang/String;Ljava/lang/String;II)V

    move-object p1, v0

    .line 151
    .local p1, "info":Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    :try_start_d
    iget-object p2, p0, Landroid/net/connectivity/android/net/nsd/MDnsManager;->mMdns:Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    invoke-interface {p2, p1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns;->getServiceAddress(Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_d .. :try_end_12} :catch_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_12} :catch_15

    .line 155
    nop

    .line 156
    const/4 p2, 0x1

    return p2

    .line 152
    :catch_15
    move-exception v0

    move-object p2, v0

    .line 153
    .local p2, "e":Ljava/lang/Exception;
    sget-object p3, Landroid/net/connectivity/android/net/nsd/MDnsManager;->TAG:Ljava/lang/String;

    const-string v0, "Get service address failed."

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    const/4 p3, 0x0

    return p3
.end method

.method public blacklist registerEventListener(Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/android/net/nsd/MDnsManager;->mMdns:Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    invoke-interface {v0, p1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns;->registerEventListener(Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_5} :catch_6

    .line 185
    goto :goto_e

    .line 183
    :catch_6
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/net/connectivity/android/net/nsd/MDnsManager;->TAG:Ljava/lang/String;

    const-string v2, "Register listener failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public blacklist registerService(ILjava/lang/String;Ljava/lang/String;I[BI)Z
    .registers 15
    .param p1, "id"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "registrationType"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "txtRecord"    # [B
    .param p6, "interfaceIdx"    # I

    .line 84
    new-instance v0, Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;

    const/4 v2, -0x1

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    .end local p1    # "id":I
    .end local p2    # "serviceName":Ljava/lang/String;
    .end local p3    # "registrationType":Ljava/lang/String;
    .end local p4    # "port":I
    .end local p5    # "txtRecord":[B
    .end local p6    # "interfaceIdx":I
    .local v1, "id":I
    .local v3, "serviceName":Ljava/lang/String;
    .local v4, "registrationType":Ljava/lang/String;
    .local v5, "port":I
    .local v6, "txtRecord":[B
    .local v7, "interfaceIdx":I
    invoke-direct/range {v0 .. v7}, Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;-><init>(IILjava/lang/String;Ljava/lang/String;I[BI)V

    move-object p1, v0

    .line 87
    .local p1, "info":Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;
    :try_start_d
    iget-object p2, p0, Landroid/net/connectivity/android/net/nsd/MDnsManager;->mMdns:Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    invoke-interface {p2, p1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns;->registerService(Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_d .. :try_end_12} :catch_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_12} :catch_15

    .line 91
    nop

    .line 92
    const/4 p2, 0x1

    return p2

    .line 88
    :catch_15
    move-exception v0

    move-object p2, v0

    .line 89
    .local p2, "e":Ljava/lang/Exception;
    sget-object p3, Landroid/net/connectivity/android/net/nsd/MDnsManager;->TAG:Ljava/lang/String;

    const-string p4, "Register service failed."

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    const/4 p3, 0x0

    return p3
.end method

.method public blacklist resolve(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 18
    .param p1, "id"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "registrationType"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "interfaceIdx"    # I

    .line 127
    new-instance v0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    const/4 v11, 0x0

    new-array v9, v11, [B

    const/4 v2, -0x1

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BI)V

    move-object v1, v0

    .line 131
    .local v1, "info":Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :try_start_16
    iget-object v0, p0, Landroid/net/connectivity/android/net/nsd/MDnsManager;->mMdns:Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    invoke-interface {v0, v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns;->resolve(Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1e
    .catch Landroid/os/ServiceSpecificException; {:try_start_16 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_16 .. :try_end_1b} :catch_1e

    .line 135
    nop

    .line 136
    const/4 v0, 0x1

    return v0

    .line 132
    :catch_1e
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/net/connectivity/android/net/nsd/MDnsManager;->TAG:Ljava/lang/String;

    const-string v3, "Resolve service failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    return v11
.end method

.method public blacklist startDaemon()V
    .registers 4

    .line 53
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/android/net/nsd/MDnsManager;->mMdns:Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    invoke-interface {v0}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns;->startDaemon()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_5} :catch_6

    .line 56
    goto :goto_e

    .line 54
    :catch_6
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/net/connectivity/android/net/nsd/MDnsManager;->TAG:Ljava/lang/String;

    const-string v2, "Start mdns failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public blacklist stopDaemon()V
    .registers 4

    .line 64
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/android/net/nsd/MDnsManager;->mMdns:Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    invoke-interface {v0}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns;->stopDaemon()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_5} :catch_6

    .line 67
    goto :goto_e

    .line 65
    :catch_6
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/net/connectivity/android/net/nsd/MDnsManager;->TAG:Ljava/lang/String;

    const-string v2, "Stop mdns failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public blacklist stopOperation(I)Z
    .registers 5
    .param p1, "id"    # I

    .line 167
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/android/net/nsd/MDnsManager;->mMdns:Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    invoke-interface {v0, p1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns;->stopOperation(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_5} :catch_8

    .line 171
    nop

    .line 172
    const/4 v0, 0x1

    return v0

    .line 168
    :catch_8
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/net/connectivity/android/net/nsd/MDnsManager;->TAG:Ljava/lang/String;

    const-string v2, "Stop operation failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist unregisterEventListener(Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;

    .line 195
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/android/net/nsd/MDnsManager;->mMdns:Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    invoke-interface {v0, p1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns;->unregisterEventListener(Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_5} :catch_6

    .line 198
    goto :goto_e

    .line 196
    :catch_6
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/net/connectivity/android/net/nsd/MDnsManager;->TAG:Ljava/lang/String;

    const-string v2, "Unregister listener failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method
