.class public Lcom/android/internal/logging/MetricsLogger;
.super Ljava/lang/Object;
.source "MetricsLogger.java"

# interfaces
.implements Lcom/android/internal/logging/MetricsConstants;


# static fields
.field public static final ACTION_ASSIST_LONG_PRESS:I = 0xef


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static action(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I

    #@0
    .prologue
    .line 62
    const-string/jumbo v0, ""

    #@3
    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    #@6
    .line 61
    return-void
.end method

.method public static action(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    #@7
    .line 65
    return-void
.end method

.method public static action(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    if-nez p1, :cond_0

    #@6
    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Must define metric category"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 77
    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiAction(ILjava/lang/String;)V

    #@12
    .line 73
    return-void
.end method

.method public static action(Landroid/content/Context;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 70
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    #@7
    .line 69
    return-void
.end method

.method public static count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 82
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiCount(Ljava/lang/String;I)V

    #@3
    .line 81
    return-void
.end method

.method public static hidden(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 41
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    if-nez p1, :cond_0

    #@7
    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Must define metric category"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 44
    :cond_0
    invoke-static {p1, v1}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    #@13
    .line 40
    return-void
.end method

.method public static histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bucket"    # I

    #@0
    .prologue
    .line 87
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiHistogram(Ljava/lang/String;I)V

    #@3
    .line 86
    return-void
.end method

.method public static visibility(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "vis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 58
    if-nez p2, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    #@7
    .line 57
    return-void
.end method

.method public static visibility(Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "visibile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    if-eqz p2, :cond_0

    #@2
    .line 50
    invoke-static {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    #@5
    .line 48
    :goto_0
    return-void

    #@6
    .line 52
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    #@9
    goto :goto_0
.end method

.method public static visible(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 34
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    if-nez p1, :cond_0

    #@6
    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Must define metric category"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 37
    :cond_0
    const/16 v0, 0x64

    #@11
    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    #@14
    .line 33
    return-void
.end method
