.class public final Landroid/telephony/ims/SipDialogState;
.super Ljava/lang/Object;
.source "SipDialogState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/SipDialogState$Builder;,
        Landroid/telephony/ims/SipDialogState$SipDialogStateCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/SipDialogState;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATE_CLOSED:I = 0x2

.field public static final whitelist STATE_CONFIRMED:I = 0x1

.field public static final whitelist STATE_EARLY:I


# instance fields
.field private final blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Landroid/telephony/ims/SipDialogState$1;

    invoke-direct {v0}, Landroid/telephony/ims/SipDialogState$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/SipDialogState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDialogState;->mState:I

    .line 91
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/SipDialogState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDialogState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/SipDialogState$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/telephony/ims/SipDialogState$Builder;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Landroid/telephony/ims/SipDialogState$Builder;->-$$Nest$fgetmState(Landroid/telephony/ims/SipDialogState$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDialogState;->mState:I

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/SipDialogState$Builder;Landroid/telephony/ims/SipDialogState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDialogState;-><init>(Landroid/telephony/ims/SipDialogState$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 124
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 125
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1e

    .line 126
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/SipDialogState;

    .line 128
    .local v2, "sipDialog":Landroid/telephony/ims/SipDialogState;
    iget v3, p0, Landroid/telephony/ims/SipDialogState;->mState:I

    iget v4, v2, Landroid/telephony/ims/SipDialogState;->mState:I

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    .line 125
    .end local v2    # "sipDialog":Landroid/telephony/ims/SipDialogState;
    :cond_1e
    :goto_1e
    return v1
.end method

.method public whitelist getState()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/telephony/ims/SipDialogState;->mState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/telephony/ims/SipDialogState;->mState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 119
    iget v0, p0, Landroid/telephony/ims/SipDialogState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void
.end method
