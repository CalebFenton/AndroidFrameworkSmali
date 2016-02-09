.class public Ljava/security/spec/ECGenParameterSpec;
.super Ljava/lang/Object;
.source "ECGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Ljava/security/spec/ECGenParameterSpec;->name:Ljava/lang/String;

    #@5
    .line 37
    iget-object v0, p0, Ljava/security/spec/ECGenParameterSpec;->name:Ljava/lang/String;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v1, "name == null"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Ljava/security/spec/ECGenParameterSpec;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
