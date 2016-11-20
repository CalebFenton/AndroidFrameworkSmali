.class public Lcom/android/org/conscrypt/ct/CTVerificationResult;
.super Ljava/lang/Object;
.source "CTVerificationResult.java"


# instance fields
.field private final invalidSCTs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation
.end field

.field private final validSCTs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/conscrypt/ct/CTVerificationResult;->validSCTs:Ljava/util/List;

    #@a
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/org/conscrypt/ct/CTVerificationResult;->invalidSCTs:Ljava/util/List;

    #@11
    .line 23
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V
    .locals 2
    .param p1, "result"    # Lcom/android/org/conscrypt/ct/VerifiedSCT;

    #@0
    .prologue
    .line 28
    iget-object v0, p1, Lcom/android/org/conscrypt/ct/VerifiedSCT;->status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@2
    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 29
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTVerificationResult;->validSCTs:Ljava/util/List;

    #@8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b
    .line 27
    :goto_0
    return-void

    #@c
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTVerificationResult;->invalidSCTs:Ljava/util/List;

    #@e
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    goto :goto_0
.end method

.method public getInvalidSCTs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTVerificationResult;->invalidSCTs:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValidSCTs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTVerificationResult;->validSCTs:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
