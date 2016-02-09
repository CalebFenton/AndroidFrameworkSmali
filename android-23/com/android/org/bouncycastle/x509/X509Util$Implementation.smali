.class Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
.super Ljava/lang/Object;
.source "X509Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/x509/X509Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Implementation"
.end annotation


# instance fields
.field engine:Ljava/lang/Object;

.field provider:Ljava/security/Provider;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/security/Provider;)V
    .locals 0
    .param p1, "engine"    # Ljava/lang/Object;
    .param p2, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 305
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;->engine:Ljava/lang/Object;

    #@5
    .line 306
    iput-object p2, p0, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;->provider:Ljava/security/Provider;

    #@7
    .line 303
    return-void
.end method


# virtual methods
.method getEngine()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;->engine:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method
