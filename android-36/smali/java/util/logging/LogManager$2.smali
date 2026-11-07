.class Ljava/util/logging/LogManager$2;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager;->ensureLogManagerInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final synthetic blacklist this$0:Ljava/util/logging/LogManager;

.field final synthetic blacklist val$owner:Ljava/util/logging/LogManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 330
    const-class v0, Ljava/util/logging/LogManager;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
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

    .line 330
    iput-object p1, p0, Ljava/util/logging/LogManager$2;->this$0:Ljava/util/logging/LogManager;

    iput-object p2, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 5

    .line 333
    nop

    .line 334
    nop

    .line 337
    iget-object v0, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-$$Nest$mreadPrimordialConfiguration(Ljava/util/logging/LogManager;)V

    .line 340
    iget-object v0, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    new-instance v1, Ljava/util/logging/LogManager$RootLogger;

    iget-object v2, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/logging/LogManager$RootLogger;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager-IA;)V

    invoke-static {v0, v1}, Ljava/util/logging/LogManager;->-$$Nest$fputrootLogger(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V

    .line 341
    iget-object v0, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    iget-object v1, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    invoke-static {v1}, Ljava/util/logging/LogManager;->-$$Nest$fgetrootLogger(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    .line 342
    iget-object v0, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-$$Nest$fgetrootLogger(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Logger;->isLevelInitialized()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 343
    iget-object v0, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-$$Nest$fgetrootLogger(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {}, Ljava/util/logging/LogManager;->-$$Nest$sfgetdefaultLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 350
    :cond_3b
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    .line 354
    .local v0, "global":Ljava/util/logging/Logger;
    iget-object v1, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    invoke-virtual {v1, v0}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    .line 355
    return-object v3
.end method
