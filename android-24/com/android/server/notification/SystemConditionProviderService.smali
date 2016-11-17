.class public abstract Lcom/android/server/notification/SystemConditionProviderService;
.super Landroid/service/notification/ConditionProviderService;
.source "SystemConditionProviderService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;-><init>()V

    #@3
    return-void
.end method

.method protected static dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "var"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "now"    # J

    #@0
    .prologue
    .line 51
    const-string/jumbo v0, "      "

    #@3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    const/16 v0, 0x3d

    #@b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    #@e
    .line 52
    const-wide/16 v0, 0x0

    #@10
    cmp-long v0, p2, v0

    #@12
    if-lez v0, :cond_0

    #@14
    .line 53
    const-string/jumbo v0, "%s, in %s, now=%s"

    #@17
    const/4 v1, 0x3

    #@18
    new-array v1, v1, [Ljava/lang/Object;

    #@1a
    invoke-static {p2, p3}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x0

    #@1f
    aput-object v2, v1, v3

    #@21
    sub-long v2, p2, p4

    #@23
    invoke-static {v2, v3}, Lcom/android/server/notification/SystemConditionProviderService;->formatDuration(J)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    const/4 v3, 0x1

    #@28
    aput-object v2, v1, v3

    #@2a
    invoke-static {p4, p5}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    const/4 v3, 0x2

    #@2f
    aput-object v2, v1, v3

    #@31
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@34
    .line 57
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@37
    .line 50
    return-void

    #@38
    .line 55
    :cond_0
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    #@3b
    goto :goto_0
.end method

.method protected static formatDuration(J)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J

    #@0
    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 46
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@8
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method protected static ts(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    #@0
    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    new-instance v1, Ljava/util/Date;

    #@7
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    const-string/jumbo v1, " ("

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, ")"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method


# virtual methods
.method public abstract asInterface()Landroid/service/notification/IConditionProvider;
.end method

.method public abstract attachBase(Landroid/content/Context;)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
.end method

.method public abstract getComponent()Landroid/content/ComponentName;
.end method

.method public abstract isValidConditionId(Landroid/net/Uri;)Z
.end method

.method public abstract onBootComplete()V
.end method
