.class public final Landroid/provider/CalendarContract$Colors;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/CalendarContract$ColorsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Colors"
.end annotation


# static fields
.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o TABLE_NAME:Ljava/lang/String; = "Colors"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2732
    const-string v0, "content://com.android.calendar/colors"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Colors;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2738
    return-void
.end method
