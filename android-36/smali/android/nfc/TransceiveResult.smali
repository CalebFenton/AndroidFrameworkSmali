.class public final Landroid/nfc/TransceiveResult;
.super Ljava/lang/Object;
.source "TransceiveResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/TransceiveResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o RESULT_EXCEEDED_LENGTH:I = 0x3

.field public static final greylist-max-o RESULT_FAILURE:I = 0x1

.field public static final greylist-max-o RESULT_SUCCESS:I = 0x0

.field public static final greylist-max-o RESULT_TAGLOST:I = 0x2


# instance fields
.field final greylist-max-o mResponseData:[B

.field final greylist-max-o mResult:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Landroid/nfc/TransceiveResult$1;

    invoke-direct {v0}, Landroid/nfc/TransceiveResult$1;-><init>()V

    sput-object v0, Landroid/nfc/TransceiveResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(I[B)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "data"    # [B

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/nfc/TransceiveResult;->mResult:I

    .line 40
    iput-object p2, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getResponseOrThrow()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget v0, p0, Landroid/nfc/TransceiveResult;->mResult:I

    packed-switch v0, :pswitch_data_20

    .line 52
    :pswitch_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Transceive failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Transceive length exceeds supported maximum"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_15
    new-instance v0, Landroid/nfc/TagLostException;

    const-string v1, "Tag was lost."

    invoke-direct {v0, v1}, Landroid/nfc/TagLostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :pswitch_1d
    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_5
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    iget v0, p0, Landroid/nfc/TransceiveResult;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Landroid/nfc/TransceiveResult;->mResult:I

    if-nez v0, :cond_14

    .line 65
    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 68
    :cond_14
    return-void
.end method
