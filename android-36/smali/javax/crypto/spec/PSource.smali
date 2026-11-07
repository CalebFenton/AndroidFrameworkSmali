.class public Ljavax/crypto/spec/PSource;
.super Ljava/lang/Object;
.source "PSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/crypto/spec/PSource$PSpecified;
    }
.end annotation


# instance fields
.field private greylist-max-o pSrcName:Ljava/lang/String;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pSrcName"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p1, :cond_8

    .line 60
    iput-object p1, p0, Ljavax/crypto/spec/PSource;->pSrcName:Ljava/lang/String;

    .line 61
    return-void

    .line 58
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pSource algorithm is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Ljavax/crypto/spec/PSource;->pSrcName:Ljava/lang/String;

    return-object v0
.end method
