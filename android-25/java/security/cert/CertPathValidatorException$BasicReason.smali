.class public final enum Ljava/security/cert/CertPathValidatorException$BasicReason;
.super Ljava/lang/Enum;
.source "CertPathValidatorException.java"

# interfaces
.implements Ljava/security/cert/CertPathValidatorException$Reason;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/cert/CertPathValidatorException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BasicReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/security/cert/CertPathValidatorException$BasicReason;",
        ">;",
        "Ljava/security/cert/CertPathValidatorException$Reason;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum INVALID_SIGNATURE:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;


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
    .line 261
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@7
    const-string/jumbo v1, "UNSPECIFIED"

    #@a
    invoke-direct {v0, v1, v3}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    #@d
    .line 264
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@f
    .line 266
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@11
    const-string/jumbo v1, "EXPIRED"

    #@14
    invoke-direct {v0, v1, v4}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    #@17
    .line 269
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@19
    .line 271
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@1b
    const-string/jumbo v1, "NOT_YET_VALID"

    #@1e
    invoke-direct {v0, v1, v5}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    #@21
    .line 274
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@23
    .line 276
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@25
    const-string/jumbo v1, "REVOKED"

    #@28
    invoke-direct {v0, v1, v6}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 279
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@2d
    .line 281
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@2f
    const-string/jumbo v1, "UNDETERMINED_REVOCATION_STATUS"

    #@32
    invoke-direct {v0, v1, v7}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    #@35
    .line 284
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@37
    .line 286
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@39
    const-string/jumbo v1, "INVALID_SIGNATURE"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    #@40
    .line 289
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->INVALID_SIGNATURE:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@42
    .line 291
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@44
    const-string/jumbo v1, "ALGORITHM_CONSTRAINED"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 294
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@4d
    .line 260
    const/4 v0, 0x7

    #@4e
    new-array v0, v0, [Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@50
    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@52
    aput-object v1, v0, v3

    #@54
    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@56
    aput-object v1, v0, v4

    #@58
    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@5a
    aput-object v1, v0, v5

    #@5c
    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@5e
    aput-object v1, v0, v6

    #@60
    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@62
    aput-object v1, v0, v7

    #@64
    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->INVALID_SIGNATURE:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@66
    const/4 v2, 0x5

    #@67
    aput-object v1, v0, v2

    #@69
    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@6b
    const/4 v2, 0x6

    #@6c
    aput-object v1, v0, v2

    #@6e
    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->$VALUES:[Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/security/cert/CertPathValidatorException$BasicReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 260
    const-class v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/security/cert/CertPathValidatorException$BasicReason;
    .locals 1

    #@0
    .prologue
    .line 260
    sget-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->$VALUES:[Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@2
    return-object v0
.end method
