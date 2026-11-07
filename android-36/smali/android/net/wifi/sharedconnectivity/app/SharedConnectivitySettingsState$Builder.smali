.class public final Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;
.super Ljava/lang/Object;
.source "SharedConnectivitySettingsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mInstantTetherEnabled:Z

.field private blacklist mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    .registers 6

    .line 94
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    iget-boolean v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;->mInstantTetherEnabled:Z

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;-><init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 83
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;->mExtras:Landroid/os/Bundle;

    .line 84
    return-object p0
.end method

.method public whitelist setInstantTetherEnabled(Z)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;
    .registers 2
    .param p1, "instantTetherEnabled"    # Z

    .line 60
    iput-boolean p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;->mInstantTetherEnabled:Z

    .line 61
    return-object p0
.end method

.method public whitelist setInstantTetherSettingsPendingIntent(Landroid/app/PendingIntent;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;
    .registers 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 72
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    .line 73
    return-object p0
.end method
