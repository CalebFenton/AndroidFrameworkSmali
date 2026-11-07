.class public final enum Ljava/security/cert/PKIXReason;
.super Ljava/lang/Enum;
.source "PKIXReason.java"

# interfaces
.implements Ljava/security/cert/CertPathValidatorException$Reason;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/security/cert/PKIXReason;",
        ">;",
        "Ljava/security/cert/CertPathValidatorException$Reason;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api INVALID_NAME:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api INVALID_POLICY:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api NAME_CHAINING:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api NOT_CA_CERT:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;


# direct methods
.method private static synthetic blacklist $values()[Ljava/security/cert/PKIXReason;
    .registers 8

    .line 36
    sget-object v0, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    sget-object v1, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    sget-object v2, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    sget-object v3, Ljava/security/cert/PKIXReason;->NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

    sget-object v4, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    sget-object v5, Ljava/security/cert/PKIXReason;->NOT_CA_CERT:Ljava/security/cert/PKIXReason;

    sget-object v6, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    sget-object v7, Ljava/security/cert/PKIXReason;->INVALID_NAME:Ljava/security/cert/PKIXReason;

    filled-new-array/range {v0 .. v7}, [Ljava/security/cert/PKIXReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "NAME_CHAINING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    .line 45
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "INVALID_KEY_USAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    .line 50
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "INVALID_POLICY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    .line 55
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "NO_TRUST_ANCHOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

    .line 61
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "UNRECOGNIZED_CRIT_EXT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    .line 66
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "NOT_CA_CERT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->NOT_CA_CERT:Ljava/security/cert/PKIXReason;

    .line 71
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "PATH_TOO_LONG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    .line 76
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "INVALID_NAME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->INVALID_NAME:Ljava/security/cert/PKIXReason;

    .line 36
    invoke-static {}, Ljava/security/cert/PKIXReason;->$values()[Ljava/security/cert/PKIXReason;

    move-result-object v0

    sput-object v0, Ljava/security/cert/PKIXReason;->$VALUES:[Ljava/security/cert/PKIXReason;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/security/cert/PKIXReason;
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

    .line 36
    const-class v0, Ljava/security/cert/PKIXReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXReason;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/security/cert/PKIXReason;
    .registers 1

    .line 36
    sget-object v0, Ljava/security/cert/PKIXReason;->$VALUES:[Ljava/security/cert/PKIXReason;

    invoke-virtual {v0}, [Ljava/security/cert/PKIXReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/PKIXReason;

    return-object v0
.end method
