.class public final enum Ljava/security/cert/CRLReason;
.super Ljava/lang/Enum;
.source "CRLReason.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/security/cert/CRLReason;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/security/cert/CRLReason;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/security/cert/CRLReason;

.field public static final enum AA_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

.field public static final enum CA_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

.field public static final enum CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

.field public static final enum KEY_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

.field public static final enum REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

.field public static final enum SUPERSEDED:Ljava/security/cert/CRLReason;

.field public static final enum UNSPECIFIED:Ljava/security/cert/CRLReason;

.field public static final enum UNUSED:Ljava/security/cert/CRLReason;


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
    .line 29
    new-instance v0, Ljava/security/cert/CRLReason;

    #@7
    const-string/jumbo v1, "UNSPECIFIED"

    #@a
    invoke-direct {v0, v1, v3}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    #@f
    .line 30
    new-instance v0, Ljava/security/cert/CRLReason;

    #@11
    const-string/jumbo v1, "KEY_COMPROMISE"

    #@14
    invoke-direct {v0, v1, v4}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Ljava/security/cert/CRLReason;->KEY_COMPROMISE:Ljava/security/cert/CRLReason;

    #@19
    .line 31
    new-instance v0, Ljava/security/cert/CRLReason;

    #@1b
    const-string/jumbo v1, "CA_COMPROMISE"

    #@1e
    invoke-direct {v0, v1, v5}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Ljava/security/cert/CRLReason;->CA_COMPROMISE:Ljava/security/cert/CRLReason;

    #@23
    .line 32
    new-instance v0, Ljava/security/cert/CRLReason;

    #@25
    const-string/jumbo v1, "AFFILIATION_CHANGED"

    #@28
    invoke-direct {v0, v1, v6}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Ljava/security/cert/CRLReason;->AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

    #@2d
    .line 33
    new-instance v0, Ljava/security/cert/CRLReason;

    #@2f
    const-string/jumbo v1, "SUPERSEDED"

    #@32
    invoke-direct {v0, v1, v7}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Ljava/security/cert/CRLReason;->SUPERSEDED:Ljava/security/cert/CRLReason;

    #@37
    .line 34
    new-instance v0, Ljava/security/cert/CRLReason;

    #@39
    const-string/jumbo v1, "CESSATION_OF_OPERATION"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Ljava/security/cert/CRLReason;->CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

    #@42
    .line 35
    new-instance v0, Ljava/security/cert/CRLReason;

    #@44
    const-string/jumbo v1, "CERTIFICATE_HOLD"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Ljava/security/cert/CRLReason;->CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

    #@4d
    .line 36
    new-instance v0, Ljava/security/cert/CRLReason;

    #@4f
    const-string/jumbo v1, "UNUSED"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Ljava/security/cert/CRLReason;->UNUSED:Ljava/security/cert/CRLReason;

    #@58
    .line 37
    new-instance v0, Ljava/security/cert/CRLReason;

    #@5a
    const-string/jumbo v1, "REMOVE_FROM_CRL"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Ljava/security/cert/CRLReason;->REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

    #@64
    .line 38
    new-instance v0, Ljava/security/cert/CRLReason;

    #@66
    const-string/jumbo v1, "PRIVILEGE_WITHDRAWN"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    #@6e
    sput-object v0, Ljava/security/cert/CRLReason;->PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

    #@70
    .line 39
    new-instance v0, Ljava/security/cert/CRLReason;

    #@72
    const-string/jumbo v1, "AA_COMPROMISE"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v0, Ljava/security/cert/CRLReason;->AA_COMPROMISE:Ljava/security/cert/CRLReason;

    #@7c
    .line 28
    const/16 v0, 0xb

    #@7e
    new-array v0, v0, [Ljava/security/cert/CRLReason;

    #@80
    sget-object v1, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    #@82
    aput-object v1, v0, v3

    #@84
    sget-object v1, Ljava/security/cert/CRLReason;->KEY_COMPROMISE:Ljava/security/cert/CRLReason;

    #@86
    aput-object v1, v0, v4

    #@88
    sget-object v1, Ljava/security/cert/CRLReason;->CA_COMPROMISE:Ljava/security/cert/CRLReason;

    #@8a
    aput-object v1, v0, v5

    #@8c
    sget-object v1, Ljava/security/cert/CRLReason;->AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

    #@8e
    aput-object v1, v0, v6

    #@90
    sget-object v1, Ljava/security/cert/CRLReason;->SUPERSEDED:Ljava/security/cert/CRLReason;

    #@92
    aput-object v1, v0, v7

    #@94
    sget-object v1, Ljava/security/cert/CRLReason;->CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

    #@96
    const/4 v2, 0x5

    #@97
    aput-object v1, v0, v2

    #@99
    sget-object v1, Ljava/security/cert/CRLReason;->CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

    #@9b
    const/4 v2, 0x6

    #@9c
    aput-object v1, v0, v2

    #@9e
    sget-object v1, Ljava/security/cert/CRLReason;->UNUSED:Ljava/security/cert/CRLReason;

    #@a0
    const/4 v2, 0x7

    #@a1
    aput-object v1, v0, v2

    #@a3
    sget-object v1, Ljava/security/cert/CRLReason;->REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

    #@a5
    const/16 v2, 0x8

    #@a7
    aput-object v1, v0, v2

    #@a9
    sget-object v1, Ljava/security/cert/CRLReason;->PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

    #@ab
    const/16 v2, 0x9

    #@ad
    aput-object v1, v0, v2

    #@af
    sget-object v1, Ljava/security/cert/CRLReason;->AA_COMPROMISE:Ljava/security/cert/CRLReason;

    #@b1
    const/16 v2, 0xa

    #@b3
    aput-object v1, v0, v2

    #@b5
    sput-object v0, Ljava/security/cert/CRLReason;->$VALUES:[Ljava/security/cert/CRLReason;

    #@b7
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/security/cert/CRLReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    const-class v0, Ljava/security/cert/CRLReason;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/security/cert/CRLReason;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/security/cert/CRLReason;
    .locals 1

    #@0
    .prologue
    .line 28
    sget-object v0, Ljava/security/cert/CRLReason;->$VALUES:[Ljava/security/cert/CRLReason;

    #@2
    return-object v0
.end method
