.class public Landroid/content/pm/VerificationParams;
.super Ljava/lang/Object;
.source "VerificationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/VerificationParams$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/VerificationParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_UID:I = -0x1

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "VerificationParams{"


# instance fields
.field private mInstallerUid:I

.field private final mManifestDigest:Landroid/content/pm/ManifestDigest;

.field private final mOriginatingURI:Landroid/net/Uri;

.field private final mOriginatingUid:I

.field private final mReferrer:Landroid/net/Uri;

.field private final mVerificationURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 229
    new-instance v0, Landroid/content/pm/VerificationParams$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/VerificationParams$1;-><init>()V

    #@5
    .line 228
    sput-object v0, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V
    .locals 1
    .param p1, "verificationURI"    # Landroid/net/Uri;
    .param p2, "originatingURI"    # Landroid/net/Uri;
    .param p3, "referrer"    # Landroid/net/Uri;
    .param p4, "originatingUid"    # I
    .param p5, "manifestDigest"    # Landroid/content/pm/ManifestDigest;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iput-object p1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@5
    .line 76
    iput-object p2, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@7
    .line 77
    iput-object p3, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@9
    .line 78
    iput p4, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@b
    .line 79
    iput-object p5, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    #@d
    .line 80
    const/4 v0, -0x1

    #@e
    iput v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@10
    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 220
    const-class v0, Landroid/net/Uri;

    #@5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/net/Uri;

    #@f
    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@11
    .line 221
    const-class v0, Landroid/net/Uri;

    #@13
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/net/Uri;

    #@1d
    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@1f
    .line 222
    const-class v0, Landroid/net/Uri;

    #@21
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/net/Uri;

    #@2b
    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@2d
    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@33
    .line 224
    const-class v0, Landroid/content/pm/ManifestDigest;

    #@35
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroid/content/pm/ManifestDigest;

    #@3f
    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    #@41
    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v0

    #@45
    iput v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@47
    .line 219
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/VerificationParams;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/VerificationParams;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 115
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 120
    if-ne p0, p1, :cond_0

    #@4
    .line 121
    return v4

    #@5
    .line 124
    :cond_0
    instance-of v1, p1, Landroid/content/pm/VerificationParams;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 125
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 128
    check-cast v0, Landroid/content/pm/VerificationParams;

    #@d
    .line 130
    .local v0, "other":Landroid/content/pm/VerificationParams;
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@f
    if-nez v1, :cond_2

    #@11
    .line 131
    iget-object v1, v0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@13
    if-eqz v1, :cond_3

    #@15
    .line 132
    return v3

    #@16
    .line 134
    :cond_2
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@18
    iget-object v2, v0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@1a
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_3

    #@20
    .line 135
    return v3

    #@21
    .line 138
    :cond_3
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@23
    if-nez v1, :cond_4

    #@25
    .line 139
    iget-object v1, v0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@27
    if-eqz v1, :cond_5

    #@29
    .line 140
    return v3

    #@2a
    .line 142
    :cond_4
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@2c
    iget-object v2, v0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@2e
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_5

    #@34
    .line 143
    return v3

    #@35
    .line 146
    :cond_5
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@37
    if-nez v1, :cond_6

    #@39
    .line 147
    iget-object v1, v0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@3b
    if-eqz v1, :cond_7

    #@3d
    .line 148
    return v3

    #@3e
    .line 150
    :cond_6
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@40
    iget-object v2, v0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@42
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v1

    #@46
    if-nez v1, :cond_7

    #@48
    .line 151
    return v3

    #@49
    .line 154
    :cond_7
    iget v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@4b
    iget v2, v0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@4d
    if-eq v1, v2, :cond_8

    #@4f
    .line 155
    return v3

    #@50
    .line 158
    :cond_8
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    #@52
    if-nez v1, :cond_9

    #@54
    .line 159
    iget-object v1, v0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    #@56
    if-eqz v1, :cond_a

    #@58
    .line 160
    return v3

    #@59
    .line 162
    :cond_9
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    #@5b
    iget-object v2, v0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    #@5d
    invoke-virtual {v1, v2}, Landroid/content/pm/ManifestDigest;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v1

    #@61
    if-nez v1, :cond_a

    #@63
    .line 163
    return v3

    #@64
    .line 166
    :cond_a
    iget v1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@66
    iget v2, v0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@68
    if-eq v1, v2, :cond_b

    #@6a
    .line 167
    return v3

    #@6b
    .line 170
    :cond_b
    return v4
