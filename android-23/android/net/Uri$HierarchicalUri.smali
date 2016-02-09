.class Landroid/net/Uri$HierarchicalUri;
.super Landroid/net/Uri$AbstractHierarchicalUri;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HierarchicalUri"
.end annotation


# static fields
.field static final TYPE_ID:I = 0x3


# instance fields
.field private final authority:Landroid/net/Uri$Part;

.field private final fragment:Landroid/net/Uri$Part;

.field private final path:Landroid/net/Uri$PathPart;

.field private final query:Landroid/net/Uri$Part;

.field private final scheme:Ljava/lang/String;

.field private ssp:Landroid/net/Uri$Part;

.field private volatile uriString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Landroid/net/Uri$Part;
    .param p3, "path"    # Landroid/net/Uri$PathPart;
    .param p4, "query"    # Landroid/net/Uri$Part;
    .param p5, "fragment"    # Landroid/net/Uri$Part;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1149
    invoke-direct {p0, v0}, Landroid/net/Uri$AbstractHierarchicalUri;-><init>(Landroid/net/Uri$AbstractHierarchicalUri;)V

    #@4
    .line 1270
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    #@a
    .line 1151
    iput-object p1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    #@c
    .line 1152
    invoke-static {p2}, Landroid/net/Uri$Part;->nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    #@12
    .line 1153
    if-nez p3, :cond_0

    #@14
    sget-object p3, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    #@16
    .end local p3    # "path":Landroid/net/Uri$PathPart;
    :cond_0
    iput-object p3, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    #@18
    .line 1154
    invoke-static {p4}, Landroid/net/Uri$Part;->nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    #@1e
    .line 1155
    invoke-static {p5}, Landroid/net/Uri$Part;->nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    #@24
    .line 1150
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$HierarchicalUri;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Landroid/net/Uri$Part;
    .param p3, "path"    # Landroid/net/Uri$PathPart;
    .param p4, "query"    # Landroid/net/Uri$Part;
    .param p5, "fragment"    # Landroid/net/Uri$Part;

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    #@3
    return-void
.end method

.method private appendSspTo(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 1218
    iget-object v2, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    #@2
    invoke-virtual {v2}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 1219
    .local v0, "encodedAuthority":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    .line 1221
    const-string/jumbo v2, "//"

    #@b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 1224
    :cond_0
    iget-object v2, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    #@14
    invoke-virtual {v2}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 1225
    .local v1, "encodedPath":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@1a
    .line 1226
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 1229
    :cond_1
    iget-object v2, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    #@1f
    invoke-virtual {v2}, Landroid/net/Uri$Part;->isEmpty()Z

    #@22
    move-result v2

    #@23
    if-nez v2, :cond_2

    #@25
    .line 1230
    const/16 v2, 0x3f

    #@27
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    iget-object v3, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    #@2d
    invoke-virtual {v3}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 1217
    :cond_2
    return-void
.end method

.method private getSsp()Landroid/net/Uri$Part;
    .locals 1

    #@0
    .prologue
    .line 1196
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->ssp:Landroid/net/Uri$Part;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1197
    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->makeSchemeSpecificPart()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->ssp:Landroid/net/Uri$Part;

    #@e
    .line 1196
    :goto_0
    return-object v0

    #@f
    .line 1197
    :cond_0
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->ssp:Landroid/net/Uri$Part;

    #@11
    goto :goto_0
.end method

.method private makeSchemeSpecificPart()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1213
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Landroid/net/Uri$HierarchicalUri;->appendSspTo(Ljava/lang/StringBuilder;)V

    #@8
    .line 1214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method private makeUriString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1283
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1284
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const/16 v2, 0x3a

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    .line 1287
    :cond_0
    invoke-direct {p0, v0}, Landroid/net/Uri$HierarchicalUri;->appendSspTo(Ljava/lang/StringBuilder;)V

    #@17
    .line 1289
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    #@19
    invoke-virtual {v1}, Landroid/net/Uri$Part;->isEmpty()Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_1

    #@1f
    .line 1290
    const/16 v1, 0x23

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    #@27
    invoke-virtual {v2}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 1293
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    return-object v1
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri;
    .locals 6
    .param p0, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1159
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    #@2
    .line 1160
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1161
    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    #@9
    move-result-object v2

    #@a
    .line 1162
    invoke-static {p0}, Landroid/net/Uri$PathPart;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$PathPart;

    #@d
    move-result-object v3

    #@e
    .line 1163
    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    #@11
    move-result-object v4

    #@12
    .line 1164
    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    #@15
    move-result-object v5

    #@16
    .line 1159
    invoke-direct/range {v0 .. v5}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    #@19
    return-object v0
.end method


# virtual methods
.method public buildUpon()Landroid/net/Uri$Builder;
    .locals 2

    #@0
    .prologue
    .line 1297
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    .line 1298
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    #@7
    .line 1297
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@a
    move-result-object v0

    #@b
    .line 1299
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    #@d
    .line 1297
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@10
    move-result-object v0

    #@11
    .line 1300
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    #@13
    .line 1297
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    #@16
    move-result-object v0

    #@17
    .line 1301
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    #@19
    .line 1297
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@1c
    move-result-object v0

    #@1d
    .line 1302
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    #@1f
    .line 1297
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1169
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1235
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncodedAuthority()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1239
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncodedFragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1263
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncodedPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1243
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncodedQuery()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1255
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncodedSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1201
    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->getSsp()Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1259
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1247
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getDecoded()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPathSegments()Ljava/util/List;
    .locals 1
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
    .line 1267
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getPathSegments()Landroid/net/Uri$PathSegments;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1251
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1190
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1205
    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->getSsp()Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public isHierarchical()Z
    .locals 1

    #@0
    .prologue
    .line 1182
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isRelative()Z
    .locals 1

    #@0
    .prologue
    .line 1186
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1275
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    #@2
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    if-eq v1, v2, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .line 1276
    .local v0, "cached":Z
    :goto_0
    if-eqz v0, :cond_1

    #@b
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    #@d
    :goto_1
    return-object v1

    #@e
    .line 1275
    .end local v0    # "cached":Z
    :cond_0
    const/4 v0, 0x0

    #@f
    .restart local v0    # "cached":Z
    goto :goto_0

    #@10
    .line 1277
    :cond_1
    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->makeUriString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    #@16
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1173
    const/4 v0, 0x3

    #@1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4
    .line 1174
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9
    .line 1175
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    #@b
    invoke-virtual {v0, p1}, Landroid/net/Uri$Part;->writeTo(Landroid/os/Parcel;)V

    #@e
    .line 1176
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    #@10
    invoke-virtual {v0, p1}, Landroid/net/Uri$PathPart;->writeTo(Landroid/os/Parcel;)V

    #@13
    .line 1177
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    #@15
    invoke-virtual {v0, p1}, Landroid/net/Uri$Part;->writeTo(Landroid/os/Parcel;)V

    #@18
    .line 1178
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    #@1a
    invoke-virtual {v0, p1}, Landroid/net/Uri$Part;->writeTo(Landroid/os/Parcel;)V

    #@1d
    .line 1172
    return-void
.end method
