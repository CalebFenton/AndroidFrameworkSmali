.class public final Landroid/net/wifi/WifiEnterpriseConfig$Eap;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eap"
.end annotation


# static fields
.field public static final AKA:I = 0x5

.field public static final AKA_PRIME:I = 0x6

.field public static final NONE:I = -0x1

.field public static final PEAP:I = 0x0

.field public static final PWD:I = 0x3

.field public static final SIM:I = 0x4

.field public static final TLS:I = 0x1

.field public static final TTLS:I = 0x2

.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 243
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "PEAP"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "TLS"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "TTLS"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "PWD"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const-string/jumbo v1, "SIM"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    const-string/jumbo v1, "AKA"

    #@24
    const/4 v2, 0x5

    #@25
    aput-object v1, v0, v2

    #@27
    const-string/jumbo v1, "AKA\'"

    #@2a
    const/4 v2, 0x6

    #@2b
    aput-object v1, v0, v2

    #@2d
    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    #@2f
    .line 225
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
