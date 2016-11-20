.class public Landroid/content/pm/VerifierDeviceIdentity;
.super Ljava/lang/Object;
.source "VerifierDeviceIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/VerifierDeviceIdentity$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/VerifierDeviceIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODE:[C

.field private static final GROUP_SIZE:I = 0x4

.field private static final LONG_SIZE:I = 0xd

.field private static final SEPARATOR:C = '-'


# instance fields
.field private final mIdentity:J

.field private final mIdentityString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 94
    const/16 v0, 0x20

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/content/pm/VerifierDeviceIdentity;->ENCODE:[C

    #@9
    .line 231
    new-instance v0, Landroid/content/pm/VerifierDeviceIdentity$1;

    #@b
    invoke-direct {v0}, Landroid/content/pm/VerifierDeviceIdentity$1;-><init>()V

    #@e
    .line 230
    sput-object v0, Landroid/content/pm/VerifierDeviceIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 35
    return-void

    #@11
    .line 94
    nop

    #@12
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
    .end array-data
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "identity"    # J

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-wide p1, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    #@5
    .line 61
    invoke-static {p1, p2}, Landroid/content/pm/VerifierDeviceIdentity;->encodeBase32(J)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    #@b
    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    .line 67
    .local v0, "identity":J
    iput-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    #@9
    .line 68
    invoke-static {v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;->encodeBase32(J)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    iput-object v2, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    #@f
    .line 64
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/VerifierDeviceIdentity;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private static final decodeBase32([B)J
    .locals 13
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v12, 0xd

    #@2
    .line 138
    const-wide/16 v4, 0x0

    #@4
    .line 139
    .local v4, "output":J
    const/4 v3, 0x0

    #@5
    .line 141
    .local v3, "numParsed":I
    array-length v0, p0

    #@6
    .line 142
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_8

    #@9
    .line 143
    aget-byte v1, p0, v2

    #@b
    .line 150
    .local v1, "group":I
    const/16 v7, 0x41

    #@d
    if-gt v7, v1, :cond_0

    #@f
    const/16 v7, 0x5a

    #@11
    if-gt v1, v7, :cond_0

    #@13
    .line 151
    add-int/lit8 v6, v1, -0x41

    #@15
    .line 169
    .local v6, "value":I
    :goto_1
    const/4 v7, 0x5

    #@16
    shl-long v8, v4, v7

    #@18
    int-to-long v10, v6

    #@19
    or-long v4, v8, v10

    #@1b
    .line 170
    add-int/lit8 v3, v3, 0x1

    #@1d
    .line 172
    const/4 v7, 0x1

    #@1e
    if-ne v3, v7, :cond_7

    #@20
    .line 173
    and-int/lit8 v7, v6, 0xf

    #@22
    if-eq v7, v6, :cond_2

    #@24
    .line 174
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v8, "illegal start character; will overflow"

    #@29
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v7

    #@2d
    .line 152
    .end local v6    # "value":I
    :cond_0
    const/16 v7, 0x32

    #@2f
    if-gt v7, v1, :cond_1

    #@31
    const/16 v7, 0x37

    #@33
    if-gt v1, v7, :cond_1

    #@35
    .line 153
    add-int/lit8 v6, v1, -0x18

    #@37
    .line 152
    .restart local v6    # "value":I
    goto :goto_1

    #@38
    .line 154
    .end local v6    # "value":I
    :cond_1
    const/16 v7, 0x2d

    #@3a
    if-ne v1, v7, :cond_3

    #@3c
    .line 142
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 156
    :cond_3
    const/16 v7, 0x61

    #@41
    if-gt v7, v1, :cond_4

    #@43
    const/16 v7, 0x7a

    #@45
    if-gt v1, v7, :cond_4

    #@47
    .line 158
    add-int/lit8 v6, v1, -0x61

    #@49
    .line 156
    .restart local v6    # "value":I
    goto :goto_1

    #@4a
    .line 159
    .end local v6    # "value":I
    :cond_4
    const/16 v7, 0x30

    #@4c
    if-ne v1, v7, :cond_5

    #@4e
    .line 161
    const/16 v6, 0xe

    #@50
    .restart local v6    # "value":I
    goto :goto_1

    #@51
    .line 162
    .end local v6    # "value":I
    :cond_5
    const/16 v7, 0x31

    #@53
    if-ne v1, v7, :cond_6

    #@55
    .line 164
    const/16 v6, 0x8

    #@57
    .restart local v6    # "value":I
    goto :goto_1

    #@58
    .line 166
    .end local v6    # "value":I
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@5a
    new-instance v8, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v9, "base base-32 character: "

    #@62
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v8

    #@66
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v8

    #@6a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v8

    #@6e
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@71
    throw v7

    #@72
    .line 176
    .restart local v6    # "value":I
    :cond_7
    if-le v3, v12, :cond_2

    #@74
    .line 177
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@76
    const-string/jumbo v8, "too long; should have 13 characters"

    #@79
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v7

    #@7d
    .line 181
    .end local v1    # "group":I
    .end local v6    # "value":I
    :cond_8
    if-eq v3, v12, :cond_9

    #@7f
    .line 182
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@81
    const-string/jumbo v8, "too short; should have 13 characters"

    #@84
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@87
    throw v7

    #@88
    .line 185
    :cond_9
    return-wide v4
.end method

.method private static final encodeBase32(J)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # J

    #@0
    .prologue
    .line 104
    sget-object v0, Landroid/content/pm/VerifierDeviceIdentity;->ENCODE:[C

    #@2
    .line 110
    .local v0, "alphabet":[C
    const/16 v5, 0x10

    #@4
    new-array v1, v5, [C

    #@6
    .line 112
    .local v1, "encoded":[C
    array-length v4, v1

    #@7
    .line 113
    .local v4, "index":I
    const/4 v3, 0x0

    #@8
    .local v3, "i":I
    :goto_0
    const/16 v5, 0xd

    #@a
    if-ge v3, v5, :cond_1

    #@c
    .line 120
    if-lez v3, :cond_0

    #@e
    rem-int/lit8 v5, v3, 0x4

    #@10
    const/4 v6, 0x1

    #@11
    if-ne v5, v6, :cond_0

    #@13
    .line 121
    add-int/lit8 v4, v4, -0x1

    #@15
    const/16 v5, 0x2d

    #@17
    aput-char v5, v1, v4

    #@19
    .line 127
    :cond_0
    const-wide/16 v6, 0x1f

    #@1b
    and-long/2addr v6, p0

    #@1c
    long-to-int v2, v6

    #@1d
    .line 128
    .local v2, "group":I
    const/4 v5, 0x5

    #@1e
    ushr-long/2addr p0, v5

    #@1f
    .line 130
    add-int/lit8 v4, v4, -0x1

    #@21
    aget-char v5, v0, v2

    #@23
    aput-char v5, v1, v4

    #@25
    .line 113
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0

    #@28
    .line 133
    .end local v2    # "group":I
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    return-object v5
.end method

.method public static generate()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 2

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/security/SecureRandom;

    #@2
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@5
    .line 78
    .local v0, "sr":Ljava/security/SecureRandom;
    invoke-static {v0}, Landroid/content/pm/VerifierDeviceIdentity;->generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method static generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;
    .locals 3
    .param p0, "rng"    # Ljava/util/Random;

    #@0
    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    #@3
    move-result-wide v0

    #@4
    .line 91
    .local v0, "identity":J
    new-instance v2, Landroid/content/pm/VerifierDeviceIdentity;

    #@6
    invoke-direct {v2, v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    #@9
    return-object v2
.end method

.method public static parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;
    .locals 6
    .param p0, "deviceIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    :try_start_0
    const-string/jumbo v2, "US-ASCII"

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    .line 217
    .local v1, "input":[B
    new-instance v2, Landroid/content/pm/VerifierDeviceIdentity;

    #@9
    invoke-static {v1}, Landroid/content/pm/VerifierDeviceIdentity;->decodeBase32([B)J

    #@c
    move-result-wide v4

    #@d
    invoke-direct {v2, v4, v5}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    #@10
    return-object v2

    #@11
    .line 213
    .end local v1    # "input":[B
    :catch_0
    move-exception v0

    #@12
    .line 214
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v3, "bad base-32 characters in input"

    #@17
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 222
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 195
    instance-of v2, p1, Landroid/content/pm/VerifierDeviceIdentity;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 196
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 199
    check-cast v0, Landroid/content/pm/VerifierDeviceIdentity;

    #@9
    .line 200
    .local v0, "o":Landroid/content/pm/VerifierDeviceIdentity;
    iget-wide v2, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    #@b
    iget-wide v4, v0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    #@d
    cmp-long v2, v2, v4

    #@f
    if-nez v2, :cond_1

    #@11
    const/4 v1, 0x1

    #@12
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 190
    iget-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    #@2
    long-to-int v0, v0

    #@3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 227
    iget-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 226
    return-void
.end method
