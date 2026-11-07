.class Ljava/util/zip/ZipOutputStream$XEntry;
.super Ljava/lang/Object;
.source "ZipOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XEntry"
.end annotation


# instance fields
.field final greylist-max-o entry:Ljava/util/zip/ZipEntry;

.field final greylist-max-o offset:J


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/zip/ZipEntry;J)V
    .registers 4
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .param p2, "offset"    # J

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 67
    iput-wide p2, p0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    .line 68
    return-void
.end method
