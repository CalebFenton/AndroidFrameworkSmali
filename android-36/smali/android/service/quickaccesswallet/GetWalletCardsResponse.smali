.class public final Landroid/service/quickaccesswallet/GetWalletCardsResponse;
.super Ljava/lang/Object;
.source "GetWalletCardsResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/GetWalletCardsResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSelectedIndex:I

.field private final blacklist mWalletCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/quickaccesswallet/WalletCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsResponse;
    .registers 1

    invoke-static {p0}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsResponse$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/GetWalletCardsResponse$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;I)V
    .registers 3
    .param p2, "selectedIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/quickaccesswallet/WalletCard;",
            ">;I)V"
        }
    .end annotation

    .line 46
    .local p1, "walletCards":Ljava/util/List;, "Ljava/util/List<Landroid/service/quickaccesswallet/WalletCard;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mWalletCards:Ljava/util/List;

    .line 48
    iput p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mSelectedIndex:I

    .line 49
    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsResponse;
    .registers 5
    .param p0, "source"    # Landroid/os/Parcel;

    .line 64
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-class v2, Landroid/service/quickaccesswallet/WalletCard;

    .line 66
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "walletCards":Ljava/util/List;, "Ljava/util/List<Landroid/service/quickaccesswallet/WalletCard;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .local v2, "selectedIndex":I
    new-instance v3, Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    invoke-direct {v3, v1, v2}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;-><init>(Ljava/util/List;I)V

    return-object v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSelectedIndex()I
    .registers 2

    .line 102
    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mSelectedIndex:I

    return v0
.end method

.method public whitelist getWalletCards()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/quickaccesswallet/WalletCard;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mWalletCards:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 58
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mWalletCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mWalletCards:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 60
    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mSelectedIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method
