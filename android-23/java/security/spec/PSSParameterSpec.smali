.class public Ljava/security/spec/PSSParameterSpec;
.super Ljava/lang/Object;
.source "PSSParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final DEFAULT:Ljava/security/spec/PSSParameterSpec;


# instance fields
.field private final mdName:Ljava/lang/String;

.field private final mgfName:Ljava/lang/String;

.field private final mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final saltLen:I

.field private final trailerField:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 39
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    #@2
    const/16 v1, 0x14

    #@4
    invoke-direct {v0, v1}, Ljava/security/spec/PSSParameterSpec;-><init>(I)V

    #@7
    sput-object v0, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    #@9
    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "saltLen"    # I

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    if-gez p1, :cond_0

    #@5
    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "saltLen < 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 65
    :cond_0
    iput p1, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    #@10
    .line 66
    const-string/jumbo v0, "SHA-1"

    #@13
    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    #@15
    .line 67
    const-string/jumbo v0, "MGF1"

    #@18
    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    #@1a
    .line 68
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    #@1c
    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@1e
    .line 69
    const/4 v0, 0x1

    #@1f
    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    #@21
    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V
    .locals 2
    .param p1, "mdName"    # Ljava/lang/String;
    .param p2, "mgfName"    # Ljava/lang/String;
    .param p3, "mgfSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "saltLen"    # I
    .param p5, "trailerField"    # I

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 93
    if-nez p1, :cond_0

    #@5
    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "mdName == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 96
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "mgfName == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 99
    :cond_1
    if-gez p4, :cond_2

    #@1b
    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v1, "saltLen < 0"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 102
    :cond_2
    if-gez p5, :cond_3

    #@26
    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    const-string/jumbo v1, "trailerField < 0"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 105
    :cond_3
    iput-object p1, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    #@31
    .line 106
    iput-object p2, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    #@33
    .line 107
    iput-object p3, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@35
    .line 108
    iput p4, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    #@37
    .line 109
    iput p5, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    #@39
    .line 91
    return-void
.end method


# virtual methods
.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMGFAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@2
    return-object v0
.end method

.method public getSaltLength()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget v0, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    #@2
    return v0
.end method

.method public getTrailerField()I
    .locals 1

    #@0
    .prologue
    .line 155
    iget v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    #@2
    return v0
.end method
