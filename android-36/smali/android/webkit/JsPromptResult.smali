.class public Landroid/webkit/JsPromptResult;
.super Landroid/webkit/JsResult;
.source "JsPromptResult.java"


# instance fields
.field private greylist-max-o mStringResult:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/webkit/JsResult$ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/webkit/JsResult$ResultReceiver;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/JsResult$ResultReceiver;)V

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist confirm(Ljava/lang/String;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 39
    return-void
.end method

.method public whitelist getStringResult()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 54
    iget-object v0, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    return-object v0
.end method
