.class Landroid/media/MediaScanner$FileEntry;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileEntry"
.end annotation


# instance fields
.field greylist-max-q mLastModifiedChanged:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field greylist-max-q mRowId:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor greylist-max-q <init>(JLjava/lang/String;JI)V
    .registers 8
    .param p1, "rowId"    # J
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "lastModified"    # J
    .param p6, "format"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
