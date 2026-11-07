.class Lorg/apache/xml/dtm/SecuritySupport12$7;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/dtm/SecuritySupport12;->getFileExists(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic greylist val$f:Ljava/io/File;


# direct methods
.method constructor greylist <init>(Lorg/apache/xml/dtm/SecuritySupport12;Ljava/io/File;)V
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

    .line 130
    iput-object p2, p0, Lorg/apache/xml/dtm/SecuritySupport12$7;->val$f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 132
    new-instance v0, Ljava/lang/Boolean;

    iget-object p0, p0, Lorg/apache/xml/dtm/SecuritySupport12$7;->val$f:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method
