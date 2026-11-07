.class public final Landroid/net/TetheringManager$TetheringRequest;
.super Ljava/lang/Object;
.source "TetheringManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetheringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TetheringRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/TetheringManager$TetheringRequest$Builder;,
        Landroid/net/TetheringManager$TetheringRequest$RequestType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/TetheringManager$TetheringRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_TYPE_EXPLICIT:I = 0x0

.field public static final blacklist REQUEST_TYPE_IMPLICIT:I = 0x1

.field public static final blacklist REQUEST_TYPE_LEGACY:I = 0x2

.field public static final blacklist REQUEST_TYPE_PLACEHOLDER:I = 0x3


# instance fields
.field private final blacklist mRequestParcel:Landroid/net/TetheringRequestParcel;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcheckConnectivityScope(II)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/net/TetheringManager$TetheringRequest;->checkConnectivityScope(II)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 879
    new-instance v0, Landroid/net/TetheringManager$TetheringRequest$1;

    invoke-direct {v0}, Landroid/net/TetheringManager$TetheringRequest$1;-><init>()V

    sput-object v0, Landroid/net/TetheringManager$TetheringRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/TetheringRequestParcel;)V
    .registers 2
    .param p1, "request"    # Landroid/net/TetheringRequestParcel;

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput-object p1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    .line 871
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    const-class v0, Landroid/net/TetheringRequestParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringRequestParcel;

    iput-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    .line 875
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/TetheringManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/TetheringManager$TetheringRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist checkConnectivityScope(II)Z
    .registers 4
    .param p0, "type"    # I
    .param p1, "scope"    # I

    .line 1154
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 1155
    :cond_4
    if-eq p0, v0, :cond_e

    const/4 v1, 0x5

    if-eq p0, v1, :cond_e

    const/4 v1, 0x4

    if-ne p0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_e
    return v0
.end method

