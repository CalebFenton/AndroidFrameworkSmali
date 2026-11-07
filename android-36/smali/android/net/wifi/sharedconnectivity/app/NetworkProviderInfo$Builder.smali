.class public final Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;
.super Ljava/lang/Object;
.source "NetworkProviderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBatteryPercentage:I

.field private blacklist mConnectionStrength:I

.field private blacklist mDeviceName:Ljava/lang/String;

.field private blacklist mDeviceType:I

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mIsBatteryCharging:Z

.field private blacklist mModelName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "modelName"    # Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mExtras:Landroid/os/Bundle;

    .line 111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mDeviceName:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mModelName:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;
    .registers 10

    .line 211
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mDeviceType:I

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mModelName:Ljava/lang/String;

    iget v4, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mBatteryPercentage:I

    iget-boolean v5, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mIsBatteryCharging:Z

    iget v6, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mConnectionStrength:I

    iget-object v7, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IZILandroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo-IA;)V

    return-object v0
.end method

.method public whitelist setBatteryCharging(Z)Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;
    .registers 2
    .param p1, "isBatteryCharging"    # Z

    .line 176
    iput-boolean p1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mIsBatteryCharging:Z

    .line 177
    return-object p0
.end method

.method public whitelist setBatteryPercentage(I)Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;
    .registers 2
    .param p1, "batteryPercentage"    # I

    .line 163
    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mBatteryPercentage:I

    .line 164
    return-object p0
.end method

.method public whitelist setConnectionStrength(I)Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;
    .registers 2
    .param p1, "connectionStrength"    # I

    .line 188
    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mConnectionStrength:I

    .line 189
    return-object p0
.end method

.method public whitelist setDeviceName(Ljava/lang/String;)Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;
    .registers 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 137
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mDeviceName:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public whitelist setDeviceType(I)Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;
    .registers 2
    .param p1, "deviceType"    # I

    .line 125
    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mDeviceType:I

    .line 126
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 199
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mExtras:Landroid/os/Bundle;

    .line 201
    return-object p0
.end method

.method public whitelist setModelName(Ljava/lang/String;)Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;
    .registers 2
    .param p1, "modelName"    # Ljava/lang/String;

    .line 150
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;->mModelName:Ljava/lang/String;

    .line 152
    return-object p0
.end method
