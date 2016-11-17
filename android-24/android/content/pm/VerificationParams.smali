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

.field private final mOriginatingURI:Landroid/net/Uri;

.field private final mOriginatingUid:I

.field private final mReferrer:Landroid/net/Uri;

.field private final mVerificationURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 202
    new-instance v0, Landroid/content/pm/VerificationParams$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/VerificationParams$1;-><init>()V

    #@5
    .line 201
    sput-object v0, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "verificationURI"    # Landroid/net/Uri;
    .param p2, "originatingURI"    # Landroid/net/Uri;
    .param p3, "referrer"    # Landroid/net/Uri;
    .param p4, "originatingUid"    # I

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    iput-object p1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@5
    .line 67
    iput-object p2, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@7
    .line 68
    iput-object p3, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@9
    .line 69
    iput p4, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@b
    .line 70
    const/4 v0, -0x1

    #@c
    iput v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@e
    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 194
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
    .line 195
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
    .line 196
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
    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@33
    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@39
    .line 193
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
    .line 101
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
    .line 106
    if-ne p0, p1, :cond_0

    #@4
    .line 107
    return v4

    #@5
    .line 110
    :cond_0
    instance-of v1, p1, Landroid/content/pm/VerificationParams;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 111
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 114
    nop

    #@c
    nop

    #@d
    .line 116
    .local v0, "other":Landroid/content/pm/VerificationParams;
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@f
    if-nez v1, :cond_2

    #@11
    .line 117
    iget-object v1, v0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@13
    if-eqz v1, :cond_3

    #@15
    .line 118
    return v3

    #@16
    .line 120
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
    .line 121
    return v3

    #@21
    .line 124
    :cond_3
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@23
    if-nez v1, :cond_4

    #@25
    .line 125
    iget-object v1, v0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@27
    if-eqz v1, :cond_5

    #@29
    .line 126
    return v3

    #@2a
    .line 128
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
    .line 129
    return v3

    #@35
    .line 132
    :cond_5
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@37
    if-nez v1, :cond_6

    #@39
    .line 133
    iget-object v1, v0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@3b
    if-eqz v1, :cond_7

    #@3d
    .line 134
    return v3

    #@3e
    .line 136
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
    .line 137
    return v3

    #@49
    .line 140
    :cond_7
    iget v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@4b
    iget v2, v0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@4d
    if-eq v1, v2, :cond_8

    #@4f
    .line 141
    return v3

    #@50
    .line 144
    :cond_8
    iget v1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@52
    iget v2, v0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@54
    if-eq v1, v2, :cond_9

    #@56
    .line 145
    return v3

    #@57
    .line 148
    :cond_9
    return v4
.end method

.method public getInstallerUid()I
    .locals 1

    #@0
    .prologue
    .line 92
    iget v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@2
    return v0
.end method

.method public getOriginatingURI()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getOriginatingUid()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@2
    return v0
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getVerificationURI()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 74
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
    .line 155
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
    .line 156
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
    .line 157
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@14
    if-nez v1, :cond_2

    #@16
    :goto_2
    mul-int/lit8 v1, v2, 0xb

    #@18
    add-int/2addr v0, v1

    #@19
    .line 158
    iget v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@1b
    mul-int/lit8 v1, v1, 0xd

    #@1d
    add-int/2addr v0, v1

    #@1e
    .line 159
    iget v1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@20
    mul-int/lit8 v1, v1, 0x11

    #@22
    add-int/2addr v0, v1

    #@23
    .line 161
    return v0

    #@24
    .line 155
    .end local v0    # "hash":I
    :cond_0
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@26
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    #@29
    move-result v1

    #@2a
    goto :goto_0

    #@2b
    .line 156
    .restart local v0    # "hash":I
    :cond_1
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@2d
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    #@30
    move-result v1

    #@31
    goto :goto_1

    #@32
    .line 157
    :cond_2
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@34
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    #@37
    move-result v2

    #@38
    goto :goto_2
.end method

.method public setInstallerUid(I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 96
    iput p1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@2
    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "VerificationParams{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 168
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mVerificationURI="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 169
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@10
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 170
    const-string/jumbo v1, ",mOriginatingURI="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 171
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@1f
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 172
    const-string/jumbo v1, ",mReferrer="

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 173
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@2e
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 174
    const-string/jumbo v1, ",mOriginatingUid="

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 175
    iget v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    .line 176
    const-string/jumbo v1, ",mInstallerUid="

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 177
    iget v1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    .line 178
    const/16 v1, 0x7d

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@50
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
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
    .line 185
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    #@3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@6
    .line 186
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@b
    .line 187
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@10
    .line 188
    iget v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 189
    iget v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 184
    return-void
.end method
