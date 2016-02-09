.class public Landroid/provider/BrowserContract;
.super Ljava/lang/Object;
.source "BrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BrowserContract$BaseSyncColumns;,
        Landroid/provider/BrowserContract$ChromeSyncColumns;,
        Landroid/provider/BrowserContract$SyncColumns;,
        Landroid/provider/BrowserContract$CommonColumns;,
        Landroid/provider/BrowserContract$ImageColumns;,
        Landroid/provider/BrowserContract$HistoryColumns;,
        Landroid/provider/BrowserContract$ImageMappingColumns;,
        Landroid/provider/BrowserContract$Bookmarks;,
        Landroid/provider/BrowserContract$Accounts;,
        Landroid/provider/BrowserContract$History;,
        Landroid/provider/BrowserContract$Searches;,
        Landroid/provider/BrowserContract$SyncState;,
        Landroid/provider/BrowserContract$Images;,
        Landroid/provider/BrowserContract$ImageMappings;,
        Landroid/provider/BrowserContract$Combined;,
        Landroid/provider/BrowserContract$Settings;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.browser"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final PARAM_LIMIT:Ljava/lang/String; = "limit"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    const-string/jumbo v0, "content://com.android.browser"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@9
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
