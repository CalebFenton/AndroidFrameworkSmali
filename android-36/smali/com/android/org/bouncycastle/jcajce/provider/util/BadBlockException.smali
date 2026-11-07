.class public Lcom/android/org/bouncycastle/jcajce/provider/util/BadBlockException;
.super Ljavax/crypto/BadPaddingException;
.source "BadBlockException.java"


# instance fields
.field private final blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/util/BadBlockException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/util/BadBlockException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
