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
.field final synthetic this$0:Lorg/apache/xml/utils/SecuritySupport12;

.field final synthetic val$f:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/apache/xml/utils/SecuritySupport12;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/utils/SecuritySupport12;
    .param p2, "val$f"    # Ljava/io/File;

    #@0
    .prologue
    .line 139
    iput-object p1, p0, Lorg/apache/xml/utils/SecuritySupport12$8;->this$0:Lorg/apache/xml/utils/SecuritySupport12;

    #@2
    iput-object p2, p0, Lorg/apache/xml/utils/SecuritySupport12$8;->val$f:Ljava/io/File;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 141
    new-instance v0, Ljava/lang/Long;

    #@2
    iget-object v1, p0, Lorg/apache/xml/utils/SecuritySupport12$8;->val$f:Ljava/io/File;

    #@4
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    #@7
    move-result-wide v2

    #@8
    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@b
    return-object v0
.end method
