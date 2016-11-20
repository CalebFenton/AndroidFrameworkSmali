.class public Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;
.super Ljava/lang/Object;
.source "ECKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 0
    .param p1, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;->spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@5
    .line 14
    return-void
.end method


# virtual methods
.method public getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;->spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@2
    return-object v0
.end method
