.class public final Landroid/provider/ContactsContract$MetadataSyncState;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$MetadataSyncStateColumns;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataSyncState"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_metadata_sync_state"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_metadata_sync_state"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 10844
    sget-object v0, Landroid/provider/ContactsContract$MetadataSync;->METADATA_AUTHORITY_URI:Landroid/net/Uri;

    .line 10845
    const-string/jumbo v1, "metadata_sync_state"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$MetadataSyncState;->CONTENT_URI:Landroid/net/Uri;

    .line 10844
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 10838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10839
    return-void
.end method
