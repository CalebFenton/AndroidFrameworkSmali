.class public final Landroid/net/wifi/WifiEnterpriseConfig$Phase2;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phase2"
.end annotation


# static fields
.field public static final whitelist AKA:I = 0x6

.field public static final whitelist AKA_PRIME:I = 0x7

.field private static final greylist-max-o AUTHEAP_PREFIX:Ljava/lang/String; = "autheap="

.field private static final greylist-max-o AUTH_PREFIX:Ljava/lang/String; = "auth="

.field public static final whitelist GTC:I = 0x4

.field public static final whitelist MSCHAP:I = 0x2

.field public static final whitelist MSCHAPV2:I = 0x3

.field public static final whitelist NONE:I = 0x0

.field public static final whitelist PAP:I = 0x1

.field public static final whitelist SIM:I = 0x5

.field public static final greylist-max-o strings:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 695
    const-string v6, "AKA"

    const-string v7, "AKA\'"

    const-string v0, "NULL"

    const-string v1, "PAP"

    const-string v2, "MSCHAP"

    const-string v3, "MSCHAPV2"

    const-string v4, "GTC"

    const-string v5, "SIM"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
