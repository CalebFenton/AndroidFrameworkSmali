.class public final Landroid/print/PrinterInfo;
.super Ljava/lang/Object;
.source "PrinterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterInfo$Builder;,
        Landroid/print/PrinterInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_BUSY:I = 0x2

.field public static final STATUS_IDLE:I = 0x1

.field public static final STATUS_UNAVAILABLE:I = 0x3


# instance fields
.field private mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

.field private mDescription:Ljava/lang/String;

.field private mId:Landroid/print/PrinterId;

.field private mName:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method static synthetic -set0(Landroid/print/PrinterInfo;Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrinterCapabilitiesInfo;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/print/PrinterInfo;Landroid/print/PrinterId;)Landroid/print/PrinterId;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/print/PrinterInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 324
    new-instance v0, Landroid/print/PrinterInfo$1;

    #@2
    invoke-direct {v0}, Landroid/print/PrinterInfo$1;-><init>()V

    #@5
    .line 323
    sput-object v0, Landroid/print/PrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 132
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/print/PrinterId;

    #@a
    iput-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@c
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@12
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@18
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@1e
    .line 136
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/print/PrinterCapabilitiesInfo;

    #@24
    iput-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@26
    .line 131
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrinterInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrinterInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/print/PrinterInfo;)V
    .locals 0
    .param p1, "prototype"    # Landroid/print/PrinterInfo;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    invoke-virtual {p0, p1}, Landroid/print/PrinterInfo;->copyFrom(Landroid/print/PrinterInfo;)V

    #@6
    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrinterInfo;Landroid/print/PrinterInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/print/PrinterInfo;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/print/PrinterInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/print/PrinterInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 64
    if-ne p0, p1, :cond_0

    #@3
    .line 65
    return-void

    #@4
    .line 67
    :cond_0
    iget-object v0, p1, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@6
    iput-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@8
    .line 68
    iget-object v0, p1, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@a
    iput-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@c
    .line 69
    iget v0, p1, Landroid/print/PrinterInfo;->mStatus:I

    #@e
    iput v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@10
    .line 70
    iget-object v0, p1, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@12
    iput-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@14
    .line 71
    iget-object v0, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 72
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 73
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@1e
    iget-object v1, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@20
    invoke-virtual {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->copyFrom(Landroid/print/PrinterCapabilitiesInfo;)V

    #@23
    .line 63
    :goto_0
    return-void

    #@24
    .line 75
    :cond_1
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo;

    #@26
    iget-object v1, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@28
    invoke-direct {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;-><init>(Landroid/print/PrinterCapabilitiesInfo;)V

    #@2b
    iput-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@2d
    goto :goto_0

    #@2e
    .line 78
    :cond_2
    iput-object v1, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@30
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 141
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
    .line 167
    if-ne p0, p1, :cond_0

    #@4
    .line 168
    return v4

    #@5
    .line 170
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 171
    return v3

    #@8
    .line 173
    :cond_1
    invoke-virtual {p0}, Landroid/print/PrinterInfo;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 174
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 176
    check-cast v0, Landroid/print/PrinterInfo;

    #@16
    .line 177
    .local v0, "other":Landroid/print/PrinterInfo;
    iget-object v1, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 178
    iget-object v1, v0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 179
    return v3

    #@1f
    .line 181
    :cond_3
    iget-object v1, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@21
    iget-object v2, v0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@23
    invoke-virtual {v1, v2}, Landroid/print/PrinterId;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_4

    #@29
    .line 182
    return v3

    #@2a
    .line 184
    :cond_4
    iget-object v1, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@2c
    iget-object v2, v0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@2e
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_5

    #@34
    .line 185
    return v3

    #@35
    .line 187
    :cond_5
    iget v1, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@37
    iget v2, v0, Landroid/print/PrinterInfo;->mStatus:I

    #@39
    if-eq v1, v2, :cond_6

    #@3b
    .line 188
    return v3

    #@3c
    .line 190
    :cond_6
    iget-object v1, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@3e
    iget-object v2, v0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@40
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@43
    move-result v1

    #@44
    if-nez v1, :cond_7

    #@46
    .line 191
    return v3

    #@47
    .line 193
    :cond_7
    iget-object v1, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@49
    if-nez v1, :cond_8

    #@4b
    .line 194
    iget-object v1, v0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@4d
    if-eqz v1, :cond_9

    #@4f
    .line 195
    return v3

    #@50
    .line 197
    :cond_8
    iget-object v1, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@52
    iget-object v2, v0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@54
    invoke-virtual {v1, v2}, Landroid/print/PrinterCapabilitiesInfo;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v1

    #@58
    if-nez v1, :cond_9

    #@5a
    .line 198
    return v3

    #@5b
    .line 200
    :cond_9
    return v4
.end method

.method public getCapabilities()Landroid/print/PrinterCapabilitiesInfo;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@2
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getId()Landroid/print/PrinterId;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 155
    const/16 v0, 0x1f

    #@3
    .line 157
    .local v0, "prime":I
    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@5
    if-eqz v2, :cond_1

    #@7
    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@9
    invoke-virtual {v2}, Landroid/print/PrinterId;->hashCode()I

    #@c
    move-result v2

    #@d
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    #@f
    .line 158
    .local v1, "result":I
    mul-int/lit8 v4, v1, 0x1f

    #@11
    iget-object v2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@13
    if-eqz v2, :cond_2

    #@15
    iget-object v2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@1a
    move-result v2

    #@1b
    :goto_1
    add-int v1, v4, v2

    #@1d
    .line 159
    mul-int/lit8 v2, v1, 0x1f

    #@1f
    iget v4, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@21
    add-int v1, v2, v4

    #@23
    .line 160
    mul-int/lit8 v4, v1, 0x1f

    #@25
    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@27
    if-eqz v2, :cond_3

    #@29
    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@2b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@2e
    move-result v2

    #@2f
    :goto_2
    add-int v1, v4, v2

    #@31
    .line 161
    mul-int/lit8 v2, v1, 0x1f

    #@33
    iget-object v4, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@35
    if-eqz v4, :cond_0

    #@37
    iget-object v3, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@39
    invoke-virtual {v3}, Landroid/print/PrinterCapabilitiesInfo;->hashCode()I

    #@3c
    move-result v3

    #@3d
    :cond_0
    add-int v1, v2, v3

    #@3f
    .line 162
    return v1

    #@40
    .end local v1    # "result":I
    :cond_1
    move v2, v3

    #@41
    .line 157
    goto :goto_0

    #@42
    .restart local v1    # "result":I
    :cond_2
    move v2, v3

    #@43
    .line 158
    goto :goto_1

    #@44
    :cond_3
    move v2, v3

    #@45
    .line 160
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 206
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PrinterInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 207
    const-string/jumbo v1, "id="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    .line 208
    const-string/jumbo v1, ", name="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget-object v2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 209
    const-string/jumbo v1, ", status="

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 210
    const-string/jumbo v1, ", description="

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 211
    const-string/jumbo v1, ", capabilities="

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    iget-object v2, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    .line 212
    const-string/jumbo v1, "\"}"

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 147
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 148
    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 149
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 150
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@16
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@19
    .line 145
    return-void
.end method
