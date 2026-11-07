.class public final Landroid/provider/CloudMediaProviderContract$MediaColumns;
.super Ljava/lang/Object;
.source "CloudMediaProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CloudMediaProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaColumns"
.end annotation


# static fields
.field public static final blacklist ALL_PROJECTION:[Ljava/lang/String;

.field public static final blacklist AUTHORITY:Ljava/lang/String; = "authority"

.field public static final blacklist DATA:Ljava/lang/String; = "data"

.field public static final whitelist DATE_TAKEN_MILLIS:Ljava/lang/String; = "date_taken_millis"

.field public static final whitelist DURATION_MILLIS:Ljava/lang/String; = "duration_millis"

.field public static final whitelist HEIGHT:Ljava/lang/String; = "height"

.field public static final whitelist ID:Ljava/lang/String; = "id"

.field public static final whitelist IS_FAVORITE:Ljava/lang/String; = "is_favorite"

.field public static final whitelist MEDIA_STORE_URI:Ljava/lang/String; = "media_store_uri"

.field public static final whitelist MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final whitelist ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final blacklist OWNER_PACKAGE_NAME:Ljava/lang/String; = "owner_package_name"

.field public static final whitelist SIZE_BYTES:Ljava/lang/String; = "size_bytes"

.field public static final whitelist STANDARD_MIME_TYPE_EXTENSION:Ljava/lang/String; = "standard_mime_type_extension"

.field public static final whitelist STANDARD_MIME_TYPE_EXTENSION_ANIMATED_WEBP:I = 0x3

.field public static final whitelist STANDARD_MIME_TYPE_EXTENSION_GIF:I = 0x1

.field public static final whitelist STANDARD_MIME_TYPE_EXTENSION_MOTION_PHOTO:I = 0x2

.field public static final whitelist STANDARD_MIME_TYPE_EXTENSION_NONE:I = 0x0

.field public static final whitelist SYNC_GENERATION:Ljava/lang/String; = "sync_generation"

.field public static final blacklist USER_ID:Ljava/lang/String; = "_user_id"

.field public static final whitelist WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 501
    const-string v15, "owner_package_name"

    const-string v16, "_user_id"

    const-string v1, "id"

    const-string v2, "date_taken_millis"

    const-string v3, "sync_generation"

    const-string v4, "mime_type"

    const-string v5, "standard_mime_type_extension"

    const-string v6, "size_bytes"

    const-string v7, "media_store_uri"

    const-string v8, "duration_millis"

    const-string v9, "is_favorite"

    const-string v10, "width"

    const-string v11, "height"

    const-string v12, "orientation"

    const-string v13, "data"

    const-string v14, "authority"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CloudMediaProviderContract$MediaColumns;->ALL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
