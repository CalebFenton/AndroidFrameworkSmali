.class Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$3;
.super Ljava/lang/Object;
.source "CronetUploadDataStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->destroyAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 378
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 382
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$mcheckCallingThread(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)V

    .line 383
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$3;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$fgetmDataProvider(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 386
    goto :goto_19

    .line 384
    :catch_f
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception thrown when closing"

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19
    return-void
.end method
