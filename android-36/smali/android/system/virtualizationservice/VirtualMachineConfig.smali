.class public final Landroid/system/virtualizationservice/VirtualMachineConfig;
.super Ljava/lang/Object;
.source "VirtualMachineConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualizationservice/VirtualMachineConfig$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/virtualizationservice/VirtualMachineConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist appConfig:I = 0x0

.field public static final blacklist rawConfig:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineConfig$1;

    invoke-direct {v0}, Landroid/system/virtualizationservice/VirtualMachineConfig$1;-><init>()V

    sput-object v0, Landroid/system/virtualizationservice/VirtualMachineConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "_value":Landroid/system/virtualizationservice/VirtualMachineAppConfig;
    const/4 v1, 0x0

    iput v1, p0, Landroid/system/virtualizationservice/VirtualMachineConfig;->_tag:I

    .line 22
    iput-object v0, p0, Landroid/system/virtualizationservice/VirtualMachineConfig;->_value:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/system/virtualizationservice/VirtualMachineConfig;->_tag:I

    .line 31
    iput-object p2, p0, Landroid/system/virtualizationservice/VirtualMachineConfig;->_value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/VirtualMachineConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/system/virtualizationservice/VirtualMachineConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/system/virtualizationservice/VirtualMachineConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 134
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineConfig;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 137
    return-void

    .line 135
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/system/virtualizationservice/VirtualMachineConfig;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineConfig;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/system/virtualizationservice/VirtualMachineConfig;->_tagString(I)Ljava/lang/String;

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

    .line 148
    iput p1, p0, Landroid/system/virtualizationservice/VirtualMachineConfig;->_tag:I

    .line 149
    iput-object p2, p0, Landroid/system/virtualizationservice/VirtualMachineConfig;->_value:Ljava/lang/Object;

    .line 150
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 140
    packed-switch p1, :pswitch_data_22

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_1c
    const-string v0, "rawConfig"

    return-object v0

    .line 141
    :pswitch_1f
    const-string v0, "appConfig"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist appConfig(Landroid/system/virtualizationservice/VirtualMachineAppConfig;)Landroid/system/virtualizationservice/VirtualMachineConfig;
    .registers 3
    .param p0, "_value"    # Landroid/system/virtualizationservice/VirtualMachineAppConfig;

    .line 42
    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/system/virtualizationservice/VirtualMachineConfig;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 126
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 127
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 128
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 130
    :cond_10
    return v0
.end method

.method public static blacklist rawConfig(Landroid/system/virtualizationservice/VirtualMachineRawConfig;)Landroid/system/virtualizationservice/VirtualMachineConfig;
    .registers 3
    .param p0, "_value"    # Landroid/system/virtualizationservice/VirtualMachineRawConfig;

    .line 58
    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/system/virtualizationservice/VirtualMachineConfig;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineConfig;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    goto :goto_1d

    .line 120
    :pswitch_9
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineConfig;->getRawConfig()Landroid/system/virtualizationservice/VirtualMachineRawConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1d

    .line 117
    :pswitch_13
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineConfig;->getAppConfig()Landroid/system/virtualizationservice/VirtualMachineAppConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 118
    nop

    .line 123
    :goto_1d
    return v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getAppConfig()Landroid/system/virtualizationservice/VirtualMachineAppConfig;
    .registers 2

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/system/virtualizationservice/VirtualMachineConfig;->_assertTag(I)V

    .line 47
    iget-object v0, p0, Landroid/system/virtualizationservice/VirtualMachineConfig;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;

    return-object v0
.end method

.method public blacklist getRawConfig()Landroid/system/virtualizationservice/VirtualMachineRawConfig;
    .registers 2

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/system/virtualizationservice/VirtualMachineConfig;->_assertTag(I)V

    .line 63
    iget-object v0, p0, Landroid/system/virtualizationservice/VirtualMachineConfig;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 35
    iget v0, p0, Landroid/system/virtualizationservice/VirtualMachineConfig;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_38

    .line 109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :pswitch_20
    sget-object v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;

    .line 106
    .local v1, "_aidl_value":Landroid/system/virtualizationservice/VirtualMachineRawConfig;
    invoke-direct {p0, v0, v1}, Landroid/system/virtualizationservice/VirtualMachineConfig;->_set(ILjava/lang/Object;)V

    .line 107
    return-void

    .line 100
    .end local v1    # "_aidl_value":Landroid/system/virtualizationservice/VirtualMachineRawConfig;
    :pswitch_2c
    sget-object v1, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualizationservice/VirtualMachineAppConfig;

    .line 101
    .local v1, "_aidl_value":Landroid/system/virtualizationservice/VirtualMachineAppConfig;
    invoke-direct {p0, v0, v1}, Landroid/system/virtualizationservice/VirtualMachineConfig;->_set(ILjava/lang/Object;)V

    .line 102
    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setAppConfig(Landroid/system/virtualizationservice/VirtualMachineAppConfig;)V
    .registers 3
    .param p1, "_value"    # Landroid/system/virtualizationservice/VirtualMachineAppConfig;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/system/virtualizationservice/VirtualMachineConfig;->_set(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public blacklist setRawConfig(Landroid/system/virtualizationservice/VirtualMachineRawConfig;)V
    .registers 3
    .param p1, "_value"    # Landroid/system/virtualizationservice/VirtualMachineRawConfig;

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/system/virtualizationservice/VirtualMachineConfig;->_set(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 83
    iget v0, p0, Landroid/system/virtualizationservice/VirtualMachineConfig;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Landroid/system/virtualizationservice/VirtualMachineConfig;->_tag:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1b

    .line 89
    :pswitch_b
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineConfig;->getRawConfig()Landroid/system/virtualizationservice/VirtualMachineRawConfig;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1b

    .line 86
    :pswitch_13
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineConfig;->getAppConfig()Landroid/system/virtualizationservice/VirtualMachineAppConfig;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 87
    nop

    .line 92
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
