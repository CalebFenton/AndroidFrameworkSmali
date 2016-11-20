.class public final enum Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
.super Ljava/lang/Enum;
.source "OCSP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/OCSP$RevocationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CertStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

.field public static final enum GOOD:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

.field public static final enum REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

.field public static final enum UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;


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
    .line 342
    new-instance v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@5
    const-string/jumbo v1, "GOOD"

    #@8
    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->GOOD:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@d
    new-instance v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@f
    const-string/jumbo v1, "REVOKED"

    #@12
    invoke-direct {v0, v1, v3}, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@17
    new-instance v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@19
    const-string/jumbo v1, "UNKNOWN"

    #@1c
    invoke-direct {v0, v1, v4}, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@21
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@24
    sget-object v1, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->GOOD:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->$VALUES:[Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 342
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 342
    const-class v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .locals 1

    #@0
    .prologue
    .line 342
    sget-object v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->$VALUES:[Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@2
    return-object v0
.end method
