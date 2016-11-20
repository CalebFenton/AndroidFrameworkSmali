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
.field private pSrcName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pSrcName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    if-nez p1, :cond_0

    #@5
    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "pSource algorithm is null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 63
    :cond_0
    iput-object p1, p0, Ljavax/crypto/spec/PSource;->pSrcName:Ljava/lang/String;

    #@10
    .line 59
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Ljavax/crypto/spec/PSource;->pSrcName:Ljava/lang/String;

    #@2
    return-object v0
.end method
