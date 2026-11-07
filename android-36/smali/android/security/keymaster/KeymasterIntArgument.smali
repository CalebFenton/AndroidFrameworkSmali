.class Landroid/security/keymaster/KeymasterIntArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "KeymasterIntArgument.java"


# instance fields
.field public final greylist-max-r value:I


# direct methods
.method public constructor greylist-max-r <init>(II)V
    .registers 6
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .line 32
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 33
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad int tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :sswitch_23
    nop

    .line 42
    iput p2, p0, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    .line 43
    return-void

    nop

    :sswitch_data_28
    .sparse-switch
        0x10000000 -> :sswitch_23
        0x20000000 -> :sswitch_23
        0x30000000 -> :sswitch_23
        0x40000000 -> :sswitch_23
    .end sparse-switch
.end method

.method public constructor greylist-max-r <init>(ILandroid/os/Parcel;)V
    .registers 4
    .param p1, "tag"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist writeValue(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;

    .line 53
    iget v0, p0, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
