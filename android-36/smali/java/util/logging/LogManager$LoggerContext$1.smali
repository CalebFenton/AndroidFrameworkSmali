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
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$logger:Ljava/util/logging/Logger;

.field final synthetic blacklist val$name:Ljava/lang/String;

.field final synthetic blacklist val$owner:Ljava/util/logging/LogManager;


# direct methods
.method constructor blacklist <init>(Ljava/util/logging/LogManager$LoggerContext;Ljava/util/logging/Logger;Ljava/util/logging/LogManager;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$1"    # Ljava/util/logging/LogManager$LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 834
    iput-object p2, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$logger:Ljava/util/logging/Logger;

    iput-object p3, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$owner:Ljava/util/logging/LogManager;

    iput-object p4, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 834
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 4

    .line 837
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$owner:Ljava/util/logging/LogManager;

    invoke-static {v1}, Ljava/util/logging/LogManager;->-$$Nest$fgetrootLogger(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v1

    if-eq v0, v1, :cond_2e

    .line 838
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$owner:Ljava/util/logging/LogManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".useParentHandlers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/LogManager;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 839
    .local v0, "useParent":Z
    if-nez v0, :cond_2e

    .line 840
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$logger:Ljava/util/logging/Logger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 843
    .end local v0    # "useParent":Z
    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method
