.class public Landroid/provider/CallLog$Locations;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Locations"
.end annotation


# static fields
.field public static final whitelist AUTHORITY:Ljava/lang/String; = "call_composer_locations"

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/call_composer_location"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/call_composer_location"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist LATITUDE:Ljava/lang/String; = "latitude"

.field public static final whitelist LONGITUDE:Ljava/lang/String; = "longitude"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2303
    const-string v0, "content://call_composer_locations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Locations;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 2282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
