.class public Landroid/telecom/GatewayInfo;
.super Ljava/lang/Object;
.source "GatewayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/GatewayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mGatewayAddress:Landroid/net/Uri;

.field private final greylist-max-o mGatewayProviderPackageName:Ljava/lang/String;

.field private final greylist-max-o mOriginalAddress:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Landroid/telecom/GatewayInfo$1;

    invoke-direct {v0}, Landroid/telecom/GatewayInfo$1;-><init>()V

    sput-object v0, Landroid/telecom/GatewayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gatewayUri"    # Landroid/net/Uri;
    .param p3, "originalAddress"    # Landroid/net/Uri;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    .line 46
    iput-object p3, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGatewayAddress()Landroid/net/Uri;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getGatewayProviderPackageName()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOriginalAddress()Landroid/net/Uri;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 115
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 116
    return-void
.end method
