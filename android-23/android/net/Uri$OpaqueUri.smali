.class Landroid/net/Uri$OpaqueUri;
.super Landroid/net/Uri;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpaqueUri"
.end annotation


# static fields
.field static final TYPE_ID:I = 0x2


# instance fields
.field private volatile cachedString:Ljava/lang/String;

.field private final fragment:Landroid/net/Uri$Part;

.field private final scheme:Ljava/lang/String;

.field private final ssp:Landroid/net/Uri$Part;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "ssp"    # Landroid/net/Uri$Part;
    .param p3, "fragment"    # Landroid/net/Uri$Part;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 841
    invoke-direct {p0, v0}, Landroid/net/Uri;-><init>(Landroid/net/Uri;)V

    #@4
    .line 942
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    #@a
    .line 842
    iput-object p1, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    #@c
    .line 843
    iput-object p2, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    #@e
    .line 844
    if-nez p3, :cond_0

    #@10
    sget-object p3, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    #@12
    .end local p3    # "fragment":Landroid/net/Uri$Part;
    :cond_0
    iput-object p3, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    #@14
    .line 841
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$OpaqueUri;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "ssp"    # Landroid/net/Uri$Part;
    .param p3, "fragment"    # Landroid/net/Uri$Part;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    #@3
    return-void
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri;
    .locals 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 848
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    #@2
    .line 849
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 850
    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    #@9
    move-result-object v2

    #@a
    .line 851
    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    #@d
    move-result-object v3

    #@e
    .line 848
    invoke-direct {v0, v1, v2, v3}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    #@11
    return-object v0
.end method


# virtual methods
.method public buildUpon()Landroid/net/Uri$Builder;
    .locals 2

    #@0
    .prologue
    .line 964
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    .line 965
    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    #@7
    .line 964
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@a
    move-result-object v0

    #@b
    .line 966
    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    #@d
    .line 964
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@10
    move-result-object v0

    #@11
    .line 967
    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    #@13
    .line 964
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 856
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 887
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getEncodedAuthority()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 891
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getEncodedFragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 915
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

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
    .line 899
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getEncodedQuery()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 907
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getEncodedSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 879
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncodedUserInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 931
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 911
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 935
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLastPathSegment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 923
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 895
    const/4 v0, 0x0

    #@1
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
    .line 919
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 939
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 903
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 875
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 883
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 927
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public isHierarchical()Z
    .locals 1

    #@0
    .prologue
    .line 867
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isRelative()Z
    .locals 1

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

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
    .locals 4

    #@0
    .prologue
    .line 946
    iget-object v2, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    #@2
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    if-eq v2, v3, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .line 947
    .local v0, "cached":Z
    :goto_0
    if-eqz v0, :cond_1

    #@b
    .line 948
    iget-object v2, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    #@d
    return-object v2

    #@e
    .line 946
    .end local v0    # "cached":Z
    :cond_0
    const/4 v0, 0x0

    #@f
    .restart local v0    # "cached":Z
    goto :goto_0

    #@10
    .line 951
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 953
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const/16 v3, 0x3a

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 954
    invoke-virtual {p0}, Landroid/net/Uri$OpaqueUri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 956
    iget-object v2, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    #@29
    invoke-virtual {v2}, Landroid/net/Uri$Part;->isEmpty()Z

    #@2c
    move-result v2

    #@2d
    if-nez v2, :cond_2

    #@2f
    .line 957
    const/16 v2, 0x23

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    iget-object v3, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    #@37
    invoke-virtual {v3}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 960
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    iput-object v2, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    #@44
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 860
    const/4 v0, 0x2

    #@1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4
    .line 861
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9
    .line 862
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    #@b
    invoke-virtual {v0, p1}, Landroid/net/Uri$Part;->writeTo(Landroid/os/Parcel;)V

    #@e
    .line 863
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    #@10
    invoke-virtual {v0, p1}, Landroid/net/Uri$Part;->writeTo(Landroid/os/Parcel;)V

    #@13
    .line 859
    return-void
.end method
