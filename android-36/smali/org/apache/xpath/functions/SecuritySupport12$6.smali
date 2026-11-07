.class Lorg/apache/xpath/functions/SecuritySupport12$6;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xpath/functions/SecuritySupport12;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic greylist val$cl:Ljava/lang/ClassLoader;

.field final synthetic greylist val$name:Ljava/lang/String;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    iput-object p2, p0, Lorg/apache/xpath/functions/SecuritySupport12$6;->val$cl:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lorg/apache/xpath/functions/SecuritySupport12$6;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 118
    iget-object v0, p0, Lorg/apache/xpath/functions/SecuritySupport12$6;->val$cl:Ljava/lang/ClassLoader;

    if-nez v0, :cond_b

    .line 119
    iget-object p0, p0, Lorg/apache/xpath/functions/SecuritySupport12$6;->val$name:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 121
    :cond_b
    iget-object p0, p0, Lorg/apache/xpath/functions/SecuritySupport12$6;->val$name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
