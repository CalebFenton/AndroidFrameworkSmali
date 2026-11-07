.class public Landroid/webkit/JsResult;
.super Ljava/lang/Object;
.source "JsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/JsResult$ResultReceiver;
    }
.end annotation


# instance fields
.field private final greylist mReceiver:Landroid/webkit/JsResult$ResultReceiver;

.field private greylist-max-o mResult:Z


# direct methods
.method public constructor whitelist <init>(Landroid/webkit/JsResult$ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/webkit/JsResult$ResultReceiver;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/webkit/JsResult;->mReceiver:Landroid/webkit/JsResult$ResultReceiver;

    .line 65
    return-void
.end method

.method private final greylist-max-o wakeUp()V
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/webkit/JsResult;->mReceiver:Landroid/webkit/JsResult$ResultReceiver;

    invoke-interface {v0, p0}, Landroid/webkit/JsResult$ResultReceiver;->onJsResultComplete(Landroid/webkit/JsResult;)V

    .line 78
    return-void
.end method


# virtual methods
.method public final whitelist cancel()V
    .registers 2

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    .line 48
    invoke-direct {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 49
    return-void
.end method

.method public final whitelist confirm()V
    .registers 2

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    .line 56
    invoke-direct {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 57
    return-void
.end method

.method public final whitelist getResult()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 72
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    return v0
.end method
