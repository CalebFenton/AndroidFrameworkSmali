.class public final Landroid/telecom/ConnectionRequest;
.super Ljava/lang/Object;
.source "ConnectionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ConnectionRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ConnectionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mAddress:Landroid/net/Uri;

.field private final mExtras:Landroid/os/Bundle;

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 111
    new-instance v0, Landroid/telecom/ConnectionRequest$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/ConnectionRequest$1;-><init>()V

    #@5
    sput-object v0, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    #@11
    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@13
    .line 67
    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/net/Uri;

    #@21
    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    #@23
    .line 68
    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/os/Bundle;

    #@31
    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    #@33
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    #@39
    .line 65
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/ConnectionRequest;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 45
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;I)V

    #@4
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "videoState"    # I

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    iput-object p1, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@5
    .line 60
    iput-object p2, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    #@7
    .line 61
    iput-object p3, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    #@9
    .line 62
    iput p4, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    #@b
    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@2
    return-object v0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 104
    const-string/jumbo v1, "ConnectionRequest %s %s"

    #@3
    const/4 v0, 0x2

    #@4
    new-array v2, v0, [Ljava/lang/Object;

    #@6
    .line 105
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 106
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@c
    .line 105
    :goto_0
    const/4 v3, 0x0

    #@d
    aput-object v0, v2, v3

    #@f
    .line 108
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    #@11
    if-nez v0, :cond_1

    #@13
    const-string/jumbo v0, ""

    #@16
    :goto_1
    const/4 v3, 0x1

    #@17
    aput-object v0, v2, v3

    #@19
    .line 104
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    .line 107
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    #@20
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-static {v0}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    goto :goto_0

    #@29
    .line 108
    :cond_1
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    #@2b
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 133
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@6
    .line 134
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@b
    .line 135
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@10
    .line 136
    iget v0, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 132
    return-void
.end method
