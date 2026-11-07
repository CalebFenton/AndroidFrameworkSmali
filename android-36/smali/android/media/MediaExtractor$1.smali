.class Landroid/media/MediaExtractor$1;
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
.field final synthetic blacklist val$initDataMap:Ljava/util/Map;

.field final synthetic blacklist val$schemeInitDatas:[Landroid/media/DrmInitData$SchemeInitData;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaExtractor;Ljava/util/Map;[Landroid/media/DrmInitData$SchemeInitData;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/MediaExtractor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 400
    iput-object p2, p0, Landroid/media/MediaExtractor$1;->val$initDataMap:Ljava/util/Map;

    iput-object p3, p0, Landroid/media/MediaExtractor$1;->val$schemeInitDatas:[Landroid/media/DrmInitData$SchemeInitData;

    invoke-direct {p0}, Landroid/media/DrmInitData;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist get(Ljava/util/UUID;)Landroid/media/DrmInitData$SchemeInitData;
    .registers 3
    .param p1, "schemeUuid"    # Ljava/util/UUID;

    .line 402
    iget-object v0, p0, Landroid/media/MediaExtractor$1;->val$initDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/DrmInitData$SchemeInitData;

    return-object v0
.end method

.method public whitelist getSchemeInitDataAt(I)Landroid/media/DrmInitData$SchemeInitData;
    .registers 3
    .param p1, "index"    # I

    .line 412
    iget-object v0, p0, Landroid/media/MediaExtractor$1;->val$schemeInitDatas:[Landroid/media/DrmInitData$SchemeInitData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist getSchemeInitDataCount()I
    .registers 2

    .line 407
    iget-object v0, p0, Landroid/media/MediaExtractor$1;->val$schemeInitDatas:[Landroid/media/DrmInitData$SchemeInitData;

    array-length v0, v0

    return v0
.end method
