.class public Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;
.super Ljava/lang/Object;
.source "ECNamedCurveGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;->name:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
