.class public final Ljava/security/spec/DSAGenParameterSpec;
.super Ljava/lang/Object;
.source "DSAGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final blacklist pLen:I

.field private final blacklist qLen:I

.field private final blacklist seedLen:I


# direct methods
.method public constructor whitelist test-api <init>(II)V
    .registers 3
    .param p1, "primePLen"    # I
    .param p2, "subprimeQLen"    # I

    .line 54
    invoke-direct {p0, p1, p2, p2}, Ljava/security/spec/DSAGenParameterSpec;-><init>(III)V

    .line 55
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 6
    .param p1, "primePLen"    # I
    .param p2, "subprimeQLen"    # I
    .param p3, "seedLen"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0x100

    sparse-switch p1, :sswitch_data_48

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "primePLen must be 1024, 2048, or 3072"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :sswitch_10
    if-ne p2, v0, :cond_13

    goto :goto_2e

    .line 85
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "subprimeQLen must be 256 when primePLen=3072"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :sswitch_1b
    const/16 v1, 0xe0

    if-eq p2, v1, :cond_2e

    if-ne p2, v0, :cond_22

    goto :goto_2e

    .line 79
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "subprimeQLen must be 224 or 256 when primePLen=2048"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :sswitch_2a
    const/16 v0, 0xa0

    if-ne p2, v0, :cond_3f

    .line 93
    :cond_2e
    :goto_2e
    if-lt p3, p2, :cond_37

    .line 97
    iput p1, p0, Ljava/security/spec/DSAGenParameterSpec;->pLen:I

    .line 98
    iput p2, p0, Ljava/security/spec/DSAGenParameterSpec;->qLen:I

    .line 99
    iput p3, p0, Ljava/security/spec/DSAGenParameterSpec;->seedLen:I

    .line 100
    return-void

    .line 94
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "seedLen must be equal to or greater than subprimeQLen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "subprimeQLen must be 160 when primePLen=1024"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_48
    .sparse-switch
        0x400 -> :sswitch_2a
        0x800 -> :sswitch_1b
        0xc00 -> :sswitch_10
    .end sparse-switch
.end method


# virtual methods
.method public whitelist test-api getPrimePLength()I
    .registers 2

    .line 108
    iget v0, p0, Ljava/security/spec/DSAGenParameterSpec;->pLen:I

    return v0
.end method

.method public whitelist test-api getSeedLength()I
    .registers 2

    .line 125
    iget v0, p0, Ljava/security/spec/DSAGenParameterSpec;->seedLen:I

    return v0
.end method

.method public whitelist test-api getSubprimeQLength()I
    .registers 2

    .line 117
    iget v0, p0, Ljava/security/spec/DSAGenParameterSpec;->qLen:I

    return v0
.end method
