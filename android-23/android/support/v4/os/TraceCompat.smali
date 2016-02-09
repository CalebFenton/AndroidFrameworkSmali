.class public Landroid/support/v4/os/TraceCompat;
.super Ljava/lang/Object;
.source "TraceCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 2
    .param p0, "sectionName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x12

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 44
    invoke-static {p0}, Landroid/support/v4/os/TraceJellybeanMR2;->beginSection(Ljava/lang/String;)V

    #@9
    .line 42
    :cond_0
    return-void
.end method

.method public static endSection()V
    .locals 2

    #@0
    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x12

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 57
    invoke-static {}, Landroid/support/v4/os/TraceJellybeanMR2;->endSection()V

    #@9
    .line 55
    :cond_0
    return-void
.end method
