.class final Lcom/android/internal/widget/VerifyCredentialResponse$1;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/VerifyCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/widget/VerifyCredentialResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v2

    #@6
    .line 45
    .local v2, "responseCode":I
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    #@8
    invoke-direct {v1, v2, v4, v5, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BLcom/android/internal/widget/VerifyCredentialResponse;)V

    #@b
    .line 46
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    const/4 v4, 0x1

    #@c
    if-ne v2, v4, :cond_1

    #@e
    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v4

    #@12
    invoke-static {v1, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->-wrap1(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    #@15
    .line 56
    :cond_0
    :goto_0
    return-object v1

    #@16
    .line 48
    :cond_1
    if-nez v2, :cond_0

    #@18
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    .line 50
    .local v3, "size":I
    if-lez v3, :cond_0

    #@1e
    .line 51
    new-array v0, v3, [B

    #@20
    .line 52
    .local v0, "payload":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    #@23
    .line 53
    invoke-static {v1, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->-wrap0(Lcom/android/internal/widget/VerifyCredentialResponse;[B)V

    #@26
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/VerifyCredentialResponse;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 61
    new-array v0, p1, [Lcom/android/internal/widget/VerifyCredentialResponse;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse$1;->newArray(I)[Lcom/android/internal/widget/VerifyCredentialResponse;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
