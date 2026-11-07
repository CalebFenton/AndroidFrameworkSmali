.class public final Landroid/service/quickaccesswallet/WalletServiceEvent;
.super Ljava/lang/Object;
.source "WalletServiceEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/WalletServiceEvent$EventType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/WalletServiceEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_NFC_PAYMENT_STARTED:I = 0x1

.field public static final blacklist TYPE_WALLET_CARDS_UPDATED:I = 0x2


# instance fields
.field private final blacklist mEventType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Landroid/service/quickaccesswallet/WalletServiceEvent$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/WalletServiceEvent$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/WalletServiceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "eventType"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/service/quickaccesswallet/WalletServiceEvent;->mEventType:I

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEventType()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/service/quickaccesswallet/WalletServiceEvent;->mEventType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget v0, p0, Landroid/service/quickaccesswallet/WalletServiceEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
