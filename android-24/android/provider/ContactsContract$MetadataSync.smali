.class public final Landroid/provider/ContactsContract$MetadataSync;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$MetadataSyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataSync"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_metadata"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_metadata"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final METADATA_AUTHORITY:Ljava/lang/String; = "com.android.contacts.metadata"

.field public static final METADATA_AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 9395
    const-string/jumbo v0, "content://com.android.contacts.metadata"

    #@3
    .line 9394
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/ContactsContract$MetadataSync;->METADATA_AUTHORITY_URI:Landroid/net/Uri;

    #@9
    .line 9406
    sget-object v0, Landroid/provider/ContactsContract$MetadataSync;->METADATA_AUTHORITY_URI:Landroid/net/Uri;

    #@b
    .line 9407
    const-string/jumbo v1, "metadata_sync"

    #@e
    .line 9406
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Landroid/provider/ContactsContract$MetadataSync;->CONTENT_URI:Landroid/net/Uri;

    #@14
    .line 9388
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 9400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
