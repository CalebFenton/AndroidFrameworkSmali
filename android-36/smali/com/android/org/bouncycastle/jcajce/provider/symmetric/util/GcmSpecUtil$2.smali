.class Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$2;
.super Ljava/lang/Object;
.source "GcmSpecUtil.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# instance fields
.field final synthetic blacklist val$name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 3

    .line 75
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$2;->val$name:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method
