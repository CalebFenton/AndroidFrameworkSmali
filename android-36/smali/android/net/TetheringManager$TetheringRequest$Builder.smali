.class public Landroid/net/TetheringManager$TetheringRequest$Builder;
.super Ljava/lang/Object;
.source "TetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetheringManager$TetheringRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBuilderParcel:Landroid/net/TetheringRequestParcel;


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 6
    .param p1, "type"    # I

    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 911
    new-instance v0, Landroid/net/TetheringRequestParcel;

    invoke-direct {v0}, Landroid/net/TetheringRequestParcel;-><init>()V

    iput-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    .line 912
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iput p1, v0, Landroid/net/TetheringRequestParcel;->tetheringType:I

    .line 913
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    .line 914
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iput-object v1, v0, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    .line 915
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/net/TetheringRequestParcel;->exemptFromEntitlementCheck:Z

    .line 916
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/net/TetheringRequestParcel;->showProvisioningUi:Z

    .line 917
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    invoke-static {p1}, Landroid/net/TetheringManager$TetheringRequest;->getDefaultConnectivityScope(I)I

    move-result v3

    iput v3, v0, Landroid/net/TetheringRequestParcel;->connectivityScope:I

    .line 918
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    const/4 v3, -0x1

    iput v3, v0, Landroid/net/TetheringRequestParcel;->uid:I

    .line 919
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iput-object v1, v0, Landroid/net/TetheringRequestParcel;->softApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 920
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iput-object v1, v0, Landroid/net/TetheringRequestParcel;->interfaceName:Ljava/lang/String;

    .line 921
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iput v2, v0, Landroid/net/TetheringRequestParcel;->requestType:I

    .line 922
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/TetheringManager$TetheringRequest;
    .registers 3

    .line 1050
    new-instance v0, Landroid/net/TetheringManager$TetheringRequest;

    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    invoke-direct {v0, v1}, Landroid/net/TetheringManager$TetheringRequest;-><init>(Landroid/net/TetheringRequestParcel;)V

    return-object v0
.end method

.method public whitelist setConnectivityScope(I)Landroid/net/TetheringManager$TetheringRequest$Builder;
    .registers 5
    .param p1, "scope"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1012
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iget v0, v0, Landroid/net/TetheringRequestParcel;->tetheringType:I

    invoke-static {v0, p1}, Landroid/net/TetheringManager$TetheringRequest;->-$$Nest$smcheckConnectivityScope(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1016
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iput p1, v0, Landroid/net/TetheringRequestParcel;->connectivityScope:I

    .line 1017
    return-object p0

    .line 1013
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid connectivity scope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setExemptFromEntitlementCheck(Z)Landroid/net/TetheringManager$TetheringRequest$Builder;
    .registers 3
    .param p1, "exempt"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 958
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iput-boolean p1, v0, Landroid/net/TetheringRequestParcel;->exemptFromEntitlementCheck:Z

    .line 959
    return-object p0
.end method

.method public blacklist setInterfaceName(Ljava/lang/String;)Landroid/net/TetheringManager$TetheringRequest$Builder;
    .registers 5
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 991
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iget v0, v0, Landroid/net/TetheringRequestParcel;->tetheringType:I

    sparse-switch v0, :sswitch_data_26

    .line 997
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface name cannot be set for tethering type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :sswitch_20
    nop

    .line 1000
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iput-object p1, v0, Landroid/net/TetheringRequestParcel;->interfaceName:Ljava/lang/String;

    .line 1001
    return-object p0

    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_20
        0x3 -> :sswitch_20
        0x7 -> :sswitch_20
    .end sparse-switch
.end method

.method public whitelist setShouldShowEntitlementUi(Z)Landroid/net/TetheringManager$TetheringRequest$Builder;
    .registers 3
    .param p1, "showUi"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 971
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iput-boolean p1, v0, Landroid/net/TetheringRequestParcel;->showProvisioningUi:Z

    .line 972
    return-object p0
.end method

.method public whitelist setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/TetheringManager$TetheringRequest$Builder;
    .registers 4
    .param p1, "softApConfig"    # Landroid/net/wifi/SoftApConfiguration;

    .line 1038
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iget v0, v0, Landroid/net/TetheringRequestParcel;->tetheringType:I

    if-nez v0, :cond_b

    .line 1042
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iput-object p1, v0, Landroid/net/TetheringRequestParcel;->softApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1043
    return-object p0

    .line 1039
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SoftApConfiguration can only be set for TETHERING_WIFI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setStaticIpv4Addresses(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Landroid/net/TetheringManager$TetheringRequest$Builder;
    .registers 5
    .param p1, "localIPv4Address"    # Landroid/net/LinkAddress;
    .param p2, "clientAddress"    # Landroid/net/LinkAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 939
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    invoke-static {p1, p2}, Landroid/net/TetheringManager$TetheringRequest;->checkStaticAddressConfiguration(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 945
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iput-object p1, v0, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    .line 946
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest$Builder;->mBuilderParcel:Landroid/net/TetheringRequestParcel;

    iput-object p2, v0, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    .line 947
    return-object p0

    .line 942
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid server or client addresses"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
