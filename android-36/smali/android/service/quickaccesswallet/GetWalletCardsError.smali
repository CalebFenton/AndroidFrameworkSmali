.class public final Landroid/service/quickaccesswallet/GetWalletCardsError;
.super Ljava/lang/Object;
.source "GetWalletCardsError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/GetWalletCardsError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mMessage:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsError;
    .registers 1

    invoke-static {p0}, Landroid/service/quickaccesswallet/GetWalletCardsError;->readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsError;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsError$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/GetWalletCardsError$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/GetWalletCardsError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/service/quickaccesswallet/GetWalletCardsError;->mIcon:Landroid/graphics/drawable/Icon;

    .line 43
    iput-object p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsError;->mMessage:Ljava/lang/CharSequence;

    .line 44
    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsError;
    .registers 4
    .param p0, "source"    # Landroid/os/Parcel;

    .line 63
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    .line 64
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    :goto_10
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 65
    .local v1, "message":Ljava/lang/CharSequence;
    new-instance v2, Landroid/service/quickaccesswallet/GetWalletCardsError;

    invoke-direct {v2, v0, v1}, Landroid/service/quickaccesswallet/GetWalletCardsError;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsError;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getMessage()Ljava/lang/CharSequence;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsError;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsError;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_9

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_12

    .line 56
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsError;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    :goto_12
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsError;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 60
    return-void
.end method
