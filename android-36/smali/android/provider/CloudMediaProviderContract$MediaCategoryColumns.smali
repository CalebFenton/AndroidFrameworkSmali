.class public final Landroid/provider/CloudMediaProviderContract$MediaCategoryColumns;
.super Ljava/lang/Object;
.source "CloudMediaProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CloudMediaProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaCategoryColumns"
.end annotation


# static fields
.field public static final blacklist ALL_PROJECTION:[Ljava/lang/String;

.field public static final whitelist DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final whitelist ID:Ljava/lang/String; = "id"

.field public static final whitelist MEDIA_CATEGORY_TYPE:Ljava/lang/String; = "media_category_type"

.field public static final whitelist MEDIA_COVER_ID1:Ljava/lang/String; = "media_cover_id1"

.field public static final whitelist MEDIA_COVER_ID2:Ljava/lang/String; = "media_cover_id2"

.field public static final whitelist MEDIA_COVER_ID3:Ljava/lang/String; = "media_cover_id3"

.field public static final whitelist MEDIA_COVER_ID4:Ljava/lang/String; = "media_cover_id4"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 1325
    const-string v5, "media_cover_id3"

    const-string v6, "media_cover_id4"

    const-string v0, "id"

    const-string v1, "display_name"

    const-string v2, "media_category_type"

    const-string v3, "media_cover_id1"

    const-string v4, "media_cover_id2"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CloudMediaProviderContract$MediaCategoryColumns;->ALL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
