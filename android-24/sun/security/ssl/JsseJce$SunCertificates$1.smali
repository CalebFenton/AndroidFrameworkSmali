.class Lsun/security/ssl/JsseJce$SunCertificates$1;
.super Ljava/lang/Object;
.source "JsseJce.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/JsseJce$SunCertificates;-><init>(Ljava/security/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lsun/security/ssl/JsseJce$SunCertificates;

.field final synthetic val$p:Ljava/security/Provider;


# direct methods
.method constructor <init>(Lsun/security/ssl/JsseJce$SunCertificates;Ljava/security/Provider;)V
    .locals 0
    .param p1, "this$1"    # Lsun/security/ssl/JsseJce$SunCertificates;
    .param p2, "val$p"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 115
    iput-object p1, p0, Lsun/security/ssl/JsseJce$SunCertificates$1;->this$1:Lsun/security/ssl/JsseJce$SunCertificates;

    #@2
    iput-object p2, p0, Lsun/security/ssl/JsseJce$SunCertificates$1;->val$p:Ljava/security/Provider;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 118
    iget-object v3, p0, Lsun/security/ssl/JsseJce$SunCertificates$1;->val$p:Ljava/security/Provider;

    #@2
    invoke-virtual {v3}, Ljava/security/Provider;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_2

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/Map$Entry;

    #@16
    .line 119
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Ljava/lang/String;

    #@1c
    .line 120
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "CertPathValidator."

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_1

    #@25
    .line 121
    const-string/jumbo v3, "CertPathBuilder."

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2b
    move-result v3

    #@2c
    .line 120
    if-nez v3, :cond_1

    #@2e
    .line 122
    const-string/jumbo v3, "CertStore."

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@34
    move-result v3

    #@35
    .line 120
    if-nez v3, :cond_1

    #@37
    .line 123
    const-string/jumbo v3, "CertificateFactory."

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3d
    move-result v3

    #@3e
    .line 120
    if-eqz v3, :cond_0

    #@40
    .line 124
    :cond_1
    iget-object v3, p0, Lsun/security/ssl/JsseJce$SunCertificates$1;->this$1:Lsun/security/ssl/JsseJce$SunCertificates;

    #@42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v3, v2, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    goto :goto_0

    #@4a
    .line 127
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    #@4b
    return-object v3
.end method
