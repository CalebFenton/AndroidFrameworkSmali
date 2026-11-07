.class public final Landroid/provider/TimeZoneRulesDataContract$Operation;
.super Ljava/lang/Object;
.source "TimeZoneRulesDataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/TimeZoneRulesDataContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation


# static fields
.field public static final whitelist COLUMN_DISTRO_MAJOR_VERSION:Ljava/lang/String; = "distro_major_version"

.field public static final whitelist COLUMN_DISTRO_MINOR_VERSION:Ljava/lang/String; = "distro_minor_version"

.field public static final whitelist COLUMN_REVISION:Ljava/lang/String; = "revision"

.field public static final whitelist COLUMN_RULES_VERSION:Ljava/lang/String; = "rules_version"

.field public static final whitelist COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist TYPE_INSTALL:Ljava/lang/String; = "INSTALL"

.field public static final whitelist TYPE_NO_OP:Ljava/lang/String; = "NOOP"

.field public static final whitelist TYPE_UNINSTALL:Ljava/lang/String; = "UNINSTALL"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 63
    invoke-static {}, Landroid/provider/TimeZoneRulesDataContract;->-$$Nest$sfgetAUTHORITY_URI()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "operation"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TimeZoneRulesDataContract$Operation;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method
