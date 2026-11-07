.class public Ljava/security/spec/PSSParameterSpec;
.super Ljava/lang/Object;
.source "PSSParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final whitelist test-api DEFAULT:Ljava/security/spec/PSSParameterSpec;

.field public static final whitelist test-api TRAILER_FIELD_BC:I = 0x1


# instance fields
.field private final greylist-max-o mdName:Ljava/lang/String;

.field private final greylist-max-o mgfName:Ljava/lang/String;

.field private final greylist-max-o mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final greylist-max-o saltLen:I

.field private final greylist-max-o trailerField:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 108
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x14

    const/4 v5, 0x1

    const-string v1, "SHA-1"

    const-string v2, "MGF1"

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    sput-object v0, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "default constructor not allowed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 8
    .param p1, "saltLen"    # I

    .line 168
    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    const/4 v5, 0x1

    const-string v1, "SHA-1"

    const-string v2, "MGF1"

    move-object v0, p0

    move v4, p1

    .end local p1    # "saltLen":I
    .local v4, "saltLen":I
    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 169
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V
    .registers 9
    .param p1, "mdName"    # Ljava/lang/String;
    .param p2, "mgfName"    # Ljava/lang/String;
    .param p3, "mgfSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "saltLen"    # I
    .param p5, "trailerField"    # I

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-string v0, "digest algorithm is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    const-string v0, "mask generation function algorithm is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    if-ltz p4, :cond_35

    .line 146
    if-ltz p5, :cond_1c

    .line 150
    iput-object p1, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 153
    iput p4, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    .line 154
    iput p5, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    .line 155
    return-void

    .line 147
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative trailerField: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative saltLen value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getDigestAlgorithm()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMGFAlgorithm()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 199
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getSaltLength()I
    .registers 2

    .line 208
    iget v0, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    return v0
.end method

.method public whitelist test-api getTrailerField()I
    .registers 2

    .line 218
    iget v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PSSParameterSpec["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hashAlgorithm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maskGenAlgorithm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saltLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trailerField="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
