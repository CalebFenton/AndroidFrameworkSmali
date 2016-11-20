.class public final Landroid/content/pm/EphemeralResolveInfo;
.super Ljava/lang/Object;
.source "EphemeralResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/EphemeralResolveInfo$1;,
        Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;,
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
.field private final mDigest:Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

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
    .line 96
    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/EphemeralResolveInfo$1;-><init>()V

    #@5
    .line 95
    sput-object v0, Landroid/content/pm/EphemeralResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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
    const/4 v1, -0x1

    #@1
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    #@b
    .line 49
    if-eqz p1, :cond_0

    #@d
    .line 50
    if-nez p2, :cond_1

    #@f
    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@14
    throw v0

    #@15
    .line 51
    :cond_1
    if-eqz p3, :cond_0

    #@17
    .line 52
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 56
    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    #@1f
    invoke-direct {v0, p1, v1, v1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;-><init>(Landroid/net/Uri;II)V

    #@22
    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigest:Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    #@24
    .line 57
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    #@26
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@29
    .line 58
    iput-object p2, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    #@2b
    .line 47
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    #@b
    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    #@11
    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigest:Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    #@13
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    #@19
    .line 64
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    #@1e
    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDigestBytes()[B
    .locals 2

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigest:Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    #@2
    invoke-virtual {v0}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->getDigestBytes()[[B

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    aget-object v0, v0, v1

    #@9
    return-object v0
.end method

.method public getDigestPrefix()I
    .locals 2

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigest:Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    #@2
    invoke-virtual {v0}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->getDigestPrefix()[I

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    aget v0, v0, v1

    #@9
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
    .line 80
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 76
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
    .line 90
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigest:Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 91
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 92
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@f
    .line 89
    return-void
.end method
