.class public final Landroid/provider/LiveFolders;
.super Ljava/lang/Object;
.source "LiveFolders.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ACTION_CREATE_LIVE_FOLDER:Ljava/lang/String; = "android.intent.action.CREATE_LIVE_FOLDER"

.field public static final whitelist DESCRIPTION:Ljava/lang/String; = "description"

.field public static final whitelist DISPLAY_MODE_GRID:I = 0x1

.field public static final whitelist DISPLAY_MODE_LIST:I = 0x2

.field public static final whitelist EXTRA_LIVE_FOLDER_BASE_INTENT:Ljava/lang/String; = "android.intent.extra.livefolder.BASE_INTENT"

.field public static final whitelist EXTRA_LIVE_FOLDER_DISPLAY_MODE:Ljava/lang/String; = "android.intent.extra.livefolder.DISPLAY_MODE"

.field public static final whitelist EXTRA_LIVE_FOLDER_ICON:Ljava/lang/String; = "android.intent.extra.livefolder.ICON"

.field public static final whitelist EXTRA_LIVE_FOLDER_NAME:Ljava/lang/String; = "android.intent.extra.livefolder.NAME"

.field public static final whitelist ICON_BITMAP:Ljava/lang/String; = "icon_bitmap"

.field public static final whitelist ICON_PACKAGE:Ljava/lang/String; = "icon_package"

.field public static final whitelist ICON_RESOURCE:Ljava/lang/String; = "icon_resource"

.field public static final whitelist INTENT:Ljava/lang/String; = "intent"

.field public static final whitelist NAME:Ljava/lang/String; = "name"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    return-void
.end method
