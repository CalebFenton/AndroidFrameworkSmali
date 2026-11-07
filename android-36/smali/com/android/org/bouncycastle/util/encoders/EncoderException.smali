.class public Lcom/android/org/bouncycastle/util/encoders/EncoderException;
.super Ljava/lang/IllegalStateException;
.source "EncoderException.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/encoders/EncoderException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/encoders/EncoderException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
