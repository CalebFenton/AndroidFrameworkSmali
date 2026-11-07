.class public Landroid/drm/DrmInfo;
.super Ljava/lang/Object;
.source "DrmInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mData:[B

.field private final greylist-max-o mInfoType:I

.field private final greylist-max-o mMimeType:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "infoType"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    .line 72
    iput p1, p0, Landroid/drm/DrmInfo;->mInfoType:I

    .line 73
    iput-object p3, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    .line 75
    :try_start_e
    invoke-static {p2}, Landroid/drm/DrmUtils;->readBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmInfo;->mData:[B
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_15

    .line 81
    goto :goto_19

    .line 76
    :catch_15
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/drm/DrmInfo;->mData:[B

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :goto_19
    invoke-virtual {p0}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 89
    return-void

    .line 83
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "infoType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mimeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/drm/DrmInfo;->mData:[B

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public constructor whitelist <init>(I[BLjava/lang/String;)V
    .registers 6
    .param p1, "infoType"    # I
    .param p2, "data"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    .line 52
    iput p1, p0, Landroid/drm/DrmInfo;->mInfoType:I

    .line 53
    iput-object p3, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Landroid/drm/DrmInfo;->mData:[B

    .line 55
    invoke-virtual {p0}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 62
    return-void

    .line 56
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "infoType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mimeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getData()[B
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/drm/DrmInfo;->mData:[B

    return-object v0
.end method

.method public whitelist getInfoType()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/drm/DrmInfo;->mInfoType:I

    return v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o isValid()Z
    .registers 3

    .line 169
    iget-object v0, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/drm/DrmInfo;->mData:[B

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/drm/DrmInfo;->mData:[B

    array-length v0, v0

    if-lez v0, :cond_21

    iget v0, p0, Landroid/drm/DrmInfo;->mInfoType:I

    .line 170
    invoke-static {v0}, Landroid/drm/DrmInfoRequest;->isValidType(I)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 169
    :goto_22
    return v0
.end method

.method public whitelist iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

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

    .line 121
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method
