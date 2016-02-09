.class public final Landroid/nfc/TransceiveResult;
.super Ljava/lang/Object;
.source "TransceiveResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/TransceiveResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/TransceiveResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_EXCEEDED_LENGTH:I = 0x3

.field public static final RESULT_FAILURE:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_TAGLOST:I = 0x2


# instance fields
.field final mResponseData:[B

.field final mResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    new-instance v0, Landroid/nfc/TransceiveResult$1;

    #@2
    invoke-direct {v0}, Landroid/nfc/TransceiveResult$1;-><init>()V

    #@5
    .line 70
    sput-object v0, Landroid/nfc/TransceiveResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "data"    # [B

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput p1, p0, Landroid/nfc/TransceiveResult;->mResult:I

    #@5
    .line 40
    iput-object p2, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    #@7
    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getResponseOrThrow()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    iget v0, p0, Landroid/nfc/TransceiveResult;->mResult:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 52
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "Transceive failed"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 46
    :pswitch_1
    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    #@10
    return-object v0

    #@11
    .line 48
    :pswitch_2
    new-instance v0, Landroid/nfc/TagLostException;

    #@13
    const-string/jumbo v1, "Tag was lost."

    #@16
    invoke-direct {v0, v1}, Landroid/nfc/TagLostException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 50
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    #@1c
    const-string/jumbo v1, "Transceive length exceeds supported maximum"

    #@1f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 44
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 63
    iget v0, p0, Landroid/nfc/TransceiveResult;->mResult:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 64
    iget v0, p0, Landroid/nfc/TransceiveResult;->mResult:I

    #@7
    if-nez v0, :cond_0

    #@9
    .line 65
    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    #@b
    array-length v0, v0

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 66
    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 62
    :cond_0
    return-void
.end method
