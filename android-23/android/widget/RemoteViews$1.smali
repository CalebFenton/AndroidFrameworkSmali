.class final Landroid/widget/RemoteViews$1;
.super Ljava/lang/ThreadLocal;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/widget/RemoteViews$1;->initialValue()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected initialValue()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 148
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    return-object v0
.end method
