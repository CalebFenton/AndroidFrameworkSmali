.class public Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;
.super Ljava/io/IOException;
.source "PemGenerationException.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
