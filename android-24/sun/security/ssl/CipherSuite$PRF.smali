.class final enum Lsun/security/ssl/CipherSuite$PRF;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PRF"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/ssl/CipherSuite$PRF;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/ssl/CipherSuite$PRF;

.field public static final enum P_NONE:Lsun/security/ssl/CipherSuite$PRF;

.field public static final enum P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

.field public static final enum P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

.field public static final enum P_SHA512:Lsun/security/ssl/CipherSuite$PRF;


# instance fields
.field private final prfBlockSize:I

.field private final prfHashAlg:Ljava/lang/String;

.field private final prfHashLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 610
    new-instance v0, Lsun/security/ssl/CipherSuite$PRF;

    #@2
    const-string/jumbo v1, "P_NONE"

    #@5
    .line 611
    const-string/jumbo v3, "NONE"

    #@8
    .line 610
    const/4 v2, 0x0

    #@9
    .line 611
    const/4 v4, 0x0

    #@a
    const/4 v5, 0x0

    #@b
    .line 610
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$PRF;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    #@e
    .line 611
    sput-object v0, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    #@10
    .line 612
    new-instance v0, Lsun/security/ssl/CipherSuite$PRF;

    #@12
    const-string/jumbo v1, "P_SHA256"

    #@15
    const-string/jumbo v3, "SHA-256"

    #@18
    const/4 v2, 0x1

    #@19
    const/16 v4, 0x20

    #@1b
    const/16 v5, 0x40

    #@1d
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$PRF;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    #@20
    sput-object v0, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@22
    .line 613
    new-instance v0, Lsun/security/ssl/CipherSuite$PRF;

    #@24
    const-string/jumbo v1, "P_SHA384"

    #@27
    const-string/jumbo v3, "SHA-384"

    #@2a
    const/4 v2, 0x2

    #@2b
    const/16 v4, 0x30

    #@2d
    const/16 v5, 0x80

    #@2f
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$PRF;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    #@32
    sput-object v0, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    #@34
    .line 614
    new-instance v0, Lsun/security/ssl/CipherSuite$PRF;

    #@36
    const-string/jumbo v1, "P_SHA512"

    #@39
    const-string/jumbo v3, "SHA-512"

    #@3c
    const/4 v2, 0x3

    #@3d
    const/16 v4, 0x40

    #@3f
    const/16 v5, 0x80

    #@41
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$PRF;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    #@44
    sput-object v0, Lsun/security/ssl/CipherSuite$PRF;->P_SHA512:Lsun/security/ssl/CipherSuite$PRF;

    #@46
    .line 608
    const/4 v0, 0x4

    #@47
    new-array v0, v0, [Lsun/security/ssl/CipherSuite$PRF;

    #@49
    sget-object v1, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    #@4b
    const/4 v2, 0x0

    #@4c
    aput-object v1, v0, v2

    #@4e
    sget-object v1, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@50
    const/4 v2, 0x1

    #@51
    aput-object v1, v0, v2

    #@53
    sget-object v1, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    #@55
    const/4 v2, 0x2

    #@56
    aput-object v1, v0, v2

    #@58
    sget-object v1, Lsun/security/ssl/CipherSuite$PRF;->P_SHA512:Lsun/security/ssl/CipherSuite$PRF;

    #@5a
    const/4 v2, 0x3

    #@5b
    aput-object v1, v0, v2

    #@5d
    sput-object v0, Lsun/security/ssl/CipherSuite$PRF;->$VALUES:[Lsun/security/ssl/CipherSuite$PRF;

    #@5f
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p3, "prfHashAlg"    # Ljava/lang/String;
    .param p4, "prfHashLength"    # I
    .param p5, "prfBlockSize"    # I

    #@0
    .prologue
    .line 621
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 622
    iput-object p3, p0, Lsun/security/ssl/CipherSuite$PRF;->prfHashAlg:Ljava/lang/String;

    #@5
    .line 623
    iput p4, p0, Lsun/security/ssl/CipherSuite$PRF;->prfHashLength:I

    #@7
    .line 624
    iput p5, p0, Lsun/security/ssl/CipherSuite$PRF;->prfBlockSize:I

    #@9
    .line 621
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/ssl/CipherSuite$PRF;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 608
    const-class v0, Lsun/security/ssl/CipherSuite$PRF;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/ssl/CipherSuite$PRF;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/security/ssl/CipherSuite$PRF;
    .locals 1

    #@0
    .prologue
    .line 608
    sget-object v0, Lsun/security/ssl/CipherSuite$PRF;->$VALUES:[Lsun/security/ssl/CipherSuite$PRF;

    #@2
    return-object v0
.end method


# virtual methods
.method getPRFBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 636
    iget v0, p0, Lsun/security/ssl/CipherSuite$PRF;->prfBlockSize:I

    #@2
    return v0
.end method

.method getPRFHashAlg()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 628
    iget-object v0, p0, Lsun/security/ssl/CipherSuite$PRF;->prfHashAlg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getPRFHashLength()I
    .locals 1

    #@0
    .prologue
    .line 632
    iget v0, p0, Lsun/security/ssl/CipherSuite$PRF;->prfHashLength:I

    #@2
    return v0
.end method
