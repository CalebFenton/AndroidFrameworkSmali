.class Landroid/nfc/TransceiveResult$1;
.super Ljava/lang/Object;
.source "TransceiveResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/TransceiveResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/TransceiveResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nfc/TransceiveResult;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, "result":I
    if-nez v0, :cond_10

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .local v1, "responseLength":I
    new-array v2, v1, [B

    .line 80
    .local v2, "responseData":[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 81
    .end local v1    # "responseLength":I
    goto :goto_11

    .line 82
    .end local v2    # "responseData":[B
    :cond_10
    const/4 v2, 0x0

    .line 84
    .restart local v2    # "responseData":[B
    :goto_11
    new-instance v1, Landroid/nfc/TransceiveResult;

    invoke-direct {v1, v0, v2}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Landroid/nfc/TransceiveResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/TransceiveResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nfc/TransceiveResult;
    .registers 3
    .param p1, "size"    # I

    .line 89
    new-array v0, p1, [Landroid/nfc/TransceiveResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Landroid/nfc/TransceiveResult$1;->newArray(I)[Landroid/nfc/TransceiveResult;

    move-result-object p1

    return-object p1
.end method
