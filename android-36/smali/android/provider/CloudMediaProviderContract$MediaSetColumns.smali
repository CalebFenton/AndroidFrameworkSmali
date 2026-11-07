.class public final Landroid/provider/CloudMediaProviderContract$MediaSetColumns;
.super Ljava/lang/Object;
.source "CloudMediaProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CloudMediaProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSetColumns"
.end annotation


# static fields
.field public static final blacklist ALL_PROJECTION:[Ljava/lang/String;

.field public static final whitelist DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final whitelist ID:Ljava/lang/String; = "id"

.field public static final whitelist MEDIA_COUNT:Ljava/lang/String; = "media_count"

.field public static final whitelist MEDIA_COVER_ID:Ljava/lang/String; = "media_cover_id"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1207
    const-string v0, "media_count"

    const-string v1, "media_cover_id"

    const-string v2, "id"

    const-string v3, "display_name"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CloudMediaProviderContract$MediaSetColumns;->ALL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
