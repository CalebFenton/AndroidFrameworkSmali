.class final enum Lsun/security/provider/certpath/RevocationChecker$Mode;
.super Ljava/lang/Enum;
.source "RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/RevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/provider/certpath/RevocationChecker$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/provider/certpath/RevocationChecker$Mode;

.field public static final enum ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

.field public static final enum ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

.field public static final enum PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

.field public static final enum PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 75
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@6
    const-string/jumbo v1, "PREFER_OCSP"

    #@9
    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/RevocationChecker$Mode;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@e
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@10
    const-string/jumbo v1, "PREFER_CRLS"

    #@13
    invoke-direct {v0, v1, v3}, Lsun/security/provider/certpath/RevocationChecker$Mode;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@18
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@1a
    const-string/jumbo v1, "ONLY_CRLS"

    #@1d
    invoke-direct {v0, v1, v4}, Lsun/security/provider/certpath/RevocationChecker$Mode;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@22
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@24
    const-string/jumbo v1, "ONLY_OCSP"

    #@27
    invoke-direct {v0, v1, v5}, Lsun/security/provider/certpath/RevocationChecker$Mode;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@2c
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@2f
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->$VALUES:[Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/provider/certpath/RevocationChecker$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    const-class v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/security/provider/certpath/RevocationChecker$Mode;
    .locals 1

    #@0
    .prologue
    .line 75
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->$VALUES:[Lsun/security/provider/certpath/RevocationChecker$Mode;

    #@2
    return-object v0
.end method
