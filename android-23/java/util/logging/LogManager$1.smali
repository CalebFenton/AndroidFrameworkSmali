.class Ljava/util/logging/LogManager$1;
.super Ljava/lang/Thread;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    #@0
    .prologue
    .line 187
    iput-object p1, p0, Ljava/util/logging/LogManager$1;->this$0:Ljava/util/logging/LogManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Ljava/util/logging/LogManager$1;->this$0:Ljava/util/logging/LogManager;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->reset()V

    #@5
    .line 188
    return-void
.end method
