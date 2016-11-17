.class public final Landroid/service/gatekeeper/GateKeeperResponse;
.super Ljava/lang/Object;
.source "GateKeeperResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/GateKeeperResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/gatekeeper/GateKeeperResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I = 0x0

.field public static final RESPONSE_RETRY:I = 0x1


# instance fields
.field private mPayload:[B

.field private final mResponseCode:I

.field private mShouldReEnroll:Z

.field private mTimeout:I


# direct methods
.method static synthetic -wrap0(Landroid/service/gatekeeper/GateKeeperResponse;[B)V
    .locals 0
    .param p1, "payload"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse;->setPayload([B)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/service/gatekeeper/GateKeeperResponse;Z)V
    .locals 0
    .param p1, "shouldReEnroll"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse;->setShouldReEnroll(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/service/gatekeeper/GateKeeperResponse;I)V
    .locals 0
    .param p1, "timeout"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse;->setTimeout(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse$1;

    #@2
    invoke-direct {v0}, Landroid/service/gatekeeper/GateKeeperResponse$1;-><init>()V

    #@5
    .line 51
    sput-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "responseCode"    # I

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    #@5
    .line 38
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "timeout"    # I

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    #@5
    .line 42
    return-void
.end method

.method synthetic constructor <init>(ILandroid/service/gatekeeper/GateKeeperResponse;)V
    .locals 0
    .param p1, "responseCode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    #@3
    return-void
.end method

.method private setPayload([B)V
    .locals 0
    .param p1, "payload"    # [B

    #@0
    .prologue
    .line 117
    iput-object p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    #@2
    .line 116
    return-void
.end method

.method private setShouldReEnroll(Z)V
    .locals 0
    .param p1, "shouldReEnroll"    # Z

    #@0
    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    #@2
    .line 112
    return-void
.end method

.method private setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 109
    iput p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    #@2
    .line 108
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPayload()[B
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    #@2
    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    #@0
    .prologue
    .line 105
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    #@2
    return v0
.end method

.method public getShouldReEnroll()Z
    .locals 1

    #@0
    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    #@2
    return v0
.end method

.method public getTimeout()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 80
    iget v2, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    #@4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 81
    iget v2, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    #@9
    if-ne v2, v0, :cond_1

    #@b
    .line 82
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 79
    :cond_0
    :goto_0
    return-void

    #@11
    .line 83
    :cond_1
    iget v2, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    #@13
    if-nez v2, :cond_0

    #@15
    .line 84
    iget-boolean v2, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    #@17
    if-eqz v2, :cond_2

    #@19
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 85
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 86
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    #@22
    array-length v0, v0

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 87
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@2b
    goto :goto_0

    #@2c
    :cond_2
    move v0, v1

    #@2d
    .line 84
    goto :goto_1
.end method
