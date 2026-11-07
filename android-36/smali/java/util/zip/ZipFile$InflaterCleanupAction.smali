.class Ljava/util/zip/ZipFile$InflaterCleanupAction;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflaterCleanupAction"
.end annotation


# instance fields
.field private final blacklist inf:Ljava/util/zip/Inflater;

.field private final blacklist res:Ljava/util/zip/ZipFile$CleanableResource;


# direct methods
.method constructor blacklist <init>(Ljava/util/zip/Inflater;Ljava/util/zip/ZipFile$CleanableResource;)V
    .registers 3
    .param p1, "inf"    # Ljava/util/zip/Inflater;
    .param p2, "res"    # Ljava/util/zip/ZipFile$CleanableResource;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p1, p0, Ljava/util/zip/ZipFile$InflaterCleanupAction;->inf:Ljava/util/zip/Inflater;

    .line 449
    iput-object p2, p0, Ljava/util/zip/ZipFile$InflaterCleanupAction;->res:Ljava/util/zip/ZipFile$CleanableResource;

    .line 450
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 454
    iget-object v0, p0, Ljava/util/zip/ZipFile$InflaterCleanupAction;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v1, p0, Ljava/util/zip/ZipFile$InflaterCleanupAction;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile$CleanableResource;->releaseInflater(Ljava/util/zip/Inflater;)V

    .line 455
    return-void
.end method
