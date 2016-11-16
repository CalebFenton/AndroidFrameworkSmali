.class Lorg/apache/xml/dtm/ref/SecuritySupport12$1;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/dtm/ref/SecuritySupport12;->getContextClassLoader()Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/SecuritySupport12;


# direct methods
.method constructor <init>(Lorg/apache/xml/dtm/ref/SecuritySupport12;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/SecuritySupport12;

    #@0
    .prologue
    .line 47
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$1;->this$0:Lorg/apache/xml/dtm/ref/SecuritySupport12;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    .line 51
    .local v0, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v0

    #@9
    .line 53
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :goto_0
    return-object v0

    #@a
    .line 52
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    #@b
    .local v1, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method
