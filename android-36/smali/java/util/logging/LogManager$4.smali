.class Ljava/util/logging/LogManager$4;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
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
.field final synthetic blacklist val$l:Ljava/util/logging/Logger;

.field final synthetic blacklist val$sysLogger:Ljava/util/logging/Logger;


# direct methods
.method constructor blacklist <init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 573
    iput-object p2, p0, Ljava/util/logging/LogManager$4;->val$l:Ljava/util/logging/Logger;

    iput-object p3, p0, Ljava/util/logging/LogManager$4;->val$sysLogger:Ljava/util/logging/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 573
    invoke-virtual {p0}, Ljava/util/logging/LogManager$4;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 6

    .line 576
    iget-object v0, p0, Ljava/util/logging/LogManager$4;->val$l:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->accessCheckedHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 577
    .local v3, "hdl":Ljava/util/logging/Handler;
    iget-object v4, p0, Ljava/util/logging/LogManager$4;->val$sysLogger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 576
    .end local v3    # "hdl":Ljava/util/logging/Handler;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 579
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method
