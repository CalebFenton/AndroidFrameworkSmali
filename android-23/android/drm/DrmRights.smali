.class public Landroid/drm/DrmRights;
.super Ljava/lang/Object;
.source "DrmRights.java"


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mData:[B

.field private mMimeType:Ljava/lang/String;

.field private mSubscriptionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/drm/ProcessedData;Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Landroid/drm/ProcessedData;
    .param p2, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 119
    if-nez p1, :cond_0

    #@5
    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "data is null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getData()[B

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroid/drm/DrmRights;->mData:[B

    #@14
    .line 124
    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getAccountId()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    #@1a
    .line 125
    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getSubscriptionId()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    #@20
    .line 126
    iput-object p2, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    #@22
    .line 128
    invoke-virtual {p0}, Landroid/drm/DrmRights;->isValid()Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_1

    #@28
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "mimeType: "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    iget-object v2, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    const-string/jumbo v2, ","

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 130
    const-string/jumbo v2, "data: "

    #@44
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    .line 130
    iget-object v2, p0, Landroid/drm/DrmRights;->mData:[B

    #@4a
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    .line 131
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@54
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v1

    #@58
    .line 118
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "rightsFile"    # Ljava/io/File;
    .param p2, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;->instantiate(Ljava/io/File;Ljava/lang/String;)V

    #@6
    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rightsFilePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-instance v0, Ljava/io/File;

    #@5
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    .line 54
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0, p2}, Landroid/drm/DrmRights;->instantiate(Ljava/io/File;Ljava/lang/String;)V

    #@b
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rightsFilePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 67
    iput-object p3, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    #@5
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rightsFilePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "subscriptionId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 82
    iput-object p3, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    #@5
    .line 83
    iput-object p4, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    #@7
    .line 79
    return-void
.end method

.method private instantiate(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "rightsFile"    # Ljava/io/File;
    .param p2, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    :try_start_0
    invoke-static {p1}, Landroid/drm/DrmUtils;->readBytes(Ljava/io/File;)[B

    #@3
    move-result-object v2

    #@4
    iput-object v2, p0, Landroid/drm/DrmRights;->mData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 103
    :goto_0
    iput-object p2, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    #@8
    .line 104
    invoke-virtual {p0}, Landroid/drm/DrmRights;->isValid()Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "mimeType: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    iget-object v3, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, ","

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 106
    const-string/jumbo v3, "data: "

    #@2a
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 106
    iget-object v3, p0, Landroid/drm/DrmRights;->mData:[B

    #@30
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    .line 107
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3a
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2

    #@3e
    .line 99
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@3f
    .line 100
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@42
    goto :goto_0

    #@43
    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getData()[B
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/drm/DrmRights;->mData:[B

    #@2
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method isValid()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 177
    iget-object v1, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

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
    .line 178
    :cond_1
    iget-object v1, p0, Landroid/drm/DrmRights;->mData:[B

    #@13
    if-eqz v1, :cond_0

    #@15
    iget-object v1, p0, Landroid/drm/DrmRights;->mData:[B

    #@17
    array-length v1, v1

    #@18
    if-lez v1, :cond_0

    #@1a
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method
