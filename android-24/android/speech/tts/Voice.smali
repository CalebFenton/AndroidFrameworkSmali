.class public Landroid/speech/tts/Voice;
.super Ljava/lang/Object;
.source "Voice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/Voice$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation
.end field

.field public static final LATENCY_HIGH:I = 0x190

.field public static final LATENCY_LOW:I = 0xc8

.field public static final LATENCY_NORMAL:I = 0x12c

.field public static final LATENCY_VERY_HIGH:I = 0x1f4

.field public static final LATENCY_VERY_LOW:I = 0x64

.field public static final QUALITY_HIGH:I = 0x190

.field public static final QUALITY_LOW:I = 0xc8

.field public static final QUALITY_NORMAL:I = 0x12c

.field public static final QUALITY_VERY_HIGH:I = 0x1f4

.field public static final QUALITY_VERY_LOW:I = 0x64


# instance fields
.field private final mFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLatency:I

.field private final mLocale:Ljava/util/Locale;

.field private final mName:Ljava/lang/String;

.field private final mQuality:I

.field private final mRequiresNetworkConnection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 109
    new-instance v0, Landroid/speech/tts/Voice$1;

    #@2
    invoke-direct {v0}, Landroid/speech/tts/Voice$1;-><init>()V

    #@5
    sput-object v0, Landroid/speech/tts/Voice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    #@a
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/Locale;

    #@10
    iput-object v0, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    #@12
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/speech/tts/Voice;->mQuality:I

    #@18
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/speech/tts/Voice;->mLatency:I

    #@1e
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@21
    move-result v0

    #@22
    if-ne v0, v1, :cond_0

    #@24
    move v0, v1

    #@25
    :goto_0
    iput-boolean v0, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    #@27
    .line 90
    new-instance v0, Ljava/util/HashSet;

    #@29
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@2c
    iput-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    #@2e
    .line 91
    iget-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    #@30
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@37
    .line 84
    return-void

    #@38
    .line 89
    :cond_0
    const/4 v0, 0x0

    #@39
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/speech/tts/Voice;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/tts/Voice;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;IIZLjava/util/Set;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "quality"    # I
    .param p4, "latency"    # I
    .param p5, "requiresNetworkConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "IIZ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    .local p6, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    iput-object p1, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    #@5
    .line 77
    iput-object p2, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    #@7
    .line 78
    iput p3, p0, Landroid/speech/tts/Voice;->mQuality:I

    #@9
    .line 79
    iput p4, p0, Landroid/speech/tts/Voice;->mLatency:I

    #@b
    .line 80
    iput-boolean p5, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    #@d
    .line 81
    iput-object p6, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    #@f
    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 106
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 212
    if-ne p0, p1, :cond_0

    #@4
    .line 213
    return v4

    #@5
    .line 215
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 216
    return v3

    #@8
    .line 218
    :cond_1
    invoke-virtual {p0}, Landroid/speech/tts/Voice;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 219
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 221
    check-cast v0, Landroid/speech/tts/Voice;

    #@16
    .line 222
    .local v0, "other":Landroid/speech/tts/Voice;
    iget-object v1, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 223
    iget-object v1, v0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 224
    return v3

    #@1f
    .line 226
    :cond_3
    iget-object v1, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    #@21
    iget-object v2, v0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    #@23
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_4

    #@29
    .line 227
    return v3

    #@2a
    .line 229
    :cond_4
    iget v1, p0, Landroid/speech/tts/Voice;->mLatency:I

    #@2c
    iget v2, v0, Landroid/speech/tts/Voice;->mLatency:I

    #@2e
    if-eq v1, v2, :cond_5

    #@30
    .line 230
    return v3

    #@31
    .line 232
    :cond_5
    iget-object v1, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    #@33
    if-nez v1, :cond_6

    #@35
    .line 233
    iget-object v1, v0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    #@37
    if-eqz v1, :cond_7

    #@39
    .line 234
    return v3

    #@3a
    .line 236
    :cond_6
    iget-object v1, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    #@3c
    iget-object v2, v0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    #@3e
    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v1

    #@42
    if-nez v1, :cond_7

    #@44
    .line 237
    return v3

    #@45
    .line 239
    :cond_7
    iget-object v1, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    #@47
    if-nez v1, :cond_8

    #@49
    .line 240
    iget-object v1, v0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    #@4b
    if-eqz v1, :cond_9

    #@4d
    .line 241
    return v3

    #@4e
    .line 243
    :cond_8
    iget-object v1, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    #@50
    iget-object v2, v0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v1

    #@56
    if-nez v1, :cond_9

    #@58
    .line 244
    return v3

    #@59
    .line 246
    :cond_9
    iget v1, p0, Landroid/speech/tts/Voice;->mQuality:I

    #@5b
    iget v2, v0, Landroid/speech/tts/Voice;->mQuality:I

    #@5d
    if-eq v1, v2, :cond_a

    #@5f
    .line 247
    return v3

    #@60
    .line 249
    :cond_a
    iget-boolean v1, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    #@62
    iget-boolean v2, v0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    #@64
    if-eq v1, v2, :cond_b

    #@66
    .line 250
    return v3

    #@67
    .line 252
    :cond_b
    return v4
