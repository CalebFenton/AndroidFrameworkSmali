.class public Ljava/security/spec/MGF1ParameterSpec;
.super Ljava/lang/Object;
.source "MGF1ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final whitelist test-api SHA1:Ljava/security/spec/MGF1ParameterSpec;

.field public static final whitelist test-api SHA224:Ljava/security/spec/MGF1ParameterSpec;

.field public static final whitelist test-api SHA256:Ljava/security/spec/MGF1ParameterSpec;

.field public static final whitelist test-api SHA384:Ljava/security/spec/MGF1ParameterSpec;

.field public static final whitelist test-api SHA3_224:Ljava/security/spec/MGF1ParameterSpec;

.field public static final whitelist test-api SHA3_256:Ljava/security/spec/MGF1ParameterSpec;

.field public static final whitelist test-api SHA3_384:Ljava/security/spec/MGF1ParameterSpec;

.field public static final whitelist test-api SHA3_512:Ljava/security/spec/MGF1ParameterSpec;

.field public static final whitelist test-api SHA512:Ljava/security/spec/MGF1ParameterSpec;

.field public static final whitelist test-api SHA512_224:Ljava/security/spec/MGF1ParameterSpec;

.field public static final whitelist test-api SHA512_256:Ljava/security/spec/MGF1ParameterSpec;


# instance fields
.field private greylist-max-o mdName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-1"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    .line 76
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-224"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA224:Ljava/security/spec/MGF1ParameterSpec;

    .line 82
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-256"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    .line 88
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-384"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    .line 94
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-512"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    .line 100
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-512/224"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA512_224:Ljava/security/spec/MGF1ParameterSpec;

    .line 106
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-512/256"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA512_256:Ljava/security/spec/MGF1ParameterSpec;

    .line 113
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA3-224"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA3_224:Ljava/security/spec/MGF1ParameterSpec;

    .line 120
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA3-256"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA3_256:Ljava/security/spec/MGF1ParameterSpec;

    .line 127
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA3-384"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA3_384:Ljava/security/spec/MGF1ParameterSpec;

    .line 134
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA3-512"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA3_512:Ljava/security/spec/MGF1ParameterSpec;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "mdName"    # Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    if-eqz p1, :cond_8

    .line 151
    iput-object p1, p0, Ljava/security/spec/MGF1ParameterSpec;->mdName:Ljava/lang/String;

    .line 152
    return-void

    .line 149
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "digest algorithm is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getDigestAlgorithm()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Ljava/security/spec/MGF1ParameterSpec;->mdName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MGF1ParameterSpec[hashAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/spec/MGF1ParameterSpec;->mdName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
