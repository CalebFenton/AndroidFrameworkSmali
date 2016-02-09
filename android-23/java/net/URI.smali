.class public final Ljava/net/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URI$PartEncoder;,
        Ljava/net/URI$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/net/URI;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

.field private static final ASCII_ONLY:Llibcore/net/UriCodec;

.field static final AUTHORITY_ENCODER:Llibcore/net/UriCodec;

.field static final FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec;

.field static final PATH_ENCODER:Llibcore/net/UriCodec;

.field static final PUNCTUATION:Ljava/lang/String; = ",;:$&+="

.field static final UNRESERVED:Ljava/lang/String; = "_-!.~\'()*"

.field static final USER_INFO_ENCODER:Llibcore/net/UriCodec;

.field private static final serialVersionUID:J = -0x53fe87d1bc61b655L


# instance fields
.field private transient absolute:Z

.field private transient authority:Ljava/lang/String;

.field private transient fragment:Ljava/lang/String;

.field private transient hash:I

.field private transient host:Ljava/lang/String;

.field private transient opaque:Z

.field private transient path:Ljava/lang/String;

.field private transient port:I

.field private transient query:Ljava/lang/String;

.field private transient scheme:Ljava/lang/String;

.field private transient schemeSpecificPart:Ljava/lang/String;

.field private transient serverAuthority:Z

