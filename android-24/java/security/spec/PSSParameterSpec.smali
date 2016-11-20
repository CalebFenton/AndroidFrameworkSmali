.class public Ljava/security/spec/PSSParameterSpec;
.super Ljava/lang/Object;
.source "PSSParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final DEFAULT:Ljava/security/spec/PSSParameterSpec;


# instance fields
.field private mdName:Ljava/lang/String;

.field private mgfName:Ljava/lang/String;

.field private mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private saltLen:I

.field private trailerField:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 90
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    #@2
    invoke-direct {v0}, Ljava/security/spec/PSSParameterSpec;-><init>()V

    #@5
    sput-object v0, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    #@7
    .line 78
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    const-string/jumbo v0, "SHA-1"

    #@6
    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    #@8
    .line 81
    const-string/jumbo v0, "MGF1"

    #@b
    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    #@d
    .line 82
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    #@f
    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@11
    .line 83
    const/16 v0, 0x14

    #@13
    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    #@15
    .line 84
    const/4 v0, 0x1

    #@16
    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    #@18
    .line 96
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "saltLen"    # I

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    const-string/jumbo v0, "SHA-1"

    #@6
    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    #@8
    .line 81
    const-string/jumbo v0, "MGF1"

    #@b
    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    #@d
    .line 82
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    #@f
    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@11
    .line 83
    const/16 v0, 0x14

    #@13
    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    #@15
    .line 84
    const/4 v0, 0x1

    #@16
    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    #@18
    .line 155
    if-gez p1, :cond_0

    #@1a
    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "negative saltLen value: "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 159
    :cond_0
    iput p1, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    #@36
    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V
    .locals 3
    .param p1, "mdName"    # Ljava/lang/String;
    .param p2, "mgfName"    # Ljava/lang/String;
    .param p3, "mgfSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "saltLen"    # I
    .param p5, "trailerField"    # I

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    const-string/jumbo v0, "SHA-1"

    #@6
    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    #@8
    .line 81
    const-string/jumbo v0, "MGF1"

    #@b
    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    #@d
    .line 82
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    #@f
    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@11
    .line 83
    const/16 v0, 0x14

    #@13
    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    #@15
    .line 84
    const/4 v0, 0x1

    #@16
    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    #@18
    .line 122
    if-nez p1, :cond_0

    #@1a
    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    #@1c
    const-string/jumbo v1, "digest algorithm is null"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 125
    :cond_0
    if-nez p2, :cond_1

    #@25
    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    #@27
    const-string/jumbo v1, "mask generation function algorithm is null"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 129
    :cond_1
    if-gez p4, :cond_2

    #@30
    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "negative saltLen value: "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    .line 133
    :cond_2
    if-gez p5, :cond_3

    #@4c
    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4e
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v2, "negative trailerField: "

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v0

    #@66
    .line 137
    :cond_3
    iput-object p1, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    #@68
    .line 138
    iput-object p2, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    #@6a
    .line 139
    iput-object p3, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@6c
    .line 140
    iput p4, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    #@6e
    .line 141
    iput p5, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    #@70
    .line 121
    return-void
.end method


# virtual methods
.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMGFAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@2
    return-object v0
.end method

.method public getSaltLength()I
    .locals 1

    #@0
    .prologue
    .line 199
    iget v0, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    #@2
    return v0
.end method

.method public getTrailerField()I
    .locals 1

    #@0
    .prologue
    .line 209
    iget v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    #@2
    return v0
.end method
