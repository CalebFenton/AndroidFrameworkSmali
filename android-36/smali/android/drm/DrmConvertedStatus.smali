.class public Landroid/drm/DrmConvertedStatus;
.super Ljava/lang/Object;
.source "DrmConvertedStatus.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist STATUS_ERROR:I = 0x3

.field public static final whitelist STATUS_INPUTDATA_ERROR:I = 0x2

.field public static final whitelist STATUS_OK:I = 0x1


# instance fields
.field public final whitelist convertedData:[B

.field public final whitelist offset:I

.field public final whitelist statusCode:I


# direct methods
.method public constructor whitelist <init>(I[BI)V
    .registers 7
    .param p1, "statusCode"    # I
    .param p2, "convertedData"    # [B
    .param p3, "offset"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-direct {p0, p1}, Landroid/drm/DrmConvertedStatus;->isValidStatusCode(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 75
    iput p1, p0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    .line 76
    iput-object p2, p0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    .line 77
    iput p3, p0, Landroid/drm/DrmConvertedStatus;->offset:I

    .line 78
    return-void

    .line 72
    :cond_10
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
.end method

.method private greylist-max-o isValidStatusCode(I)Z
    .registers 4
    .param p1, "statusCode"    # I

    .line 81
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    const/4 v1, 0x3

    if-ne p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0
.end method
