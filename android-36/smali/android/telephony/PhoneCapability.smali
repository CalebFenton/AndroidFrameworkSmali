.class public final Landroid/telephony/PhoneCapability;
.super Ljava/lang/Object;
.source "PhoneCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneCapability$Builder;,
        Landroid/telephony/PhoneCapability$DeviceNrCapability;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PhoneCapability;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

.field public static final blacklist DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

.field public static final whitelist DEVICE_NR_CAPABILITY_NSA:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_NR_CAPABILITY_SA:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mDeviceNrCapabilities:[I

.field private final blacklist mLogicalModemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaxActiveDataSubscriptions:I

.field private final blacklist mMaxActiveVoiceSubscriptions:I

.field private final blacklist mNetworkValidationBeforeSwitchSupported:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceNrCapabilities(Landroid/telephony/PhoneCapability;)[I
    .registers 1

    iget-object p0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogicalModemList(Landroid/telephony/PhoneCapability;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxActiveDataSubscriptions(Landroid/telephony/PhoneCapability;)I
    .registers 1

    iget p0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxActiveVoiceSubscriptions(Landroid/telephony/PhoneCapability;)I
    .registers 1

    iget p0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkValidationBeforeSwitchSupported(Landroid/telephony/PhoneCapability;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 14

    .line 73
    new-instance v0, Landroid/telephony/ModemInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/telephony/ModemInfo;-><init>(IIZZ)V

    .line 74
    .local v0, "modemInfo1":Landroid/telephony/ModemInfo;
    new-instance v3, Landroid/telephony/ModemInfo;

    invoke-direct {v3, v2, v1, v2, v2}, Landroid/telephony/ModemInfo;-><init>(IIZZ)V

    .line 76
    .local v3, "modemInfo2":Landroid/telephony/ModemInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v2

    .line 77
    .local v7, "logicalModemList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ModemInfo;>;"
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-array v9, v1, [I

    .line 81
    .local v9, "deviceNrCapabilities":[I
    new-instance v4, Landroid/telephony/PhoneCapability;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v4 .. v9}, Landroid/telephony/PhoneCapability;-><init>(IILjava/util/List;Z[I)V

    sput-object v4, Landroid/telephony/PhoneCapability;->DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

    .line 84
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .end local v7    # "logicalModemList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ModemInfo;>;"
    .local v11, "logicalModemList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ModemInfo;>;"
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v8, Landroid/telephony/PhoneCapability;

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v13, v9

    .end local v9    # "deviceNrCapabilities":[I
    .local v13, "deviceNrCapabilities":[I
    const/4 v9, 0x1

    invoke-direct/range {v8 .. v13}, Landroid/telephony/PhoneCapability;-><init>(IILjava/util/List;Z[I)V

    move-object v9, v13

    .end local v13    # "deviceNrCapabilities":[I
    .restart local v9    # "deviceNrCapabilities":[I
    sput-object v8, Landroid/telephony/PhoneCapability;->DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

    .line 224
    .end local v0    # "modemInfo1":Landroid/telephony/ModemInfo;
    .end local v3    # "modemInfo2":Landroid/telephony/ModemInfo;
    .end local v9    # "deviceNrCapabilities":[I
    .end local v11    # "logicalModemList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ModemInfo;>;"
    new-instance v0, Landroid/telephony/PhoneCapability$1;

    invoke-direct {v0}, Landroid/telephony/PhoneCapability$1;-><init>()V

    sput-object v0, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/util/List;Z[I)V
    .registers 7
    .param p1, "maxActiveVoiceSubscriptions"    # I
    .param p2, "maxActiveDataSubscriptions"    # I
    .param p4, "networkValidationBeforeSwitchSupported"    # Z
    .param p5, "deviceNrCapabilities"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;Z[I)V"
        }
    .end annotation

    .line 138
    .local p3, "logicalModemList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ModemInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    .line 140
    iput p2, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    .line 142
    if-nez p3, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10

    :cond_f
    move-object v0, p3

    :goto_10
    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    .line 143
    iput-boolean p4, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    .line 144
    iput-object p5, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 145
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    .line 173
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    const-class v1, Landroid/telephony/ModemInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/ModemInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 175
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/PhoneCapability-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PhoneCapability;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/PhoneCapability$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/telephony/PhoneCapability$Builder;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Landroid/telephony/PhoneCapability$Builder;->-$$Nest$fgetmMaxActiveVoiceSubscriptions(Landroid/telephony/PhoneCapability$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    .line 149
    invoke-static {p1}, Landroid/telephony/PhoneCapability$Builder;->-$$Nest$fgetmMaxActiveDataSubscriptions(Landroid/telephony/PhoneCapability$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    .line 151
    invoke-static {p1}, Landroid/telephony/PhoneCapability$Builder;->-$$Nest$fgetmLogicalModemList(Landroid/telephony/PhoneCapability$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1f

    .line 152
    :cond_1b
    invoke-static {p1}, Landroid/telephony/PhoneCapability$Builder;->-$$Nest$fgetmLogicalModemList(Landroid/telephony/PhoneCapability$Builder;)Ljava/util/List;

    move-result-object v0

    :goto_1f
    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    .line 153
    invoke-static {p1}, Landroid/telephony/PhoneCapability$Builder;->-$$Nest$fgetmNetworkValidationBeforeSwitchSupported(Landroid/telephony/PhoneCapability$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    .line 155
    invoke-static {p1}, Landroid/telephony/PhoneCapability$Builder;->-$$Nest$fgetmDeviceNrCapabilities(Landroid/telephony/PhoneCapability$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 157
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/PhoneCapability$Builder;Landroid/telephony/PhoneCapability-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PhoneCapability;-><init>(Landroid/telephony/PhoneCapability$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 188
    const/4 v0, 0x0

    if-eqz p1, :cond_43

    instance-of v1, p1, Landroid/telephony/PhoneCapability;

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Landroid/telephony/PhoneCapability;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_12

    goto :goto_43

    .line 192
    :cond_12
    const/4 v1, 0x1

    if-ne p0, p1, :cond_16

    .line 193
    return v1

    .line 196
    :cond_16
    move-object v2, p1

    check-cast v2, Landroid/telephony/PhoneCapability;

    .line 198
    .local v2, "s":Landroid/telephony/PhoneCapability;
    iget v3, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    iget v4, v2, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    if-ne v3, v4, :cond_41

    iget v3, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    iget v4, v2, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    if-ne v3, v4, :cond_41

    iget-boolean v3, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    iget-boolean v4, v2, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    if-ne v3, v4, :cond_41

    iget-object v3, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    .line 202
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    iget-object v4, v2, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 203
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_41

    move v0, v1

    goto :goto_42

    :cond_41
    nop

    .line 198
    :goto_42
    return v0

    .line 189
    .end local v2    # "s":Landroid/telephony/PhoneCapability;
    :cond_43
    :goto_43
    return v0
.end method

.method public whitelist getDeviceNrCapabilities()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 285
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_a

    :cond_8
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    :goto_a
    return-object v0
.end method

.method public blacklist getLogicalModemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMaxActiveDataSubscriptions()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 253
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    return v0
.end method

.method public whitelist getMaxActiveVoiceSubscriptions()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 243
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 179
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    iget-boolean v3, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    .line 182
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 183
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 179
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isNetworkValidationBeforeSwitchSupported()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMaxActiveVoiceSubscriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxActiveDataSubscriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNetworkValidationBeforeSwitchSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDeviceNrCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 165
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 217
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 220
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 221
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 222
    return-void
.end method
