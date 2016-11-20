.class public Lcom/google/android/mms/util/DownloadDrmHelper;
.super Ljava/lang/Object;
.source "DownloadDrmHelper.java"


# static fields
.field public static final EXTENSION_DRM_MESSAGE:Ljava/lang/String; = ".dm"

.field public static final EXTENSION_INTERNAL_FWDL:Ljava/lang/String; = ".fl"

.field public static final MIMETYPE_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field private static final TAG:Ljava/lang/String; = "DownloadDrmHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getOriginalMimeType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containingMime"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    move-object v3, p2

    #@1
    .line 98
    .local v3, "result":Ljava/lang/String;
    new-instance v0, Landroid/drm/DrmManagerClient;

    #@3
    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    #@6
    .line 100
    .local v0, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v4, 0x0

    #@7
    :try_start_0
    invoke-virtual {v0, p1, v4}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 101
    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v3

    #@11
    .line 109
    :cond_0
    :goto_0
    return-object v3

    #@12
    .line 106
    :catch_0
    move-exception v2

    #@13
    .line 107
    .local v2, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "DownloadDrmHelper"

    #@16
    const-string/jumbo v5, "DrmManagerClient didn\'t initialize properly."

    #@19
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    goto :goto_0

    #@1d
    .line 103
    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    #@1e
    .line 104
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "DownloadDrmHelper"

    #@21
    .line 105
    const-string/jumbo v5, "Can\'t get original mime type since path is null or empty string."

    #@24
    .line 104
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    goto :goto_0
.end method

.method public static isDrmConvertNeeded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimetype"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    const-string/jumbo v0, "application/vnd.oma.drm.message"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static isDrmMimeType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimetype"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    const/4 v3, 0x0

    #@1
    .line 44
    .local v3, "result":Z
    if-eqz p0, :cond_0

    #@3
    .line 46
    :try_start_0
    new-instance v0, Landroid/drm/DrmManagerClient;

    #@5
    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    #@8
    .line 47
    .local v0, "drmClient":Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_0

    #@a
    if-eqz p1, :cond_0

    #@c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v4

    #@10
    if-lez v4, :cond_0

    #@12
    .line 48
    const-string/jumbo v4, ""

    #@15
    invoke-virtual {v0, v4, p1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v3

    #@19
    .line 57
    .end local v0    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v3    # "result":Z
    :cond_0
    :goto_0
    return v3

    #@1a
    .line 53
    .restart local v3    # "result":Z
    :catch_0
    move-exception v2

    #@1b
    .line 54
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "DownloadDrmHelper"

    #@1e
    const-string/jumbo v5, "DrmManagerClient didn\'t initialize properly."

    #@21
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    goto :goto_0

    #@25
    .line 50
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    #@26
    .line 51
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "DownloadDrmHelper"

    #@29
    .line 52
    const-string/jumbo v5, "DrmManagerClient instance could not be created, context is Illegal."

    #@2c
    .line 51
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    goto :goto_0
.end method

.method public static modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    if-eqz p0, :cond_1

    #@2
    .line 77
    const-string/jumbo v1, "."

    #@5
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    .line 78
    .local v0, "extensionIndex":I
    const/4 v1, -0x1

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 79
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    .line 81
    :cond_0
    const-string/jumbo v1, ".fl"

    #@14
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object p0

    #@18
    .line 83
    .end local v0    # "extensionIndex":I
    :cond_1
    return-object p0
.end method
