.class public final Lcom/android/okhttp/HttpUrl;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/HttpUrl$Builder;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C


# instance fields
.field private final fragment:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final port:I

.field private final query:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/HttpUrl;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->query:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/HttpUrl;->decode(Ljava/lang/String;II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 39
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    .line 38
    sput-object v0, Lcom/android/okhttp/HttpUrl;->HEX_DIGITS:[C

    #@9
    .line 37
    return-void

    #@a
    .line 39
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "query"    # Ljava/lang/String;
    .param p8, "fragment"    # Ljava/lang/String;
    .param p9, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    iput-object p1, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@5
    .line 72
    iput-object p2, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    #@7
    .line 73
    iput-object p3, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    #@9
    .line 74
    iput-object p4, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    #@b
    .line 75
    iput p5, p0, Lcom/android/okhttp/HttpUrl;->port:I

    #@d
    .line 76
    iput-object p6, p0, Lcom/android/okhttp/HttpUrl;->path:Ljava/lang/String;

    #@f
    .line 77
    iput-object p7, p0, Lcom/android/okhttp/HttpUrl;->query:Ljava/lang/String;

    #@11
    .line 78
    iput-object p8, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    #@13
    .line 79
    iput-object p9, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@15
    .line 70
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/okhttp/HttpUrl;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "query"    # Ljava/lang/String;
    .param p8, "fragment"    # Ljava/lang/String;
    .param p9, "url"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct/range {p0 .. p9}, Lcom/android/okhttp/HttpUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private static decode(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;II)Ljava/lang/String;
    .locals 6
    .param p0, "out"    # Lcom/android/okhttp/okio/Buffer;
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 782
    move v3, p2

    #@2
    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_1

    #@4
    .line 783
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    #@7
    move-result v0

    #@8
    .line 784
    .local v0, "codePoint":I
    const/16 v4, 0x25

    #@a
    if-ne v0, v4, :cond_0

    #@c
    add-int/lit8 v4, v3, 0x2

    #@e
    if-ge v4, p3, :cond_0

    #@10
    .line 785
    add-int/lit8 v4, v3, 0x1

    #@12
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v4

    #@16
    invoke-static {v4}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    #@19
    move-result v1

    #@1a
    .line 786
    .local v1, "d1":I
    add-int/lit8 v4, v3, 0x2

    #@1c
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v4

    #@20
    invoke-static {v4}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    #@23
    move-result v2

    #@24
    .line 787
    .local v2, "d2":I
    if-eq v1, v5, :cond_0

    #@26
    if-eq v2, v5, :cond_0

    #@28
    .line 788
    shl-int/lit8 v4, v1, 0x4

    #@2a
    add-int/2addr v4, v2

    #@2b
    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@2e
    .line 789
    add-int/lit8 v3, v3, 0x2

    #@30
    .line 782
    .end local v1    # "d1":I
    .end local v2    # "d2":I
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@33
    move-result v4

    #@34
    add-int/2addr v3, v4

    #@35
    goto :goto_0

    #@36
    .line 793
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    #@39
    goto :goto_1

    #@3a
    .line 795
    .end local v0    # "codePoint":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    return-object v4
.end method

.method private static decode(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 767
    move v0, p1

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@3
    .line 768
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v2

    #@7
    const/16 v3, 0x25

    #@9
    if-ne v2, v3, :cond_0

    #@b
    .line 770
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    #@d
    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@10
    .line 771
    .local v1, "out":Lcom/android/okhttp/okio/Buffer;
    invoke-virtual {v1, p0, p1, v0}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    #@13
    .line 772
    invoke-static {v1, p0, v0, p2}, Lcom/android/okhttp/HttpUrl;->decode(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;II)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 767
    .end local v1    # "out":Lcom/android/okhttp/okio/Buffer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 777
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    return-object v2
.end method

.method private static decodeHexDigit(C)I
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 799
    const/16 v0, 0x30

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 800
    :cond_0
    const/16 v0, 0x61

    #@d
    if-lt p0, v0, :cond_1

    #@f
    const/16 v0, 0x66

    #@11
    if-gt p0, v0, :cond_1

    #@13
    add-int/lit8 v0, p0, -0x61

    #@15
    add-int/lit8 v0, v0, 0xa

    #@17
    return v0

    #@18
    .line 801
    :cond_1
    const/16 v0, 0x41

    #@1a
    if-lt p0, v0, :cond_2

    #@1c
    const/16 v0, 0x46

    #@1e
    if-gt p0, v0, :cond_2

    #@20
    add-int/lit8 v0, p0, -0x41

    #@22
    add-int/lit8 v0, v0, 0xa

    #@24
    return v0

    #@25
    .line 802
    :cond_2
    const/4 v0, -0x1

    #@26
    return v0
.end method

.method public static defaultPort(Ljava/lang/String;)I
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 155
    const-string/jumbo v0, "http"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 156
    const/16 v0, 0x50

    #@b
    return v0

    #@c
    .line 157
    :cond_0
    const-string/jumbo v0, "https"

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 158
    const/16 v0, 0x1bb

    #@17
    return v0

    #@18
    .line 160
    :cond_1
    const/4 v0, -0x1

    #@19
    return v0
.end method

.method static encode(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "encodeSet"    # Ljava/lang/String;

    #@0
    .prologue
    .line 817
    move v1, p1

    #@1
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    #@3
    .line 818
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    #@6
    move-result v0

    #@7
    .line 819
    .local v0, "codePoint":I
    const/16 v3, 0x20

    #@9
    if-lt v0, v3, :cond_0

    #@b
    .line 820
    const/16 v3, 0x7f

    #@d
    if-lt v0, v3, :cond_1

    #@f
    .line 823
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    .line 824
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p0, p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@17
    .line 825
    invoke-static {v2, p0, v1, p2, p3}, Lcom/android/okhttp/HttpUrl;->encode(Ljava/lang/StringBuilder;Ljava/lang/String;IILjava/lang/String;)V

    #@1a
    .line 826
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 821
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    #@22
    move-result v3

    #@23
    const/4 v4, -0x1

    #@24
    if-ne v3, v4, :cond_0

    #@26
    .line 817
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@29
    move-result v3

    #@2a
    add-int/2addr v1, v3

    #@2b
    goto :goto_0

    #@2c
    .line 831
    .end local v0    # "codePoint":I
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    return-object v3
.end method

.method static encode(Ljava/lang/StringBuilder;Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "encodeSet"    # Ljava/lang/String;

    #@0
    .prologue
    .line 835
    const/4 v3, 0x0

    #@1
    .line 837
    .local v3, "utf8Buffer":Lcom/android/okhttp/okio/Buffer;
    move v2, p2

    #@2
    .end local v3    # "utf8Buffer":Lcom/android/okhttp/okio/Buffer;
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_5

    #@4
    .line 838
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    #@7
    move-result v1

    #@8
    .line 839
    .local v1, "codePoint":I
    const/16 v4, 0x9

    #@a
    if-eq v1, v4, :cond_0

    #@c
    .line 840
    const/16 v4, 0xa

    #@e
    if-ne v1, v4, :cond_1

    #@10
    .line 837
    :cond_0
    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@13
    move-result v4

    #@14
    add-int/2addr v2, v4

    #@15
    goto :goto_0

    #@16
    .line 841
    :cond_1
    const/16 v4, 0xc

    #@18
    if-eq v1, v4, :cond_0

    #@1a
    .line 842
    const/16 v4, 0xd

    #@1c
    if-eq v1, v4, :cond_0

    #@1e
    .line 844
    const/16 v4, 0x20

    #@20
    if-lt v1, v4, :cond_2

    #@22
    .line 845
    const/16 v4, 0x7f

    #@24
    if-lt v1, v4, :cond_4

    #@26
    .line 848
    :cond_2
    if-nez v3, :cond_3

    #@28
    .line 849
    new-instance v3, Lcom/android/okhttp/okio/Buffer;

    #@2a
    invoke-direct {v3}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@2d
    .line 851
    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    #@30
    .line 852
    :goto_2
    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    #@33
    move-result v4

    #@34
    if-nez v4, :cond_0

    #@36
    .line 853
    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    #@39
    move-result v4

    #@3a
    and-int/lit16 v0, v4, 0xff

    #@3c
    .line 854
    .local v0, "b":I
    const/16 v4, 0x25

    #@3e
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 855
    sget-object v4, Lcom/android/okhttp/HttpUrl;->HEX_DIGITS:[C

    #@43
    shr-int/lit8 v5, v0, 0x4

    #@45
    and-int/lit8 v5, v5, 0xf

    #@47
    aget-char v4, v4, v5

    #@49
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    .line 856
    sget-object v4, Lcom/android/okhttp/HttpUrl;->HEX_DIGITS:[C

    #@4e
    and-int/lit8 v5, v0, 0xf

    #@50
    aget-char v4, v4, v5

    #@52
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    goto :goto_2

    #@56
    .line 846
    .end local v0    # "b":I
    :cond_4
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    #@59
    move-result v4

    #@5a
    const/4 v5, -0x1

    #@5b
    if-ne v4, v5, :cond_2

    #@5d
    .line 860
    int-to-char v4, v1

    #@5e
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@61
    goto :goto_1

    #@62
    .line 834
    .end local v1    # "codePoint":I
    :cond_5
    return-void
.end method

.method public static get(Ljava/net/URI;)Lcom/android/okhttp/HttpUrl;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 248
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static get(Ljava/net/URL;)Lcom/android/okhttp/HttpUrl;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 244
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 240
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1, p0}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method


# virtual methods
.method public decodeHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public decodePassword()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 114
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    #@7
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    #@9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x0

    #@e
    invoke-static {v0, v2, v1}, Lcom/android/okhttp/HttpUrl;->decode(Ljava/lang/String;II)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    :cond_0
    return-object v0
.end method

.method public decodePathSegments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 173
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 174
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    #@6
    .local v2, "segmentStart":I
    const/4 v0, 0x1

    #@7
    .line 175
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->path:Ljava/lang/String;

    #@9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@c
    move-result v3

    #@d
    if-ge v0, v3, :cond_1

    #@f
    .line 176
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->path:Ljava/lang/String;

    #@11
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v3

    #@15
    const/16 v4, 0x2f

    #@17
    if-ne v3, v4, :cond_0

    #@19
    .line 177
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->path:Ljava/lang/String;

    #@1b
    invoke-static {v3, v2, v0}, Lcom/android/okhttp/HttpUrl;->decode(Ljava/lang/String;II)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    .line 178
    add-int/lit8 v2, v0, 0x1

    #@24
    .line 175
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 181
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->path:Ljava/lang/String;

    #@29
    iget-object v4, p0, Lcom/android/okhttp/HttpUrl;->path:Ljava/lang/String;

    #@2b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@2e
    move-result v4

    #@2f
    invoke-static {v3, v2, v4}, Lcom/android/okhttp/HttpUrl;->decode(Ljava/lang/String;II)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    .line 182
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    #@39
    move-result-object v3

    #@3a
    return-object v3
.end method

.method public decodeUsername()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v0, v2, v1}, Lcom/android/okhttp/HttpUrl;->decode(Ljava/lang/String;II)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 252
    instance-of v0, p1, Lcom/android/okhttp/HttpUrl;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Lcom/android/okhttp/HttpUrl;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@8
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public fragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public host()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isHttps()Z
    .locals 2

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "https"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public newBuilder()Lcom/android/okhttp/HttpUrl$Builder;
    .locals 2

    #@0
    .prologue
    .line 232
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/HttpUrl$Builder;-><init>(Lcom/android/okhttp/HttpUrl;Lcom/android/okhttp/HttpUrl$Builder;)V

    #@6
    return-object v0
.end method

.method public password()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public port()I
    .locals 1

    #@0
    .prologue
    .line 147
    iget v0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    #@2
    return v0
.end method

.method public query()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->query:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public queryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public queryParameterName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 211
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public queryParameterNames()Ljava/util/Set;
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
    .line 203
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public queryParameterValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public queryParameterValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
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
    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public resolve(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .locals 1
    .param p1, "link"    # Ljava/lang/String;

    #@0
    .prologue
    .line 228
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    #@5
    invoke-virtual {v0, p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public scheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public uri()Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public url()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public username()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    #@2
    return-object v0
.end method
