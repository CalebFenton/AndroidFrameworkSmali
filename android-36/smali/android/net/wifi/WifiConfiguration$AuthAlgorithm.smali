.class public Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm$AuthAlgorithmScheme;
    }
.end annotation


# static fields
.field public static final whitelist LEAP:I = 0x2

.field public static final whitelist OPEN:I = 0x0

.field public static final whitelist SAE:I = 0x3

.field public static final whitelist SHARED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist strings:[Ljava/lang/String;

.field public static final whitelist varName:Ljava/lang/String; = "auth_alg"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 302
    const-string v0, "LEAP"

    const-string v1, "SAE"

    const-string v2, "OPEN"

    const-string v3, "SHARED"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
