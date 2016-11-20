.class final Landroid/security/keymaster/KeymasterArgument$1;
.super Ljava/lang/Object;
.source "KeymasterArgument.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/KeymasterArgument;
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
        "Landroid/security/keymaster/KeymasterArgument;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterArgument;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@3
    move-result v0

    #@4
    .line 38
    .local v0, "pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    .line 39
    .local v1, "tag":I
    invoke-static {v1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@b
    move-result v2

    #@c
    sparse-switch v2, :sswitch_data_0

    #@f
    .line 56
    new-instance v2, Landroid/os/ParcelFormatException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Bad tag: "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, " at "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 44
    :sswitch_0
    new-instance v2, Landroid/security/keymaster/KeymasterIntArgument;

    #@36
    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterIntArgument;-><init>(ILandroid/os/Parcel;)V

    #@39
    return-object v2

    #@3a
    .line 47
    :sswitch_1
    new-instance v2, Landroid/security/keymaster/KeymasterLongArgument;

    #@3c
    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterLongArgument;-><init>(ILandroid/os/Parcel;)V

    #@3f
    return-object v2

    #@40
    .line 49
    :sswitch_2
    new-instance v2, Landroid/security/keymaster/KeymasterDateArgument;

    #@42
    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterDateArgument;-><init>(ILandroid/os/Parcel;)V

    #@45
    return-object v2

    #@46
    .line 52
    :sswitch_3
    new-instance v2, Landroid/security/keymaster/KeymasterBlobArgument;

    #@48
    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterBlobArgument;-><init>(ILandroid/os/Parcel;)V

    #@4b
    return-object v2

    #@4c
    .line 54
    :sswitch_4
    new-instance v2, Landroid/security/keymaster/KeymasterBooleanArgument;

    #@4e
    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterBooleanArgument;-><init>(ILandroid/os/Parcel;)V

    #@51
    return-object v2

    #@52
    .line 39
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_3
        -0x70000000 -> :sswitch_3
        -0x60000000 -> :sswitch_1
        0x10000000 -> :sswitch_0
        0x20000000 -> :sswitch_0
        0x30000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
        0x50000000 -> :sswitch_1
        0x60000000 -> :sswitch_2
        0x70000000 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 36
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArgument$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterArgument;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/security/keymaster/KeymasterArgument;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 62
    new-array v0, p1, [Landroid/security/keymaster/KeymasterArgument;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArgument$1;->newArray(I)[Landroid/security/keymaster/KeymasterArgument;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
