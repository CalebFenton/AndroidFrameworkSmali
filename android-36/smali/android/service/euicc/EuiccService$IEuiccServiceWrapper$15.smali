.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->dump(Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic blacklist val$callback:Landroid/service/euicc/IEuiccServiceDumpResultCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V
    .registers 3
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;
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

    .line 1117
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput-object p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;->val$callback:Landroid/service/euicc/IEuiccServiceDumpResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 1121
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1122
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1123
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v2, v2, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-virtual {v2, v1}, Landroid/service/euicc/EuiccService;->dump(Ljava/io/PrintWriter;)V

    .line 1124
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;->val$callback:Landroid/service/euicc/IEuiccServiceDumpResultCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/service/euicc/IEuiccServiceDumpResultCallback;->onComplete(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1127
    .end local v0    # "sw":Ljava/io/StringWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_1c

    .line 1125
    :catch_1b
    move-exception v0

    .line 1128
    :goto_1c
    return-void
.end method
