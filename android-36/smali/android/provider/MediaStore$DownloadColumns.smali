.class public interface abstract Landroid/provider/MediaStore$DownloadColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$MediaColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadColumns"
.end annotation


# static fields
.field public static final greylist DESCRIPTION:Ljava/lang/String; = "description"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DOWNLOAD_URI:Ljava/lang/String; = "download_uri"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final whitelist REFERER_URI:Ljava/lang/String; = "referer_uri"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field
