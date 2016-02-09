.class Lcom/android/commands/monkey/Monkey$ActivityController;
.super Landroid/app/IActivityController$Stub;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/Monkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/monkey/Monkey;


# direct methods
.method private constructor <init>(Lcom/android/commands/monkey/Monkey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/monkey/Monkey;

    #@0
    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@2
    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey$ActivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/monkey/Monkey;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;)V

    #@3
    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 277
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v1

    #@4
    .line 278
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "    // activityResuming("

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    const-string/jumbo v4, ")"

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    .line 279
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p1}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->checkEnteringPackage(Ljava/lang/String;)Z

    #@2b
    move-result v2

    #@2c
    if-nez v2, :cond_1

    #@2e
    .line 280
    const/4 v0, 0x0

    #@2f
    .line 281
    .local v0, "allow":Z
    :goto_0
    if-nez v0, :cond_0

    #@31
    .line 282
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@33
    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-get4(Lcom/android/commands/monkey/Monkey;)I

    #@36
    move-result v2

    #@37
    if-lez v2, :cond_0

    #@39
    .line 283
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3b
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "    // "

    #@43
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    if-eqz v0, :cond_2

    #@49
    const-string/jumbo v2, "Allowing"

    #@4c
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    .line 284
    const-string/jumbo v4, " resume of package "

    #@53
    .line 283
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@62
    .line 287
    :cond_0
    sput-object p1, Lcom/android/commands/monkey/Monkey;->currentPackage:Ljava/lang/String;

    #@64
    .line 288
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@67
    .line 289
    return v0

    #@68
    .line 279
    .end local v0    # "allow":Z
    :cond_1
    const/4 v0, 0x1

    #@69
    .restart local v0    # "allow":Z
    goto :goto_0

    #@6a
    .line 283
    :cond_2
    const-string/jumbo v2, "Rejecting"

    #@6d
    goto :goto_1
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 257
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2, p2}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->checkEnteringPackage(Ljava/lang/String;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_1

    #@a
    .line 258
    const/4 v0, 0x0

    #@b
    .line 259
    .local v0, "allow":Z
    :goto_0
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@d
    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-get4(Lcom/android/commands/monkey/Monkey;)I

    #@10
    move-result v2

    #@11
    if-lez v2, :cond_0

    #@13
    .line 266
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@16
    move-result-object v1

    #@17
    .line 267
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "    // "

    #@21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    if-eqz v0, :cond_2

    #@27
    const-string/jumbo v2, "Allowing"

    #@2a
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v4, " start of "

    #@31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    .line 268
    const-string/jumbo v4, " in package "

    #@3c
    .line 267
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4b
    .line 269
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@4e
    .line 271
    .end local v1    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_0
    sput-object p2, Lcom/android/commands/monkey/Monkey;->currentPackage:Ljava/lang/String;

    #@50
    .line 272
    sput-object p1, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    #@52
    .line 273
    return v0

    #@53
    .line 257
    .end local v0    # "allow":Z
    :cond_1
    const/4 v0, 0x1

    #@54
    .restart local v0    # "allow":Z
    goto :goto_0

    #@55
    .line 267
    .restart local v1    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_2
    const-string/jumbo v2, "Rejecting"

    #@58
    goto :goto_1
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 8
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "timeMillis"    # J
    .param p7, "stackTrace"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 295
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@5
    move-result-object v0

    #@6
    .line 296
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "// CRASH: "

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    const-string/jumbo v5, " (pid "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    const-string/jumbo v5, ")"

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@31
    .line 297
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@33
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v5, "// Short Msg: "

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4a
    .line 298
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4c
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v5, "// Long Msg: "

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@63
    .line 299
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@65
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v5, "// Build Label: "

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7e
    .line 300
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@80
    new-instance v4, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v5, "// Build Changelist: "

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    #@8e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v4

    #@92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v4

    #@96
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@99
    .line 301
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9b
    new-instance v4, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v5, "// Build Time: "

    #@a3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v4

    #@a7
    sget-wide v6, Landroid/os/Build;->TIME:J

    #@a9
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v4

    #@b1
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b4
    .line 302
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b6
    new-instance v4, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v5, "// "

    #@be
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v4

    #@c2
    const-string/jumbo v5, "\n"

    #@c5
    const-string/jumbo v6, "\n// "

    #@c8
    invoke-virtual {p7, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@cb
    move-result-object v5

    #@cc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v4

    #@d0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v4

    #@d4
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d7
    .line 303
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@da
    .line 305
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@dc
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->-get0(Lcom/android/commands/monkey/Monkey;)Z

    #@df
    move-result v3

    #@e0
    if-eqz v3, :cond_0

    #@e2
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@e4
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->-get3(Lcom/android/commands/monkey/Monkey;)Z

    #@e7
    move-result v3

    #@e8
    if-eqz v3, :cond_4

    #@ea
    .line 306
    :cond_0
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@ec
    monitor-enter v3

    #@ed
    .line 307
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@ef
    invoke-static {v4}, Lcom/android/commands/monkey/Monkey;->-get0(Lcom/android/commands/monkey/Monkey;)Z

    #@f2
    move-result v4

    #@f3
    if-nez v4, :cond_1

    #@f5
    .line 308
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@f7
    const/4 v5, 0x1

    #@f8
    invoke-static {v4, v5}, Lcom/android/commands/monkey/Monkey;->-set0(Lcom/android/commands/monkey/Monkey;Z)Z

    #@fb
    .line 310
    :cond_1
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@fd
    invoke-static {v4}, Lcom/android/commands/monkey/Monkey;->-get3(Lcom/android/commands/monkey/Monkey;)Z

    #@100
    move-result v4

    #@101
    if-eqz v4, :cond_2

    #@103
    .line 311
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@105
    const/4 v5, 0x1

    #@106
    invoke-static {v4, v5}, Lcom/android/commands/monkey/Monkey;->-set4(Lcom/android/commands/monkey/Monkey;Z)Z

    #@109
    .line 312
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@10b
    invoke-static {v4, p1}, Lcom/android/commands/monkey/Monkey;->-set1(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10e
    :cond_2
    monitor-exit v3

    #@10f
    .line 315
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@111
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->-get2(Lcom/android/commands/monkey/Monkey;)Z

    #@114
    move-result v3

    #@115
    if-eqz v3, :cond_3

    #@117
    :goto_0
    return v1

    #@118
    .line 306
    :catchall_0
    move-exception v1

    #@119
    monitor-exit v3

    #@11a
    throw v1

    #@11b
    :cond_3
    move v1, v2

    #@11c
    .line 315
    goto :goto_0

    #@11d
    .line 317
    :cond_4
    return v1
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "annotation"    # Ljava/lang/String;

    #@0
    .prologue
    .line 321
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processStats"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 325
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@4
    move-result-object v0

    #@5
    .line 326
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "// NOT RESPONDING: "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    const-string/jumbo v4, " (pid "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, ")"

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 327
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32
    invoke-virtual {v2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@35
    .line 328
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@38
    .line 330
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@3a
    monitor-enter v2

    #@3b
    .line 331
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@3d
    const/4 v4, 0x1

    #@3e
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->-set3(Lcom/android/commands/monkey/Monkey;Z)Z

    #@41
    .line 332
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@43
    const/4 v4, 0x1

    #@44
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->-set5(Lcom/android/commands/monkey/Monkey;Z)Z

    #@47
    .line 333
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@49
    const/4 v4, 0x1

    #@4a
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->-set6(Lcom/android/commands/monkey/Monkey;Z)Z

    #@4d
    .line 334
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@4f
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->-get3(Lcom/android/commands/monkey/Monkey;)Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_0

    #@55
    .line 335
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@57
    const/4 v4, 0x1

    #@58
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->-set2(Lcom/android/commands/monkey/Monkey;Z)Z

    #@5b
    .line 336
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@5d
    invoke-static {v3, p1}, Lcom/android/commands/monkey/Monkey;->-set1(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    :cond_0
    monitor-exit v2

    #@61
    .line 339
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@63
    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-get1(Lcom/android/commands/monkey/Monkey;)Z

    #@66
    move-result v2

    #@67
    if-nez v2, :cond_1

    #@69
    .line 340
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@6b
    monitor-enter v2

    #@6c
    .line 341
    :try_start_1
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@6e
    const/4 v4, 0x1

    #@6f
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->-set0(Lcom/android/commands/monkey/Monkey;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@72
    monitor-exit v2

    #@73
    .line 344
    :cond_1
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@75
    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-get2(Lcom/android/commands/monkey/Monkey;)Z

    #@78
    move-result v2

    #@79
    if-eqz v2, :cond_2

    #@7b
    const/4 v1, -0x1

    #@7c
    :cond_2
    return v1

    #@7d
    .line 330
    :catchall_0
    move-exception v1

    #@7e
    monitor-exit v2

    #@7f
    throw v1

    #@80
    .line 340
    :catchall_1
    move-exception v1

    #@81
    monitor-exit v2

    #@82
    throw v1
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 348
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@4
    move-result-object v1

    #@5
    .line 349
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "// WATCHDOG: "

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e
    .line 350
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@21
    .line 352
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@23
    monitor-enter v3

    #@24
    .line 353
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@26
    invoke-static {v4}, Lcom/android/commands/monkey/Monkey;->-get0(Lcom/android/commands/monkey/Monkey;)Z

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_0

    #@2c
    .line 354
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@2e
    const/4 v5, 0x1

    #@2f
    invoke-static {v4, v5}, Lcom/android/commands/monkey/Monkey;->-set0(Lcom/android/commands/monkey/Monkey;Z)Z

    #@32
    .line 356
    :cond_0
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@34
    invoke-static {v4}, Lcom/android/commands/monkey/Monkey;->-get3(Lcom/android/commands/monkey/Monkey;)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_1

    #@3a
    .line 357
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@3c
    const/4 v5, 0x1

    #@3d
    invoke-static {v4, v5}, Lcom/android/commands/monkey/Monkey;->-set7(Lcom/android/commands/monkey/Monkey;Z)Z

    #@40
    .line 359
    :cond_1
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@42
    const/4 v5, 0x1

    #@43
    invoke-static {v4, v5}, Lcom/android/commands/monkey/Monkey;->-set8(Lcom/android/commands/monkey/Monkey;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    monitor-exit v3

    #@47
    .line 361
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@49
    monitor-enter v3

    #@4a
    .line 362
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@4c
    invoke-static {v4}, Lcom/android/commands/monkey/Monkey;->-get5(Lcom/android/commands/monkey/Monkey;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_2

    #@52
    .line 364
    :try_start_2
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@54
    invoke-virtual {v4}, Lcom/android/commands/monkey/Monkey;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@57
    goto :goto_0

    #@58
    .line 365
    :catch_0
    move-exception v0

    #@59
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@5a
    .line 352
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    #@5b
    monitor-exit v3

    #@5c
    throw v2

    #@5d
    :cond_2
    monitor-exit v3

    #@5e
    .line 369
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #@60
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->-get2(Lcom/android/commands/monkey/Monkey;)Z

    #@63
    move-result v3

    #@64
    if-eqz v3, :cond_3

    #@66
    const/4 v2, -0x1

    #@67
    :cond_3
    return v2

    #@68
    .line 361
    :catchall_1
    move-exception v2

    #@69
    monitor-exit v3

    #@6a
    throw v2
.end method
