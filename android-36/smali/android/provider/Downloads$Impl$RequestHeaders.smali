.class public Landroid/provider/Downloads$Impl$RequestHeaders;
.super Ljava/lang/Object;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Downloads$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestHeaders"
.end annotation


# static fields
.field public static final greylist-max-o COLUMN_DOWNLOAD_ID:Ljava/lang/String; = "download_id"

.field public static final greylist-max-o COLUMN_HEADER:Ljava/lang/String; = "header"

.field public static final greylist-max-o COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final greylist-max-o HEADERS_DB_TABLE:Ljava/lang/String; = "request_headers"

.field public static final greylist-max-r INSERT_KEY_PREFIX:Ljava/lang/String; = "http_header_"

.field public static final greylist-max-o URI_SEGMENT:Ljava/lang/String; = "headers"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
