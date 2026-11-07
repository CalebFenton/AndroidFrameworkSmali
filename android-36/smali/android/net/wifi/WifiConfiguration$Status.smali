.class public Landroid/net/wifi/WifiConfiguration$Status;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final whitelist CURRENT:I = 0x0

.field public static final whitelist DISABLED:I = 0x1

.field public static final whitelist ENABLED:I = 0x2

.field public static final whitelist strings:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 475
    const-string v0, "disabled"

    const-string v1, "enabled"

    const-string v2, "current"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$Status;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
