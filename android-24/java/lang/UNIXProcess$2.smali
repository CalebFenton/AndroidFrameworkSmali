.class Ljava/lang/UNIXProcess$2;
.super Ljava/lang/Object;
.source "UNIXProcess.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/UNIXProcess;-><init>([B[BI[BI[B[IZ)V
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
.field final synthetic this$0:Ljava/lang/UNIXProcess;

.field final synthetic val$fds:[I


# direct methods
.method constructor <init>(Ljava/lang/UNIXProcess;[I)V
    .locals 0
    .param p1, "this$0"    # Ljava/lang/UNIXProcess;
    .param p2, "val$fds"    # [I

    #@0
    .prologue
    .line 141
    iput-object p1, p0, Ljava/lang/UNIXProcess$2;->this$0:Ljava/lang/UNIXProcess;

    #@2
    iput-object p2, p0, Ljava/lang/UNIXProcess$2;->val$fds:[I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
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
    .line 142
    invoke-virtual {p0}, Ljava/lang/UNIXProcess$2;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Ljava/lang/UNIXProcess$2;->this$0:Ljava/lang/UNIXProcess;

    #@2
    iget-object v1, p0, Ljava/lang/UNIXProcess$2;->val$fds:[I

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/UNIXProcess;->initStreams([I)V

    #@7
    .line 144
    const/4 v0, 0x0

    #@8
    return-object v0
.end method
