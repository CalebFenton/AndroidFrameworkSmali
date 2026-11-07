.class public final Landroid/telephony/gba/GbaAuthRequest;
.super Ljava/lang/Object;
.source "GbaAuthRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/gba/GbaAuthRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private blacklist mAppType:I

.field private blacklist mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

.field private blacklist mForceBootStrapping:Z

.field private blacklist mNafUrl:Landroid/net/Uri;

.field private blacklist mSecurityProtocol:[B

.field private blacklist mSubId:I

.field private blacklist mToken:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/telephony/gba/GbaAuthRequest;->sUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    new-instance v0, Landroid/telephony/gba/GbaAuthRequest$1;

    invoke-direct {v0}, Landroid/telephony/gba/GbaAuthRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/gba/GbaAuthRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILandroid/net/Uri;[BZLandroid/telephony/IBootstrapAuthenticationCallback;)V
    .registers 8
    .param p1, "token"    # I
    .param p2, "subId"    # I
    .param p3, "appType"    # I
    .param p4, "nafUrl"    # Landroid/net/Uri;
    .param p5, "securityProtocol"    # [B
    .param p6, "forceBootStrapping"    # Z
    .param p7, "callback"    # Landroid/telephony/IBootstrapAuthenticationCallback;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Landroid/telephony/gba/GbaAuthRequest;->mToken:I

    .line 58
    iput p2, p0, Landroid/telephony/gba/GbaAuthRequest;->mSubId:I

    .line 59
    iput p3, p0, Landroid/telephony/gba/GbaAuthRequest;->mAppType:I

    .line 60
    iput-object p4, p0, Landroid/telephony/gba/GbaAuthRequest;->mNafUrl:Landroid/net/Uri;

    .line 61
    iput-object p5, p0, Landroid/telephony/gba/GbaAuthRequest;->mSecurityProtocol:[B

    .line 62
    iput-object p7, p0, Landroid/telephony/gba/GbaAuthRequest;->mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    .line 63
    iput-boolean p6, p0, Landroid/telephony/gba/GbaAuthRequest;->mForceBootStrapping:Z

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(IILandroid/net/Uri;[BZLandroid/telephony/IBootstrapAuthenticationCallback;)V
    .registers 15
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "nafUrl"    # Landroid/net/Uri;
    .param p4, "securityProtocol"    # [B
    .param p5, "forceBootStrapping"    # Z
    .param p6, "callback"    # Landroid/telephony/IBootstrapAuthenticationCallback;

    .line 46
    invoke-static {}, Landroid/telephony/gba/GbaAuthRequest;->nextUniqueToken()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "subId":I
    .end local p2    # "appType":I
    .end local p3    # "nafUrl":Landroid/net/Uri;
    .end local p4    # "securityProtocol":[B
    .end local p5    # "forceBootStrapping":Z
    .end local p6    # "callback":Landroid/telephony/IBootstrapAuthenticationCallback;
    .local v2, "subId":I
    .local v3, "appType":I
    .local v4, "nafUrl":Landroid/net/Uri;
    .local v5, "securityProtocol":[B
    .local v6, "forceBootStrapping":Z
    .local v7, "callback":Landroid/telephony/IBootstrapAuthenticationCallback;
    invoke-direct/range {v0 .. v7}, Landroid/telephony/gba/GbaAuthRequest;-><init>(IIILandroid/net/Uri;[BZLandroid/telephony/IBootstrapAuthenticationCallback;)V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/gba/GbaAuthRequest;)V
    .registers 10
    .param p1, "request"    # Landroid/telephony/gba/GbaAuthRequest;

    .line 51
    iget v1, p1, Landroid/telephony/gba/GbaAuthRequest;->mToken:I

    iget v2, p1, Landroid/telephony/gba/GbaAuthRequest;->mSubId:I

    iget v3, p1, Landroid/telephony/gba/GbaAuthRequest;->mAppType:I

    iget-object v4, p1, Landroid/telephony/gba/GbaAuthRequest;->mNafUrl:Landroid/net/Uri;

    iget-object v5, p1, Landroid/telephony/gba/GbaAuthRequest;->mSecurityProtocol:[B

    iget-boolean v6, p1, Landroid/telephony/gba/GbaAuthRequest;->mForceBootStrapping:Z

    iget-object v7, p1, Landroid/telephony/gba/GbaAuthRequest;->mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/gba/GbaAuthRequest;-><init>(IIILandroid/net/Uri;[BZLandroid/telephony/IBootstrapAuthenticationCallback;)V

    .line 53
    return-void
.end method

.method private static blacklist nextUniqueToken()I
    .registers 3

    .line 149
    sget-object v0, Landroid/telephony/gba/GbaAuthRequest;->sUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppType()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mAppType:I

    return v0
.end method

.method public blacklist getCallback()Landroid/telephony/IBootstrapAuthenticationCallback;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    return-object v0
.end method

.method public blacklist getNafUrl()Landroid/net/Uri;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mNafUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getSecurityProtocol()[B
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mSecurityProtocol:[B

    return-object v0
.end method

.method public blacklist getSubId()I
    .registers 2

    .line 71
    iget v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mSubId:I

    return v0
.end method

.method public blacklist getToken()I
    .registers 2

    .line 67
    iget v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mToken:I

    return v0
.end method

.method public blacklist isForceBootStrapping()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mForceBootStrapping:Z

    return v0
.end method

.method public blacklist setCallback(Landroid/telephony/IBootstrapAuthenticationCallback;)V
    .registers 2
    .param p1, "cb"    # Landroid/telephony/IBootstrapAuthenticationCallback;

    .line 91
    iput-object p1, p0, Landroid/telephony/gba/GbaAuthRequest;->mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    .line 92
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SubId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AppType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", NafUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mNafUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SecurityProtocol:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mSecurityProtocol:[B

    .line 156
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ForceBootStrapping:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mForceBootStrapping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CallBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    iget v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mToken:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mAppType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mNafUrl:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mSecurityProtocol:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mSecurityProtocol:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 108
    iget-boolean v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mForceBootStrapping:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 110
    return-void
.end method
