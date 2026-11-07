.class public Landroid/net/wifi/WifiConfiguration$PairwiseCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PairwiseCipher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher$PairwiseCipherScheme;
    }
.end annotation


# static fields
.field public static final whitelist CCMP:I = 0x2

.field public static final whitelist GCMP_128:I = 0x5

.field public static final whitelist GCMP_256:I = 0x3

.field public static final whitelist NONE:I = 0x0

.field public static final whitelist SMS4:I = 0x4

.field public static final whitelist TKIP:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist strings:[Ljava/lang/String;

.field public static final whitelist varName:Ljava/lang/String; = "pairwise"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 341
    const-string v4, "SMS4"

    const-string v5, "GCMP_128"

    const-string v0, "NONE"

    const-string v1, "TKIP"

    const-string v2, "CCMP"

    const-string v3, "GCMP_256"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
