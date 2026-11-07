.class public final enum Ljava/security/cert/PKIXRevocationChecker$Option;
.super Ljava/lang/Enum;
.source "PKIXRevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/cert/PKIXRevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/security/cert/PKIXRevocationChecker$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum whitelist test-api NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum whitelist test-api ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum whitelist test-api PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum whitelist test-api SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;


# direct methods
.method private static synthetic blacklist $values()[Ljava/security/cert/PKIXRevocationChecker$Option;
    .registers 4

    .line 285
    sget-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    sget-object v2, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    sget-object v3, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    filled-new-array {v0, v1, v2, v3}, [Ljava/security/cert/PKIXRevocationChecker$Option;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 289
    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    const-string v1, "ONLY_END_ENTITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    .line 295
    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    const-string v1, "PREFER_CRLS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    .line 299
    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    const-string v1, "NO_FALLBACK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    .line 317
    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    const-string v1, "SOFT_FAIL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    .line 285
    invoke-static {}, Ljava/security/cert/PKIXRevocationChecker$Option;->$values()[Ljava/security/cert/PKIXRevocationChecker$Option;

    move-result-object v0

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->$VALUES:[Ljava/security/cert/PKIXRevocationChecker$Option;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 285
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/security/cert/PKIXRevocationChecker$Option;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 285
    const-class v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/security/cert/PKIXRevocationChecker$Option;
    .registers 1

    .line 285
    sget-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->$VALUES:[Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v0}, [Ljava/security/cert/PKIXRevocationChecker$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/PKIXRevocationChecker$Option;

    return-object v0
.end method
