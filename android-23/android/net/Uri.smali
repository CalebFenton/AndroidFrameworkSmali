.class public abstract Landroid/net/Uri;
.super Ljava/lang/Object;
.source "Uri.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$StringUri;,
        Landroid/net/Uri$OpaqueUri;,
        Landroid/net/Uri$PathSegments;,
        Landroid/net/Uri$PathSegmentsBuilder;,
        Landroid/net/Uri$AbstractHierarchicalUri;,
        Landroid/net/Uri$HierarchicalUri;,
        Landroid/net/Uri$Builder;,
        Landroid/net/Uri$AbstractPart;,
        Landroid/net/Uri$Part;,
        Landroid/net/Uri$PathPart;,
        Landroid/net/Uri$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final EMPTY:Landroid/net/Uri;

.field private static final HEX_DIGITS:[C

.field private static final LOG:Ljava/lang/String;

.field private static final NOT_CACHED:Ljava/lang/String;

.field private static final NOT_CALCULATED:I = -0x2

.field private static final NOT_FOUND:I = -0x1

.field private static final NOT_HIERARCHICAL:Ljava/lang/String; = "This isn\'t a hierarchical URI."

.field private static final NULL_TYPE_ID:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/net/Uri;->LOG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 113
    const-class v0, Landroid/net/Uri;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/net/Uri;->LOG:Ljava/lang/String;

    #@9
    .line 125
    new-instance v0, Ljava/lang/String;

    #@b
    const-string/jumbo v2, "NOT CACHED"

    #@e
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@11
    sput-object v0, Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;

    #@13
    .line 130
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    #@15
    sget-object v2, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    #@17
    .line 131
    sget-object v3, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    #@19
    sget-object v4, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    #@1b
    sget-object v5, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    #@1d
    move-object v6, v1

    #@1e
    .line 130
    invoke-direct/range {v0 .. v6}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$HierarchicalUri;)V

    #@21
    sput-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@23
    .line 1768
    new-instance v0, Landroid/net/Uri$1;

    #@25
    invoke-direct {v0}, Landroid/net/Uri$1;-><init>()V

    #@28
    .line 1767
    sput-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    .line 1801
    const-string/jumbo v0, "0123456789ABCDEF"

    #@2d
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@30
    move-result-object v0

    #@31
    sput-object v0, Landroid/net/Uri;->HEX_DIGITS:[C

    #@33
    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/net/Uri;-><init>()V

    #@3
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1935
    if-nez p0, :cond_0

    #@4
    .line 1936
    return-object v0

    #@5
    .line 1938
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@7
    invoke-static {p0, v1, v0, v1}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1814
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "allow"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1831
    if-nez p0, :cond_0

    #@3
    .line 1832
    return-object v10

    #@4
    .line 1836
    :cond_0
    const/4 v4, 0x0

    #@5
    .line 1838
    .local v4, "encoded":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v8

    #@9
    .line 1843
    .local v8, "oldLength":I
    const/4 v2, 0x0

    #@a
    .line 1844
    .end local v4    # "encoded":Ljava/lang/StringBuilder;
    .local v2, "current":I
    :goto_0
    if-ge v2, v8, :cond_9

    #@c
    .line 1848
    move v7, v2

    #@d
    .line 1849
    .local v7, "nextToEncode":I
    :goto_1
    if-ge v7, v8, :cond_1

    #@f
    .line 1850
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v10

    #@13
    invoke-static {v10, p1}, Landroid/net/Uri;->isAllowed(CLjava/lang/String;)Z

    #@16
    move-result v10

    #@17
    .line 1849
    if-eqz v10, :cond_1

    #@19
    .line 1851
    add-int/lit8 v7, v7, 0x1

    #@1b
    goto :goto_1

    #@1c
    .line 1855
    :cond_1
    if-ne v7, v8, :cond_3

    #@1e
    .line 1856
    if-nez v2, :cond_2

    #@20
    .line 1858
    return-object p0

    #@21
    .line 1861
    :cond_2
    invoke-virtual {v4, p0, v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@24
    .line 1862
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v10

    #@28
    return-object v10

    #@29
    .line 1866
    :cond_3
    if-nez v4, :cond_4

    #@2b
    .line 1867
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    .line 1870
    :cond_4
    if-le v7, v2, :cond_5

    #@32
    .line 1872
    invoke-virtual {v4, p0, v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@35
    .line 1880
    :cond_5
    move v2, v7

    #@36
    .line 1881
    add-int/lit8 v6, v2, 0x1

    #@38
    .line 1882
    .local v6, "nextAllowed":I
    :goto_2
    if-ge v6, v8, :cond_6

    #@3a
    .line 1883
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@3d
    move-result v10

    #@3e
    invoke-static {v10, p1}, Landroid/net/Uri;->isAllowed(CLjava/lang/String;)Z

    #@41
    move-result v10

    #@42
    if-eqz v10, :cond_7

    #@44
    .line 1889
    :cond_6
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@47
    move-result-object v9

    #@48
    .line 1891
    .local v9, "toEncode":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v10, "UTF-8"

    #@4b
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@4e
    move-result-object v0

    #@4f
    .line 1892
    .local v0, "bytes":[B
    array-length v1, v0

    #@50
    .line 1893
    .local v1, "bytesLength":I
    const/4 v5, 0x0

    #@51
    .local v5, "i":I
    :goto_3
    if-ge v5, v1, :cond_8

    #@53
    .line 1894
    const/16 v10, 0x25

    #@55
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@58
    .line 1895
    sget-object v10, Landroid/net/Uri;->HEX_DIGITS:[C

    #@5a
    aget-byte v11, v0, v5

    #@5c
    and-int/lit16 v11, v11, 0xf0

    #@5e
    shr-int/lit8 v11, v11, 0x4

    #@60
    aget-char v10, v10, v11

    #@62
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@65
    .line 1896
    sget-object v10, Landroid/net/Uri;->HEX_DIGITS:[C

    #@67
    aget-byte v11, v0, v5

    #@69
    and-int/lit8 v11, v11, 0xf

    #@6b
    aget-char v10, v10, v11

    #@6d
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@70
    .line 1893
    add-int/lit8 v5, v5, 0x1

    #@72
    goto :goto_3

    #@73
    .line 1884
    .end local v0    # "bytes":[B
    .end local v1    # "bytesLength":I
    .end local v5    # "i":I
    .end local v9    # "toEncode":Ljava/lang/String;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    #@75
    goto :goto_2

    #@76
    .line 1898
    .restart local v9    # "toEncode":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@77
    .line 1899
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/AssertionError;

    #@79
    invoke-direct {v10, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@7c
    throw v10

    #@7d
    .line 1902
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "bytes":[B
    .restart local v1    # "bytesLength":I
    .restart local v5    # "i":I
    :cond_8
    move v2, v6

    #@7e
    goto :goto_0

    #@7f
    .line 1906
    .end local v0    # "bytes":[B
    .end local v1    # "bytesLength":I
    .end local v5    # "i":I
    .end local v6    # "nextAllowed":I
    .end local v7    # "nextToEncode":I
    .end local v9    # "toEncode":Ljava/lang/String;
    :cond_9
    if-nez v4, :cond_a

    #@81
    .end local p0    # "s":Ljava/lang/String;
    :goto_4
    return-object p0

    #@82
    .restart local p0    # "s":Ljava/lang/String;
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object p0

    #@86
    goto :goto_4
.end method

.method public static fromFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 451
    if-nez p0, :cond_0

    #@3
    .line 452
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "file"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 455
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@13
    move-result-object v3

    #@14
    .line 456
    .local v3, "path":Landroid/net/Uri$PathPart;
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    #@16
    .line 457
    const-string/jumbo v1, "file"

    #@19
    sget-object v2, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    #@1b
    sget-object v4, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    #@1d
    sget-object v5, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    #@1f
    .line 456
    invoke-direct/range {v0 .. v6}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$HierarchicalUri;)V

    #@22
    return-object v0
.end method

.method public static fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "ssp"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 818
    if-nez p0, :cond_0

    #@3
    .line 819
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "scheme"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 821
    :cond_0
    if-nez p1, :cond_1

    #@e
    .line 822
    new-instance v0, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v1, "ssp"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 825
    :cond_1
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    #@19
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@1c
    move-result-object v1

    #@1d
    .line 826
    invoke-static {p2}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@20
    move-result-object v2

    #@21
    .line 825
    invoke-direct {v0, p0, v1, v2, v3}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$OpaqueUri;)V

    #@24
    return-object v0
.end method

.method private static isAllowed(CLjava/lang/String;)Z
    .locals 4
    .param p0, "c"    # C
    .param p1, "allow"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    .line 1918
    const/16 v2, 0x41

    #@5
    if-lt p0, v2, :cond_1

    #@7
    const/16 v2, 0x5a

    #@9
    if-gt p0, v2, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    .line 1919
    :cond_1
    const/16 v2, 0x61

    #@e
    if-lt p0, v2, :cond_2

    #@10
    const/16 v2, 0x7a

    #@12
    if-le p0, v2, :cond_0

    #@14
    .line 1920
    :cond_2
    const/16 v2, 0x30

    #@16
    if-lt p0, v2, :cond_3

    #@18
    const/16 v2, 0x39

    #@1a
    if-le p0, v2, :cond_0

    #@1c
    .line 1921
    :cond_3
    const-string/jumbo v2, "_-!.~\'()*"

    #@1f
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    #@22
    move-result v2

    #@23
    if-ne v2, v3, :cond_0

    #@25
    .line 1922
    if-eqz p1, :cond_4

    #@27
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    #@2a
    move-result v2

    #@2b
    if-ne v2, v3, :cond_0

    #@2d
    :cond_4
    move v0, v1

    #@2e
    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "uriString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 437
    new-instance v0, Landroid/net/Uri$StringUri;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;Landroid/net/Uri$StringUri;)V

    #@6
    return-object v0
.end method

.method public static withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "baseUri"    # Landroid/net/Uri;
    .param p1, "pathSegment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2298
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@3
    move-result-object v0

    #@4
    .line 2299
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    .line 2300
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public static writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1794
    if-nez p1, :cond_0

    #@3
    .line 1795
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1793
    :goto_0
    return-void

    #@7
    .line 1797
    :cond_0
    invoke-virtual {p1, p0, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@a
    goto :goto_0
.end method


# virtual methods
.method public abstract buildUpon()Landroid/net/Uri$Builder;
.end method

.method public checkFileUriExposed(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2345
    const-string/jumbo v0, "file"

    #@3
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 2346
    invoke-static {p1}, Landroid/os/StrictMode;->onFileUriExposed(Ljava/lang/String;)V

    #@10
    .line 2344
    :cond_0
    return-void
.end method

.method public compareTo(Landroid/net/Uri;)I
    .locals 2
    .param p1, "other"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 351
    check-cast p1, Landroid/net/Uri;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 330
    instance-of v1, p1, Landroid/net/Uri;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 331
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 334
    check-cast v0, Landroid/net/Uri;

    #@9
    .line 336
    .local v0, "other":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public getBooleanQueryParameter(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1723
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1724
    .local v0, "flag":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 1725
    return p2

    #@8
    .line 1727
    :cond_0
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 1728
    const-string/jumbo v2, "false"

    #@11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1

    #@17
    const-string/jumbo v2, "0"

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    :cond_1
    :goto_0
    return v1

    #@21
    :cond_2
    const/4 v1, 0x1

    #@22
    goto :goto_0
.end method

.method public getCanonicalUri()Landroid/net/Uri;
    .locals 6

    #@0
    .prologue
    .line 2312
    const-string/jumbo v3, "file"

    #@3
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 2315
    :try_start_0
    new-instance v3, Ljava/io/File;

    #@f
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v0

    #@1a
    .line 2320
    .local v0, "canonicalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 2321
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 2325
    .local v2, "legacyPath":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_0

    #@2e
    .line 2326
    new-instance v3, Ljava/io/File;

    #@30
    .line 2327
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 2328
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3b
    move-result v5

    #@3c
    add-int/lit8 v5, v5, 0x1

    #@3e
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    .line 2326
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@45
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@48
    move-result-object v3

    #@49
    return-object v3

    #@4a
    .line 2316
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v2    # "legacyPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@4b
    .line 2317
    .local v1, "e":Ljava/io/IOException;
    return-object p0

    #@4c
    .line 2332
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "canonicalPath":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/io/File;

    #@4e
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@51
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@54
    move-result-object v3

    #@55
    return-object v3

    #@56
    .line 2334
    .end local v0    # "canonicalPath":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public abstract getEncodedAuthority()Ljava/lang/String;
.end method

.method public abstract getEncodedFragment()Ljava/lang/String;
.end method

.method public abstract getEncodedPath()Ljava/lang/String;
.end method

.method public abstract getEncodedQuery()Ljava/lang/String;
.end method

.method public abstract getEncodedSchemeSpecificPart()Ljava/lang/String;
.end method

.method public abstract getEncodedUserInfo()Ljava/lang/String;
.end method

.method public abstract getFragment()Ljava/lang/String;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getLastPathSegment()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPathSegments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPort()I
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, -0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 1669
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    #@6
    move-result v8

    #@7
    if-eqz v8, :cond_0

    #@9
    .line 1670
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    #@b
    const-string/jumbo v9, "This isn\'t a hierarchical URI."

    #@e
    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@11
    throw v8

    #@12
    .line 1672
    :cond_0
    if-nez p1, :cond_1

    #@14
    .line 1673
    new-instance v8, Ljava/lang/NullPointerException;

    #@16
    const-string/jumbo v9, "key"

    #@19
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v8

    #@1d
    .line 1676
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    .line 1677
    .local v5, "query":Ljava/lang/String;
    if-nez v5, :cond_2

    #@23
    .line 1678
    return-object v10

    #@24
    .line 1681
    :cond_2
    invoke-static {p1, v10}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 1682
    .local v0, "encodedKey":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@2b
    move-result v3

    #@2c
    .line 1683
    .local v3, "length":I
    const/4 v7, 0x0

    #@2d
    .line 1685
    .local v7, "start":I
    :goto_0
    const/16 v8, 0x26

    #@2f
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->indexOf(II)I

    #@32
    move-result v4

    #@33
    .line 1686
    .local v4, "nextAmpersand":I
    if-eq v4, v11, :cond_5

    #@35
    move v2, v4

    #@36
    .line 1688
    .local v2, "end":I
    :goto_1
    const/16 v8, 0x3d

    #@38
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->indexOf(II)I

    #@3b
    move-result v6

    #@3c
    .line 1689
    .local v6, "separator":I
    if-gt v6, v2, :cond_3

    #@3e
    if-ne v6, v11, :cond_4

    #@40
    .line 1690
    :cond_3
    move v6, v2

    #@41
    .line 1693
    :cond_4
    sub-int v8, v6, v7

    #@43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@46
    move-result v9

    #@47
    if-ne v8, v9, :cond_7

    #@49
    .line 1694
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@4c
    move-result v8

    #@4d
    invoke-virtual {v5, v7, v0, v12, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@50
    move-result v8

    #@51
    .line 1693
    if-eqz v8, :cond_7

    #@53
    .line 1695
    if-ne v6, v2, :cond_6

    #@55
    .line 1696
    const-string/jumbo v8, ""

    #@58
    return-object v8

    #@59
    .line 1686
    .end local v2    # "end":I
    .end local v6    # "separator":I
    :cond_5
    move v2, v3

    #@5a
    .restart local v2    # "end":I
    goto :goto_1

    #@5b
    .line 1698
    .restart local v6    # "separator":I
    :cond_6
    add-int/lit8 v8, v6, 0x1

    #@5d
    invoke-virtual {v5, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    .line 1699
    .local v1, "encodedValue":Ljava/lang/String;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@63
    const/4 v9, 0x1

    #@64
    invoke-static {v1, v9, v8, v12}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;

    #@67
    move-result-object v8

    #@68
    return-object v8

    #@69
    .line 1704
    .end local v1    # "encodedValue":Ljava/lang/String;
    :cond_7
    if-eq v4, v11, :cond_8

    #@6b
    .line 1705
    add-int/lit8 v7, v4, 0x1

    #@6d
    goto :goto_0

    #@6e
    .line 1710
    :cond_8
    return-object v10
.end method

.method public getQueryParameterNames()Ljava/util/Set;
    .locals 9
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
    const/4 v8, -0x1

    #@1
    .line 1566
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    #@4
    move-result v7

    #@5
    if-eqz v7, :cond_0

    #@7
    .line 1567
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string/jumbo v8, "This isn\'t a hierarchical URI."

    #@c
    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v7

    #@10
    .line 1570
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 1571
    .local v4, "query":Ljava/lang/String;
    if-nez v4, :cond_1

    #@16
    .line 1572
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@19
    move-result-object v7

    #@1a
    return-object v7

    #@1b
    .line 1575
    :cond_1
    new-instance v2, Ljava/util/LinkedHashSet;

    #@1d
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    #@20
    .line 1576
    .local v2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@21
    .line 1578
    .local v6, "start":I
    :cond_2
    const/16 v7, 0x26

    #@23
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    #@26
    move-result v3

    #@27
    .line 1579
    .local v3, "next":I
    if-ne v3, v8, :cond_5

    #@29
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@2c
    move-result v0

    #@2d
    .line 1581
    .local v0, "end":I
    :goto_0
    const/16 v7, 0x3d

    #@2f
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    #@32
    move-result v5

    #@33
    .line 1582
    .local v5, "separator":I
    if-gt v5, v0, :cond_3

    #@35
    if-ne v5, v8, :cond_4

    #@37
    .line 1583
    :cond_3
    move v5, v0

    #@38
    .line 1586
    :cond_4
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 1587
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@43
    .line 1590
    add-int/lit8 v6, v0, 0x1

    #@45
    .line 1591
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@48
    move-result v7

    #@49
    if-lt v6, v7, :cond_2

    #@4b
    .line 1593
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@4e
    move-result-object v7

    #@4f
    return-object v7

    #@50
    .line 1579
    .end local v0    # "end":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "separator":I
    :cond_5
    move v0, v3

    #@51
    .restart local v0    # "end":I
    goto :goto_0
.end method

.method public getQueryParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 1606
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    #@4
    move-result v8

    #@5
    if-eqz v8, :cond_0

    #@7
    .line 1607
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string/jumbo v9, "This isn\'t a hierarchical URI."

    #@c
    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v8

    #@10
    .line 1609
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 1610
    new-instance v8, Ljava/lang/NullPointerException;

    #@14
    const-string/jumbo v9, "key"

    #@17
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v8

    #@1b
    .line 1613
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 1614
    .local v4, "query":Ljava/lang/String;
    if-nez v4, :cond_2

    #@21
    .line 1615
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@24
    move-result-object v8

    #@25
    return-object v8

    #@26
    .line 1620
    :cond_2
    :try_start_0
    const-string/jumbo v8, "UTF-8"

    #@29
    invoke-static {p1, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v1

    #@2d
    .line 1625
    .local v1, "encodedKey":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@32
    .line 1627
    .local v7, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@33
    .line 1629
    .local v6, "start":I
    :goto_0
    const/16 v8, 0x26

    #@35
    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->indexOf(II)I

    #@38
    move-result v3

    #@39
    .line 1630
    .local v3, "nextAmpersand":I
    if-eq v3, v10, :cond_6

    #@3b
    move v2, v3

    #@3c
    .line 1632
    .local v2, "end":I
    :goto_1
    const/16 v8, 0x3d

    #@3e
    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->indexOf(II)I

    #@41
    move-result v5

    #@42
    .line 1633
    .local v5, "separator":I
    if-gt v5, v2, :cond_3

    #@44
    if-ne v5, v10, :cond_4

    #@46
    .line 1634
    :cond_3
    move v5, v2

    #@47
    .line 1637
    :cond_4
    sub-int v8, v5, v6

    #@49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@4c
    move-result v9

    #@4d
    if-ne v8, v9, :cond_5

    #@4f
    .line 1638
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@52
    move-result v8

    #@53
    const/4 v9, 0x0

    #@54
    invoke-virtual {v4, v6, v1, v9, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@57
    move-result v8

    #@58
    .line 1637
    if-eqz v8, :cond_5

    #@5a
    .line 1639
    if-ne v5, v2, :cond_7

    #@5c
    .line 1640
    const-string/jumbo v8, ""

    #@5f
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@62
    .line 1647
    :cond_5
    :goto_2
    if-eq v3, v10, :cond_8

    #@64
    .line 1648
    add-int/lit8 v6, v3, 0x1

    #@66
    goto :goto_0

    #@67
    .line 1621
    .end local v1    # "encodedKey":Ljava/lang/String;
    .end local v2    # "end":I
    .end local v3    # "nextAmpersand":I
    .end local v5    # "separator":I
    .end local v6    # "start":I
    .end local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    #@68
    .line 1622
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/AssertionError;

    #@6a
    invoke-direct {v8, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@6d
    throw v8

    #@6e
    .line 1630
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "encodedKey":Ljava/lang/String;
    .restart local v3    # "nextAmpersand":I
    .restart local v6    # "start":I
    .restart local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@71
    move-result v2

    #@72
    .restart local v2    # "end":I
    goto :goto_1

    #@73
    .line 1642
    .restart local v5    # "separator":I
    :cond_7
    add-int/lit8 v8, v5, 0x1

    #@75
    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@78
    move-result-object v8

    #@79
    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@7c
    move-result-object v8

    #@7d
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@80
    goto :goto_2

    #@81
    .line 1654
    :cond_8
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@84
    move-result-object v8

    #@85
    return-object v8
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract getSchemeSpecificPart()Ljava/lang/String;
.end method

.method public abstract getUserInfo()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    #@0
    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/net/Uri;->isRelative()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public abstract isHierarchical()Z
.end method

.method public isOpaque()Z
    .locals 1

    #@0
    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public isPathPrefixMatch(Landroid/net/Uri;)Z
    .locals 7
    .param p1, "prefix"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2357
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_0

    #@f
    return v6

    #@10
    .line 2358
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_1

    #@1e
    return v6

    #@1f
    .line 2360
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@22
    move-result-object v3

    #@23
    .line 2361
    .local v3, "seg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@26
    move-result-object v1

    #@27
    .line 2363
    .local v1, "prefixSeg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@2a
    move-result v2

    #@2b
    .line 2364
    .local v2, "prefixSize":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@2e
    move-result v4

    #@2f
    if-ge v4, v2, :cond_2

    #@31
    return v6

    #@32
    .line 2366
    :cond_2
    const/4 v0, 0x0

    #@33
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_4

    #@35
    .line 2367
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v4

    #@39
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v5

    #@3d
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@40
    move-result v4

    #@41
    if-nez v4, :cond_3

    #@43
    .line 2368
    return v6

    #@44
    .line 2366
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 2372
    :cond_4
    const/4 v4, 0x1

    #@48
    return v4
.end method

.method public abstract isRelative()Z
.end method

.method public normalizeScheme()Landroid/net/Uri;
    .locals 3

    #@0
    .prologue
    .line 1753
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1754
    .local v1, "scheme":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    return-object p0

    #@7
    .line 1755
    :cond_0
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 1756
    .local v0, "lowerScheme":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    return-object p0

    #@14
    .line 1758
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@1f
    move-result-object v2

    #@20
    return-object v2
.end method

.method public toSafeString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x3a

    #@2
    const/16 v8, 0x40

    #@4
    .line 367
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 368
    .local v3, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    .line 369
    .local v4, "ssp":Ljava/lang/String;
    if-eqz v3, :cond_6

    #@e
    .line 370
    const-string/jumbo v5, "tel"

    #@11
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v5

    #@15
    if-nez v5, :cond_0

    #@17
    const-string/jumbo v5, "sip"

    #@1a
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v5

    #@1e
    if-nez v5, :cond_0

    #@20
    .line 371
    const-string/jumbo v5, "sms"

    #@23
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@26
    move-result v5

    #@27
    .line 370
    if-nez v5, :cond_0

    #@29
    .line 371
    const-string/jumbo v5, "smsto"

    #@2c
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2f
    move-result v5

    #@30
    .line 370
    if-nez v5, :cond_0

    #@32
    .line 372
    const-string/jumbo v5, "mailto"

    #@35
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@38
    move-result v5

    #@39
    .line 370
    if-eqz v5, :cond_4

    #@3b
    .line 373
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@40
    .line 374
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 375
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 376
    if-eqz v4, :cond_3

    #@48
    .line 377
    const/4 v2, 0x0

    #@49
    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4c
    move-result v5

    #@4d
    if-ge v2, v5, :cond_3

    #@4f
    .line 378
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    #@52
    move-result v1

    #@53
    .line 379
    .local v1, "c":C
    const/16 v5, 0x2d

    #@55
    if-eq v1, v5, :cond_1

    #@57
    if-ne v1, v8, :cond_2

    #@59
    .line 380
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c
    .line 377
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 379
    :cond_2
    const/16 v5, 0x2e

    #@61
    if-eq v1, v5, :cond_1

    #@63
    .line 382
    const/16 v5, 0x78

    #@65
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    goto :goto_1

    #@69
    .line 386
    .end local v1    # "c":C
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    return-object v5

    #@6e
    .line 387
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    const-string/jumbo v5, "http"

    #@71
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@74
    move-result v5

    #@75
    if-nez v5, :cond_5

    #@77
    const-string/jumbo v5, "https"

    #@7a
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7d
    move-result v5

    #@7e
    if-nez v5, :cond_5

    #@80
    .line 388
    const-string/jumbo v5, "ftp"

    #@83
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@86
    move-result v5

    #@87
    .line 387
    if-eqz v5, :cond_6

    #@89
    .line 389
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v6, "//"

    #@91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v6

    #@95
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@98
    move-result-object v5

    #@99
    if-eqz v5, :cond_9

    #@9b
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@9e
    move-result-object v5

    #@9f
    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v6

    #@a3
    .line 390
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    #@a6
    move-result v5

    #@a7
    const/4 v7, -0x1

    #@a8
    if-eq v5, v7, :cond_a

    #@aa
    new-instance v5, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v7, ":"

    #@b2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    #@b9
    move-result v7

    #@ba
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v5

    #@be
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v5

    #@c2
    .line 389
    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v5

    #@c6
    .line 391
    const-string/jumbo v6, "/..."

    #@c9
    .line 389
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v5

    #@cd
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v4

    #@d1
    .line 397
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d6
    .line 398
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_7

    #@d8
    .line 399
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    .line 400
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@de
    .line 402
    :cond_7
    if-eqz v4, :cond_8

    #@e0
    .line 403
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    .line 405
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v5

    #@e7
    return-object v5

    #@e8
    .line 389
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_9
    const-string/jumbo v5, ""

    #@eb
    goto :goto_2

    #@ec
    .line 390
    :cond_a
    const-string/jumbo v5, ""

    #@ef
    goto :goto_3
.end method

.method public abstract toString()Ljava/lang/String;
.end method
