.class public final Landroid/net/wifi/usd/Characteristics;
.super Ljava/lang/Object;
.source "Characteristics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/usd/Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KEY_MAX_MATCH_FILTER_LENGTH:Ljava/lang/String; = "key_max_match_filter_length"

.field public static final blacklist KEY_MAX_NUM_PUBLISH_SESSIONS:Ljava/lang/String; = "key_max_num_publish_session"

.field public static final blacklist KEY_MAX_NUM_SUBSCRIBE_SESSIONS:Ljava/lang/String; = "key_max_num_subscribe_session"

.field public static final blacklist KEY_MAX_SERVICE_NAME_LENGTH:Ljava/lang/String; = "key_max_service_name_length"

.field public static final blacklist KEY_MAX_SERVICE_SPECIFIC_INFO_LENGTH:Ljava/lang/String; = "key_max_service_specific_info_length"


# instance fields
.field private final blacklist mCharacteristics:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Landroid/net/wifi/usd/Characteristics$1;

    invoke-direct {v0}, Landroid/net/wifi/usd/Characteristics$1;-><init>()V

    sput-object v0, Landroid/net/wifi/usd/Characteristics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "characteristics"    # Landroid/os/Bundle;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/net/wifi/usd/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    .line 57
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/usd/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/usd/Characteristics-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/Characteristics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMaxMatchFilterLength()I
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/net/wifi/usd/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_match_filter_length"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxNumberOfPublishSessions()I
    .registers 3

    .line 121
    iget-object v0, p0, Landroid/net/wifi/usd/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_num_publish_session"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxNumberOfSubscribeSessions()I
    .registers 3

    .line 130
    iget-object v0, p0, Landroid/net/wifi/usd/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_num_subscribe_session"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxServiceNameLength()I
    .registers 3

    .line 82
    iget-object v0, p0, Landroid/net/wifi/usd/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_service_name_length"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxServiceSpecificInfoLength()I
    .registers 3

    .line 98
    iget-object v0, p0, Landroid/net/wifi/usd/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_service_specific_info_length"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    iget-object v0, p0, Landroid/net/wifi/usd/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 148
    return-void
.end method
