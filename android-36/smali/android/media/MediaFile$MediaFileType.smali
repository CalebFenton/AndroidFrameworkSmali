.class public Landroid/media/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileType"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final greylist fileType:I

.field public final greylist mimeType:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 63
    iput-object p2, p0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 64
    return-void
.end method
