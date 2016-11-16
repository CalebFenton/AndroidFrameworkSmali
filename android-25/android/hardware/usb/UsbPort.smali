.class public final Landroid/hardware/usb/UsbPort;
.super Ljava/lang/Object;
.source "UsbPort.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbPort$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbPort;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_ROLE_DEVICE:I = 0x2

.field public static final DATA_ROLE_HOST:I = 0x1

.field public static final MODE_DFP:I = 0x1

.field public static final MODE_DUAL:I = 0x3

.field public static final MODE_UFP:I = 0x2

.field private static final NUM_DATA_ROLES:I = 0x3

.field public static final POWER_ROLE_SINK:I = 0x2

.field public static final POWER_ROLE_SOURCE:I = 0x1


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mSupportedModes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 225
    new-instance v0, Landroid/hardware/usb/UsbPort$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/usb/UsbPort$1;-><init>()V

    #@5
    .line 224
    sput-object v0, Landroid/hardware/usb/UsbPort;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    iput-object p1, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    #@5
    .line 90
    iput p2, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    #@7
    .line 88
    return-void
.end method

.method public static checkRoles(II)V
    .locals 3
    .param p0, "powerRole"    # I
    .param p1, "dataRole"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    .line 204
    const-string/jumbo v0, "powerRole"

    #@5
    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@8
    .line 205
    const-string/jumbo v0, "dataRole"

    #@b
    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@e
    .line 203
    return-void
.end method

.method public static combineRolesAsBit(II)I
    .locals 2
    .param p0, "powerRole"    # I
    .param p1, "dataRole"    # I

    #@0
    .prologue
    .line 128
    invoke-static {p0, p1}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    #@3
    .line 129
    mul-int/lit8 v1, p0, 0x3

    #@5
    add-int v0, v1, p1

    #@7
    .line 130
    .local v0, "index":I
    const/4 v1, 0x1

    #@8
    shl-int/2addr v1, v0

    #@9
    return v1
.end method

.method public static dataRoleToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "role"    # I

    #@0
    .prologue
    .line 165
    packed-switch p0, :pswitch_data_0

    #@3
    .line 173
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 167
    :pswitch_0
    const-string/jumbo v0, "no-data"

    #@b
    return-object v0

    #@c
    .line 169
    :pswitch_1
    const-string/jumbo v0, "host"

    #@f
    return-object v0

    #@10
    .line 171
    :pswitch_2
    const-string/jumbo v0, "device"

    #@13
    return-object v0

    #@14
    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    #@0
    .prologue
    .line 135
    packed-switch p0, :pswitch_data_0

    #@3
    .line 145
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 137
    :pswitch_0
    const-string/jumbo v0, "none"

    #@b
    return-object v0

    #@c
    .line 139
    :pswitch_1
    const-string/jumbo v0, "dfp"

    #@f
    return-object v0

    #@10
    .line 141
    :pswitch_2
    const-string/jumbo v0, "ufp"

    #@13
    return-object v0

    #@14
    .line 143
    :pswitch_3
    const-string/jumbo v0, "dual"

    #@17
    return-object v0

    #@18
    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static powerRoleToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "role"    # I

    #@0
    .prologue
    .line 151
    packed-switch p0, :pswitch_data_0

    #@3
    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 153
    :pswitch_0
    const-string/jumbo v0, "no-power"

    #@b
    return-object v0

    #@c
    .line 155
    :pswitch_1
    const-string/jumbo v0, "source"

    #@f
    return-object v0

    #@10
    .line 157
    :pswitch_2
    const-string/jumbo v0, "sink"

    #@13
    return-object v0

    #@14
    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static roleCombinationsToString(I)Ljava/lang/String;
    .locals 6
    .param p0, "combo"    # I

    #@0
    .prologue
    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 180
    .local v4, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "["

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 182
    const/4 v1, 0x1

    #@c
    .line 183
    .local v1, "first":Z
    :goto_0
    if-eqz p0, :cond_1

    #@e
    .line 184
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@11
    move-result v2

    #@12
    .line 185
    .local v2, "index":I
    const/4 v5, 0x1

    #@13
    shl-int/2addr v5, v2

    #@14
    not-int v5, v5

    #@15
    and-int/2addr p0, v5

    #@16
    .line 186
    div-int/lit8 v3, v2, 0x3

    #@18
    .line 187
    .local v3, "powerRole":I
    rem-int/lit8 v0, v2, 0x3

    #@1a
    .line 188
    .local v0, "dataRole":I
    if-eqz v1, :cond_0

    #@1c
    .line 189
    const/4 v1, 0x0

    #@1d
    .line 193
    :goto_1
    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 194
    const/16 v5, 0x3a

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 195
    invoke-static {v0}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    goto :goto_0

    #@31
    .line 191
    :cond_0
    const-string/jumbo v5, ", "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    goto :goto_1

    #@38
    .line 198
    .end local v0    # "dataRole":I
    .end local v2    # "index":I
    .end local v3    # "powerRole":I
    :cond_1
    const-string/jumbo v5, "]"

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 215
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSupportedModes()I
    .locals 1

    #@0
    .prologue
    .line 112
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "UsbPort{id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", supportedModes="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    #@1b
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, "}"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 221
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 219
    return-void
.end method
