.class public final Landroid/provider/MediaStore$Video;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Video$Thumbnails;,
        Landroid/provider/MediaStore$Video$Media;,
        Landroid/provider/MediaStore$Video$VideoColumns;
    }
.end annotation


# static fields
.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "_display_name"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 4367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4381
    const/4 v4, 0x0

    const-string v5, "_display_name"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .local v0, "cr":Landroid/content/ContentResolver;
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
