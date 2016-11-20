.class Landroid/media/MediaExtractor$2;
.super Landroid/media/DrmInitData;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaExtractor;->getDrmInitData()Landroid/media/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaExtractor;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Landroid/media/MediaExtractor;[B)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaExtractor;
    .param p2, "val$data"    # [B

    #@0
    .prologue
    .line 289
    iput-object p1, p0, Landroid/media/MediaExtractor$2;->this$0:Landroid/media/MediaExtractor;

    #@2
    iput-object p2, p0, Landroid/media/MediaExtractor$2;->val$data:[B

    #@4
    invoke-direct {p0}, Landroid/media/DrmInitData;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public get(Ljava/util/UUID;)Landroid/media/DrmInitData$SchemeInitData;
    .locals 3
    .param p1, "schemeUuid"    # Ljava/util/UUID;

    #@0
    .prologue
    .line 291
    new-instance v0, Landroid/media/DrmInitData$SchemeInitData;

    #@2
    const-string/jumbo v1, "webm"

    #@5
    iget-object v2, p0, Landroid/media/MediaExtractor$2;->val$data:[B

    #@7
    invoke-direct {v0, v1, v2}, Landroid/media/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    #@a
    return-object v0
.end method
