.class public Landroid/drm/DrmConvertedStatus;
.super Ljava/lang/Object;
.source "DrmConvertedStatus.java"


# static fields
.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_INPUTDATA_ERROR:I = 0x2

.field public static final STATUS_OK:I = 0x1


# instance fields
.field public final convertedData:[B

.field public final offset:I

.field public final statusCode:I


# direct methods
.method public constructor <init>(I[BI)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "convertedData"    # [B
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    invoke-direct {p0, p1}, Landroid/drm/DrmConvertedStatus;->isValidStatusCode(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Unsupported status code: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 73
    :cond_0
    iput p1, p0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    #@25
    .line 74
    iput-object p2, p0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    #@27
    .line 75
    iput p3, p0, Landroid/drm/DrmConvertedStatus;->offset:I

    #@29
    .line 68
    return-void
.end method

.method private isValidStatusCode(I)Z
    .locals 2
    .param p1, "statusCode"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 79
    if-eq p1, v0, :cond_0

    #@3
    .line 80
    const/4 v1, 0x2

    #@4
    if-ne p1, v1, :cond_1

    #@6
    .line 79
    :cond_0
    :goto_0
    return v0

    #@7
    .line 81
    :cond_1
    const/4 v1, 0x3

    #@8
    if-eq p1, v1, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
