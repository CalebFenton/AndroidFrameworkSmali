.class public final Landroid/net/OemNetworkPreferences$Builder;
.super Ljava/lang/Object;
.source "OemNetworkPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/OemNetworkPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mNetworkMappings:Landroid/os/Bundle;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/net/OemNetworkPreferences$Builder;->mNetworkMappings:Landroid/os/Bundle;

    .line 149
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/OemNetworkPreferences;)V
    .registers 3
    .param p1, "preferences"    # Landroid/net/OemNetworkPreferences;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {p1}, Landroid/net/OemNetworkPreferences;->-$$Nest$fgetmNetworkMappings(Landroid/net/OemNetworkPreferences;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/net/OemNetworkPreferences$Builder;->mNetworkMappings:Landroid/os/Bundle;

    .line 159
    return-void
.end method


# virtual methods
.method public whitelist addNetworkPreference(Ljava/lang/String;I)Landroid/net/OemNetworkPreferences$Builder;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "preference"    # I

    .line 173
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Landroid/net/OemNetworkPreferences$Builder;->mNetworkMappings:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    return-object p0
.end method

.method public whitelist build()Landroid/net/OemNetworkPreferences;
    .registers 4

    .line 197
    new-instance v0, Landroid/net/OemNetworkPreferences;

    iget-object v1, p0, Landroid/net/OemNetworkPreferences$Builder;->mNetworkMappings:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/OemNetworkPreferences;-><init>(Landroid/os/Bundle;Landroid/net/OemNetworkPreferences-IA;)V

    return-object v0
.end method

.method public whitelist clearNetworkPreference(Ljava/lang/String;)Landroid/net/OemNetworkPreferences$Builder;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 187
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Landroid/net/OemNetworkPreferences$Builder;->mNetworkMappings:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 189
    return-object p0
.end method
