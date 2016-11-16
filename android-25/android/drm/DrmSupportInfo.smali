.class public Landroid/drm/DrmSupportInfo;
.super Ljava/lang/Object;
.source "DrmSupportInfo.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private final mFileSuffixList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMimeTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    #@a
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    #@11
    .line 33
    const-string/jumbo v0, ""

    #@14
    iput-object v0, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    #@16
    .line 30
    return-void
.end method


# virtual methods
.method public addFileSuffix(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileSuffix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    const-string/jumbo v0, ""

    #@3
    if-ne p1, v0, :cond_0

    #@5
    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "fileSuffix is an empty string"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 64
    :cond_0
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 59
    return-void
.end method

.method public addMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    if-nez p1, :cond_0

    #@2
    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "mimeType is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 45
    :cond_0
    const-string/jumbo v0, ""

    #@e
    if-ne p1, v0, :cond_1

    #@10
    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "mimeType is an empty string"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 49
    :cond_1
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 41
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 145
    instance-of v2, p1, Landroid/drm/DrmSupportInfo;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 146
    check-cast v0, Landroid/drm/DrmSupportInfo;

    #@8
    .line 147
    .local v0, "info":Landroid/drm/DrmSupportInfo;
    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    #@a
    iget-object v3, v0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 148
    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    #@14
    iget-object v3, v0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    .line 147
    if-eqz v2, :cond_0

    #@1c
    .line 149
    iget-object v1, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    #@1e
    iget-object v2, v0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    .line 147
    :cond_0
    return v1

    #@25
    .line 151
    .end local v0    # "info":Landroid/drm/DrmSupportInfo;
    :cond_1
    return v1
.end method

.method public getDescriprition()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFileSuffixIterator()Ljava/util/Iterator;
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
    .line 84
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMimeTypeIterator()Ljava/util/Iterator;
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
    .line 74
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    iget-object v1, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    #@f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@12
    move-result v1

    #@13
    add-int/2addr v0, v1

    #@14
    return v0
.end method

.method isSupportedFileSuffix(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileSuffix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isSupportedMimeType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v2, ""

    #@5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 175
    :cond_0
    const/4 v2, 0x0

    #@c
    return v2

    #@d
    .line 163
    :cond_1
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v2

    #@14
    if-ge v1, v2, :cond_0

    #@16
    .line 164
    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/lang/String;

    #@1e
    .line 170
    .local v0, "completeMimeType":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 171
    const/4 v2, 0x1

    #@25
    return v2

    #@26
    .line 163
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    if-nez p1, :cond_0

    #@2
    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "description is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 97
    :cond_0
    const-string/jumbo v0, ""

    #@e
    if-ne p1, v0, :cond_1

    #@10
    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "description is an empty string"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 101
    :cond_1
    iput-object p1, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    #@1b
    .line 93
    return-void
.end method
