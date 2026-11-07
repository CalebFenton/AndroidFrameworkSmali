.class public final enum Ljava/security/cert/CRLReason;
.super Ljava/lang/Enum;
.source "CRLReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/security/cert/CRLReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api AA_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api CA_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api KEY_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api SUPERSEDED:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api UNSPECIFIED:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api UNUSED:Ljava/security/cert/CRLReason;


# direct methods
.method private static synthetic blacklist $values()[Ljava/security/cert/CRLReason;
    .registers 11

    .line 39
    sget-object v0, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    sget-object v1, Ljava/security/cert/CRLReason;->KEY_COMPROMISE:Ljava/security/cert/CRLReason;

    sget-object v2, Ljava/security/cert/CRLReason;->CA_COMPROMISE:Ljava/security/cert/CRLReason;

    sget-object v3, Ljava/security/cert/CRLReason;->AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

    sget-object v4, Ljava/security/cert/CRLReason;->SUPERSEDED:Ljava/security/cert/CRLReason;

    sget-object v5, Ljava/security/cert/CRLReason;->CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

    sget-object v6, Ljava/security/cert/CRLReason;->CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

    sget-object v7, Ljava/security/cert/CRLReason;->UNUSED:Ljava/security/cert/CRLReason;

    sget-object v8, Ljava/security/cert/CRLReason;->REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

    sget-object v9, Ljava/security/cert/CRLReason;->PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

    sget-object v10, Ljava/security/cert/CRLReason;->AA_COMPROMISE:Ljava/security/cert/CRLReason;

    filled-new-array/range {v0 .. v10}, [Ljava/security/cert/CRLReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 44
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    .line 51
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "KEY_COMPROMISE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->KEY_COMPROMISE:Ljava/security/cert/CRLReason;

    .line 58
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "CA_COMPROMISE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->CA_COMPROMISE:Ljava/security/cert/CRLReason;

    .line 64
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "AFFILIATION_CHANGED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

    .line 69
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "SUPERSEDED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->SUPERSEDED:Ljava/security/cert/CRLReason;

    .line 74
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "CESSATION_OF_OPERATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

    .line 79
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "CERTIFICATE_HOLD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

    .line 84
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "UNUSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->UNUSED:Ljava/security/cert/CRLReason;

    .line 90
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "REMOVE_FROM_CRL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

    .line 96
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "PRIVILEGE_WITHDRAWN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

    .line 103
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "AA_COMPROMISE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->AA_COMPROMISE:Ljava/security/cert/CRLReason;

    .line 39
    invoke-static {}, Ljava/security/cert/CRLReason;->$values()[Ljava/security/cert/CRLReason;

    move-result-object v0

    sput-object v0, Ljava/security/cert/CRLReason;->$VALUES:[Ljava/security/cert/CRLReason;

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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/security/cert/CRLReason;
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

    .line 39
    const-class v0, Ljava/security/cert/CRLReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/security/cert/CRLReason;
    .registers 1

    .line 39
    sget-object v0, Ljava/security/cert/CRLReason;->$VALUES:[Ljava/security/cert/CRLReason;

    invoke-virtual {v0}, [Ljava/security/cert/CRLReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/CRLReason;

    return-object v0
.end method