.end method

.method public getInstallerUid()I
    .locals 1

    #@0
    .prologue
    .line 106
    iget v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@2
    return v0
.end method

.method public getManifestDigest()Landroid/content/pm/ManifestDigest;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    #@2
    return-object v0
.end method

.method public getOriginatingURI()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getOriginatingUid()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@2
    return v0
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getVerificationURI()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 177
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@3
    if-nez v1, :cond_0

    #@5
    move v1, v2

    #@6
    :goto_0
    mul-int/lit8 v1, v1, 0x5

    #@8
    add-int/lit8 v0, v1, 0x3

    #@a
    .line 178
    .local v0, "hash":I
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@c
    if-nez v1, :cond_1

    #@e
    move v1, v2

    #@f
    :goto_1
    mul-int/lit8 v1, v1, 0x7

    #@11
    add-int/2addr v0, v1

    #@12
    .line 179
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@14
    if-nez v1, :cond_2

    #@16
    move v1, v2

    #@17
    :goto_2
    mul-int/lit8 v1, v1, 0xb

    #@19
    add-int/2addr v0, v1

    #@1a
    .line 180
    iget v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@1c
    mul-int/lit8 v1, v1, 0xd

    #@1e
    add-int/2addr v0, v1

    #@1f
    .line 181
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    #@21
    if-nez v1, :cond_3

    #@23
    :goto_3
    mul-int/lit8 v1, v2, 0x11

    #@25
    add-int/2addr v0, v1

    #@26
    .line 182
    iget v1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@28
    mul-int/lit8 v1, v1, 0x13

    #@2a
    add-int/2addr v0, v1

    #@2b
    .line 184
    return v0

    #@2c
    .line 177
    .end local v0    # "hash":I
    :cond_0
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@2e
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    #@31
    move-result v1

    #@32
    goto :goto_0

    #@33
    .line 178
    .restart local v0    # "hash":I
    :cond_1
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@35
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    #@38
    move-result v1

    #@39
    goto :goto_1

    #@3a
    .line 179
    :cond_2
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@3c
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    #@3f
    move-result v1

    #@40
    goto :goto_2

    #@41
    .line 181
    :cond_3
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    #@43
    invoke-virtual {v1}, Landroid/content/pm/ManifestDigest;->hashCode()I

    #@46
    move-result v2

    #@47
    goto :goto_3
.end method

.method public setInstallerUid(I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 110
    iput p1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@2
    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "VerificationParams{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 191
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mVerificationURI="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 192
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@10
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 193
    const-string/jumbo v1, ",mOriginatingURI="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 194
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@1f
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 195
    const-string/jumbo v1, ",mReferrer="

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 196
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@2e
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 197
    const-string/jumbo v1, ",mOriginatingUid="

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 198
    iget v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    .line 199
    const-string/jumbo v1, ",mManifestDigest="

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 200
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    #@48
    invoke-virtual {v1}, Landroid/content/pm/ManifestDigest;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 201
    const-string/jumbo v1, ",mInstallerUid="

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 202
    iget v1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    .line 203
    const/16 v1, 0x7d

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5f
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 210
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@6
    .line 211
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@b
    .line 212
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@10
    .line 213
    iget v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 214
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    #@17
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@1a
    .line 215
    iget v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 209
    return-void
.end method
