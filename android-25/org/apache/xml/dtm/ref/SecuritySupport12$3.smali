.class Lorg/apache/xml/dtm/ref/SecuritySupport12$3;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/dtm/ref/SecuritySupport12;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/SecuritySupport12;

.field final synthetic val$cl:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lorg/apache/xml/dtm/ref/SecuritySupport12;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/SecuritySupport12;
    .param p2, "val$cl"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 73
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$3;->this$0:Lorg/apache/xml/dtm/ref/SecuritySupport12;

    #@2
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 75
    const/4 v1, 0x0

    #@1
    .line 77
    .local v1, "parent":Ljava/lang/ClassLoader;
    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    #@3
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    .line 82
    .end local v1    # "parent":Ljava/lang/ClassLoader;
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    #@9
    if-ne v1, v2, :cond_0

    #@b
    const/4 v1, 0x0

    #@c
    :cond_0
    return-object v1

    #@d
    .line 78
    .restart local v1    # "parent":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v0

    #@e
    .local v0, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method
