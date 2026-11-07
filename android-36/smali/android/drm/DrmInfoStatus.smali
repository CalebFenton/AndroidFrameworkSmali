.class public Landroid/drm/DrmInfoStatus;
.super Ljava/lang/Object;
.source "DrmInfoStatus.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist STATUS_ERROR:I = 0x2

.field public static final whitelist STATUS_OK:I = 0x1


# instance fields
.field public final whitelist data:Landroid/drm/ProcessedData;

.field public final whitelist infoType:I

.field public final whitelist mimeType:Ljava/lang/String;

.field public final whitelist statusCode:I


# direct methods
.method public constructor whitelist <init>(IILandroid/drm/ProcessedData;Ljava/lang/String;)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "infoType"    # I
    .param p3, "data"    # Landroid/drm/ProcessedData;
    .param p4, "mimeType"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p2}, Landroid/drm/DrmInfoRequest;->isValidType(I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 81
    invoke-direct {p0, p1}, Landroid/drm/DrmInfoStatus;->isValidStatusCode(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 85
    if-eqz p4, :cond_1e

    const-string v0, ""

    if-eq p4, v0, :cond_1e

    .line 89
    iput p1, p0, Landroid/drm/DrmInfoStatus;->statusCode:I

    .line 90
    iput p2, p0, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 91
    iput-object p3, p0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    .line 92
    iput-object p4, p0, Landroid/drm/DrmInfoStatus;->mimeType:Ljava/lang/String;

    .line 93
    return-void

    .line 86
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mimeType is null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "infoType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isValidStatusCode(I)Z
    .registers 4
    .param p1, "statusCode"    # I

    .line 96
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method
