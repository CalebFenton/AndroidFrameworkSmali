.class public final Landroid/provider/CloudMediaProviderContract$SearchSuggestionColumns;
.super Ljava/lang/Object;
.source "CloudMediaProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CloudMediaProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchSuggestionColumns"
.end annotation


# static fields
.field public static final blacklist ALL_PROJECTION:[Ljava/lang/String;

.field public static final whitelist DISPLAY_TEXT:Ljava/lang/String; = "display_text"

.field public static final whitelist MEDIA_COVER_ID:Ljava/lang/String; = "media_cover_id"

.field public static final whitelist MEDIA_SET_ID:Ljava/lang/String; = "media_set_id"

.field public static final whitelist TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1438
    const-string v0, "type"

    const-string v1, "media_cover_id"

    const-string v2, "media_set_id"

    const-string v3, "display_text"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CloudMediaProviderContract$SearchSuggestionColumns;->ALL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
