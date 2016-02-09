.class public Landroid/telecom/GatewayInfo;
.super Ljava/lang/Object;
.source "GatewayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/GatewayInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/GatewayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mGatewayAddress:Landroid/net/Uri;

.field private final mGatewayProviderPackageName:Ljava/lang/String;

.field private final mOriginalAddress:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 84
    new-instance v0, Landroid/telecom/GatewayInfo$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/GatewayInfo$1;-><init>()V

    #@5
    .line 83
    sput-object v0, Landroid/telecom/GatewayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gatewayUri"    # Landroid/net/Uri;
    .param p3, "originalAddress"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    #@5
    .line 45
    iput-object p2, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    #@7
    .line 46
    iput-object p3, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    #@9
    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 105
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getGatewayAddress()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getGatewayProviderPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOriginalAddress()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 77
    iget-object v1, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    #@3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    iget-object v1, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    #@b
    if-nez v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 113
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6
    .line 114
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    #@8
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@b
    .line 115
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    #@d
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@10
    .line 112
    return-void
.end method
