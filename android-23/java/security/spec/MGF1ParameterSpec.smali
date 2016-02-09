.class public Ljava/security/spec/MGF1ParameterSpec;
.super Ljava/lang/Object;
.source "MGF1ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final SHA1:Ljava/security/spec/MGF1ParameterSpec;

.field public static final SHA256:Ljava/security/spec/MGF1ParameterSpec;

.field public static final SHA384:Ljava/security/spec/MGF1ParameterSpec;

.field public static final SHA512:Ljava/security/spec/MGF1ParameterSpec;


# instance fields
.field private final mdName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 35
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    #@2
    const-string/jumbo v1, "SHA-1"

    #@5
    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    #@8
    .line 34
    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    #@a
    .line 42
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    #@c
    const-string/jumbo v1, "SHA-256"

    #@f
    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    #@12
    .line 41
    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    #@14
    .line 49
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    #@16
    const-string/jumbo v1, "SHA-384"

    #@19
    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    #@1c
    .line 48
    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    #@1e
    .line 56
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    #@20
    const-string/jumbo v1, "SHA-512"

    #@23
    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    #@26
    .line 55
    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    #@28
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "mdName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    iput-object p1, p0, Ljava/security/spec/MGF1ParameterSpec;->mdName:Ljava/lang/String;

    #@5
    .line 70
    iget-object v0, p0, Ljava/security/spec/MGF1ParameterSpec;->mdName:Ljava/lang/String;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v1, "mdName == null"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Ljava/security/spec/MGF1ParameterSpec;->mdName:Ljava/lang/String;

    #@2
    return-object v0
.end method
