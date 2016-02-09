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
.field public static final GTC:I = 0x4

.field public static final MSCHAP:I = 0x2

.field public static final MSCHAPV2:I = 0x3

.field public static final NONE:I = 0x0

.field public static final PAP:I = 0x1

.field private static final PREFIX:Ljava/lang/String; = "auth="

.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 262
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "NULL"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "PAP"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "MSCHAP"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 263
    const-string/jumbo v1, "MSCHAPV2"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const-string/jumbo v1, "GTC"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 262
    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    #@23
    .line 250
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
