.class public final Landroid/tracing/inputmethod/InputMethodDataSource;
.super Landroid/tracing/perfetto/DataSource;
.source "InputMethodDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/tracing/perfetto/DataSource<",
        "Landroid/tracing/perfetto/DataSourceInstance;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist DATA_SOURCE_NAME:Ljava/lang/String; = "android.inputmethod"


# instance fields
.field private final blacklist mOnStartCallback:Ljava/lang/Runnable;

.field private final blacklist mOnStopCallback:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOnStartCallback(Landroid/tracing/inputmethod/InputMethodDataSource;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/tracing/inputmethod/InputMethodDataSource;->mOnStartCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnStopCallback(Landroid/tracing/inputmethod/InputMethodDataSource;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/tracing/inputmethod/InputMethodDataSource;->mOnStopCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "onStart"    # Ljava/lang/Runnable;
    .param p2, "onStop"    # Ljava/lang/Runnable;

    .line 39
    const-string v0, "android.inputmethod"

    invoke-direct {p0, v0}, Landroid/tracing/perfetto/DataSource;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Landroid/tracing/inputmethod/InputMethodDataSource;->mOnStartCallback:Ljava/lang/Runnable;

    .line 41
    iput-object p2, p0, Landroid/tracing/inputmethod/InputMethodDataSource;->mOnStopCallback:Ljava/lang/Runnable;

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
    .registers 4
    .param p1, "configStream"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "instanceIndex"    # I

    .line 46
    new-instance v0, Landroid/tracing/inputmethod/InputMethodDataSource$1;

    invoke-direct {v0, p0, p0, p2}, Landroid/tracing/inputmethod/InputMethodDataSource$1;-><init>(Landroid/tracing/inputmethod/InputMethodDataSource;Landroid/tracing/perfetto/DataSource;I)V

    return-object v0
.end method
