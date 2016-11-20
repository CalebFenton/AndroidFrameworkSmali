.class public final Landroid/content/pm/EphemeralResolveInfo;
.super Ljava/lang/Object;
.source "EphemeralResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/EphemeralResolveInfo$1;,
        Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHA_ALGORITHM:Ljava/lang/String; = "SHA-256"


# instance fields
.field private final mDigestBytes:[B

.field private final mDigestPrefix:I

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 115
    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/EphemeralResolveInfo$1;-><init>()V

    #@5
    .line 114
    sput-object v0, Landroid/content/pm/EphemeralResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v1, 0x0

    #@1
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    #@b
    .line 51
    if-eqz p1, :cond_0

    #@d
    .line 52
    if-nez p2, :cond_1

    #@f
    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@14
    throw v0

    #@15
    .line 53
    :cond_1
    if-eqz p3, :cond_0

    #@17
    .line 54
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 58
    invoke-static {p1}, Landroid/content/pm/EphemeralResolveInfo;->generateDigest(Landroid/net/Uri;)[B

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    #@23
    .line 60
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    #@25
    aget-byte v0, v0, v1

    #@27
    shl-int/lit8 v0, v0, 0x18

    #@29
    .line 61
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    #@2b
    const/4 v2, 0x1

    #@2c
    aget-byte v1, v1, v2

    #@2e
    shl-int/lit8 v1, v1, 0x10

    #@30
    .line 60
    or-int/2addr v0, v1

    #@31
    .line 62
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    #@33
    const/4 v2, 0x2

    #@34
    aget-byte v1, v1, v2

    #@36
    shl-int/lit8 v1, v1, 0x8

    #@38
    .line 60
    or-int/2addr v0, v1

    #@39
    .line 63
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    #@3b
    const/4 v2, 0x3

    #@3c
    aget-byte v1, v1, v2

    #@3e
    shl-int/lit8 v1, v1, 0x0

    #@40
    .line 60
    or-int/2addr v0, v1

    #@41
    .line 59
    iput v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestPrefix:I

    #@43
    .line 64
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    #@45
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@48
    .line 65
    iput-object p2, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    #@4a
    .line 49
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    #@a
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    #@10
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestPrefix:I

    #@16
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    #@1c
    .line 72
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    #@1e
    const/4 v1, 0x0

    #@1f
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    #@22
    .line 68
    return-void
.end method

.method private static generateDigest(Landroid/net/Uri;)[B
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 93
    :try_start_0
    const-string/jumbo v3, "SHA-256"

    #@3
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v0

    #@7
    .line 94
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    #@e
    move-result-object v2

    #@f
    .line 95
    .local v2, "hostBytes":[B
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v3

    #@13
    return-object v3

    #@14
    .line 96
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hostBytes":[B
    :catch_0
    move-exception v1

    #@15
    .line 97
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v4, "could not find digest algorithm"

    #@1a
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 103
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDigestBytes()[B
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    #@2
    return-object v0
.end method

.method public getDigestPrefix()I
    .locals 1

    #@0
    .prologue
    .line 80
    iget v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestPrefix:I

    #@2
    return v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@5
    .line 109
    iget v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestPrefix:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 110
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 111
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@14
    .line 107
    return-void
.end method
