.class Lorg/apache/xalan/xslt/SecuritySupport12$3;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xalan/xslt/SecuritySupport12;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic greylist val$cl:Ljava/lang/ClassLoader;


# direct methods
.method constructor greylist <init>(Lorg/apache/xalan/xslt/SecuritySupport12;Ljava/lang/ClassLoader;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p2, p0, Lorg/apache/xalan/xslt/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    .line 77
    :try_start_1
    iget-object v1, p0, Lorg/apache/xalan/xslt/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-object v1, v0

    .line 82
    :goto_9
    iget-object p0, p0, Lorg/apache/xalan/xslt/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    if-ne v1, p0, :cond_e

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    return-object v0
.end method
