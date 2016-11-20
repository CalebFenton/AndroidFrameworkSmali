.class Ljava/util/logging/LogManager$3;
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
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;

.field final synthetic val$l:Ljava/util/logging/Logger;

.field final synthetic val$sysLogger:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .param p2, "val$l"    # Ljava/util/logging/Logger;
    .param p3, "val$sysLogger"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    .line 422
    iput-object p1, p0, Ljava/util/logging/LogManager$3;->this$0:Ljava/util/logging/LogManager;

    #@2
    iput-object p2, p0, Ljava/util/logging/LogManager$3;->val$l:Ljava/util/logging/Logger;

    #@4
    iput-object p3, p0, Ljava/util/logging/LogManager$3;->val$sysLogger:Ljava/util/logging/Logger;

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
    .line 423
    invoke-virtual {p0}, Ljava/util/logging/LogManager$3;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 5

    #@0
    .prologue
    .line 424
    iget-object v1, p0, Ljava/util/logging/LogManager$3;->val$l:Ljava/util/logging/Logger;

    #@2
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    #@5
    move-result-object v2

    #@6
    const/4 v1, 0x0

    #@7
    array-length v3, v2

    #@8
    :goto_0
    if-ge v1, v3, :cond_0

    #@a
    aget-object v0, v2, v1

    #@c
    .line 425
    .local v0, "hdl":Ljava/util/logging/Handler;
    iget-object v4, p0, Ljava/util/logging/LogManager$3;->val$sysLogger:Ljava/util/logging/Logger;

    #@e
    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    #@11
    .line 424
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 427
    .end local v0    # "hdl":Ljava/util/logging/Handler;
    :cond_0
    const/4 v1, 0x0

    #@15
    return-object v1
.end method
