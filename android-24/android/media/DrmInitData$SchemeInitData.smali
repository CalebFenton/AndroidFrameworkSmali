.class public final Landroid/media/DrmInitData$SchemeInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeInitData"
.end annotation


# instance fields
.field public final data:[B

.field public final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "data"    # [B

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    iput-object p1, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    #@5
    .line 66
    iput-object p2, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    #@7
    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 71
    instance-of v2, p1, Landroid/media/DrmInitData$SchemeInitData;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 72
    return v1

    #@6
    .line 74
    :cond_0
    if-ne p1, p0, :cond_1

    #@8
    .line 75
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 78
    nop

    #@c
    nop

    #@d
    .line 79
    .local v0, "other":Landroid/media/DrmInitData$SchemeInitData;
    iget-object v2, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    #@f
    iget-object v3, v0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    iget-object v1, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    #@19
    iget-object v2, v0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    #@1b
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@1e
    move-result v1

    #@1f
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    #@8
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    #@b
    move-result v1

    #@c
    mul-int/lit8 v1, v1, 0x1f

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method