.method public static blacklist checkStaticAddressConfiguration(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .registers 5
    .param p0, "localIPv4Address"    # Landroid/net/LinkAddress;
    .param p1, "clientAddress"    # Landroid/net/LinkAddress;

    .line 1132
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    if-ne v0, v1, :cond_30

    .line 1133
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIpv4()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Landroid/net/LinkAddress;->isIpv4()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Landroid/net/IpPrefix;

    .line 1134
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/IpPrefix;

    .line 1135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 1132
    :goto_31
    return v0
.end method

.method public static blacklist getDefaultConnectivityScope(I)I
    .registers 2
    .param p0, "tetheringType"    # I

    .line 1144
    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    .line 1145
    const/4 v0, 0x1

    goto :goto_6

    .line 1146
    :cond_5
    const/4 v0, 0x2

    .line 1144
    :goto_6
    return v0
.end method

.method private static blacklist supportsConcurrentConnectivityScopes(I)Z
    .registers 2
    .param p0, "tetheringType"    # I

    .line 1281
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist supportsInterfaceName(I)Z
    .registers 2
    .param p0, "tetheringType"    # I

    .line 1272
    const/4 v0, 0x7

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 894
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1311
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1312
    :cond_4
    instance-of v1, p1, Landroid/net/TetheringManager$TetheringRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    move-object v1, p1

    check-cast v1, Landroid/net/TetheringManager$TetheringRequest;

    .line 1313
    .local v1, "otherRequest":Landroid/net/TetheringManager$TetheringRequest;
    invoke-virtual {p0, v1}, Landroid/net/TetheringManager$TetheringRequest;->equalsIgnoreUidPackage(Landroid/net/TetheringManager$TetheringRequest;)Z

    move-result v3

    if-nez v3, :cond_13

    return v2

    .line 1314
    :cond_13
    invoke-virtual {p0}, Landroid/net/TetheringManager$TetheringRequest;->getParcel()Landroid/net/TetheringRequestParcel;

    move-result-object v3

    .line 1315
    .local v3, "parcel":Landroid/net/TetheringRequestParcel;
    invoke-virtual {v1}, Landroid/net/TetheringManager$TetheringRequest;->getParcel()Landroid/net/TetheringRequestParcel;

    move-result-object v4

    .line 1316
    .local v4, "otherParcel":Landroid/net/TetheringRequestParcel;
    iget v5, v3, Landroid/net/TetheringRequestParcel;->uid:I

    iget v6, v4, Landroid/net/TetheringRequestParcel;->uid:I

    if-ne v5, v6, :cond_2c

    iget-object v5, v3, Landroid/net/TetheringRequestParcel;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/net/TetheringRequestParcel;->packageName:Ljava/lang/String;

    .line 1317
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    .line 1316
    :goto_2d
    return v0

    .line 1312
    .end local v1    # "otherRequest":Landroid/net/TetheringManager$TetheringRequest;
    .end local v3    # "parcel":Landroid/net/TetheringRequestParcel;
    .end local v4    # "otherParcel":Landroid/net/TetheringRequestParcel;
    :cond_2e
    return v2
.end method

.method public blacklist equalsIgnoreUidPackage(Landroid/net/TetheringManager$TetheringRequest;)Z
    .registers 6
    .param p1, "otherRequest"    # Landroid/net/TetheringManager$TetheringRequest;

    .line 1324
    invoke-virtual {p0}, Landroid/net/TetheringManager$TetheringRequest;->getParcel()Landroid/net/TetheringRequestParcel;

    move-result-object v0

    .line 1325
    .local v0, "parcel":Landroid/net/TetheringRequestParcel;
    invoke-virtual {p1}, Landroid/net/TetheringManager$TetheringRequest;->getParcel()Landroid/net/TetheringRequestParcel;

    move-result-object v1

    .line 1328
    .local v1, "otherParcel":Landroid/net/TetheringRequestParcel;
    iget v2, v0, Landroid/net/TetheringRequestParcel;->requestType:I

    iget v3, v1, Landroid/net/TetheringRequestParcel;->requestType:I

    if-ne v2, v3, :cond_50

    iget v2, v0, Landroid/net/TetheringRequestParcel;->tetheringType:I

    iget v3, v1, Landroid/net/TetheringRequestParcel;->tetheringType:I

    if-ne v2, v3, :cond_50

    iget-object v2, v0, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    iget-object v3, v1, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    .line 1330
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, v0, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    iget-object v3, v1, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    .line 1331
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-boolean v2, v0, Landroid/net/TetheringRequestParcel;->exemptFromEntitlementCheck:Z

    iget-boolean v3, v1, Landroid/net/TetheringRequestParcel;->exemptFromEntitlementCheck:Z

    if-ne v2, v3, :cond_50

    iget-boolean v2, v0, Landroid/net/TetheringRequestParcel;->showProvisioningUi:Z

    iget-boolean v3, v1, Landroid/net/TetheringRequestParcel;->showProvisioningUi:Z

    if-ne v2, v3, :cond_50

    iget v2, v0, Landroid/net/TetheringRequestParcel;->connectivityScope:I

    iget v3, v1, Landroid/net/TetheringRequestParcel;->connectivityScope:I

    if-ne v2, v3, :cond_50

    iget-object v2, v0, Landroid/net/TetheringRequestParcel;->softApConfig:Landroid/net/wifi/SoftApConfiguration;

    iget-object v3, v1, Landroid/net/TetheringRequestParcel;->softApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1335
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, v0, Landroid/net/TetheringRequestParcel;->interfaceName:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/TetheringRequestParcel;->interfaceName:Ljava/lang/String;

    .line 1336
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v2, 0x1

    goto :goto_51

    :cond_50
    const/4 v2, 0x0

    .line 1328
    :goto_51
    return v2
.end method

.method public blacklist fuzzyMatches(Landroid/net/TetheringManager$TetheringRequest;)Z
    .registers 6
    .param p1, "other"    # Landroid/net/TetheringManager$TetheringRequest;

    .line 1291
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1292
    :cond_4
    invoke-virtual {p0}, Landroid/net/TetheringManager$TetheringRequest;->getTetheringType()I

    move-result v1

    .line 1293
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/net/TetheringManager$TetheringRequest;->getTetheringType()I

    move-result v2

    if-eq v1, v2, :cond_f

    return v0

    .line 1294
    :cond_f
    invoke-static {v1}, Landroid/net/TetheringManager$TetheringRequest;->supportsInterfaceName(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1295
    invoke-virtual {p0}, Landroid/net/TetheringManager$TetheringRequest;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/TetheringManager$TetheringRequest;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1296
    return v0

    .line 1298
    :cond_24
    invoke-static {v1}, Landroid/net/TetheringManager$TetheringRequest;->supportsConcurrentConnectivityScopes(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1299
    invoke-virtual {p0}, Landroid/net/TetheringManager$TetheringRequest;->getConnectivityScope()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/TetheringManager$TetheringRequest;->getConnectivityScope()I

    move-result v3

    if-eq v2, v3, :cond_35

    .line 1300
    return v0

    .line 1302
    :cond_35
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getClientStaticIpv4Address()Landroid/net/LinkAddress;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1073
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v0, v0, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    return-object v0
.end method

.method public whitelist getConnectivityScope()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1093
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget v0, v0, Landroid/net/TetheringRequestParcel;->connectivityScope:I

    return v0
.end method

.method public blacklist getInterfaceName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1122
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v0, v0, Landroid/net/TetheringRequestParcel;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLocalIpv4Address()Landroid/net/LinkAddress;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1062
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v0, v0, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1205
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v0, v0, Landroid/net/TetheringRequestParcel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParcel()Landroid/net/TetheringRequestParcel;
    .registers 2

    .line 1213
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    return-object v0
.end method

.method public blacklist getRequestType()I
    .registers 2

    .line 1221
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget v0, v0, Landroid/net/TetheringRequestParcel;->requestType:I

    return v0
.end method

.method public whitelist getShouldShowEntitlementUi()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1111
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-boolean v0, v0, Landroid/net/TetheringRequestParcel;->showProvisioningUi:Z

    return v0
.end method

.method public whitelist getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .registers 2

    .line 1164
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v0, v0, Landroid/net/TetheringRequestParcel;->softApConfig:Landroid/net/wifi/SoftApConfiguration;

    return-object v0
.end method

.method public whitelist getTetheringType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1083
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget v0, v0, Landroid/net/TetheringRequestParcel;->tetheringType:I

    return v0
.end method

.method public blacklist getUid()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1193
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget v0, v0, Landroid/net/TetheringRequestParcel;->uid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1345
    invoke-virtual {p0}, Landroid/net/TetheringManager$TetheringRequest;->getParcel()Landroid/net/TetheringRequestParcel;

    move-result-object v0

    .line 1346
    .local v0, "parcel":Landroid/net/TetheringRequestParcel;
    iget v1, v0, Landroid/net/TetheringRequestParcel;->tetheringType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    iget-object v4, v0, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    iget-boolean v1, v0, Landroid/net/TetheringRequestParcel;->exemptFromEntitlementCheck:Z

    .line 1347
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v1, v0, Landroid/net/TetheringRequestParcel;->showProvisioningUi:Z

    .line 1348
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget v1, v0, Landroid/net/TetheringRequestParcel;->connectivityScope:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Landroid/net/TetheringRequestParcel;->softApConfig:Landroid/net/wifi/SoftApConfiguration;

    iget v1, v0, Landroid/net/TetheringRequestParcel;->uid:I

    .line 1349
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Landroid/net/TetheringRequestParcel;->packageName:Ljava/lang/String;

    iget-object v11, v0, Landroid/net/TetheringRequestParcel;->interfaceName:Ljava/lang/String;

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    .line 1346
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isExemptFromEntitlementCheck()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1102
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-boolean v0, v0, Landroid/net/TetheringRequestParcel;->exemptFromEntitlementCheck:Z

    return v0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1182
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iput-object p1, v0, Landroid/net/TetheringRequestParcel;->packageName:Ljava/lang/String;

    .line 1183
    return-void
.end method

.method public blacklist setUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 1173
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iput p1, v0, Landroid/net/TetheringRequestParcel;->uid:I

    .line 1174
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1230
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "TetheringRequest[ "

    const-string v2, " ]"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1231
    .local v0, "sj":Ljava/util/StringJoiner;
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget v1, v1, Landroid/net/TetheringRequestParcel;->tetheringType:I

    invoke-static {v1}, Landroid/net/TetheringManager;->-$$Nest$smtypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1232
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget v1, v1, Landroid/net/TetheringRequestParcel;->requestType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 1233
    const-string v1, "IMPLICIT"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_3c

    .line 1234
    :cond_23
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget v1, v1, Landroid/net/TetheringRequestParcel;->requestType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    .line 1235
    const-string v1, "LEGACY"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_3c

    .line 1236
    :cond_30
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget v1, v1, Landroid/net/TetheringRequestParcel;->requestType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3c

    .line 1237
    const-string v1, "PLACEHOLDER"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1239
    :cond_3c
    :goto_3c
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v1, v1, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    if-eqz v1, :cond_5c

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localIpv4Address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v2, v2, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1242
    :cond_5c
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v1, v1, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_7c

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "staticClientAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v2, v2, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1245
    :cond_7c
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-boolean v1, v1, Landroid/net/TetheringRequestParcel;->exemptFromEntitlementCheck:Z

    if-eqz v1, :cond_87

    .line 1246
    const-string v1, "exemptFromEntitlementCheck"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1248
    :cond_87
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-boolean v1, v1, Landroid/net/TetheringRequestParcel;->showProvisioningUi:Z

    if-eqz v1, :cond_92

    .line 1249
    const-string v1, "showProvisioningUi"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1251
    :cond_92
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget v1, v1, Landroid/net/TetheringRequestParcel;->connectivityScope:I

    invoke-static {v1}, Landroid/net/TetheringManager;->-$$Nest$smconnectivityScopeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1252
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v1, v1, Landroid/net/TetheringRequestParcel;->softApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v1, :cond_bd

    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "softApConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v2, v2, Landroid/net/TetheringRequestParcel;->softApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1255
    :cond_bd
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget v1, v1, Landroid/net/TetheringRequestParcel;->uid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_de

    .line 1256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget v2, v2, Landroid/net/TetheringRequestParcel;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1258
    :cond_de
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v1, v1, Landroid/net/TetheringRequestParcel;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_fe

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v2, v2, Landroid/net/TetheringRequestParcel;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1261
    :cond_fe
    iget-object v1, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v1, v1, Landroid/net/TetheringRequestParcel;->interfaceName:Ljava/lang/String;

    if-eqz v1, :cond_11e

    .line 1262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    iget-object v2, v2, Landroid/net/TetheringRequestParcel;->interfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1264
    :cond_11e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 900
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringRequest;->mRequestParcel:Landroid/net/TetheringRequestParcel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 901
    return-void
.end method
