.class Landroid/tracing/inputmethod/InputMethodDataSource$1;
.super Landroid/tracing/perfetto/DataSourceInstance;
.source "InputMethodDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/tracing/inputmethod/InputMethodDataSource;->createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/tracing/inputmethod/InputMethodDataSource;


# direct methods
.method constructor blacklist <init>(Landroid/tracing/inputmethod/InputMethodDataSource;Landroid/tracing/perfetto/DataSource;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/tracing/inputmethod/InputMethodDataSource;
    .param p2, "dataSource"    # Landroid/tracing/perfetto/DataSource;
    .param p3, "instanceIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Landroid/tracing/inputmethod/InputMethodDataSource$1;->this$0:Landroid/tracing/inputmethod/InputMethodDataSource;

    invoke-direct {p0, p2, p3}, Landroid/tracing/perfetto/DataSourceInstance;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    return-void
.end method


# virtual methods
.method protected blacklist onStart(Landroid/tracing/perfetto/StartCallbackArguments;)V
    .registers 3
    .param p1, "args"    # Landroid/tracing/perfetto/StartCallbackArguments;

    .line 49
    iget-object v0, p0, Landroid/tracing/inputmethod/InputMethodDataSource$1;->this$0:Landroid/tracing/inputmethod/InputMethodDataSource;

    invoke-static {v0}, Landroid/tracing/inputmethod/InputMethodDataSource;->-$$Nest$fgetmOnStartCallback(Landroid/tracing/inputmethod/InputMethodDataSource;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 50
    return-void
.end method

.method protected blacklist onStop(Landroid/tracing/perfetto/StopCallbackArguments;)V
    .registers 3
    .param p1, "args"    # Landroid/tracing/perfetto/StopCallbackArguments;

    .line 54
    iget-object v0, p0, Landroid/tracing/inputmethod/InputMethodDataSource$1;->this$0:Landroid/tracing/inputmethod/InputMethodDataSource;

    invoke-static {v0}, Landroid/tracing/inputmethod/InputMethodDataSource;->-$$Nest$fgetmOnStopCallback(Landroid/tracing/inputmethod/InputMethodDataSource;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 55
    return-void
.end method
