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
.field final synthetic this$0:Landroid/media/MediaExtractor;

.field final synthetic val$initDataMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/media/MediaExtractor;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaExtractor;

    #@0
    .prologue
    .line 273
    .local p2, "val$initDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Landroid/media/DrmInitData$SchemeInitData;>;"
    iput-object p1, p0, Landroid/media/MediaExtractor$1;->this$0:Landroid/media/MediaExtractor;

    #@2
    iput-object p2, p0, Landroid/media/MediaExtractor$1;->val$initDataMap:Ljava/util/Map;

    #@4
    invoke-direct {p0}, Landroid/media/DrmInitData;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public get(Ljava/util/UUID;)Landroid/media/DrmInitData$SchemeInitData;
    .locals 1
    .param p1, "schemeUuid"    # Ljava/util/UUID;

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Landroid/media/MediaExtractor$1;->val$initDataMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/DrmInitData$SchemeInitData;

    #@8
    return-object v0
.end method
