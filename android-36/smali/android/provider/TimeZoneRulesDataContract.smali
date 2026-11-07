.class public final Landroid/provider/TimeZoneRulesDataContract;
.super Ljava/lang/Object;
.source "TimeZoneRulesDataContract.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/TimeZoneRulesDataContract$Operation;
    }
.end annotation


# static fields
.field public static final whitelist AUTHORITY:Ljava/lang/String; = "com.android.timezone"

.field private static final greylist-max-o AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetAUTHORITY_URI()Landroid/net/Uri;
    .registers 1

    sget-object v0, Landroid/provider/TimeZoneRulesDataContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-string v0, "content://com.android.timezone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TimeZoneRulesDataContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
