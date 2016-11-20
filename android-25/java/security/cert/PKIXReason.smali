.class public final enum Ljava/security/cert/PKIXReason;
.super Ljava/lang/Enum;
.source "PKIXReason.java"

# interfaces
.implements Ljava/security/cert/CertPathValidatorException$Reason;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/security/cert/PKIXReason;",
        ">;",
        "Ljava/security/cert/CertPathValidatorException$Reason;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/security/cert/PKIXReason;

.field public static final enum INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

.field public static final enum INVALID_NAME:Ljava/security/cert/PKIXReason;

.field public static final enum INVALID_POLICY:Ljava/security/cert/PKIXReason;

.field public static final enum NAME_CHAINING:Ljava/security/cert/PKIXReason;

.field public static final enum NOT_CA_CERT:Ljava/security/cert/PKIXReason;

.field public static final enum NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

.field public static final enum PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

.field public static final enum UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 37
    new-instance v0, Ljava/security/cert/PKIXReason;

    #@7
    const-string/jumbo v1, "NAME_CHAINING"

    #@a
    invoke-direct {v0, v1, v3}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    #@d
    .line 40
    sput-object v0, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    #@f
    .line 42
    new-instance v0, Ljava/security/cert/PKIXReason;

    #@11
    const-string/jumbo v1, "INVALID_KEY_USAGE"

    #@14
    invoke-direct {v0, v1, v4}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    #@17
    .line 45
    sput-object v0, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    #@19
    .line 47
    new-instance v0, Ljava/security/cert/PKIXReason;

    #@1b
    const-string/jumbo v1, "INVALID_POLICY"

    #@1e
    invoke-direct {v0, v1, v5}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    #@21
    .line 50
    sput-object v0, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    #@23
    .line 52
    new-instance v0, Ljava/security/cert/PKIXReason;

    #@25
    const-string/jumbo v1, "NO_TRUST_ANCHOR"

    #@28
    invoke-direct {v0, v1, v6}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 55
    sput-object v0, Ljava/security/cert/PKIXReason;->NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

    #@2d
    .line 57
    new-instance v0, Ljava/security/cert/PKIXReason;

    #@2f
    const-string/jumbo v1, "UNRECOGNIZED_CRIT_EXT"

    #@32
    invoke-direct {v0, v1, v7}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    #@35
    .line 61
    sput-object v0, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    #@37
    .line 63
    new-instance v0, Ljava/security/cert/PKIXReason;

    #@39
    const-string/jumbo v1, "NOT_CA_CERT"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    #@40
    .line 66
    sput-object v0, Ljava/security/cert/PKIXReason;->NOT_CA_CERT:Ljava/security/cert/PKIXReason;

    #@42
    .line 68
    new-instance v0, Ljava/security/cert/PKIXReason;

    #@44
    const-string/jumbo v1, "PATH_TOO_LONG"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 71
    sput-object v0, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    #@4d
    .line 73
    new-instance v0, Ljava/security/cert/PKIXReason;

    #@4f
    const-string/jumbo v1, "INVALID_NAME"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    #@56
    .line 76
    sput-object v0, Ljava/security/cert/PKIXReason;->INVALID_NAME:Ljava/security/cert/PKIXReason;

    #@58
    .line 36
    const/16 v0, 0x8

    #@5a
    new-array v0, v0, [Ljava/security/cert/PKIXReason;

    #@5c
    sget-object v1, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    #@5e
    aput-object v1, v0, v3

    #@60
    sget-object v1, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    #@62
    aput-object v1, v0, v4

    #@64
    sget-object v1, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    #@66
    aput-object v1, v0, v5

    #@68
    sget-object v1, Ljava/security/cert/PKIXReason;->NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

    #@6a
    aput-object v1, v0, v6

    #@6c
    sget-object v1, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    #@6e
    aput-object v1, v0, v7

    #@70
    sget-object v1, Ljava/security/cert/PKIXReason;->NOT_CA_CERT:Ljava/security/cert/PKIXReason;

    #@72
    const/4 v2, 0x5

    #@73
    aput-object v1, v0, v2

    #@75
    sget-object v1, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    #@77
    const/4 v2, 0x6

    #@78
    aput-object v1, v0, v2

    #@7a
    sget-object v1, Ljava/security/cert/PKIXReason;->INVALID_NAME:Ljava/security/cert/PKIXReason;

    #@7c
    const/4 v2, 0x7

    #@7d
    aput-object v1, v0, v2

    #@7f
    sput-object v0, Ljava/security/cert/PKIXReason;->$VALUES:[Ljava/security/cert/PKIXReason;

    #@81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/security/cert/PKIXReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    const-class v0, Ljava/security/cert/PKIXReason;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/security/cert/PKIXReason;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/security/cert/PKIXReason;
    .locals 1

    #@0
    .prologue
    .line 36
    sget-object v0, Ljava/security/cert/PKIXReason;->$VALUES:[Ljava/security/cert/PKIXReason;

    #@2
    return-object v0
.end method
