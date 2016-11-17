.class final Ljavax/crypto/JceSecurity$1;
.super Ljava/lang/Object;
.source "JceSecurity.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/crypto/JceSecurity;->getCodeBase(Ljava/lang/Class;)Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "val$clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 230
    iput-object p1, p0, Ljavax/crypto/JceSecurity$1;->val$clazz:Ljava/lang/Class;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 232
    iget-object v2, p0, Ljavax/crypto/JceSecurity$1;->val$clazz:Ljava/lang/Class;

    #@2
    invoke-virtual {v2}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    #@5
    move-result-object v1

    #@6
    .line 233
    .local v1, "pd":Ljava/security/ProtectionDomain;
    if-eqz v1, :cond_0

    #@8
    .line 234
    invoke-virtual {v1}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    #@b
    move-result-object v0

    #@c
    .line 235
    .local v0, "cs":Ljava/security/CodeSource;
    if-eqz v0, :cond_0

    #@e
    .line 236
    invoke-virtual {v0}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 239
    .end local v0    # "cs":Ljava/security/CodeSource;
    :cond_0
    invoke-static {}, Ljavax/crypto/JceSecurity;->-get0()Ljava/net/URL;

    #@16
    move-result-object v2

    #@17
    return-object v2
.end method
