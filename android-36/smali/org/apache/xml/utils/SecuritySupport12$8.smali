.class Lorg/apache/xml/utils/SecuritySupport12$8;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/utils/SecuritySupport12;->getLastModified(Ljava/io/File;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic greylist val$f:Ljava/io/File;


# direct methods
.method constructor greylist <init>(Lorg/apache/xml/utils/SecuritySupport12;Ljava/io/File;)V
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

    .line 139
    iput-object p2, p0, Lorg/apache/xml/utils/SecuritySupport12$8;->val$f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 4

    .line 141
    new-instance v0, Ljava/lang/Long;

    iget-object p0, p0, Lorg/apache/xml/utils/SecuritySupport12$8;->val$f:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method
