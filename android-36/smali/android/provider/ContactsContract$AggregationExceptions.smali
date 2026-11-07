.class public final Landroid/provider/ContactsContract$AggregationExceptions;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AggregationExceptions"
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/aggregation_exception"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/aggregation_exception"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist RAW_CONTACT_ID1:Ljava/lang/String; = "raw_contact_id1"

.field public static final whitelist RAW_CONTACT_ID2:Ljava/lang/String; = "raw_contact_id2"

.field public static final whitelist TYPE:Ljava/lang/String; = "type"

.field public static final whitelist TYPE_AUTOMATIC:I = 0x0

.field public static final whitelist TYPE_KEEP_SEPARATE:I = 0x2

.field public static final whitelist TYPE_KEEP_TOGETHER:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 8813
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 8814
    const-string v1, "aggregation_exceptions"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    .line 8813
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 8808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
