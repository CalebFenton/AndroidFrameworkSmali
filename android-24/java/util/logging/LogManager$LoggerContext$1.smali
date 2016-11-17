.class Ljava/util/logging/LogManager$LoggerContext$1;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager$LoggerContext;->processParentHandlers(Ljava/util/logging/Logger;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/logging/LogManager$LoggerContext;

.field final synthetic val$logger:Ljava/util/logging/Logger;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager$LoggerContext;Ljava/util/logging/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/logging/LogManager$LoggerContext;
    .param p2, "val$logger"    # Ljava/util/logging/Logger;
    .param p3, "val$name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 665
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerContext$1;->this$1:Ljava/util/logging/LogManager$LoggerContext;

    #@2
    iput-object p2, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$logger:Ljava/util/logging/Logger;

    #@4
    iput-object p3, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$name:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 666
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4

    #@0
    .prologue
    .line 667
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$logger:Ljava/util/logging/Logger;

    #@2
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    #@9
    move-result-object v2

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 668
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@f
    move-result-object v1

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    iget-object v3, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$name:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, ".useParentHandlers"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    const/4 v3, 0x1

    #@27
    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@2a
    move-result v0

    #@2b
    .line 669
    .local v0, "useParent":Z
    if-nez v0, :cond_0

    #@2d
    .line 670
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$logger:Ljava/util/logging/Logger;

    #@2f
    const/4 v2, 0x0

    #@30
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    #@33
    .line 673
    .end local v0    # "useParent":Z
    :cond_0
    const/4 v1, 0x0

    #@34
    return-object v1
.end method
