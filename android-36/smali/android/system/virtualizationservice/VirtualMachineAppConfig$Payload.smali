.class public final Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;
.super Ljava/lang/Object;
.source "VirtualMachineAppConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/VirtualMachineAppConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist configPath:I = 0x0

.field public static final blacklist payloadConfig:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 239
    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload$1;

    invoke-direct {v0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload$1;-><init>()V

    sput-object v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "_value":Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tag:I

    .line 187
    iput-object v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_value:Ljava/lang/Object;

    .line 188
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tag:I

    .line 196
    iput-object p2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_value:Ljava/lang/Object;

    .line 197
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->readFromParcel(Landroid/os/Parcel;)V

    .line 192
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/system/virtualizationservice/VirtualMachineAppConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 300
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 303
    return-void

    .line 301
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tagString(I)Ljava/lang/String;

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

    .line 314
    iput p1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tag:I

    .line 315
    iput-object p2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_value:Ljava/lang/Object;

    .line 316
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 306
    packed-switch p1, :pswitch_data_22

    .line 310
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

    .line 308
    :pswitch_1c
    const-string v0, "payloadConfig"

    return-object v0

    .line 307
    :pswitch_1f
    const-string v0, "configPath"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist configPath(Ljava/lang/String;)Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;
    .registers 3
    .param p0, "_value"    # Ljava/lang/String;

    .line 211
    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 292
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 293
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 294
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 296
    :cond_10
    return v0
.end method

.method public static blacklist payloadConfig(Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;)Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;
    .registers 3
    .param p0, "_value"    # Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;

    .line 227
    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    goto :goto_12

    .line 286
    :pswitch_9
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->getPayloadConfig()Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 289
    :goto_12
    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getConfigPath()Ljava/lang/String;
    .registers 2

    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_assertTag(I)V

    .line 216
    iget-object v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPayloadConfig()Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;
    .registers 2

    .line 231
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_assertTag(I)V

    .line 232
    iget-object v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 200
    iget v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 266
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_34

    .line 278
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

    .line 274
    :pswitch_20
    sget-object v1, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;

    .line 275
    .local v1, "_aidl_value":Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;
    invoke-direct {p0, v0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_set(ILjava/lang/Object;)V

    .line 276
    return-void

    .line 269
    .end local v1    # "_aidl_value":Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_set(ILjava/lang/Object;)V

    .line 271
    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setConfigPath(Ljava/lang/String;)V
    .registers 3
    .param p1, "_value"    # Ljava/lang/String;

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_set(ILjava/lang/Object;)V

    .line 221
    return-void
.end method

.method public blacklist setPayloadConfig(Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;)V
    .registers 3
    .param p1, "_value"    # Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;

    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_set(ILjava/lang/Object;)V

    .line 237
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 252
    iget v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->_tag:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1b

    .line 258
    :pswitch_b
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->getPayloadConfig()Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1b

    .line 255
    :pswitch_13
    invoke-virtual {p0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->getConfigPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    nop

    .line 261
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
