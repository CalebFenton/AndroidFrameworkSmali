.class public Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerationException;
.super Lcom/android/internal/org/bouncycastle/cms/CMSRuntimeException;
.source "CMSAttributeTableGenerationException.java"


# instance fields
.field blacklist e:Ljava/lang/Exception;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerationException;->e:Ljava/lang/Exception;

    .line 25
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerationException;->e:Ljava/lang/Exception;

    return-object v0
.end method

.method public blacklist getUnderlyingException()Ljava/lang/Exception;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerationException;->e:Ljava/lang/Exception;

    return-object v0
.end method
