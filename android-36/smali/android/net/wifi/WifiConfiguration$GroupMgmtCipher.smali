.class public Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupMgmtCipher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher$GroupMgmtCipherScheme;
    }
.end annotation


# static fields
.field public static final whitelist BIP_CMAC_256:I = 0x0

.field public static final whitelist BIP_GMAC_128:I = 0x1

.field public static final whitelist BIP_GMAC_256:I = 0x2

.field public static final blacklist strings:[Ljava/lang/String;

.field private static final blacklist varName:Ljava/lang/String; = "groupMgmt"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 431
    const-string v0, "BIP_GMAC_128"

    const-string v1, "BIP_GMAC_256"

    const-string v2, "BIP_CMAC_256"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
