.class Ljava/util/logging/LogManager$3;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager;->readPrimordialConfiguration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/logging/LogManager;


# direct methods
.method constructor blacklist <init>(Ljava/util/logging/LogManager;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 388
    iput-object p1, p0, Ljava/util/logging/LogManager$3;->this$0:Ljava/util/logging/LogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Ljava/util/logging/LogManager$3;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Ljava/util/logging/LogManager$3;->this$0:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->readConfiguration()V

    .line 394
    invoke-static {}, Lsun/util/logging/PlatformLogger;->redirectPlatformLoggers()V

    .line 395
    const/4 v0, 0x0

    return-object v0
.end method
