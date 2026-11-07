.class public Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;
.super Ljava/lang/Object;
.source "ECKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private blacklist spec:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .registers 2
    .param p1, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;->spec:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;->spec:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    return-object v0
.end method
