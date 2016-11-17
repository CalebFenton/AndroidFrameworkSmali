.class Lorg/apache/xpath/functions/SecuritySupport12$7;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xpath/functions/SecuritySupport12;->getFileExists(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xpath/functions/SecuritySupport12;

.field final synthetic val$f:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xpath/functions/SecuritySupport12;
    .param p2, "val$f"    # Ljava/io/File;

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Lorg/apache/xpath/functions/SecuritySupport12$7;->this$0:Lorg/apache/xpath/functions/SecuritySupport12;

    #@2
    iput-object p2, p0, Lorg/apache/xpath/functions/SecuritySupport12$7;->val$f:Ljava/io/File;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 132
    new-instance v0, Ljava/lang/Boolean;

    #@2
    iget-object v1, p0, Lorg/apache/xpath/functions/SecuritySupport12$7;->val$f:Ljava/io/File;

    #@4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@7
    move-result v1

    #@8
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    #@b
    return-object v0
.end method