.field private string:Ljava/lang/String;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 139
    new-instance v0, Ljava/net/URI$PartEncoder;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/net/URI;->USER_INFO_ENCODER:Llibcore/net/UriCodec;

    #@a
    .line 140
    new-instance v0, Ljava/net/URI$PartEncoder;

    #@c
    const-string/jumbo v1, "/@"

    #@f
    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    #@14
    .line 141
    new-instance v0, Ljava/net/URI$PartEncoder;

    #@16
    const-string/jumbo v1, "@[]"

    #@19
    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    #@1e
    .line 144
    new-instance v0, Ljava/net/URI$PartEncoder;

    #@20
    const-string/jumbo v1, "/@?"

    #@23
    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Ljava/net/URI;->FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec;

    #@28
    .line 147
    new-instance v0, Ljava/net/URI$PartEncoder;

    #@2a
    const-string/jumbo v1, "?/[]@"

    #@2d
    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    #@32
    .line 150
    new-instance v0, Ljava/net/URI$1;

    #@34
    invoke-direct {v0}, Ljava/net/URI$1;-><init>()V

    #@37
    sput-object v0, Ljava/net/URI;->ASCII_ONLY:Llibcore/net/UriCodec;

    #@39
    .line 132
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 186
    iput v1, p0, Ljava/net/URI;->port:I

    #@6
    .line 192
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    #@9
    .line 194
    iput v1, p0, Ljava/net/URI;->hash:I

    #@b
    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 186
    iput v0, p0, Ljava/net/URI;->port:I

    #@7
    .line 192
    iput-boolean v1, p0, Ljava/net/URI;->serverAuthority:Z

    #@9
    .line 194
    iput v0, p0, Ljava/net/URI;->hash:I

    #@b
    .line 204
    invoke-direct {p0, p1, v1}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    #@e
    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "schemeSpecificPart"    # Ljava/lang/String;
    .param p3, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 186
    iput v1, p0, Ljava/net/URI;->port:I

    #@7
    .line 192
    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    #@9
    .line 194
    iput v1, p0, Ljava/net/URI;->hash:I

    #@b
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 215
    .local v0, "uri":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    #@12
    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 217
    const/16 v1, 0x3a

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 219
    :cond_0
    if-eqz p2, :cond_1

    #@1c
    .line 220
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    #@1e
    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@21
    .line 222
    :cond_1
    if-eqz p3, :cond_2

    #@23
    .line 223
    const/16 v1, 0x23

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 224
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    #@2a
    invoke-virtual {v1, v0, p3}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@2d
    .line 227
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    #@34
    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .param p7, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/16 v4, 0x3a

    #@3
    const/4 v3, -0x1

    #@4
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 186
    iput v3, p0, Ljava/net/URI;->port:I

    #@9
    .line 192
    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    #@b
    .line 194
    iput v3, p0, Ljava/net/URI;->hash:I

    #@d
    .line 237
    if-nez p1, :cond_0

    #@f
    if-nez p2, :cond_0

    #@11
    if-nez p3, :cond_0

    #@13
    if-nez p5, :cond_0

    #@15
    .line 238
    if-nez p6, :cond_0

    #@17
    if-nez p7, :cond_0

    #@19
    .line 239
    const-string/jumbo v1, ""

    #@1c
    iput-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@1e
    .line 240
    return-void

    #@1f
    .line 243
    :cond_0
    if-eqz p1, :cond_1

    #@21
    if-eqz p5, :cond_1

    #@23
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_c

    #@29
    .line 247
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    .line 248
    .local v0, "uri":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    #@30
    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 250
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    .line 253
    :cond_2
    if-nez p2, :cond_3

    #@38
    if-eqz p3, :cond_d

    #@3a
    .line 254
    :cond_3
    :goto_0
    const-string/jumbo v1, "//"

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 257
    :cond_4
    if-eqz p2, :cond_5

    #@42
    .line 258
    sget-object v1, Ljava/net/URI;->USER_INFO_ENCODER:Llibcore/net/UriCodec;

    #@44
    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@47
    .line 259
    const/16 v1, 0x40

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    .line 262
    :cond_5
    if-eqz p3, :cond_7

    #@4e
    .line 264
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    #@51
    move-result v1

    #@52
    if-eq v1, v3, :cond_6

    #@54
    const/16 v1, 0x5d

    #@56
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    #@59
    move-result v1

    #@5a
    if-ne v1, v3, :cond_6

    #@5c
    const/16 v1, 0x5b

    #@5e
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    #@61
    move-result v1

    #@62
    if-ne v1, v3, :cond_6

    #@64
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v2, "["

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    const-string/jumbo v2, "]"

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object p3

    #@7f
    .line 267
    :cond_6
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    .line 270
    :cond_7
    if-eq p4, v3, :cond_8

    #@84
    .line 271
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@87
    .line 272
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    .line 275
    :cond_8
    if-eqz p5, :cond_9

    #@8c
    .line 276
    sget-object v1, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    #@8e
    invoke-virtual {v1, v0, p5}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@91
    .line 279
    :cond_9
    if-eqz p6, :cond_a

    #@93
    .line 280
    const/16 v1, 0x3f

    #@95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@98
    .line 281
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    #@9a
    invoke-virtual {v1, v0, p6}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@9d
    .line 284
    :cond_a
    if-eqz p7, :cond_b

    #@9f
    .line 285
    const/16 v1, 0x23

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a4
    .line 286
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    #@a6
    invoke-virtual {v1, v0, p7}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@a9
    .line 289
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    const/4 v2, 0x1

    #@ae
    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    #@b1
    .line 236
    return-void

    #@b2
    .line 243
    .end local v0    # "uri":Ljava/lang/StringBuilder;
    :cond_c
    invoke-virtual {p5, v2}, Ljava/lang/String;->charAt(I)C

    #@b5
    move-result v1

    #@b6
    const/16 v2, 0x2f

    #@b8
    if-eq v1, v2, :cond_1

    #@ba
    .line 244
    new-instance v1, Ljava/net/URISyntaxException;

    #@bc
    const-string/jumbo v2, "Relative path"

    #@bf
    invoke-direct {v1, p5, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c2
    throw v1

    #@c3
    .line 253
    .restart local v0    # "uri":Ljava/lang/StringBuilder;
    :cond_d
    if-eq p4, v3, :cond_4

    #@c5
    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 298
    const/4 v4, -0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v3, p2

    #@5
    move-object v5, p3

    #@6
    move-object v6, v2

    #@7
    move-object v7, p4

    #@8
    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 297
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 186
    iput v1, p0, Ljava/net/URI;->port:I

    #@7
    .line 192
    iput-boolean v3, p0, Ljava/net/URI;->serverAuthority:Z

    #@9
    .line 194
    iput v1, p0, Ljava/net/URI;->hash:I

    #@b
    .line 308
    if-eqz p1, :cond_0

    #@d
    if-eqz p3, :cond_0

    #@f
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_6

    #@15
    .line 312
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    .line 313
    .local v0, "uri":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    #@1c
    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 315
    const/16 v1, 0x3a

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 317
    :cond_1
    if-eqz p2, :cond_2

    #@26
    .line 318
    const-string/jumbo v1, "//"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 319
    sget-object v1, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    #@2e
    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@31
    .line 322
    :cond_2
    if-eqz p3, :cond_3

    #@33
    .line 323
    sget-object v1, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    #@35
    invoke-virtual {v1, v0, p3}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@38
    .line 325
    :cond_3
    if-eqz p4, :cond_4

    #@3a
    .line 326
    const/16 v1, 0x3f

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    .line 327
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    #@41
    invoke-virtual {v1, v0, p4}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@44
    .line 329
    :cond_4
    if-eqz p5, :cond_5

    #@46
    .line 330
    const/16 v1, 0x23

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4b
    .line 331
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    #@4d
    invoke-virtual {v1, v0, p5}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@50
    .line 334
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-direct {p0, v1, v3}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    #@57
    .line 307
    return-void

    #@58
    .line 308
    .end local v0    # "uri":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    #@5b
    move-result v1

    #@5c
    const/16 v2, 0x2f

    #@5e
    if-eq v1, v2, :cond_0

    #@60
    .line 309
    new-instance v1, Ljava/net/URISyntaxException;

    #@62
    const-string/jumbo v2, "Relative path"

    #@65
    invoke-direct {v1, p3, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@68
    throw v1
.end method

.method private convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x25

    #@2
    const/4 v5, -0x1

    #@3
    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    const-string/jumbo v3, ""

    #@8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b
    .line 760
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v3

    #@f
    if-ne v3, v5, :cond_0

    #@11
    .line 761
    return-object p1

    #@12
    .line 764
    :cond_0
    const/4 v1, 0x0

    #@13
    .line 765
    .local v1, "prevIndex":I
    :goto_0
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    #@16
    move-result v0

    #@17
    .local v0, "index":I
    if-eq v0, v5, :cond_1

    #@19
    .line 766
    add-int/lit8 v3, v0, 0x1

    #@1b
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 767
    add-int/lit8 v3, v0, 0x1

    #@24
    add-int/lit8 v4, v0, 0x3

    #@26
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 768
    add-int/lit8 v0, v0, 0x3

    #@35
    .line 769
    move v1, v0

    #@36
    goto :goto_0

    #@37
    .line 771
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    return-object v3
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 731
    :try_start_0
    new-instance v1, Ljava/net/URI;

    #@2
    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 732
    :catch_0
    move-exception v0

    #@7
    .line 733
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1267
    if-eqz p1, :cond_0

    #@3
    invoke-static {p1}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :cond_0
    return-object v0
.end method

.method private duplicate()Ljava/net/URI;
    .locals 2

    #@0
    .prologue
    .line 738
    new-instance v0, Ljava/net/URI;

    #@2
    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    #@5
    .line 739
    .local v0, "clone":Ljava/net/URI;
    iget-boolean v1, p0, Ljava/net/URI;->absolute:Z

    #@7
    iput-boolean v1, v0, Ljava/net/URI;->absolute:Z

    #@9
    .line 740
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@b
    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@d
    .line 741
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@f
    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@11
    .line 742
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@13
    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    #@15
    .line 743
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    #@17
    iput-boolean v1, v0, Ljava/net/URI;->opaque:Z

    #@19
    .line 744
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@1b
    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    #@1d
    .line 745
    iget v1, p0, Ljava/net/URI;->port:I

    #@1f
    iput v1, v0, Ljava/net/URI;->port:I

    #@21
    .line 746
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@23
    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    #@25
    .line 747
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@27
    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@29
    .line 748
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@2b
    iput-object v1, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@2d
    .line 749
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@2f
    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@31
    .line 750
    iget-boolean v1, p0, Ljava/net/URI;->serverAuthority:Z

    #@33
    iput-boolean v1, v0, Ljava/net/URI;->serverAuthority:Z

    #@35
    .line 751
    return-object v0
.end method

.method private escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "second"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v10, 0x25

    #@2
    const/4 v9, 0x0

    #@3
    .line 788
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@a
    move-result v1

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 789
    return v9

    #@e
    .line 792
    :cond_0
    const/4 v8, 0x0

    #@f
    .line 794
    .local v8, "prevIndex":I
    :goto_0
    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->indexOf(II)I

    #@12
    move-result v6

    #@13
    .line 795
    .local v6, "index":I
    invoke-virtual {p2, v10, v8}, Ljava/lang/String;->indexOf(II)I

    #@16
    move-result v7

    #@17
    .line 796
    .local v7, "index1":I
    if-eq v6, v7, :cond_1

    #@19
    .line 797
    return v9

    #@1a
    .line 802
    :cond_1
    const/4 v0, -0x1

    #@1b
    if-ne v6, v0, :cond_2

    #@1d
    .line 806
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@20
    move-result v0

    #@21
    sub-int/2addr v0, v8

    #@22
    .line 805
    invoke-virtual {p1, v8, p2, v8, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@25
    move-result v0

    #@26
    return v0

    #@27
    .line 809
    :cond_2
    sub-int v0, v6, v8

    #@29
    invoke-virtual {p1, v8, p2, v8, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_3

    #@2f
    .line 810
    return v9

    #@30
    .line 813
    :cond_3
    add-int/lit8 v2, v6, 0x1

    #@32
    add-int/lit8 v4, v6, 0x1

    #@34
    const/4 v1, 0x1

    #@35
    const/4 v5, 0x2

    #@36
    move-object v0, p1

    #@37
    move-object v3, p2

    #@38
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_4

    #@3e
    .line 814
    return v9

    #@3f
    .line 817
    :cond_4
    add-int/lit8 v6, v6, 0x3

    #@41
    .line 818
    move v8, v6

    #@42
    goto :goto_0
.end method

.method public static getEffectivePort(Ljava/lang/String;I)I
    .locals 2
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "specifiedPort"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 985
    if-eq p1, v1, :cond_0

    #@3
    .line 986
    return p1

    #@4
    .line 989
    :cond_0
    const-string/jumbo v0, "http"

    #@7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 990
    const/16 v0, 0x50

    #@f
    return v0

    #@10
    .line 991
    :cond_1
    const-string/jumbo v0, "https"

    #@13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 992
    const/16 v0, 0x1bb

    #@1b
    return v0

    #@1c
    .line 994
    :cond_2
    return v1
.end method

.method private getHashString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1329
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1330
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@b
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 1331
    const/16 v1, 0x3a

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    .line 1333
    :cond_0
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    #@1b
    if-eqz v1, :cond_3

    #@1d
    .line 1334
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 1361
    :cond_1
    :goto_0
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 1362
    const/16 v1, 0x23

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    .line 1363
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 1366
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {p0, v1}, Ljava/net/URI;->convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    return-object v1

    #@39
    .line 1336
    :cond_3
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@3b
    if-eqz v1, :cond_4

    #@3d
    .line 1337
    const-string/jumbo v1, "//"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 1338
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@45
    if-nez v1, :cond_6

    #@47
    .line 1339
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 1351
    :cond_4
    :goto_1
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@4e
    if-eqz v1, :cond_5

    #@50
    .line 1352
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 1355
    :cond_5
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@57
    if-eqz v1, :cond_1

    #@59
    .line 1356
    const/16 v1, 0x3f

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5e
    .line 1357
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    goto :goto_0

    #@64
    .line 1341
    :cond_6
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@66
    if-eqz v1, :cond_7

    #@68
    .line 1342
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    const-string/jumbo v2, "@"

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 1344
    :cond_7
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@76
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    .line 1345
    iget v1, p0, Ljava/net/URI;->port:I

    #@81
    const/4 v2, -0x1

    #@82
    if-eq v1, v2, :cond_4

    #@84
    .line 1346
    const-string/jumbo v1, ":"

    #@87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    iget v2, p0, Ljava/net/URI;->port:I

    #@8d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    goto :goto_1
.end method

.method private isValidDomainName(Ljava/lang/String;)Z
    .locals 9
    .param p1, "host"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 577
    :try_start_0
    const-string/jumbo v4, "_-."

    #@4
    invoke-static {p1, v4}, Llibcore/net/UriCodec;->validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 582
    const/4 v2, 0x0

    #@8
    .line 583
    .local v2, "lastLabel":Ljava/lang/String;
    const-string/jumbo v4, "\\."

    #@b
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    array-length v7, v6

    #@10
    move v4, v5

    #@11
    .end local v2    # "lastLabel":Ljava/lang/String;
    :goto_0
    if-ge v4, v7, :cond_2

    #@13
    aget-object v3, v6, v4

    #@15
    .line 584
    .local v3, "token":Ljava/lang/String;
    move-object v2, v3

    #@16
    .line 585
    .local v2, "lastLabel":Ljava/lang/String;
    const-string/jumbo v8, "-"

    #@19
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1c
    move-result v8

    #@1d
    if-nez v8, :cond_0

    #@1f
    const-string/jumbo v8, "-"

    #@22
    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@25
    move-result v8

    #@26
    if-eqz v8, :cond_1

    #@28
    .line 586
    :cond_0
    return v5

    #@29
    .line 578
    .end local v2    # "lastLabel":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@2a
    .line 579
    .local v1, "e":Ljava/net/URISyntaxException;
    return v5

    #@2b
    .line 583
    .end local v1    # "e":Ljava/net/URISyntaxException;
    .restart local v2    # "lastLabel":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 590
    .end local v2    # "lastLabel":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_3

    #@30
    .line 591
    return v5

    #@31
    .line 594
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v4

    #@35
    if-nez v4, :cond_4

    #@37
    .line 595
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v0

    #@3b
    .line 596
    .local v0, "ch":C
    const/16 v4, 0x30

    #@3d
    if-lt v0, v4, :cond_4

    #@3f
    const/16 v4, 0x39

    #@41
    if-gt v0, v4, :cond_4

    #@43
    .line 597
    return v5

    #@44
    .line 600
    .end local v0    # "ch":C
    :cond_4
    const/4 v4, 0x1

    #@45
    return v4
.end method

.method private isValidHost(ZLjava/lang/String;)Z
    .locals 7
    .param p1, "forceServer"    # Z
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 524
    const-string/jumbo v3, "["

    #@6
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 526
    const-string/jumbo v3, "]"

    #@f
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_0

    #@15
    .line 527
    new-instance v3, Ljava/net/URISyntaxException;

    #@17
    .line 528
    const-string/jumbo v4, "Expected a closing square bracket for IPv6 address"

    #@1a
    .line 527
    invoke-direct {v3, p2, v4, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@1d
    throw v3

    #@1e
    .line 530
    :cond_0
    invoke-static {p2}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 533
    return v4

    #@25
    .line 535
    :cond_1
    new-instance v3, Ljava/net/URISyntaxException;

    #@27
    const-string/jumbo v4, "Malformed IPv6 address"

    #@2a
    invoke-direct {v3, p2, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    throw v3

    #@2e
    .line 540
    :cond_2
    const/16 v3, 0x5b

    #@30
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    #@33
    move-result v3

    #@34
    if-ne v3, v6, :cond_3

    #@36
    const/16 v3, 0x5d

    #@38
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    #@3b
    move-result v3

    #@3c
    if-eq v3, v6, :cond_4

    #@3e
    .line 541
    :cond_3
    new-instance v3, Ljava/net/URISyntaxException;

    #@40
    const-string/jumbo v4, "Illegal character in host name"

    #@43
    invoke-direct {v3, p2, v4, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@46
    throw v3

    #@47
    .line 544
    :cond_4
    const/16 v3, 0x2e

    #@49
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@4c
    move-result v2

    #@4d
    .line 545
    .local v2, "index":I
    if-ltz v2, :cond_5

    #@4f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@52
    move-result v3

    #@53
    add-int/lit8 v3, v3, -0x1

    #@55
    if-ne v2, v3, :cond_6

    #@57
    .line 548
    :cond_5
    invoke-direct {p0, p2}, Ljava/net/URI;->isValidDomainName(Ljava/lang/String;)Z

    #@5a
    move-result v3

    #@5b
    if-eqz v3, :cond_7

    #@5d
    .line 549
    return v4

    #@5e
    .line 546
    :cond_6
    add-int/lit8 v3, v2, 0x1

    #@60
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@63
    move-result v3

    #@64
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    #@67
    move-result v3

    #@68
    if-eqz v3, :cond_5

    #@6a
    .line 559
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@6d
    move-result-object v0

    #@6e
    .line 560
    .local v0, "ia":Ljava/net/InetAddress;
    instance-of v3, v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@70
    if-eqz v3, :cond_9

    #@72
    .line 561
    return v4

    #@73
    .line 551
    .end local v0    # "ia":Ljava/net/InetAddress;
    :cond_7
    if-eqz p1, :cond_8

    #@75
    .line 552
    new-instance v3, Ljava/net/URISyntaxException;

    #@77
    const-string/jumbo v4, "Illegal character in host name"

    #@7a
    invoke-direct {v3, p2, v4, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@7d
    throw v3

    #@7e
    .line 554
    :cond_8
    return v5

    #@7f
    .line 563
    :catch_0
    move-exception v1

    #@80
    .line 566
    :cond_9
    if-eqz p1, :cond_a

    #@82
    .line 567
    new-instance v3, Ljava/net/URISyntaxException;

    #@84
    const-string/jumbo v4, "Malformed IPv4 address"

    #@87
    invoke-direct {v3, p2, v4, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@8a
    throw v3

    #@8b
    .line 569
    :cond_a
    return v5
.end method

.method private normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "discardRelativePrefix"    # Z

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1071
    invoke-static {p1, p2}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object p1

    #@5
    .line 1077
    const/16 v2, 0x3a

    #@7
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v0

    #@b
    .line 1078
    .local v0, "colon":I
    if-eq v0, v3, :cond_1

    #@d
    .line 1079
    const/16 v2, 0x2f

    #@f
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@12
    move-result v1

    #@13
    .line 1080
    .local v1, "slash":I
    if-eq v1, v3, :cond_0

    #@15
    if-ge v0, v1, :cond_1

    #@17
    .line 1081
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "./"

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object p1

    #@2b
    .line 1085
    .end local v1    # "slash":I
    :cond_1
    return-object p1
.end method

.method private parseAuthority(Z)V
    .locals 13
    .param p1, "forceServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 437
    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@4
    if-nez v9, :cond_0

    #@6
    .line 438
    return-void

    #@7
    .line 441
    :cond_0
    const/4 v8, 0x0

    #@8
    .line 442
    .local v8, "tempUserInfo":Ljava/lang/String;
    iget-object v5, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@a
    .line 443
    .local v5, "temp":Ljava/lang/String;
    const/16 v9, 0x40

    #@c
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v4

    #@10
    .line 444
    .local v4, "index":I
    const/4 v3, 0x0

    #@11
    .line 445
    .local v3, "hostIndex":I
    if-eq v4, v11, :cond_1

    #@13
    .line 447
    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v8

    #@17
    .line 448
    .local v8, "tempUserInfo":Ljava/lang/String;
    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@19
    invoke-direct {p0, v9, v8, v10}, Ljava/net/URI;->validateUserInfo(Ljava/lang/String;Ljava/lang/String;I)V

    #@1c
    .line 449
    add-int/lit8 v9, v4, 0x1

    #@1e
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    .line 450
    add-int/lit8 v3, v4, 0x1

    #@24
    .line 453
    .end local v8    # "tempUserInfo":Ljava/lang/String;
    :cond_1
    const/16 v9, 0x3a

    #@26
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(I)I

    #@29
    move-result v4

    #@2a
    .line 454
    const/16 v9, 0x5d

    #@2c
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    #@2f
    move-result v1

    #@30
    .line 457
    .local v1, "endIndex":I
    const/4 v7, -0x1

    #@31
    .line 458
    .local v7, "tempPort":I
    if-eq v4, v11, :cond_6

    #@33
    if-ge v1, v4, :cond_6

    #@35
    .line 460
    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    .line 462
    .local v6, "tempHost":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@3c
    move-result v9

    #@3d
    add-int/lit8 v9, v9, -0x1

    #@3f
    if-ge v4, v9, :cond_2

    #@41
    .line 464
    add-int/lit8 v9, v4, 0x1

    #@43
    :try_start_0
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    #@46
    move-result v2

    #@47
    .line 465
    .local v2, "firstPortChar":C
    const/16 v9, 0x30

    #@49
    if-lt v2, v9, :cond_3

    #@4b
    const/16 v9, 0x39

    #@4d
    if-gt v2, v9, :cond_3

    #@4f
    .line 467
    add-int/lit8 v9, v4, 0x1

    #@51
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@54
    move-result-object v9

    #@55
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    move-result v7

    #@59
    .line 487
    .end local v2    # "firstPortChar":C
    :cond_2
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@5c
    move-result v9

    #@5d
    if-eqz v9, :cond_8

    #@5f
    .line 488
    if-eqz p1, :cond_7

    #@61
    .line 489
    new-instance v9, Ljava/net/URISyntaxException;

    #@63
    iget-object v10, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@65
    const-string/jumbo v11, "Expected host"

    #@68
    invoke-direct {v9, v10, v11, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@6b
    throw v9

    #@6c
    .line 469
    .restart local v2    # "firstPortChar":C
    :cond_3
    if-eqz p1, :cond_4

    #@6e
    .line 470
    :try_start_1
    new-instance v9, Ljava/net/URISyntaxException;

    #@70
    iget-object v10, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@72
    .line 471
    const-string/jumbo v11, "Invalid port number"

    #@75
    add-int v12, v3, v4

    #@77
    add-int/lit8 v12, v12, 0x1

    #@79
    .line 470
    invoke-direct {v9, v10, v11, v12}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@7c
    throw v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@7d
    .line 475
    .end local v2    # "firstPortChar":C
    :catch_0
    move-exception v0

    #@7e
    .line 476
    .local v0, "e":Ljava/lang/NumberFormatException;
    if-eqz p1, :cond_5

    #@80
    .line 477
    new-instance v9, Ljava/net/URISyntaxException;

    #@82
    iget-object v10, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@84
    .line 478
    const-string/jumbo v11, "Invalid port number"

    #@87
    add-int v12, v3, v4

    #@89
    add-int/lit8 v12, v12, 0x1

    #@8b
    .line 477
    invoke-direct {v9, v10, v11, v12}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@8e
    throw v9

    #@8f
    .line 473
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "firstPortChar":C
    :cond_4
    return-void

    #@90
    .line 480
    .end local v2    # "firstPortChar":C
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    return-void

    #@91
    .line 484
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "tempHost":Ljava/lang/String;
    :cond_6
    move-object v6, v5

    #@92
    .restart local v6    # "tempHost":Ljava/lang/String;
    goto :goto_0

    #@93
    .line 491
    :cond_7
    return-void

    #@94
    .line 494
    :cond_8
    invoke-direct {p0, p1, v6}, Ljava/net/URI;->isValidHost(ZLjava/lang/String;)Z

    #@97
    move-result v9

    #@98
    if-nez v9, :cond_9

    #@9a
    .line 495
    return-void

    #@9b
    .line 500
    :cond_9
    iput-object v8, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@9d
    .line 501
    iput-object v6, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@9f
    .line 502
    iput v7, p0, Ljava/net/URI;->port:I

    #@a1
    .line 503
    const/4 v9, 0x1

    #@a2
    iput-boolean v9, p0, Ljava/net/URI;->serverAuthority:Z

    #@a4
    .line 436
    return-void
.end method

.method private parseURI(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "forceServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 350
    iput-object p1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@4
    .line 353
    const-string/jumbo v6, "#"

    #@7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v7

    #@b
    invoke-static {p1, v6, v10, v7}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    #@e
    move-result v3

    #@f
    .line 354
    .local v3, "fragmentStart":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@12
    move-result v6

    #@13
    if-ge v3, v6, :cond_0

    #@15
    .line 355
    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    #@17
    add-int/lit8 v7, v3, 0x1

    #@19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1c
    move-result v8

    #@1d
    const-string/jumbo v9, "fragment"

    #@20
    invoke-virtual {v6, p1, v7, v8, v9}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    iput-object v6, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@26
    .line 360
    :cond_0
    const-string/jumbo v6, ":"

    #@29
    invoke-static {p1, v6, v10, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    #@2c
    move-result v1

    #@2d
    .line 361
    .local v1, "colon":I
    const-string/jumbo v6, "/?#"

    #@30
    invoke-static {p1, v6, v10, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    #@33
    move-result v6

    #@34
    if-ge v1, v6, :cond_2

    #@36
    .line 362
    iput-boolean v11, p0, Ljava/net/URI;->absolute:Z

    #@38
    .line 363
    invoke-direct {p0, p1, v1}, Ljava/net/URI;->validateScheme(Ljava/lang/String;I)Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    iput-object v6, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@3e
    .line 364
    add-int/lit8 v5, v1, 0x1

    #@40
    .line 366
    .local v5, "start":I
    if-ne v5, v3, :cond_1

    #@42
    .line 367
    new-instance v6, Ljava/net/URISyntaxException;

    #@44
    const-string/jumbo v7, "Scheme-specific part expected"

    #@47
    invoke-direct {v6, p1, v7, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@4a
    throw v6

    #@4b
    .line 371
    :cond_1
    const-string/jumbo v6, "/"

    #@4e
    invoke-virtual {p1, v5, v6, v10, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@51
    move-result v6

    #@52
    if-nez v6, :cond_3

    #@54
    .line 372
    iput-boolean v11, p0, Ljava/net/URI;->opaque:Z

    #@56
    .line 373
    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    #@58
    .line 374
    const-string/jumbo v7, "scheme specific part"

    #@5b
    .line 373
    invoke-virtual {v6, p1, v5, v3, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    iput-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@61
    .line 375
    return-void

    #@62
    .line 378
    .end local v5    # "start":I
    :cond_2
    iput-boolean v10, p0, Ljava/net/URI;->absolute:Z

    #@64
    .line 379
    const/4 v5, 0x0

    #@65
    .line 382
    .restart local v5    # "start":I
    :cond_3
    iput-boolean v10, p0, Ljava/net/URI;->opaque:Z

    #@67
    .line 383
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    iput-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@6d
    .line 387
    const-string/jumbo v6, "//"

    #@70
    const/4 v7, 0x2

    #@71
    invoke-virtual {p1, v5, v6, v10, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@74
    move-result v6

    #@75
    if-eqz v6, :cond_7

    #@77
    .line 388
    add-int/lit8 v0, v5, 0x2

    #@79
    .line 389
    .local v0, "authorityStart":I
    const-string/jumbo v6, "/?"

    #@7c
    invoke-static {p1, v6, v0, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    #@7f
    move-result v2

    #@80
    .line 390
    .local v2, "fileStart":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@83
    move-result v6

    #@84
    if-ne v0, v6, :cond_4

    #@86
    .line 391
    new-instance v6, Ljava/net/URISyntaxException;

    #@88
    const-string/jumbo v7, "Authority expected"

    #@8b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8e
    move-result v8

    #@8f
    invoke-direct {v6, p1, v7, v8}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@92
    throw v6

    #@93
    .line 393
    :cond_4
    if-ge v0, v2, :cond_5

    #@95
    .line 394
    sget-object v6, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    #@97
    const-string/jumbo v7, "authority"

    #@9a
    invoke-virtual {v6, p1, v0, v2, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    #@9d
    move-result-object v6

    #@9e
    iput-object v6, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@a0
    .line 401
    .end local v0    # "authorityStart":I
    :cond_5
    :goto_0
    const-string/jumbo v6, "?"

    #@a3
    invoke-static {p1, v6, v2, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    #@a6
    move-result v4

    #@a7
    .line 402
    .local v4, "queryStart":I
    sget-object v6, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    #@a9
    const-string/jumbo v7, "path"

    #@ac
    invoke-virtual {v6, p1, v2, v4, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    #@af
    move-result-object v6

    #@b0
    iput-object v6, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@b2
    .line 405
    if-ge v4, v3, :cond_6

    #@b4
    .line 406
    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    #@b6
    add-int/lit8 v7, v4, 0x1

    #@b8
    const-string/jumbo v8, "query"

    #@bb
    invoke-virtual {v6, p1, v7, v3, v8}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    #@be
    move-result-object v6

    #@bf
    iput-object v6, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@c1
    .line 409
    :cond_6
    invoke-direct {p0, p2}, Ljava/net/URI;->parseAuthority(Z)V

    #@c4
    .line 349
    return-void

    #@c5
    .line 397
    .end local v2    # "fileStart":I
    .end local v4    # "queryStart":I
    :cond_7
    move v2, v5

    #@c6
    .restart local v2    # "fileStart":I
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1385
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1387
    :try_start_0
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1384
    return-void

    #@a
    .line 1388
    :catch_0
    move-exception v0

    #@b
    .line 1389
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/IOException;

    #@d
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1
.end method

.method private setSchemeSpecificPart()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 1238
    .local v0, "ssp":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1239
    const-string/jumbo v1, "//"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 1241
    :cond_0
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1242
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 1244
    :cond_1
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 1245
    const-string/jumbo v1, "?"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 1247
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@35
    .line 1249
    iput-object v3, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@37
    .line 1235
    return-void
.end method

.method private validateScheme(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 413
    if-nez p2, :cond_0

    #@3
    .line 414
    new-instance v1, Ljava/net/URISyntaxException;

    #@5
    const-string/jumbo v2, "Scheme expected"

    #@8
    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@b
    throw v1

    #@c
    .line 417
    :cond_0
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    #@f
    .line 418
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v1

    #@13
    invoke-static {v0, v1}, Llibcore/net/url/UrlUtils;->isValidSchemeChar(IC)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 419
    new-instance v1, Ljava/net/URISyntaxException;

    #@1b
    const-string/jumbo v2, "Illegal character in scheme"

    #@1e
    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@21
    throw v1

    #@22
    .line 417
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 423
    :cond_2
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method private validateUserInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 508
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_2

    #@7
    .line 509
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 510
    .local v0, "ch":C
    const/16 v2, 0x5d

    #@d
    if-eq v0, v2, :cond_0

    #@f
    const/16 v2, 0x5b

    #@11
    if-ne v0, v2, :cond_1

    #@13
    .line 511
    :cond_0
    new-instance v2, Ljava/net/URISyntaxException;

    #@15
    const-string/jumbo v3, "Illegal character in userInfo"

    #@18
    add-int v4, p3, v1

    #@1a
    invoke-direct {v2, p1, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@1d
    throw v2

    #@1e
    .line 508
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 507
    .end local v0    # "ch":C
    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1395
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@3
    .line 1396
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@6
    .line 1393
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "uri"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 618
    check-cast p1, Ljava/net/URI;

    #@2
    .end local p1    # "uri":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/net/URI;)I
    .locals 6
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 622
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 623
    return v4

    #@c
    .line 624
    :cond_0
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@e
    if-eqz v1, :cond_1

    #@10
    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@12
    if-nez v1, :cond_1

    #@14
    .line 625
    return v5

    #@15
    .line 626
    :cond_1
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@17
    if-eqz v1, :cond_2

    #@19
    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 627
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@1f
    iget-object v2, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@24
    move-result v0

    #@25
    .line 628
    .local v0, "ret":I
    if-eqz v0, :cond_2

    #@27
    .line 629
    return v0

    #@28
    .line 634
    .end local v0    # "ret":I
    :cond_2
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    #@2a
    if-nez v1, :cond_3

    #@2c
    iget-boolean v1, p1, Ljava/net/URI;->opaque:Z

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 635
    return v4

    #@31
    .line 636
    :cond_3
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    #@33
    if-eqz v1, :cond_4

    #@35
    iget-boolean v1, p1, Ljava/net/URI;->opaque:Z

    #@37
    if-eqz v1, :cond_5

    #@39
    .line 638
    :cond_4
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    #@3b
    if-eqz v1, :cond_6

    #@3d
    iget-boolean v1, p1, Ljava/net/URI;->opaque:Z

    #@3f
    if-eqz v1, :cond_6

    #@41
    .line 639
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@43
    iget-object v2, p1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@48
    move-result v0

    #@49
    .line 640
    .restart local v0    # "ret":I
    if-eqz v0, :cond_12

    #@4b
    .line 641
    return v0

    #@4c
    .line 637
    .end local v0    # "ret":I
    :cond_5
    return v5

    #@4d
    .line 648
    :cond_6
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@4f
    if-eqz v1, :cond_7

    #@51
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    #@53
    if-nez v1, :cond_7

    #@55
    .line 649
    return v5

    #@56
    .line 650
    :cond_7
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@58
    if-nez v1, :cond_8

    #@5a
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    #@5c
    if-eqz v1, :cond_8

    #@5e
    .line 651
    return v4

    #@5f
    .line 652
    :cond_8
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@61
    if-eqz v1, :cond_e

    #@63
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    #@65
    if-eqz v1, :cond_e

    #@67
    .line 653
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@69
    if-eqz v1, :cond_d

    #@6b
    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    #@6d
    if-eqz v1, :cond_d

    #@6f
    .line 655
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@71
    if-eqz v1, :cond_9

    #@73
    iget-object v1, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@75
    if-nez v1, :cond_9

    #@77
    .line 656
    return v5

    #@78
    .line 657
    :cond_9
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@7a
    if-nez v1, :cond_a

    #@7c
    iget-object v1, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@7e
    if-eqz v1, :cond_a

    #@80
    .line 658
    return v4

    #@81
    .line 659
    :cond_a
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@83
    if-eqz v1, :cond_b

    #@85
    iget-object v1, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@87
    if-eqz v1, :cond_b

    #@89
    .line 660
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@8b
    iget-object v2, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@8d
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@90
    move-result v0

    #@91
    .line 661
    .restart local v0    # "ret":I
    if-eqz v0, :cond_b

    #@93
    .line 662
    return v0

    #@94
    .line 667
    .end local v0    # "ret":I
    :cond_b
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@96
    iget-object v2, p1, Ljava/net/URI;->host:Ljava/lang/String;

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@9b
    move-result v0

    #@9c
    .line 668
    .restart local v0    # "ret":I
    if-eqz v0, :cond_c

    #@9e
    .line 669
    return v0

    #@9f
    .line 673
    :cond_c
    iget v1, p0, Ljava/net/URI;->port:I

    #@a1
    iget v2, p1, Ljava/net/URI;->port:I

    #@a3
    if-eq v1, v2, :cond_e

    #@a5
    .line 674
    iget v1, p0, Ljava/net/URI;->port:I

    #@a7
    iget v2, p1, Ljava/net/URI;->port:I

    #@a9
    sub-int/2addr v1, v2

    #@aa
    return v1

    #@ab
    .line 678
    .end local v0    # "ret":I
    :cond_d
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@ad
    iget-object v2, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    #@af
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b2
    move-result v0

    #@b3
    .line 679
    .restart local v0    # "ret":I
    if-eqz v0, :cond_e

    #@b5
    .line 680
    return v0

    #@b6
    .line 687
    .end local v0    # "ret":I
    :cond_e
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@b8
    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@ba
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@bd
    move-result v0

    #@be
    .line 688
    .restart local v0    # "ret":I
    if-eqz v0, :cond_f

    #@c0
    .line 689
    return v0

    #@c1
    .line 694
    :cond_f
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@c3
    if-eqz v1, :cond_10

    #@c5
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    #@c7
    if-nez v1, :cond_10

    #@c9
    .line 695
    return v5

    #@ca
    .line 696
    :cond_10
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@cc
    if-nez v1, :cond_11

    #@ce
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    #@d0
    if-eqz v1, :cond_11

    #@d2
    .line 697
    return v4

    #@d3
    .line 698
    :cond_11
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@d5
    if-eqz v1, :cond_12

    #@d7
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    #@d9
    if-eqz v1, :cond_12

    #@db
    .line 699
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@dd
    iget-object v2, p1, Ljava/net/URI;->query:Ljava/lang/String;

    #@df
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@e2
    move-result v0

    #@e3
    .line 700
    if-eqz v0, :cond_12

    #@e5
    .line 701
    return v0

    #@e6
    .line 707
    :cond_12
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@e8
    if-eqz v1, :cond_13

    #@ea
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@ec
    if-nez v1, :cond_13

    #@ee
    .line 708
    return v5

    #@ef
    .line 709
    :cond_13
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@f1
    if-nez v1, :cond_14

    #@f3
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@f5
    if-eqz v1, :cond_14

    #@f7
    .line 710
    return v4

    #@f8
    .line 711
    :cond_14
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@fa
    if-eqz v1, :cond_15

    #@fc
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@fe
    if-eqz v1, :cond_15

    #@100
    .line 712
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@102
    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@104
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@107
    move-result v0

    #@108
    .line 713
    if-eqz v0, :cond_15

    #@10a
    .line 714
    return v0

    #@10b
    .line 719
    :cond_15
    return v3
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
    .line 823
    instance-of v1, p1, Ljava/net/URI;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 824
    return v3

    #@7
    :cond_0
    move-object v0, p1

    #@8
    .line 826
    check-cast v0, Ljava/net/URI;

    #@a
    .line 828
    .local v0, "uri":Ljava/net/URI;
    iget-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@c
    if-nez v1, :cond_2

    #@e
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 830
    :cond_1
    return v3

    #@13
    .line 828
    :cond_2
    iget-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@15
    if-eqz v1, :cond_3

    #@17
    .line 829
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 831
    :cond_3
    iget-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@1d
    if-eqz v1, :cond_4

    #@1f
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@21
    if-eqz v1, :cond_4

    #@23
    .line 832
    iget-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@25
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@27
    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_4

    #@2d
    .line 833
    return v3

    #@2e
    .line 837
    :cond_4
    iget-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@30
    if-nez v1, :cond_6

    #@32
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@34
    if-eqz v1, :cond_6

    #@36
    .line 839
    :cond_5
    return v3

    #@37
    .line 837
    :cond_6
    iget-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@39
    if-eqz v1, :cond_7

    #@3b
    .line 838
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@3d
    if-eqz v1, :cond_5

    #@3f
    .line 840
    :cond_7
    iget-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@41
    if-eqz v1, :cond_8

    #@43
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@45
    if-eqz v1, :cond_8

    #@47
    .line 841
    iget-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@49
    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4e
    move-result v1

    #@4f
    if-nez v1, :cond_8

    #@51
    .line 842
    return v3

    #@52
    .line 846
    :cond_8
    iget-boolean v1, v0, Ljava/net/URI;->opaque:Z

    #@54
    if-eqz v1, :cond_9

    #@56
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    #@58
    if-eqz v1, :cond_9

    #@5a
    .line 847
    iget-object v1, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@5c
    .line 848
    iget-object v2, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@5e
    .line 847
    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@61
    move-result v1

    #@62
    return v1

    #@63
    .line 849
    :cond_9
    iget-boolean v1, v0, Ljava/net/URI;->opaque:Z

    #@65
    if-nez v1, :cond_a

    #@67
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    #@69
    if-eqz v1, :cond_b

    #@6b
    .line 898
    :cond_a
    return v3

    #@6c
    .line 850
    :cond_b
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@6e
    iget-object v2, v0, Ljava/net/URI;->path:Ljava/lang/String;

    #@70
    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@73
    move-result v1

    #@74
    if-nez v1, :cond_c

    #@76
    .line 851
    return v3

    #@77
    .line 854
    :cond_c
    iget-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    #@79
    if-eqz v1, :cond_e

    #@7b
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@7d
    if-nez v1, :cond_e

    #@7f
    .line 856
    :cond_d
    return v3

    #@80
    .line 854
    :cond_e
    iget-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    #@82
    if-nez v1, :cond_f

    #@84
    .line 855
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@86
    if-nez v1, :cond_d

    #@88
    .line 857
    :cond_f
    iget-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    #@8a
    if-eqz v1, :cond_10

    #@8c
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@8e
    if-eqz v1, :cond_10

    #@90
    .line 858
    iget-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    #@92
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@94
    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@97
    move-result v1

    #@98
    if-nez v1, :cond_10

    #@9a
    .line 859
    return v3

    #@9b
    .line 863
    :cond_10
    iget-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@9d
    if-eqz v1, :cond_12

    #@9f
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@a1
    if-nez v1, :cond_12

    #@a3
    .line 865
    :cond_11
    return v3

    #@a4
    .line 864
    :cond_12
    iget-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@a6
    if-nez v1, :cond_13

    #@a8
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@aa
    if-nez v1, :cond_11

    #@ac
    .line 866
    :cond_13
    iget-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@ae
    if-eqz v1, :cond_1e

    #@b0
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@b2
    if-eqz v1, :cond_1e

    #@b4
    .line 867
    iget-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    #@b6
    if-eqz v1, :cond_15

    #@b8
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@ba
    if-nez v1, :cond_15

    #@bc
    .line 869
    :cond_14
    return v3

    #@bd
    .line 867
    :cond_15
    iget-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    #@bf
    if-nez v1, :cond_16

    #@c1
    .line 868
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@c3
    if-nez v1, :cond_14

    #@c5
    .line 870
    :cond_16
    iget-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    #@c7
    if-nez v1, :cond_17

    #@c9
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@cb
    if-nez v1, :cond_17

    #@cd
    .line 872
    iget-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@cf
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@d1
    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@d4
    move-result v1

    #@d5
    return v1

    #@d6
    .line 874
    :cond_17
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@d8
    iget-object v2, v0, Ljava/net/URI;->host:Ljava/lang/String;

    #@da
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@dd
    move-result v1

    #@de
    if-nez v1, :cond_18

    #@e0
    .line 875
    return v3

    #@e1
    .line 878
    :cond_18
    iget v1, p0, Ljava/net/URI;->port:I

    #@e3
    iget v2, v0, Ljava/net/URI;->port:I

    #@e5
    if-eq v1, v2, :cond_19

    #@e7
    .line 879
    return v3

    #@e8
    .line 882
    :cond_19
    iget-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@ea
    if-eqz v1, :cond_1b

    #@ec
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@ee
    if-nez v1, :cond_1b

    #@f0
    .line 884
    :cond_1a
    return v3

    #@f1
    .line 883
    :cond_1b
    iget-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@f3
    if-nez v1, :cond_1c

    #@f5
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@f7
    if-nez v1, :cond_1a

    #@f9
    .line 885
    :cond_1c
    iget-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@fb
    if-eqz v1, :cond_1d

    #@fd
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@ff
    if-eqz v1, :cond_1d

    #@101
    .line 886
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@103
    iget-object v2, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@105
    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@108
    move-result v1

    #@109
    return v1

    #@10a
    .line 888
    :cond_1d
    return v4

    #@10b
    .line 893
    :cond_1e
    return v4
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 931
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEffectivePort()I
    .locals 2

    #@0
    .prologue
    .line 975
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@2
    iget v1, p0, Ljava/net/URI;->port:I

    #@4
    invoke-static {v0, v1}, Ljava/net/URI;->getEffectivePort(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1031
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 962
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1002
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 970
    iget v0, p0, Ljava/net/URI;->port:I

    #@2
    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1016
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRawAuthority()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 939
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRawFragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1039
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRawPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1009
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1023
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRawSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 923
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 955
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 907
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 915
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 947
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 1043
    iget v0, p0, Ljava/net/URI;->hash:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1044
    invoke-direct {p0}, Ljava/net/URI;->getHashString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Ljava/net/URI;->hash:I

    #@f
    .line 1046
    :cond_0
    iget v0, p0, Ljava/net/URI;->hash:I

    #@11
    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    #@0
    .prologue
    .line 1055
    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    #@2
    return v0
.end method

.method public isOpaque()Z
    .locals 1

    #@0
    .prologue
    .line 1064
    iget-boolean v0, p0, Ljava/net/URI;->opaque:Z

    #@2
    return v0
.end method

.method public normalize()Ljava/net/URI;
    .locals 4

    #@0
    .prologue
    .line 1095
    iget-boolean v2, p0, Ljava/net/URI;->opaque:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1096
    return-object p0

    #@5
    .line 1098
    :cond_0
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@7
    const/4 v3, 0x0

    #@8
    invoke-direct {p0, v2, v3}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 1100
    .local v0, "normalizedPath":Ljava/lang/String;
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 1101
    return-object p0

    #@15
    .line 1105
    :cond_1
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    #@18
    move-result-object v1

    #@19
    .line 1106
    .local v1, "result":Ljava/net/URI;
    iput-object v0, v1, Ljava/net/URI;->path:Ljava/lang/String;

    #@1b
    .line 1107
    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    #@1e
    .line 1108
    return-object v1
.end method

.method public parseServerAuthority()Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 1122
    iget-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1123
    const/4 v0, 0x1

    #@5
    invoke-direct {p0, v0}, Ljava/net/URI;->parseAuthority(Z)V

    #@8
    .line 1125
    :cond_0
    return-object p0
.end method

.method public relativize(Ljava/net/URI;)Ljava/net/URI;
    .locals 6
    .param p1, "relative"    # Ljava/net/URI;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1137
    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    #@3
    if-nez v3, :cond_0

    #@5
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 1138
    :cond_0
    return-object p1

    #@a
    .line 1141
    :cond_1
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@c
    if-nez v3, :cond_3

    #@e
    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@10
    if-eqz v3, :cond_4

    #@12
    .line 1143
    :cond_2
    return-object p1

    #@13
    .line 1141
    :cond_3
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@15
    .line 1142
    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@17
    .line 1141
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_2

    #@1d
    .line 1146
    :cond_4
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@1f
    if-nez v3, :cond_6

    #@21
    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    #@23
    if-eqz v3, :cond_7

    #@25
    .line 1148
    :cond_5
    return-object p1

    #@26
    .line 1146
    :cond_6
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@28
    .line 1147
    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    #@2a
    .line 1146
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_5

    #@30
    .line 1152
    :cond_7
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@32
    invoke-direct {p0, v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 1153
    .local v2, "thisPath":Ljava/lang/String;
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@38
    invoke-direct {p0, v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 1159
    .local v0, "relativePath":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v3

    #@40
    if-nez v3, :cond_8

    #@42
    .line 1161
    const/16 v3, 0x2f

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@47
    move-result v3

    #@48
    add-int/lit8 v3, v3, 0x1

    #@4a
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .line 1168
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@51
    move-result v3

    #@52
    if-nez v3, :cond_8

    #@54
    .line 1169
    return-object p1

    #@55
    .line 1173
    :cond_8
    new-instance v1, Ljava/net/URI;

    #@57
    invoke-direct {v1}, Ljava/net/URI;-><init>()V

    #@5a
    .line 1174
    .local v1, "result":Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@5c
    iput-object v3, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@5e
    .line 1175
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    #@60
    iput-object v3, v1, Ljava/net/URI;->query:Ljava/lang/String;

    #@62
    .line 1177
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@65
    move-result v3

    #@66
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    iput-object v3, v1, Ljava/net/URI;->path:Ljava/lang/String;

    #@6c
    .line 1178
    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    #@6f
    .line 1179
    return-object v1
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .param p1, "relative"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1263
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public resolve(Ljava/net/URI;)Ljava/net/URI;
    .locals 6
    .param p1, "relative"    # Ljava/net/URI;

    #@0
    .prologue
    .line 1191
    iget-boolean v3, p1, Ljava/net/URI;->absolute:Z

    #@2
    if-nez v3, :cond_0

    #@4
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 1192
    :cond_0
    return-object p1

    #@9
    .line 1195
    :cond_1
    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 1198
    invoke-direct {p1}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    #@10
    move-result-object v2

    #@11
    .line 1199
    .local v2, "result":Ljava/net/URI;
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@13
    iput-object v3, v2, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@15
    .line 1200
    iget-boolean v3, p0, Ljava/net/URI;->absolute:Z

    #@17
    iput-boolean v3, v2, Ljava/net/URI;->absolute:Z

    #@19
    .line 1201
    return-object v2

    #@1a
    .line 1204
    .end local v2    # "result":Ljava/net/URI;
    :cond_2
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@1c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_3

    #@22
    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@24
    if-nez v3, :cond_3

    #@26
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    #@28
    if-nez v3, :cond_3

    #@2a
    .line 1206
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    #@2d
    move-result-object v2

    #@2e
    .line 1207
    .restart local v2    # "result":Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@30
    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@32
    .line 1208
    return-object v2

    #@33
    .line 1211
    .end local v2    # "result":Ljava/net/URI;
    :cond_3
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    #@36
    move-result-object v2

    #@37
    .line 1212
    .restart local v2    # "result":Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@39
    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@3b
    .line 1213
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    #@3d
    iput-object v3, v2, Ljava/net/URI;->query:Ljava/lang/String;

    #@3f
    .line 1215
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@41
    const-string/jumbo v4, "/"

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@47
    move-result v3

    #@48
    if-eqz v3, :cond_4

    #@4a
    .line 1217
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@4c
    .line 1226
    .local v1, "resolvedPath":Ljava/lang/String;
    :goto_0
    iget-object v3, v2, Ljava/net/URI;->authority:Ljava/lang/String;

    #@4e
    const/4 v4, 0x1

    #@4f
    invoke-direct {p0, v1, v4}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-static {v3, v4}, Llibcore/net/url/UrlUtils;->authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    iput-object v3, v2, Ljava/net/URI;->path:Ljava/lang/String;

    #@59
    .line 1227
    invoke-direct {v2}, Ljava/net/URI;->setSchemeSpecificPart()V

    #@5c
    .line 1228
    return-object v2

    #@5d
    .line 1218
    .end local v1    # "resolvedPath":Ljava/lang/String;
    :cond_4
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@5f
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@62
    move-result v3

    #@63
    if-eqz v3, :cond_5

    #@65
    .line 1220
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@67
    .restart local v1    # "resolvedPath":Ljava/lang/String;
    goto :goto_0

    #@68
    .line 1223
    .end local v1    # "resolvedPath":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@6a
    const/16 v4, 0x2f

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@6f
    move-result v3

    #@70
    add-int/lit8 v0, v3, 0x1

    #@72
    .line 1224
    .local v0, "endIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    iget-object v4, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@79
    const/4 v5, 0x0

    #@7a
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v3

    #@82
    iget-object v4, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    .restart local v1    # "resolvedPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public toASCIIString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1278
    .local v0, "result":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/net/URI;->ASCII_ONLY:Llibcore/net/UriCodec;

    #@7
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v0, v2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@e
    .line 1279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1286
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1287
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 1290
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    .line 1291
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1292
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 1293
    const/16 v1, 0x3a

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 1295
    :cond_1
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 1296
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 1313
    :cond_2
    :goto_0
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 1314
    const/16 v1, 0x23

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 1315
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 1318
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@37
    .line 1319
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@39
    return-object v1

    #@3a
    .line 1298
    :cond_4
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@3c
    if-eqz v1, :cond_5

    #@3e
    .line 1299
    const-string/jumbo v1, "//"

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 1300
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 1303
    :cond_5
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@4b
    if-eqz v1, :cond_6

    #@4d
    .line 1304
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 1307
    :cond_6
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@54
    if-eqz v1, :cond_2

    #@56
    .line 1308
    const/16 v1, 0x3f

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5b
    .line 1309
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    goto :goto_0
.end method

.method public toURL()Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1378
    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "URI is not absolute: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 1381
    :cond_0
    new-instance v0, Ljava/net/URL;

    #@24
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@2b
    return-object v0
.end method
