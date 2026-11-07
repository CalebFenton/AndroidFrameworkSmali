.class public Lcom/android/internal/org/bouncycastle/util/io/pem/PemGenerationException;
.super Ljava/io/IOException;
.source "PemGenerationException.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 17
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemGenerationException;->cause:Ljava/lang/Throwable;

    .line 19
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemGenerationException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
