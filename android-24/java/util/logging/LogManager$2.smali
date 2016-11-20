.class Ljava/util/logging/LogManager$2;
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
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    #@0
    .prologue
    .line 286
    iput-object p1, p0, Ljava/util/logging/LogManager$2;->this$0:Ljava/util/logging/LogManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    invoke-virtual {p0}, Ljava/util/logging/LogManager$2;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Ljava/util/logging/LogManager$2;->this$0:Ljava/util/logging/LogManager;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->readConfiguration()V

    #@5
    .line 291
    invoke-static {}, Lsun/util/logging/PlatformLogger;->redirectPlatformLoggers()V

    #@8
    .line 292
    const/4 v0, 0x0

    #@9
    return-object v0
.end method
