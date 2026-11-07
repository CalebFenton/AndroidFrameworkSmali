.class public final Landroid/hardware/biometrics/common/AuthenticateReason;
.super Ljava/lang/Object;
.source "AuthenticateReason.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;,
        Landroid/hardware/biometrics/common/AuthenticateReason$Tag;,
        Landroid/hardware/biometrics/common/AuthenticateReason$Face;,
        Landroid/hardware/biometrics/common/AuthenticateReason$Fingerprint;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/common/AuthenticateReason;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist faceAuthenticateReason:I = 0x1

.field public static final blacklist fingerprintAuthenticateReason:I = 0x2

.field public static final blacklist vendorAuthenticateReason:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Landroid/hardware/biometrics/common/AuthenticateReason$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/AuthenticateReason$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/common/AuthenticateReason;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "_value":Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/biometrics/common/AuthenticateReason;->_tag:I

    .line 23
    iput-object v0, p0, Landroid/hardware/biometrics/common/AuthenticateReason;->_value:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/hardware/biometrics/common/AuthenticateReason;->_tag:I

    .line 32
    iput-object p2, p0, Landroid/hardware/biometrics/common/AuthenticateReason;->_value:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/common/AuthenticateReason;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/biometrics/common/AuthenticateReason-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/common/AuthenticateReason;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 158
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/AuthenticateReason;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 161
    return-void

    .line 159
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/common/AuthenticateReason;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/biometrics/common/AuthenticateReason;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/biometrics/common/AuthenticateReason;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 173
    iput p1, p0, Landroid/hardware/biometrics/common/AuthenticateReason;->_tag:I

    .line 174
    iput-object p2, p0, Landroid/hardware/biometrics/common/AuthenticateReason;->_value:Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 164
    packed-switch p1, :pswitch_data_28

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :pswitch_1d
    const-string v0, "fingerprintAuthenticateReason"

    return-object v0

    .line 166
    :pswitch_20
    const-string v0, "faceAuthenticateReason"

    return-object v0

    .line 165
    :pswitch_23
    const-string/jumbo v0, "vendorAuthenticateReason"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 150
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 151
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 152
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 154
    :cond_10
    return v0
.end method

.method public static blacklist faceAuthenticateReason(I)Landroid/hardware/biometrics/common/AuthenticateReason;
    .registers 4
    .param p0, "_value"    # I

    .line 57
    new-instance v0, Landroid/hardware/biometrics/common/AuthenticateReason;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/biometrics/common/AuthenticateReason;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist fingerprintAuthenticateReason(I)Landroid/hardware/biometrics/common/AuthenticateReason;
    .registers 4
    .param p0, "_value"    # I

    .line 72
    new-instance v0, Landroid/hardware/biometrics/common/AuthenticateReason;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/biometrics/common/AuthenticateReason;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist vendorAuthenticateReason(Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;)Landroid/hardware/biometrics/common/AuthenticateReason;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    .line 42
    new-instance v0, Landroid/hardware/biometrics/common/AuthenticateReason;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/biometrics/common/AuthenticateReason;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/AuthenticateReason;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    goto :goto_12

    .line 144
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/AuthenticateReason;->getVendorAuthenticateReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/common/AuthenticateReason;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 147
    :goto_12
    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getFaceAuthenticateReason()I
    .registers 2

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/common/AuthenticateReason;->_assertTag(I)V

    .line 62
    iget-object v0, p0, Landroid/hardware/biometrics/common/AuthenticateReason;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getFingerprintAuthenticateReason()I
    .registers 2

    .line 76
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/common/AuthenticateReason;->_assertTag(I)V

    .line 77
    iget-object v0, p0, Landroid/hardware/biometrics/common/AuthenticateReason;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 36
    iget v0, p0, Landroid/hardware/biometrics/common/AuthenticateReason;->_tag:I

    return v0
.end method

.method public blacklist getVendorAuthenticateReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;
    .registers 2

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/common/AuthenticateReason;->_assertTag(I)V

    .line 47
    iget-object v0, p0, Landroid/hardware/biometrics/common/AuthenticateReason;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_46

    .line 136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :pswitch_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/biometrics/common/AuthenticateReason;->_set(ILjava/lang/Object;)V

    .line 134
    return-void

    .line 127
    .end local v1    # "_aidl_value":I
    :pswitch_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/biometrics/common/AuthenticateReason;->_set(ILjava/lang/Object;)V

    .line 129
    return-void

    .line 122
    .end local v1    # "_aidl_value":I
    :pswitch_39
    sget-object v1, Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    .line 123
    .local v1, "_aidl_value":Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;
    invoke-direct {p0, v0, v1}, Landroid/hardware/biometrics/common/AuthenticateReason;->_set(ILjava/lang/Object;)V

    .line 124
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_39
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setFaceAuthenticateReason(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 66
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/biometrics/common/AuthenticateReason;->_set(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public blacklist setFingerprintAuthenticateReason(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 81
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/biometrics/common/AuthenticateReason;->_set(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public blacklist setVendorAuthenticateReason(Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/biometrics/common/AuthenticateReason;->_set(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 102
    iget v0, p0, Landroid/hardware/biometrics/common/AuthenticateReason;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/hardware/biometrics/common/AuthenticateReason;->_tag:I

    packed-switch v0, :pswitch_data_24

    goto :goto_23

    .line 111
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/AuthenticateReason;->getFingerprintAuthenticateReason()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 108
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/AuthenticateReason;->getFaceAuthenticateReason()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    goto :goto_23

    .line 105
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/AuthenticateReason;->getVendorAuthenticateReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 106
    nop

    .line 114
    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
