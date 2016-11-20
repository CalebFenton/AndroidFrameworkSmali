.class final enum Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
.super Ljava/lang/Enum;
.source "X509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/ssl/X509KeyManagerImpl$CheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

.field public static final enum EXPIRED:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

.field public static final enum EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

.field public static final enum OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 578
    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@5
    const-string/jumbo v1, "OK"

    #@8
    invoke-direct {v0, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@d
    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@f
    const-string/jumbo v1, "EXPIRED"

    #@12
    invoke-direct {v0, v1, v3}, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;-><init>(Ljava/lang/String;I)V

    #@15
    .line 579
    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXPIRED:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@17
    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@19
    const-string/jumbo v1, "EXTENSION_MISMATCH"

    #@1c
    invoke-direct {v0, v1, v4}, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 580
    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@21
    .line 577
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@24
    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXPIRED:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->$VALUES:[Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 577
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 577
    const-class v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    .locals 1

    #@0
    .prologue
    .line 577
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->$VALUES:[Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@2
    return-object v0
.end method
