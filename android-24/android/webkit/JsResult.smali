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
.field private final mReceiver:Landroid/webkit/JsResult$ResultReceiver;

.field private mResult:Z


# direct methods
.method public constructor <init>(Landroid/webkit/JsResult$ResultReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/webkit/JsResult$ResultReceiver;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Landroid/webkit/JsResult;->mReceiver:Landroid/webkit/JsResult$ResultReceiver;

    #@5
    .line 61
    return-void
.end method

.method private final wakeUp()V
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/webkit/JsResult;->mReceiver:Landroid/webkit/JsResult$ResultReceiver;

    #@2
    invoke-interface {v0, p0}, Landroid/webkit/JsResult$ResultReceiver;->onJsResultComplete(Landroid/webkit/JsResult;)V

    #@5
    .line 74
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    #@0
    .prologue
    .line 45
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    #@3
    .line 46
    invoke-direct {p0}, Landroid/webkit/JsResult;->wakeUp()V

    #@6
    .line 44
    return-void
.end method

.method public final confirm()V
    .locals 1

    #@0
    .prologue
    .line 53
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    #@3
    .line 54
    invoke-direct {p0}, Landroid/webkit/JsResult;->wakeUp()V

    #@6
    .line 52
    return-void
.end method

.method public final getResult()Z
    .locals 1

    #@0
    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    #@2
    return v0
.end method
