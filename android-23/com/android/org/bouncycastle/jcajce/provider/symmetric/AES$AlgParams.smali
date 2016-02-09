.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParams;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 490
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 495
    const-string/jumbo v0, "AES IV"

    #@3
    return-object v0
.end method
