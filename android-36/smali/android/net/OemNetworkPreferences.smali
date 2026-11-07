.class public final Landroid/net/OemNetworkPreferences;
.super Ljava/lang/Object;
.source "OemNetworkPreferences.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/OemNetworkPreferences$OemNetworkPreference;,
        Landroid/net/OemNetworkPreferences$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/OemNetworkPreferences;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist OEM_NETWORK_PREFERENCE_MAX:I = 0x4

.field public static final whitelist OEM_NETWORK_PREFERENCE_OEM_PAID:I = 0x1

.field public static final whitelist OEM_NETWORK_PREFERENCE_OEM_PAID_NO_FALLBACK:I = 0x2

.field public static final whitelist OEM_NETWORK_PREFERENCE_OEM_PAID_ONLY:I = 0x3

.field public static final whitelist OEM_NETWORK_PREFERENCE_OEM_PRIVATE_ONLY:I = 0x4

.field public static final blacklist OEM_NETWORK_PREFERENCE_TEST:I = -0x1

.field public static final blacklist OEM_NETWORK_PREFERENCE_TEST_ONLY:I = -0x2

.field public static final whitelist OEM_NETWORK_PREFERENCE_UNINITIALIZED:I


# instance fields
.field private final blacklist mNetworkMappings:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNetworkMappings(Landroid/net/OemNetworkPreferences;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/net/OemNetworkPreferences;->mNetworkMappings:Landroid/os/Bundle;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 263
    new-instance v0, Landroid/net/OemNetworkPreferences$1;

    invoke-direct {v0}, Landroid/net/OemNetworkPreferences$1;-><init>()V

    sput-object v0, Landroid/net/OemNetworkPreferences;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "networkMappings"    # Landroid/os/Bundle;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/net/OemNetworkPreferences;->mNetworkMappings:Landroid/os/Bundle;

    .line 118
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Bundle;Landroid/net/OemNetworkPreferences-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/OemNetworkPreferences;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist convertToUnmodifiableMap(Landroid/os/Bundle;)Ljava/util/Map;
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v0, "networkPreferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 204
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_d

    .line 206
    :cond_25
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist oemNetworkPreferenceToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 232
    packed-switch p0, :pswitch_data_1e

    .line 248
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :pswitch_8
    const-string v0, "OEM_NETWORK_PREFERENCE_OEM_PRIVATE_ONLY"

    return-object v0

    .line 244
    :pswitch_b
    const-string v0, "OEM_NETWORK_PREFERENCE_OEM_PAID_ONLY"

    return-object v0

    .line 242
    :pswitch_e
    const-string v0, "OEM_NETWORK_PREFERENCE_OEM_PAID_NO_FALLBACK"

    return-object v0

    .line 240
    :pswitch_11
    const-string v0, "OEM_NETWORK_PREFERENCE_OEM_PAID"

    return-object v0

    .line 238
    :pswitch_14
    const-string v0, "OEM_NETWORK_PREFERENCE_UNINITIALIZED"

    return-object v0

    .line 236
    :pswitch_17
    const-string v0, "OEM_NETWORK_PREFERENCE_TEST"

    return-object v0

    .line 234
    :pswitch_1a
    const-string v0, "OEM_NETWORK_PREFERENCE_TEST_ONLY"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch -0x2
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 128
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 129
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/OemNetworkPreferences;

    .line 131
    .local v2, "that":Landroid/net/OemNetworkPreferences;
    iget-object v3, p0, Landroid/net/OemNetworkPreferences;->mNetworkMappings:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v3

    iget-object v4, v2, Landroid/net/OemNetworkPreferences;->mNetworkMappings:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v4

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/net/OemNetworkPreferences;->mNetworkMappings:Landroid/os/Bundle;

    .line 132
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/net/OemNetworkPreferences;->mNetworkMappings:Landroid/os/Bundle;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    .line 131
    :goto_37
    return v0

    .line 128
    .end local v2    # "that":Landroid/net/OemNetworkPreferences;
    :cond_38
    :goto_38
    return v1
.end method

.method public whitelist getNetworkPreferences()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/net/OemNetworkPreferences;->mNetworkMappings:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/net/OemNetworkPreferences;->convertToUnmodifiableMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/net/OemNetworkPreferences;->mNetworkMappings:Landroid/os/Bundle;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/net/OemNetworkPreferences;->mNetworkMappings:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OemNetworkPreferences{mNetworkMappings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/OemNetworkPreferences;->getNetworkPreferences()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 254
    iget-object v0, p0, Landroid/net/OemNetworkPreferences;->mNetworkMappings:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 255
    return-void
.end method
