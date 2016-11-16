.class public final Lcom/android/internal/widget/VerifyCredentialResponse;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/VerifyCredentialResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/widget/VerifyCredentialResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final OK:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I = 0x0

.field public static final RESPONSE_RETRY:I = 0x1


# instance fields
.field private mPayload:[B

.field private mResponseCode:I

.field private mTimeout:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/widget/VerifyCredentialResponse;[B)V
    .locals 0
    .param p1, "payload"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->setPayload([B)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 0
    .param p1, "timeout"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->setTimeout(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 32
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    #@2
    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@7
    .line 34
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    #@9
    const/4 v1, -0x1

    #@a
    const/4 v2, 0x0

    #@b
    const/4 v3, 0x0

    #@c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    #@f
    .line 33
    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    #@11
    .line 41
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$1;

    #@13
    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$1;-><init>()V

    #@16
    .line 40
    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    #@6
    .line 68
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    #@9
    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    #@5
    .line 79
    const/4 v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    #@8
    .line 80
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    #@b
    .line 77
    return-void
.end method

.method private constructor <init>(II[B)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "timeout"    # I
    .param p3, "payload"    # [B

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    #@5
    .line 85
    iput p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    #@7
    .line 86
    iput-object p3, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    #@9
    .line 83
    return-void
.end method

.method synthetic constructor <init>(II[BLcom/android/internal/widget/VerifyCredentialResponse;)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "timeout"    # I
    .param p3, "payload"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    #@3
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "payload"    # [B

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    #@5
    .line 74
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    #@8
    .line 72
    return-void
.end method

.method private setPayload([B)V
    .locals 0
    .param p1, "payload"    # [B

    #@0
    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    #@2
    .line 123
    return-void
.end method

.method private setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 120
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    #@2
    .line 119
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPayload()[B
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    #@2
    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    #@0
    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    #@2
    return v0
.end method

.method public getTimeout()I
    .locals 1

    #@0
    .prologue
    .line 112
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 91
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 92
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    #@7
    const/4 v1, 0x1

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 93
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 90
    :cond_0
    :goto_0
    return-void

    #@10
    .line 94
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    #@12
    if-nez v0, :cond_0

    #@14
    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 96
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    #@1a
    array-length v0, v0

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 97
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@23
    goto :goto_0
.end method
