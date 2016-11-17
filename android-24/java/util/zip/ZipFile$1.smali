.class Ljava/util/zip/ZipFile$1;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field final synthetic this$0:Ljava/util/zip/ZipFile;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipFile;)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/zip/ZipFile;

    #@0
    .prologue
    .line 493
    iput-object p1, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 494
    const/4 v0, 0x0

    #@6
    iput v0, p0, Ljava/util/zip/ZipFile$1;->i:I

    #@8
    .line 493
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    #@0
    .prologue
    .line 496
    iget-object v1, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@2
    monitor-enter v1

    #@3
    .line 497
    :try_start_0
    iget-object v0, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@5
    invoke-static {v0}, Ljava/util/zip/ZipFile;->-wrap7(Ljava/util/zip/ZipFile;)V

    #@8
    .line 498
    iget v0, p0, Ljava/util/zip/ZipFile$1;->i:I

    #@a
    iget-object v2, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@c
    invoke-static {v2}, Ljava/util/zip/ZipFile;->-get4(Ljava/util/zip/ZipFile;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v2

    #@10
    if-ge v0, v2, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :goto_0
    monitor-exit v1

    #@14
    return v0

    #@15
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0

    #@17
    .line 496
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 501
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$1;->nextElement()Ljava/util/zip/ZipEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/util/zip/ZipEntry;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    #@0
    .prologue
    .line 502
    iget-object v5, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@2
    monitor-enter v5

    #@3
    .line 503
    :try_start_0
    iget-object v4, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@5
    invoke-static {v4}, Ljava/util/zip/ZipFile;->-wrap7(Ljava/util/zip/ZipFile;)V

    #@8
    .line 504
    iget v4, p0, Ljava/util/zip/ZipFile$1;->i:I

    #@a
    iget-object v6, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@c
    invoke-static {v6}, Ljava/util/zip/ZipFile;->-get4(Ljava/util/zip/ZipFile;)I

    #@f
    move-result v6

    #@10
    if-lt v4, v6, :cond_0

    #@12
    .line 505
    new-instance v4, Ljava/util/NoSuchElementException;

    #@14
    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    #@17
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 502
    :catchall_0
    move-exception v4

    #@19
    monitor-exit v5

    #@1a
    throw v4

    #@1b
    .line 507
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@1d
    invoke-static {v4}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    #@20
    move-result-wide v6

    #@21
    iget v4, p0, Ljava/util/zip/ZipFile$1;->i:I

    #@23
    add-int/lit8 v8, v4, 0x1

    #@25
    iput v8, p0, Ljava/util/zip/ZipFile$1;->i:I

    #@27
    invoke-static {v6, v7, v4}, Ljava/util/zip/ZipFile;->-wrap5(JI)J

    #@2a
    move-result-wide v0

    #@2b
    .line 508
    .local v0, "jzentry":J
    const-wide/16 v6, 0x0

    #@2d
    cmp-long v4, v0, v6

    #@2f
    if-nez v4, :cond_2

    #@31
    .line 510
    iget-object v4, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@33
    invoke-static {v4}, Ljava/util/zip/ZipFile;->-get0(Ljava/util/zip/ZipFile;)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_1

    #@39
    .line 511
    const-string/jumbo v2, "ZipFile concurrently closed"

    #@3c
    .line 515
    .local v2, "message":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/util/zip/ZipError;

    #@3e
    new-instance v6, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v7, "jzentry == 0,\n jzfile = "

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    .line 516
    iget-object v7, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@4c
    invoke-static {v7}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    #@4f
    move-result-wide v8

    #@50
    .line 515
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    .line 517
    const-string/jumbo v7, ",\n total = "

    #@57
    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    .line 517
    iget-object v7, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@5d
    invoke-static {v7}, Ljava/util/zip/ZipFile;->-get4(Ljava/util/zip/ZipFile;)I

    #@60
    move-result v7

    #@61
    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    .line 518
    const-string/jumbo v7, ",\n name = "

    #@68
    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    .line 518
    iget-object v7, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@6e
    invoke-static {v7}, Ljava/util/zip/ZipFile;->-get2(Ljava/util/zip/ZipFile;)Ljava/lang/String;

    #@71
    move-result-object v7

    #@72
    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v6

    #@76
    .line 519
    const-string/jumbo v7, ",\n i = "

    #@79
    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v6

    #@7d
    .line 519
    iget v7, p0, Ljava/util/zip/ZipFile$1;->i:I

    #@7f
    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v6

    #@83
    .line 520
    const-string/jumbo v7, ",\n message = "

    #@86
    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v6

    #@8a
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v6

    #@8e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v6

    #@92
    invoke-direct {v4, v6}, Ljava/util/zip/ZipError;-><init>(Ljava/lang/String;)V

    #@95
    throw v4

    #@96
    .line 513
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@98
    invoke-static {v4}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    #@9b
    move-result-wide v6

    #@9c
    invoke-static {v6, v7}, Ljava/util/zip/ZipFile;->-wrap1(J)Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0

    #@a1
    .line 523
    .end local v2    # "message":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@a3
    const/4 v6, 0x0

    #@a4
    invoke-static {v4, v6, v0, v1}, Ljava/util/zip/ZipFile;->-wrap2(Ljava/util/zip/ZipFile;Ljava/lang/String;J)Ljava/util/zip/ZipEntry;

    #@a7
    move-result-object v3

    #@a8
    .line 524
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    iget-object v4, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@aa
    invoke-static {v4}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    #@ad
    move-result-wide v6

    #@ae
    invoke-static {v6, v7, v0, v1}, Ljava/util/zip/ZipFile;->-wrap8(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b1
    monitor-exit v5

    #@b2
    .line 525
    return-object v3
.end method
