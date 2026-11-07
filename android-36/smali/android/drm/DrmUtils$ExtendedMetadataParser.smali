.class public Landroid/drm/DrmUtils$ExtendedMetadataParser;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedMetadataParser"
.end annotation


# instance fields
.field greylist-max-o mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>([B)V
    .registers 8
    .param p1, "constraintData"    # [B

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, "index":I
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_34

    .line 149
    invoke-direct {p0, p1, v0}, Landroid/drm/DrmUtils$ExtendedMetadataParser;->readByte([BI)I

    move-result v1

    .line 150
    .local v1, "keyLength":I
    add-int/lit8 v0, v0, 0x1

    .line 153
    invoke-direct {p0, p1, v0}, Landroid/drm/DrmUtils$ExtendedMetadataParser;->readByte([BI)I

    move-result v2

    .line 154
    .local v2, "valueLength":I
    add-int/lit8 v0, v0, 0x1

    .line 157
    invoke-direct {p0, p1, v1, v0}, Landroid/drm/DrmUtils$ExtendedMetadataParser;->readMultipleBytes([BII)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "strKey":Ljava/lang/String;
    add-int/2addr v0, v1

    .line 161
    invoke-direct {p0, p1, v2, v0}, Landroid/drm/DrmUtils$ExtendedMetadataParser;->readMultipleBytes([BII)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "strValue":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 163
    const-string v4, ""

    .line 165
    :cond_2d
    add-int/2addr v0, v2

    .line 166
    iget-object v5, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v1    # "keyLength":I
    .end local v2    # "valueLength":I
    .end local v3    # "strKey":Ljava/lang/String;
    .end local v4    # "strValue":Ljava/lang/String;
    goto :goto_b

    .line 168
    :cond_34
    return-void
.end method

.method synthetic constructor blacklist <init>([BLandroid/drm/DrmUtils-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/drm/DrmUtils$ExtendedMetadataParser;-><init>([B)V

    return-void
.end method

.method private greylist-max-o readByte([BI)I
    .registers 4
    .param p1, "constraintData"    # [B
    .param p2, "arrayIndex"    # I

    .line 127
    aget-byte v0, p1, p2

    return v0
.end method

.method private greylist-max-o readMultipleBytes([BII)Ljava/lang/String;
    .registers 8
    .param p1, "constraintData"    # [B
    .param p2, "numberOfBytes"    # I
    .param p3, "arrayIndex"    # I

    .line 132
    new-array v0, p2, [B

    .line 133
    .local v0, "returnBytes":[B
    move v1, p3

    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    add-int v3, p3, p2

    if-ge v1, v3, :cond_11

    .line 134
    aget-byte v3, p1, v1

    aput-byte v3, v0, v2

    .line 133
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 136
    .end local v1    # "j":I
    .end local v2    # "i":I
    :cond_11
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public whitelist get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist keyIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
