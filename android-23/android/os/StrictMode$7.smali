.class final Landroid/os/StrictMode$7;
.super Ljava/lang/ThreadLocal;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/os/StrictMode$ThreadSpanState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2062
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/os/StrictMode$ThreadSpanState;
    .locals 2

    #@0
    .prologue
    .line 2064
    new-instance v0, Landroid/os/StrictMode$ThreadSpanState;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/os/StrictMode$ThreadSpanState;-><init>(Landroid/os/StrictMode$ThreadSpanState;)V

    #@6
    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2063
    invoke-virtual {p0}, Landroid/os/StrictMode$7;->initialValue()Landroid/os/StrictMode$ThreadSpanState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
