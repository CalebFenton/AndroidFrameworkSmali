.class final Ljava/util/logging/LogManager$6;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager;->doSetParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$logger:Ljava/util/logging/Logger;

.field final synthetic val$parent:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .locals 0
    .param p1, "val$logger"    # Ljava/util/logging/Logger;
    .param p2, "val$parent"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    .line 977
    iput-object p1, p0, Ljava/util/logging/LogManager$6;->val$logger:Ljava/util/logging/Logger;

    #@2
    iput-object p2, p0, Ljava/util/logging/LogManager$6;->val$parent:Ljava/util/logging/Logger;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 979
    iget-object v0, p0, Ljava/util/logging/LogManager$6;->val$logger:Ljava/util/logging/Logger;

    #@2
    iget-object v1, p0, Ljava/util/logging/LogManager$6;->val$parent:Ljava/util/logging/Logger;

    #@4
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    #@7
    .line 980
    const/4 v0, 0x0

    #@8
    return-object v0
.end method
