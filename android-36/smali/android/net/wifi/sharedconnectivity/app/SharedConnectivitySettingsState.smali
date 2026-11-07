.class public final Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
.super Ljava/lang/Object;
.source "SharedConnectivitySettingsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mInstantTetherEnabled:Z

.field private final blacklist mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 183
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$1;

    invoke-direct {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$1;-><init>()V

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "instantTetherEnabled"    # Z
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->validate(Landroid/app/PendingIntent;)V

    .line 109
    iput-boolean p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    .line 110
    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    .line 111
    iput-object p3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    .line 112
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;-><init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 176
    invoke-static {p0}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 177
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 178
    .local v1, "instantTetherEnabled":Z
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 179
    .local v2, "extras":Landroid/os/Bundle;
    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    invoke-direct {v3, v1, v0, v2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;-><init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-object v3
.end method

.method private static blacklist validate(Landroid/app/PendingIntent;)V
    .registers 3
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 101
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 102
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pending intent must be immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 145
    instance-of v0, p1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 146
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    .line 147
    .local v0, "other":Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    iget-boolean v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->isInstantTetherEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_1f

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    .line 149
    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->getInstantTetherSettingsPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 148
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 147
    :goto_20
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getInstantTetherSettingsPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 154
    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isInstantTetherEnabled()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SharedConnectivitySettingsState["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v1, "instantTetherEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string v1, "PendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 201
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 164
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 165
    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 166
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method
