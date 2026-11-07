.class public final Landroid/media/AudioDeviceAttributes;
.super Ljava/lang/Object;
.source "AudioDeviceAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioDeviceAttributes$Role;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ROLE_INPUT:I = 0x1

.field public static final whitelist ROLE_OUTPUT:I = 0x2


# instance fields
.field private blacklist mAddress:Ljava/lang/String;

.field private final blacklist mAudioDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAudioProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mNativeType:I

.field private final blacklist mRole:I

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 366
    new-instance v0, Landroid/media/AudioDeviceAttributes$1;

    invoke-direct {v0}, Landroid/media/AudioDeviceAttributes$1;-><init>()V

    sput-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;)V
    .registers 11
    .param p1, "role"    # I
    .param p2, "type"    # I
    .param p3, "address"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v4, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "role":I
    .end local p2    # "type":I
    .end local p3    # "address":Ljava/lang/String;
    .local v1, "role":I
    .local v2, "type":I
    .local v3, "address":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 123
    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .param p1, "role"    # I
    .param p2, "type"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioProfile;>;"
    .local p6, "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_26

    if-ne p1, v0, :cond_d

    goto :goto_26

    .line 141
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid role "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_26
    :goto_26
    if-ne p1, v1, :cond_32

    .line 144
    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->enforceValidAudioDeviceTypeOut(I)V

    .line 145
    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    goto :goto_41

    .line 146
    :cond_32
    if-ne p1, v0, :cond_3e

    .line 147
    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->enforceValidAudioDeviceTypeIn(I)V

    .line 148
    invoke-static {p2, p3}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    goto :goto_41

    .line 150
    :cond_3e
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    .line 153
    :goto_41
    iput p1, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    .line 154
    iput p2, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    .line 155
    iput-object p3, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    .line 157
    iput-object p5, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 158
    iput-object p6, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 159
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "nativeType"    # I
    .param p2, "address"    # Ljava/lang/String;

    .line 169
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "nativeType"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-static {p1}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x2

    :goto_c
    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    .line 181
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    .line 182
    iput-object p2, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    .line 184
    iput p1, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 187
    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/AudioDeviceAttributes;)V
    .registers 3
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getRole()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    .line 196
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    .line 197
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    .line 200
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAudioProfiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 201
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAudioDescriptors()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 202
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioDeviceInfo;)V
    .registers 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    .line 104
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    .line 105
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    .line 108
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAudioProfiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 109
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAudioDescriptors()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 110
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    .line 358
    const-class v0, Landroid/media/AudioProfile;

    .line 359
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/media/AudioProfile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/AudioProfile;

    .line 360
    .local v0, "audioProfilesArray":[Landroid/media/AudioProfile;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 361
    const-class v1, Landroid/media/AudioDescriptor;

    .line 362
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/media/AudioDescriptor;

    .line 361
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/AudioDescriptor;

    .line 363
    .local v1, "audioDescriptorsArray":[Landroid/media/AudioDescriptor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 364
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioDeviceAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist roleToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "role"    # I

    .line 319
    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    const-string v0, "output"

    goto :goto_8

    :cond_6
    const-string v0, "input"

    :goto_8
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist equalTypeAddress(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 308
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 309
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    .line 311
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 312
    .local v2, "that":Landroid/media/AudioDeviceAttributes;
    iget v3, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    iget v4, v2, Landroid/media/AudioDeviceAttributes;->mRole:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    iget v4, v2, Landroid/media/AudioDeviceAttributes;->mType:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 314
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    .line 312
    :goto_2d
    return v0

    .line 309
    .end local v2    # "that":Landroid/media/AudioDeviceAttributes;
    :cond_2e
    :goto_2e
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 289
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 290
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4c

    .line 292
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 293
    .local v2, "that":Landroid/media/AudioDeviceAttributes;
    iget v3, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    iget v4, v2, Landroid/media/AudioDeviceAttributes;->mRole:I

    if-ne v3, v4, :cond_4a

    iget v3, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    iget v4, v2, Landroid/media/AudioDeviceAttributes;->mType:I

    if-ne v3, v4, :cond_4a

    iget-object v3, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    .line 296
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    iget-object v4, v2, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 297
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    iget-object v4, v2, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 298
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v1

    .line 293
    :goto_4b
    return v0

    .line 290
    .end local v2    # "that":Landroid/media/AudioDeviceAttributes;
    :cond_4c
    :goto_4c
    return v1
.end method

.method public whitelist getAddress()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 231
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAudioDescriptors()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAudioProfiles()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getInternalType()I
    .registers 2

    .line 259
    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 250
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRole()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 211
    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 221
    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 284
    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    iget-object v6, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .line 239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iput-object p1, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 324
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDeviceAttributes: role:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    .line 325
    invoke-static {v2}, Landroid/media/AudioDeviceAttributes;->roleToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 326
    iget v2, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    iget v2, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 327
    :cond_29
    iget v2, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    :goto_2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    iget-object v3, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    .line 328
    invoke-static {v2, v3}, Landroid/media/Utils;->anonymizeBluetoothAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profiles:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 330
    invoke-interface {v2}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " descriptors:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 331
    invoke-interface {v2}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 324
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 341
    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget v0, p0, Landroid/media/AudioDeviceAttributes;->mNativeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    iget-object v1, p0, Landroid/media/AudioDeviceAttributes;->mAudioProfiles:Ljava/util/List;

    .line 347
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/AudioProfile;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/AudioProfile;

    .line 346
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 348
    iget-object v0, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    iget-object v1, p0, Landroid/media/AudioDeviceAttributes;->mAudioDescriptors:Ljava/util/List;

    .line 349
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/AudioDescriptor;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/AudioDescriptor;

    .line 348
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 350
    return-void
.end method
