.class Landroid/net/Uri$PathPart;
.super Landroid/net/Uri$AbstractPart;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathPart"
.end annotation


# static fields
.field static final EMPTY:Landroid/net/Uri$PathPart;

.field static final NULL:Landroid/net/Uri$PathPart;


# instance fields
.field private pathSegments:Landroid/net/Uri$PathSegments;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2106
    new-instance v0, Landroid/net/Uri$PathPart;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    sput-object v0, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    #@8
    .line 2109
    new-instance v0, Landroid/net/Uri$PathPart;

    #@a
    const-string/jumbo v1, ""

    #@d
    const-string/jumbo v2, ""

    #@10
    invoke-direct {v0, v1, v2}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    sput-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    #@15
    .line 2103
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "decoded"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2112
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 2111
    return-void
.end method

.method static appendDecodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 2
    .param p0, "oldPart"    # Landroid/net/Uri$PathPart;
    .param p1, "decoded"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2199
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2202
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/net/Uri$PathPart;->appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method static appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 5
    .param p0, "oldPart"    # Landroid/net/Uri$PathPart;
    .param p1, "newSegment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2173
    if-nez p0, :cond_0

    #@2
    .line 2175
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "/"

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {v3}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 2178
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 2180
    .local v1, "oldPath":Ljava/lang/String;
    if-nez v1, :cond_1

    #@21
    .line 2181
    const-string/jumbo v1, ""

    #@24
    .line 2184
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@27
    move-result v2

    #@28
    .line 2186
    .local v2, "oldPathLength":I
    if-nez v2, :cond_2

    #@2a
    .line 2188
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "/"

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 2195
    .local v0, "newPath":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@41
    move-result-object v3

    #@42
    return-object v3

    #@43
    .line 2189
    .end local v0    # "newPath":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v2, -0x1

    #@45
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@48
    move-result v3

    #@49
    const/16 v4, 0x2f

    #@4b
    if-ne v3, v4, :cond_3

    #@4d
    .line 2190
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    .restart local v0    # "newPath":Ljava/lang/String;
    goto :goto_0

    #@5f
    .line 2192
    .end local v0    # "newPath":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    const-string/jumbo v4, "/"

    #@6b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    .restart local v0    # "newPath":Ljava/lang/String;
    goto :goto_0
.end method

.method static from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 1
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "decoded"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2244
    if-nez p0, :cond_0

    #@2
    .line 2245
    sget-object v0, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    #@4
    return-object v0

    #@5
    .line 2248
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 2249
    sget-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    #@d
    return-object v0

    #@e
    .line 2252
    :cond_1
    new-instance v0, Landroid/net/Uri$PathPart;

    #@10
    invoke-direct {v0, p0, p1}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    return-object v0
.end method

