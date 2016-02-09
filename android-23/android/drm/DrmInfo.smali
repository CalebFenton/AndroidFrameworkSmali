.class public Landroid/drm/DrmInfo;
.super Ljava/lang/Object;
.source "DrmInfo.java"


# instance fields
.field private final mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mData:[B

.field private final mInfoType:I

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "infoType"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v2, Ljava/util/HashMap;

    #@5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v2, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    #@a
    .line 69
    iput p1, p0, Landroid/drm/DrmInfo;->mInfoType:I

    #@c
    .line 70
    iput-object p3, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    #@e
    .line 72
    :try_start_0
    invoke-static {p2}, Landroid/drm/DrmUtils;->readBytes(Ljava/lang/String;)[B

    #@11
    move-result-object v2

    #@12
    iput-object v2, p0, Landroid/drm/DrmInfo;->mData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 79
    :goto_0
    invoke-virtual {p0}, Landroid/drm/DrmInfo;->isValid()Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "infoType: "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, ","

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 81
    const-string/jumbo v3, "mimeType: "

    #@34
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 81
    const-string/jumbo v3, ","

    #@3f
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 82
    const-string/jumbo v3, "data: "

    #@46
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 82
    iget-object v3, p0, Landroid/drm/DrmInfo;->mData:[B

    #@4c
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    .line 84
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@56
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@59
    throw v2

    #@5a
    .line 73
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@5b
    .line 77
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    #@5c
    iput-object v2, p0, Landroid/drm/DrmInfo;->mData:[B

    #@5e
    goto :goto_0

    #@5f
    .line 68
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .locals 3
    .param p1, "infoType"    # I
    .param p2, "data"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v1, Ljava/util/HashMap;

    #@5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v1, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    #@a
    .line 49
    iput p1, p0, Landroid/drm/DrmInfo;->mInfoType:I

    #@c
    .line 50
    iput-object p3, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    #@e
    .line 51
    iput-object p2, p0, Landroid/drm/DrmInfo;->mData:[B

    #@10
    .line 52
    invoke-virtual {p0}, Landroid/drm/DrmInfo;->isValid()Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "infoType: "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, ","

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 54
    const-string/jumbo v2, "mimeType: "

    #@30
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 54
    const-string/jumbo v2, ","

    #@3b
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 55
    const-string/jumbo v2, "data: "

    #@42
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    .line 57
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@50
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v1

    #@54
    .line 48
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getData()[B
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/drm/DrmInfo;->mData:[B

    #@2
    return-object v0
.end method

.method public getInfoType()I
    .locals 1

    #@0
    .prologue
    .line 155
    iget v0, p0, Landroid/drm/DrmInfo;->mInfoType:I

    #@2
    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method isValid()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 166
    iget-object v1, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    #@7
    const-string/jumbo v2, ""

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    :cond_0
    :goto_0
    return v0

    #@11
    .line 167
    :cond_1
    iget-object v1, p0, Landroid/drm/DrmInfo;->mData:[B

    #@13
    if-eqz v1, :cond_0

    #@15
    iget-object v1, p0, Landroid/drm/DrmInfo;->mData:[B

    #@17
    array-length v1, v1

    #@18
    if-lez v1, :cond_0

    #@1a
    iget v0, p0, Landroid/drm/DrmInfo;->mInfoType:I

    #@1c
    invoke-static {v0}, Landroid/drm/DrmInfoRequest;->isValidType(I)Z

    #@1f
    move-result v0

    #@20
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 96
    return-void
.end method
