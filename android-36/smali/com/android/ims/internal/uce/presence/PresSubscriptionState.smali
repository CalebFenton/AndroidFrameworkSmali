.class public Lcom/android/ims/internal/uce/presence/PresSubscriptionState;
.super Ljava/lang/Object;
.source "PresSubscriptionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresSubscriptionState;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o UCE_PRES_SUBSCRIPTION_STATE_ACTIVE:I = 0x0

.field public static final greylist-max-o UCE_PRES_SUBSCRIPTION_STATE_PENDING:I = 0x1

.field public static final greylist-max-o UCE_PRES_SUBSCRIPTION_STATE_TERMINATED:I = 0x2

.field public static final greylist-max-o UCE_PRES_SUBSCRIPTION_STATE_UNKNOWN:I = 0x3


# instance fields
.field private greylist-max-o mPresSubscriptionState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresSubscriptionState$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    .line 83
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->readFromParcel(Landroid/os/Parcel;)V

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresSubscriptionState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getPresSubscriptionStateValue()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    .line 76
    return-void
.end method

.method public greylist-max-r setPresSubscriptionState(I)V
    .registers 2
    .param p1, "nPresSubscriptionState"    # I

    .line 100
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    .line 101
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method
