.class public Lcom/android/org/bouncycastle/util/encoders/EncoderException;
.super Ljava/lang/IllegalStateException;
.source "EncoderException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3
    .line 15
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/encoders/EncoderException;->cause:Ljava/lang/Throwable;

    #@5
    .line 11
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/EncoderException;->cause:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method
