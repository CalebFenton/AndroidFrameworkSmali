.class Lcom/android/server/DropBoxManagerService$2;
.super Lcom/android/internal/os/IDropBoxManagerService$Stub;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DropBoxManagerService;

    #@0
    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .locals 1
    .param p1, "entry"    # Landroid/os/DropBoxManager$Entry;

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/DropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V

    #@5
    .line 128
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/DropBoxManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5
    .line 143
    return-void
.end method

.method public getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/DropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
