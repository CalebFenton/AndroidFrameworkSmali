.class Landroid/security/keymaster/KeymasterArgument$1;
.super Ljava/lang/Object;
.source "KeymasterArgument.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/KeymasterArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/keymaster/KeymasterArgument;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterArgument;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 38
    .local v0, "pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 39
    .local v1, "tag":I
    invoke-static {v1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_50

    .line 56
    new-instance v2, Landroid/os/ParcelFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :sswitch_32
    new-instance v2, Landroid/security/keymaster/KeymasterBooleanArgument;

    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterBooleanArgument;-><init>(ILandroid/os/Parcel;)V

    return-object v2

    .line 49
    :sswitch_38
    new-instance v2, Landroid/security/keymaster/KeymasterDateArgument;

    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterDateArgument;-><init>(ILandroid/os/Parcel;)V

    return-object v2

    .line 44
    :sswitch_3e
    new-instance v2, Landroid/security/keymaster/KeymasterIntArgument;

    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterIntArgument;-><init>(ILandroid/os/Parcel;)V

    return-object v2

    .line 47
    :sswitch_44
    new-instance v2, Landroid/security/keymaster/KeymasterLongArgument;

    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterLongArgument;-><init>(ILandroid/os/Parcel;)V

    return-object v2

    .line 52
    :sswitch_4a
    new-instance v2, Landroid/security/keymaster/KeymasterBlobArgument;

    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterBlobArgument;-><init>(ILandroid/os/Parcel;)V

    return-object v2

    :sswitch_data_50
    .sparse-switch
        -0x80000000 -> :sswitch_4a
        -0x70000000 -> :sswitch_4a
        -0x60000000 -> :sswitch_44
        0x10000000 -> :sswitch_3e
        0x20000000 -> :sswitch_3e
        0x30000000 -> :sswitch_3e
        0x40000000 -> :sswitch_3e
        0x50000000 -> :sswitch_44
        0x60000000 -> :sswitch_38
        0x70000000 -> :sswitch_32
    .end sparse-switch
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

    .line 34
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArgument$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterArgument;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/security/keymaster/KeymasterArgument;
    .registers 3
    .param p1, "size"    # I

    .line 62
    new-array v0, p1, [Landroid/security/keymaster/KeymasterArgument;

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

    .line 34
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArgument$1;->newArray(I)[Landroid/security/keymaster/KeymasterArgument;

    move-result-object p1

    return-object p1
.end method
