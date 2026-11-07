.class public final Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
.super Ljava/lang/Object;
.source "WalletServiceEventListenerRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mListenerId:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    .registers 1

    invoke-static {p0}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "listenerKey"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->mListenerId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    .registers 3
    .param p0, "source"    # Landroid/os/Parcel;

    .line 53
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "listenerId":Ljava/lang/String;
    new-instance v1, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    invoke-direct {v1, v0}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getListenerId()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->mListenerId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 49
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->mListenerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return-void
.end method
