.class Lorg/apache/xml/dtm/ref/SecuritySupport12$5;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/dtm/ref/SecuritySupport12;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/SecuritySupport12;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/apache/xml/dtm/ref/SecuritySupport12;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/SecuritySupport12;
    .param p2, "val$file"    # Ljava/io/File;

    #@0
    .prologue
    .line 101
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$5;->this$0:Lorg/apache/xml/dtm/ref/SecuritySupport12;

    #@2
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$5;->val$file:Ljava/io/File;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    new-instance v0, Ljava/io/FileInputStream;

    #@2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$5;->val$file:Ljava/io/File;

    #@4
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@7
    return-object v0
.end method
