.class public Landroid/drm/DrmSupportInfo;
.super Ljava/lang/Object;
.source "DrmSupportInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mDescription:Ljava/lang/String;

.field private final greylist-max-o mFileSuffixList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMimeTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist addFileSuffix(Ljava/lang/String;)V
    .registers 4
    .param p1, "fileSuffix"    # Ljava/lang/String;

    .line 62
    const-string v0, ""

    if-eq p1, v0, :cond_a

    .line 66
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void

    .line 63
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileSuffix is an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addMimeType(Ljava/lang/String;)V
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 44
    if-eqz p1, :cond_15

    .line 47
    const-string v0, ""

    if-eq p1, v0, :cond_c

    .line 51
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void

    .line 48
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mimeType is an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mimeType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 147
    instance-of v0, p1, Landroid/drm/DrmSupportInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 148
    move-object v0, p1

    check-cast v0, Landroid/drm/DrmSupportInfo;

    .line 149
    .local v0, "info":Landroid/drm/DrmSupportInfo;
    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    iget-object v3, v0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 149
    :goto_29
    return v1

    .line 153
    .end local v0    # "info":Landroid/drm/DrmSupportInfo;
    :cond_2a
    return v1
.end method

.method public whitelist getDescriprition()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFileSuffixIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMimeTypeIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 135
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method greylist-max-o isSupportedFileSuffix(Ljava/lang/String;)Z
    .registers 3
    .param p1, "fileSuffix"    # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o isSupportedMimeType(Ljava/lang/String;)Z
    .registers 5
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 164
    if-eqz p1, :cond_26

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 166
    iget-object v1, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    .local v1, "completeMimeType":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 173
    const/4 v2, 0x1

    return v2

    .line 165
    .end local v1    # "completeMimeType":Ljava/lang/String;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 177
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setDescription(Ljava/lang/String;)V
    .registers 4
    .param p1, "description"    # Ljava/lang/String;

    .line 96
    if-eqz p1, :cond_11

    .line 99
    const-string v0, ""

    if-eq p1, v0, :cond_9

    .line 103
    iput-object p1, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    .line 104
    return-void

    .line 100
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "description is an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "description is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
