.class final Lsun/security/ssl/HandshakeMessage$CertificateVerify$1;
.super Ljava/lang/Object;
.source "HandshakeMessage.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/HandshakeMessage$CertificateVerify;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$o:Ljava/lang/reflect/AccessibleObject;


# direct methods
.method constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 0
    .param p1, "val$o"    # Ljava/lang/reflect/AccessibleObject;

    #@0
    .prologue
    .line 1725
    iput-object p1, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify$1;->val$o:Ljava/lang/reflect/AccessibleObject;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 1727
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateVerify$1;->val$o:Ljava/lang/reflect/AccessibleObject;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    #@6
    .line 1728
    const/4 v0, 0x0

    #@7
    return-object v0
.end method
