.class public final Landroid/provider/CloudMediaProviderContract$AlbumColumns;
.super Ljava/lang/Object;
.source "CloudMediaProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CloudMediaProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumColumns"
.end annotation


# static fields
.field public static final blacklist ALBUM_ID_CAMERA:Ljava/lang/String; = "Camera"

.field public static final blacklist ALBUM_ID_DOWNLOADS:Ljava/lang/String; = "Downloads"

.field public static final blacklist ALBUM_ID_FAVORITES:Ljava/lang/String; = "Favorites"

.field public static final blacklist ALBUM_ID_SCREENSHOTS:Ljava/lang/String; = "Screenshots"

.field public static final blacklist ALBUM_ID_VIDEOS:Ljava/lang/String; = "Videos"

.field public static final blacklist ALL_PROJECTION:[Ljava/lang/String;

.field public static final blacklist AUTHORITY:Ljava/lang/String; = "authority"

.field public static final whitelist DATE_TAKEN_MILLIS:Ljava/lang/String; = "date_taken_millis"

.field public static final whitelist DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final whitelist ID:Ljava/lang/String; = "id"

.field public static final blacklist IS_LOCAL:Ljava/lang/String; = "is_local"

.field public static final whitelist MEDIA_COUNT:Ljava/lang/String; = "album_media_count"

.field public static final whitelist MEDIA_COVER_ID:Ljava/lang/String; = "album_media_cover_id"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 619
    const-string v4, "album_media_count"

    const-string v5, "authority"

    const-string v0, "id"

    const-string v1, "date_taken_millis"

    const-string v2, "display_name"

    const-string v3, "album_media_cover_id"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CloudMediaProviderContract$AlbumColumns;->ALL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
