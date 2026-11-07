.class public Landroid/net/wifi/WifiConfiguration$GroupCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupCipher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$GroupCipher$GroupCipherScheme;
    }
.end annotation


# static fields
.field public static final whitelist CCMP:I = 0x3

.field public static final whitelist GCMP_128:I = 0x7

.field public static final whitelist GCMP_256:I = 0x5

.field public static final greylist-max-o GTK_NOT_USED:I = 0x4

.field public static final whitelist SMS4:I = 0x6

.field public static final whitelist TKIP:I = 0x2

.field public static final whitelist WEP104:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WEP40:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist strings:[Ljava/lang/String;

.field public static final whitelist varName:Ljava/lang/String; = "group"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 396
    const-string v6, "SMS4"

    const-string v7, "GCMP_128"

    const-string v0, "WEP40"

    const-string v1, "WEP104"

    const-string v2, "TKIP"

    const-string v3, "CCMP"

    const-string v4, "GTK_NOT_USED"

    const-string v5, "GCMP_256"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
