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
        "Ljava/lang/Enum",
        "<",
        "Ljava/security/cert/PKIXRevocationChecker$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;


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
    .line 278
    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    #@6
    const-string/jumbo v1, "ONLY_END_ENTITY"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    #@c
    .line 281
    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@e
    .line 282
    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    #@10
    const-string/jumbo v1, "PREFER_CRLS"

    #@13
    invoke-direct {v0, v1, v3}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    #@16
    .line 287
    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@18
    .line 288
    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    #@1a
    const-string/jumbo v1, "NO_FALLBACK"

    #@1d
    invoke-direct {v0, v1, v4}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    #@20
    .line 291
    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@22
    .line 292
    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    #@24
    const-string/jumbo v1, "SOFT_FAIL"

    #@27
    invoke-direct {v0, v1, v5}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 309
    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@2c
    .line 277
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Ljava/security/cert/PKIXRevocationChecker$Option;

    #@2f
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->$VALUES:[Ljava/security/cert/PKIXRevocationChecker$Option;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 277
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/security/cert/PKIXRevocationChecker$Option;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 277
    const-class v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/security/cert/PKIXRevocationChecker$Option;
    .locals 1

    #@0
    .prologue
    .line 277
    sget-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->$VALUES:[Ljava/security/cert/PKIXRevocationChecker$Option;

    #@2
    return-object v0
.end method
