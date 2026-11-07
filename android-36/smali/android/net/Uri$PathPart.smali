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
.field static final greylist-max-o EMPTY:Landroid/net/Uri$PathPart;

.field static final greylist-max-o NULL:Landroid/net/Uri$PathPart;


# instance fields
.field private greylist-max-o pathSegments:Landroid/net/Uri$PathSegments;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2174
    new-instance v0, Landroid/net/Uri$PathPart;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    .line 2177
    new-instance v0, Landroid/net/Uri$PathPart;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "decoded"    # Ljava/lang/String;

    .line 2180
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    return-void
.end method

.method static greylist-max-o appendDecodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .registers 4
    .param p0, "oldPart"    # Landroid/net/Uri$PathPart;
    .param p1, "decoded"    # Ljava/lang/String;

    .line 2267
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2270
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/net/Uri$PathPart;->appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v1

    return-object v1
.end method

.method static greylist-max-o appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .registers 7
    .param p0, "oldPart"    # Landroid/net/Uri$PathPart;
    .param p1, "newSegment"    # Ljava/lang/String;

    .line 2241
    const-string v0, "/"

    if-nez p0, :cond_1a

    .line 2243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    return-object v0

    .line 2246
    :cond_1a
    invoke-virtual {p0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v1

    .line 2248
    .local v1, "oldPath":Ljava/lang/String;
    if-nez v1, :cond_22

    .line 2249
    const-string v1, ""

    .line 2252
    :cond_22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2254
    .local v2, "oldPathLength":I
    if-nez v2, :cond_3a

    .line 2256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "newPath":Ljava/lang/String;
    goto :goto_6b

    .line 2257
    .end local v0    # "newPath":Ljava/lang/String;
    :cond_3a
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_56

    .line 2258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "newPath":Ljava/lang/String;
    goto :goto_6b

    .line 2260
    .end local v0    # "newPath":Ljava/lang/String;
    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2263
    .restart local v0    # "newPath":Ljava/lang/String;
    :goto_6b
    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v3

    return-object v3
.end method

.method static greylist-max-o from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .registers 3
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "decoded"    # Ljava/lang/String;

    .line 2298
    if-nez p0, :cond_5

    .line 2299
    sget-object v0, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    return-object v0

    .line 2302
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 2303
    sget-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    return-object v0

    .line 2306
    :cond_e
    new-instance v0, Landroid/net/Uri$PathPart;

    invoke-direct {v0, p0, p1}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static greylist-max-o fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .registers 2
    .param p0, "decoded"    # Ljava/lang/String;

    .line 2288
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .registers 2
    .param p0, "encoded"    # Ljava/lang/String;

    .line 2279
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o makeAbsolute(Landroid/net/Uri$PathPart;)Landroid/net/Uri$PathPart;
    .registers 9
    .param p0, "oldPart"    # Landroid/net/Uri$PathPart;

    .line 2315
    iget-object v0, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    sget-object v1, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v3

    .line 2319
    .local v0, "encodedCached":Z
    :goto_b
    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    goto :goto_12

    :cond_10
    iget-object v1, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    .line 2321
    .local v1, "oldPath":Ljava/lang/String;
    :goto_12
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_62

    .line 2322
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_62

    .line 2327
    :cond_23
    if-eqz v0, :cond_39

    .line 2328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3b

    :cond_39
    sget-object v5, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    .line 2332
    .local v5, "newEncoded":Ljava/lang/String;
    :goto_3b
    iget-object v6, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    sget-object v7, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq v6, v7, :cond_42

    goto :goto_43

    :cond_42
    move v2, v3

    .line 2333
    .local v2, "decodedCached":Z
    :goto_43
    if-eqz v2, :cond_59

    .line 2334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5b

    .line 2335
    :cond_59
    sget-object v3, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    :goto_5b
    nop

    .line 2337
    .local v3, "newDecoded":Ljava/lang/String;
    new-instance v4, Landroid/net/Uri$PathPart;

    invoke-direct {v4, v5, v3}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 2323
    .end local v2    # "decodedCached":Z
    .end local v3    # "newDecoded":Ljava/lang/String;
    .end local v5    # "newEncoded":Ljava/lang/String;
    :cond_62
    :goto_62
    return-object p0
.end method


# virtual methods
.method greylist-max-o getEncoded()Ljava/lang/String;
    .registers 4

    .line 2185
    iget-object v0, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    sget-object v1, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2188
    .local v0, "hasEncoded":Z
    :goto_9
    if-eqz v0, :cond_e

    iget-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    goto :goto_18

    :cond_e
    iget-object v1, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    const-string v2, "/"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    :goto_18
    return-object v1
.end method

.method greylist-max-o getPathSegments()Landroid/net/Uri$PathSegments;
    .registers 7

    .line 2204
    iget-object v0, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    if-eqz v0, :cond_7

    .line 2205
    iget-object v0, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    return-object v0

    .line 2208
    :cond_7
    invoke-virtual {p0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v0

    .line 2209
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_12

    .line 2210
    sget-object v1, Landroid/net/Uri$PathSegments;->EMPTY:Landroid/net/Uri$PathSegments;

    iput-object v1, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    return-object v1

    .line 2213
    :cond_12
    new-instance v1, Landroid/net/Uri$PathSegmentsBuilder;

    invoke-direct {v1}, Landroid/net/Uri$PathSegmentsBuilder;-><init>()V

    .line 2215
    .local v1, "segmentBuilder":Landroid/net/Uri$PathSegmentsBuilder;
    const/4 v2, 0x0

    .line 2217
    .local v2, "previous":I
    :goto_18
    const/16 v3, 0x2f

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    move v4, v3

    .local v4, "current":I
    const/4 v5, -0x1

    if-le v3, v5, :cond_33

    .line 2220
    if-ge v2, v4, :cond_30

    .line 2221
    nop

    .line 2222
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2223
    .local v3, "decodedSegment":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/net/Uri$PathSegmentsBuilder;->add(Ljava/lang/String;)V

    .line 2225
    .end local v3    # "decodedSegment":Ljava/lang/String;
    :cond_30
    add-int/lit8 v2, v4, 0x1

    goto :goto_18

    .line 2229
    :cond_33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 2230
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$PathSegmentsBuilder;->add(Ljava/lang/String;)V

    .line 2233
    :cond_44
    invoke-virtual {v1}, Landroid/net/Uri$PathSegmentsBuilder;->build()Landroid/net/Uri$PathSegments;

    move-result-object v3

    iput-object v3, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    return-object v3
.end method
