.class Lcom/android/server/dreams/DreamManagerService$4;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    #@0
    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get1(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/dreams/DreamController;->dump(Ljava/io/PrintWriter;)V

    #@9
    .line 140
    return-void
.end method
