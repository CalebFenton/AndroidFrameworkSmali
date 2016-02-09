.class Landroid/support/v4/os/TraceJellybeanMR2;
.super Ljava/lang/Object;
.source "TraceJellybeanMR2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 0
    .param p0, "section"    # Ljava/lang/String;

    #@0
    .prologue
    .line 20
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    #@3
    .line 19
    return-void
.end method

.method public static endSection()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    #@3
    .line 23
    return-void
.end method
