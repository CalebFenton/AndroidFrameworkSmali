.class final Landroid/os/Trace$1;
.super Ljava/lang/Object;
.source "Trace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    #@0
    .prologue
    .line 105
    invoke-static {}, Landroid/os/Trace;->-wrap0()J

    #@3
    .line 104
    return-void
.end method
