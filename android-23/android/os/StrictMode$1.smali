.class final Landroid/os/StrictMode$1;
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
        "Ljava/util/ArrayList",
        "<",
        "Landroid/os/StrictMode$ViolationInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 850
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 851
    invoke-virtual {p0}, Landroid/os/StrictMode$1;->initialValue()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected initialValue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 855
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