.end method

.method public getFeatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getLatency()I
    .locals 1

    #@0
    .prologue
    .line 150
    iget v0, p0, Landroid/speech/tts/Voice;->mLatency:I

    #@2
    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getQuality()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Landroid/speech/tts/Voice;->mQuality:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 199
    const/16 v0, 0x1f

    #@3
    .line 201
    .local v0, "prime":I
    iget-object v2, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    #@5
    if-nez v2, :cond_0

    #@7
    move v2, v3

    #@8
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    #@a
    .line 202
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@c
    iget v4, p0, Landroid/speech/tts/Voice;->mLatency:I

    #@e
    add-int v1, v2, v4

    #@10
    .line 203
    mul-int/lit8 v4, v1, 0x1f

    #@12
    iget-object v2, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    #@14
    if-nez v2, :cond_1

    #@16
    move v2, v3

    #@17
    :goto_1
    add-int v1, v4, v2

    #@19
    .line 204
    mul-int/lit8 v2, v1, 0x1f

    #@1b
    iget-object v4, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    #@1d
    if-nez v4, :cond_2

    #@1f
    :goto_2
    add-int v1, v2, v3

    #@21
    .line 205
    mul-int/lit8 v2, v1, 0x1f

    #@23
    iget v3, p0, Landroid/speech/tts/Voice;->mQuality:I

    #@25
    add-int v1, v2, v3

    #@27
    .line 206
    mul-int/lit8 v3, v1, 0x1f

    #@29
    iget-boolean v2, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    #@2b
    if-eqz v2, :cond_3

    #@2d
    const/16 v2, 0x4cf

    #@2f
    :goto_3
    add-int v1, v3, v2

    #@31
    .line 207
    return v1

    #@32
    .line 201
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    #@34
    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    #@37
    move-result v2

    #@38
    goto :goto_0

    #@39
    .line 203
    .restart local v1    # "result":I
    :cond_1
    iget-object v2, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    #@3b
    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    #@3e
    move-result v2

    #@3f
    goto :goto_1

    #@40
    .line 204
    :cond_2
    iget-object v3, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    #@42
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@45
    move-result v3

    #@46
    goto :goto_2

    #@47
    .line 206
    :cond_3
    const/16 v2, 0x4d5

    #@49
    goto :goto_3
.end method

.method public isNetworkConnectionRequired()Z
    .locals 1

    #@0
    .prologue
    .line 157
    iget-boolean v0, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 188
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Voice[Name: "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 189
    const-string/jumbo v2, ", locale: "

    #@17
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 189
    iget-object v2, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    #@1d
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 190
    const-string/jumbo v2, ", quality: "

    #@24
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 190
    iget v2, p0, Landroid/speech/tts/Voice;->mQuality:I

    #@2a
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 191
    const-string/jumbo v2, ", latency: "

    #@31
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 191
    iget v2, p0, Landroid/speech/tts/Voice;->mLatency:I

    #@37
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 192
    const-string/jumbo v2, ", requiresNetwork: "

    #@3e
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 192
    iget-boolean v2, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    #@44
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    .line 193
    const-string/jumbo v2, ", features: "

    #@4b
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    .line 193
    iget-object v2, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    #@51
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    .line 194
    const-string/jumbo v2, "]"

    #@5c
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 97
    iget-object v0, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    #@a
    .line 98
    iget v0, p0, Landroid/speech/tts/Voice;->mQuality:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 99
    iget v0, p0, Landroid/speech/tts/Voice;->mLatency:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 100
    iget-boolean v0, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    :goto_0
    int-to-byte v0, v0

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@1d
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    iget-object v1, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    #@21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@27
    .line 95
    return-void

    #@28
    .line 100
    :cond_0
    const/4 v0, 0x0

    #@29
    goto :goto_0
.end method
