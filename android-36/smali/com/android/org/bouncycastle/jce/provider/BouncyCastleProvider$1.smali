.class Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$1;
.super Ljava/lang/Object;
.source "BouncyCastleProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->-$$Nest$msetup(Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;)V

    const/4 p0, 0x0

    return-object p0
.end method