.method static fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 1
    .param p0, "decoded"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2234
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 1
    .param p0, "encoded"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2225
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static makeAbsolute(Landroid/net/Uri$PathPart;)Landroid/net/Uri$PathPart;
    .locals 7
    .param p0, "oldPart"    # Landroid/net/Uri$PathPart;

    #@0
    .prologue
    .line 2261
    iget-object v5, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    #@2
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@5
    move-result-object v6

    #@6
    if-eq v5, v6, :cond_1

    #@8
    const/4 v1, 0x1

    #@9
    .line 2265
    .local v1, "encodedCached":Z
    :goto_0
    if-eqz v1, :cond_2

    #@b
    iget-object v4, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    #@d
    .line 2267
    .local v4, "oldPath":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    #@f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@12
    move-result v5

    #@13
    if-nez v5, :cond_3

    #@15
    .line 2269
    :cond_0
    return-object p0

    #@16
    .line 2261
    .end local v1    # "encodedCached":Z
    .end local v4    # "oldPath":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@17
    .restart local v1    # "encodedCached":Z
    goto :goto_0

    #@18
    .line 2265
    :cond_2
    iget-object v4, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    #@1a
    .restart local v4    # "oldPath":Ljava/lang/String;
    goto :goto_1

    #@1b
    .line 2268
    :cond_3
    const-string/jumbo v5, "/"

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@21
    move-result v5

    #@22
    .line 2267
    if-nez v5, :cond_0

    #@24
    .line 2273
    if-eqz v1, :cond_4

    #@26
    .line 2274
    new-instance v5, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v6, "/"

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    iget-object v6, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 2278
    .local v3, "newEncoded":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    #@3e
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    if-eq v5, v6, :cond_5

    #@44
    const/4 v0, 0x1

    #@45
    .line 2279
    .local v0, "decodedCached":Z
    :goto_3
    if-eqz v0, :cond_6

    #@47
    .line 2280
    new-instance v5, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v6, "/"

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    iget-object v6, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    .line 2283
    .local v2, "newDecoded":Ljava/lang/String;
    :goto_4
    new-instance v5, Landroid/net/Uri$PathPart;

    #@5f
    invoke-direct {v5, v3, v2}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@62
    return-object v5

    #@63
    .line 2274
    .end local v0    # "decodedCached":Z
    .end local v2    # "newDecoded":Ljava/lang/String;
    .end local v3    # "newEncoded":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    .restart local v3    # "newEncoded":Ljava/lang/String;
    goto :goto_2

    #@68
    .line 2278
    :cond_5
    const/4 v0, 0x0

    #@69
    .restart local v0    # "decodedCached":Z
    goto :goto_3

    #@6a
    .line 2281
    :cond_6
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@6d
    move-result-object v2

    #@6e
    .restart local v2    # "newDecoded":Ljava/lang/String;
    goto :goto_4
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri$PathPart;
    .locals 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2206
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2207
    .local v0, "representation":I
    packed-switch v0, :pswitch_data_0

    #@7
    .line 2215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Bad representation: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 2209
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@2c
    move-result-object v1

    #@2d
    return-object v1

    #@2e
    .line 2211
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-static {v1}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@35
    move-result-object v1

    #@36
    return-object v1

    #@37
    .line 2213
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v1}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@3e
    move-result-object v1

    #@3f
    return-object v1

    #@40
    .line 2207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method getEncoded()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2117
    iget-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    #@2
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    if-eq v1, v2, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .line 2120
    .local v0, "hasEncoded":Z
    :goto_0
    if-eqz v0, :cond_1

    #@b
    iget-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    #@d
    :goto_1
    return-object v1

    #@e
    .line 2117
    .end local v0    # "hasEncoded":Z
    :cond_0
    const/4 v0, 0x0

    #@f
    .restart local v0    # "hasEncoded":Z
    goto :goto_0

    #@10
    .line 2120
    :cond_1
    iget-object v1, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    #@12
    const-string/jumbo v2, "/"

    #@15
    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    #@1b
    goto :goto_1
.end method

.method getPathSegments()Landroid/net/Uri$PathSegments;
    .locals 6

    #@0
    .prologue
    .line 2136
    iget-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 2137
    iget-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    #@6
    return-object v5

    #@7
    .line 2140
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 2141
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_1

    #@d
    .line 2142
    sget-object v5, Landroid/net/Uri$PathSegments;->EMPTY:Landroid/net/Uri$PathSegments;

    #@f
    iput-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    #@11
    return-object v5

    #@12
    .line 2145
    :cond_1
    new-instance v4, Landroid/net/Uri$PathSegmentsBuilder;

    #@14
    invoke-direct {v4}, Landroid/net/Uri$PathSegmentsBuilder;-><init>()V

    #@17
    .line 2147
    .local v4, "segmentBuilder":Landroid/net/Uri$PathSegmentsBuilder;
    const/4 v3, 0x0

    #@18
    .line 2149
    .local v3, "previous":I
    :goto_0
    const/16 v5, 0x2f

    #@1a
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->indexOf(II)I

    #@1d
    move-result v0

    #@1e
    .local v0, "current":I
    const/4 v5, -0x1

    #@1f
    if-le v0, v5, :cond_3

    #@21
    .line 2152
    if-ge v3, v0, :cond_2

    #@23
    .line 2154
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 2155
    .local v1, "decodedSegment":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/net/Uri$PathSegmentsBuilder;->add(Ljava/lang/String;)V

    #@2e
    .line 2157
    .end local v1    # "decodedSegment":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 2161
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@34
    move-result v5

    #@35
    if-ge v3, v5, :cond_4

    #@37
    .line 2162
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v4, v5}, Landroid/net/Uri$PathSegmentsBuilder;->add(Ljava/lang/String;)V

    #@42
    .line 2165
    :cond_4
    invoke-virtual {v4}, Landroid/net/Uri$PathSegmentsBuilder;->build()Landroid/net/Uri$PathSegments;

    #@45
    move-result-object v5

    #@46
    iput-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    #@48
    return-object v5
.end method
