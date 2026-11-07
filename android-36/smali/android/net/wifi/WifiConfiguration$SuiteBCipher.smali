.class public Landroid/net/wifi/WifiConfiguration$SuiteBCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuiteBCipher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$SuiteBCipher$SuiteBCipherScheme;
    }
.end annotation


# static fields
.field public static final blacklist ECDHE_ECDSA:I = 0x0

.field public static final blacklist ECDHE_RSA:I = 0x1

.field public static final blacklist strings:[Ljava/lang/String;

.field private static final blacklist varName:Ljava/lang/String; = "SuiteB"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 461
    const-string v0, "ECDHE_ECDSA"

    const-string v1, "ECDHE_RSA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$SuiteBCipher;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
