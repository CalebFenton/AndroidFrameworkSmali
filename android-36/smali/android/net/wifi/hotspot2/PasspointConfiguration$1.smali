.class Landroid/net/wifi/hotspot2/PasspointConfiguration$1;
.super Ljava/lang/Object;
.source "PasspointConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/PasspointConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist readTrustRootCerts(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1132
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 1133
    const/4 v1, 0x0

    return-object v1

    .line 1135
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1136
    .local v1, "trustRootCerts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_1f

    .line 1137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1138
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1139
    .local v4, "value":[B
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1141
    .end local v2    # "i":I
    :cond_1f
    return-object v1
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1083
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    .line 1084
    .local v0, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    .line 1085
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    .line 1086
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 1087
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 1088
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;->readTrustRootCerts(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setTrustRootCertList(Ljava/util/Map;)V

    .line 1089
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUpdateIdentifier(I)V

    .line 1090
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredentialPriority(I)V

    .line 1091
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionCreationTimeInMillis(J)V

    .line 1092
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionExpirationTimeInMillis(J)V

    .line 1093
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionType(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitUsageTimePeriodInMinutes(J)V

    .line 1095
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitStartTimeInMillis(J)V

    .line 1096
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitDataLimit(J)V

    .line 1097
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitTimeLimitInMinutes(J)V

    .line 1098
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setAaaServerTrustedNames([Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 1100
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "serviceFriendlyNames"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 1102
    .local v3, "friendlyNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setServiceFriendlyNames(Ljava/util/Map;)V

    .line 1103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v0, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->-$$Nest$fputmCarrierId(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)V

    .line 1104
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-static {v0, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->-$$Nest$fputmIsAutojoinEnabled(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)V

    .line 1105
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-static {v0, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->-$$Nest$fputmIsMacRandomizationEnabled(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)V

    .line 1106
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-static {v0, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->-$$Nest$fputmIsNonPersistentMacRandomizationEnabled(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)V

    .line 1107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v0, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->-$$Nest$fputmMeteredOverride(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)V

    .line 1108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v0, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->-$$Nest$fputmSubscriptionId(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)V

    .line 1109
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-static {v0, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->-$$Nest$fputmIsCarrierMerged(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)V

    .line 1110
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-static {v0, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->-$$Nest$fputmIsOemPaid(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)V

    .line 1111
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-static {v0, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->-$$Nest$fputmIsOemPrivate(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)V

    .line 1112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->-$$Nest$fputmDecoratedIdentityPrefix(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->-$$Nest$fputmSubscriptionGroup(Landroid/net/wifi/hotspot2/PasspointConfiguration;Landroid/os/ParcelUuid;)V

    .line 1115
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1080
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .registers 3
    .param p1, "size"    # I

    .line 1120
    new-array v0, p1, [Landroid/net/wifi/hotspot2/PasspointConfiguration;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1080
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;->newArray(I)[Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object p1

    return-object p1
.end method
