.class Lorg/apache/xalan/xslt/SecuritySupport12$6;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xalan/xslt/SecuritySupport12;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xalan/xslt/SecuritySupport12;

.field final synthetic val$cl:Ljava/lang/ClassLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/xalan/xslt/SecuritySupport12;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xalan/xslt/SecuritySupport12;
    .param p2, "val$cl"    # Ljava/lang/ClassLoader;
    .param p3, "val$name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    iput-object p1, p0, Lorg/apache/xalan/xslt/SecuritySupport12$6;->this$0:Lorg/apache/xalan/xslt/SecuritySupport12;

    #@2
    iput-object p2, p0, Lorg/apache/xalan/xslt/SecuritySupport12$6;->val$cl:Ljava/lang/ClassLoader;

    #@4
    iput-object p3, p0, Lorg/apache/xalan/xslt/SecuritySupport12$6;->val$name:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 118
    iget-object v1, p0, Lorg/apache/xalan/xslt/SecuritySupport12$6;->val$cl:Ljava/lang/ClassLoader;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 119
    iget-object v1, p0, Lorg/apache/xalan/xslt/SecuritySupport12$6;->val$name:Ljava/lang/String;

    #@6
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@9
    move-result-object v0

    #@a
    .line 123
    .local v0, "ris":Ljava/io/InputStream;
    :goto_0
    return-object v0

    #@b
    .line 121
    .end local v0    # "ris":Ljava/io/InputStream;
    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/xslt/SecuritySupport12$6;->val$cl:Ljava/lang/ClassLoader;

    #@d
    iget-object v2, p0, Lorg/apache/xalan/xslt/SecuritySupport12$6;->val$name:Ljava/lang/String;

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@12
    move-result-object v0

    #@13
    .restart local v0    # "ris":Ljava/io/InputStream;
    goto :goto_0
.end method
