.class Landroid/security/keymaster/KeymasterBlobArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "KeymasterBlobArgument.java"


# instance fields
.field public final greylist-max-r blob:[B


# direct methods
.method public constructor greylist-max-r <init>(ILandroid/os/Parcel;)V
    .registers 4
    .param p1, "tag"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/KeymasterBlobArgument;->blob:[B

    .line 47
    return-void
.end method

.method public constructor greylist-max-r <init>(I[B)V
    .registers 6
    .param p1, "tag"    # I
    .param p2, "blob"    # [B

    .line 32
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 33
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad blob tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :sswitch_23
    nop

    .line 40
    iput-object p2, p0, Landroid/security/keymaster/KeymasterBlobArgument;->blob:[B

    .line 41
    return-void

    nop

    :sswitch_data_28
    .sparse-switch
        -0x80000000 -> :sswitch_23
        -0x70000000 -> :sswitch_23
    .end sparse-switch
.end method


# virtual methods
.method public blacklist writeValue(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;

    .line 51
    iget-object v0, p0, Landroid/security/keymaster/KeymasterBlobArgument;->blob:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 52
    return-void
.end method
