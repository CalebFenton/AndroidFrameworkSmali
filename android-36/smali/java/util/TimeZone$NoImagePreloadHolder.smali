.class Ljava/util/TimeZone$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "TimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field public static final greylist-max-o CUSTOM_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 187
    nop

    .line 188
    const-string v0, "^GMT[-+](\\d{1,2})((\\d\\d)|:((\\d\\d)(:(\\d\\d))?))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/TimeZone$NoImagePreloadHolder;->CUSTOM_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 187
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
