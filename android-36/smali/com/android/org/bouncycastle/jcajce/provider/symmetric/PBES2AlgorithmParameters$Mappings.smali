.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;
.source "PBES2AlgorithmParameters.java"


# static fields
.field private static final blacklist PREFIX:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 326
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 329
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 11

    const/16 p0, 0x80

    const/16 v0, 0x100

    .line 334
    filled-new-array {p0, v0}, [I

    move-result-object p0

    const/16 v1, 0x180

    const/16 v2, 0x200

    const/4 v3, 0x1

    const/16 v4, 0xe0

    .line 335
    filled-new-array {v3, v4, v0, v1, v2}, [I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_15
    const/4 v3, 0x2

    if-ge v2, v3, :cond_65

    .line 336
    aget v3, p0, v2

    move v4, v1

    :goto_1b
    const/4 v5, 0x5

    if-ge v4, v5, :cond_62

    .line 337
    aget v5, v0, v4

    .line 338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AlgorithmParameters.PBEWithHmacSHA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "AndAES_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$Mappings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "$PBEWithHmacSHA"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "AES"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "AlgorithmParameters"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v5}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_65
    return-void
.end method
