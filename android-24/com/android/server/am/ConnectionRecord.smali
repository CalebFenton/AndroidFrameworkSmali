.class final Lcom/android/server/am/ConnectionRecord;
.super Ljava/lang/Object;
.source "ConnectionRecord.java"


# instance fields
.field final activity:Lcom/android/server/am/ActivityRecord;

.field final binding:Lcom/android/server/am/AppBindRecord;

.field final clientIntent:Landroid/app/PendingIntent;

.field final clientLabel:I

.field final conn:Landroid/app/IServiceConnection;

.field final flags:I

.field serviceDead:Z

.field stringName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "_binding"    # Lcom/android/server/am/AppBindRecord;
    .param p2, "_activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "_conn"    # Landroid/app/IServiceConnection;
    .param p4, "_flags"    # I
    .param p5, "_clientLabel"    # I
    .param p6, "_clientIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@5
    .line 51
    iput-object p2, p0, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    #@7
    .line 52
    iput-object p3, p0, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@9
    .line 53
    iput p4, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@b
    .line 54
    iput p5, p0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    #@d
    .line 55
    iput-object p6, p0, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    #@f
    .line 49
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "binding="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 40
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    const-string/jumbo v1, "activity="

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    const-string/jumbo v1, "conn="

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@50
    invoke-interface {v1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    .line 44
    const-string/jumbo v1, " flags=0x"

    #@5b
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 44
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@61
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->stringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 60
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->stringName:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x80

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 63
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ConnectionRecord{"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 64
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@17
    move-result v1

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 65
    const-string/jumbo v1, " u"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 66
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@27
    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@29
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    .line 67
    const/16 v1, 0x20

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 68
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@35
    and-int/lit8 v1, v1, 0x1

    #@37
    if-eqz v1, :cond_1

    #@39
    .line 69
    const-string/jumbo v1, "CR "

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 71
    :cond_1
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@41
    and-int/lit8 v1, v1, 0x2

    #@43
    if-eqz v1, :cond_2

    #@45
    .line 72
    const-string/jumbo v1, "DBG "

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 74
    :cond_2
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@4d
    and-int/lit8 v1, v1, 0x4

    #@4f
    if-eqz v1, :cond_3

    #@51
    .line 75
    const-string/jumbo v1, "!FG "

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 77
    :cond_3
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@59
    and-int/lit8 v1, v1, 0x8

    #@5b
    if-eqz v1, :cond_4

    #@5d
    .line 78
    const-string/jumbo v1, "ABCLT "

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 80
    :cond_4
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@65
    and-int/lit8 v1, v1, 0x10

    #@67
    if-eqz v1, :cond_5

    #@69
    .line 81
    const-string/jumbo v1, "OOM "

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    .line 83
    :cond_5
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@71
    and-int/lit8 v1, v1, 0x20

    #@73
    if-eqz v1, :cond_6

    #@75
    .line 84
    const-string/jumbo v1, "WPRI "

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 86
    :cond_6
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@7d
    and-int/lit8 v1, v1, 0x40

    #@7f
    if-eqz v1, :cond_7

    #@81
    .line 87
    const-string/jumbo v1, "IMP "

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 89
    :cond_7
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@89
    and-int/lit16 v1, v1, 0x80

    #@8b
    if-eqz v1, :cond_8

    #@8d
    .line 90
    const-string/jumbo v1, "WACT "

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    .line 92
    :cond_8
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@95
    const/high16 v2, 0x2000000

    #@97
    and-int/2addr v1, v2

    #@98
    if-eqz v1, :cond_9

    #@9a
    .line 93
    const-string/jumbo v1, "FGSA "

    #@9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    .line 95
    :cond_9
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@a2
    const/high16 v2, 0x4000000

    #@a4
    and-int/2addr v1, v2

    #@a5
    if-eqz v1, :cond_a

    #@a7
    .line 96
    const-string/jumbo v1, "FGS "

    #@aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    .line 98
    :cond_a
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@af
    const/high16 v2, 0x8000000

    #@b1
    and-int/2addr v1, v2

    #@b2
    if-eqz v1, :cond_b

    #@b4
    .line 99
    const-string/jumbo v1, "LACT "

    #@b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    .line 101
    :cond_b
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@bc
    const/high16 v2, 0x10000000

    #@be
    and-int/2addr v1, v2

    #@bf
    if-eqz v1, :cond_c

    #@c1
    .line 102
    const-string/jumbo v1, "VIS "

    #@c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    .line 104
    :cond_c
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@c9
    const/high16 v2, 0x20000000

    #@cb
    and-int/2addr v1, v2

    #@cc
    if-eqz v1, :cond_d

    #@ce
    .line 105
    const-string/jumbo v1, "UI "

    #@d1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    .line 107
    :cond_d
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@d6
    const/high16 v2, 0x40000000    # 2.0f

    #@d8
    and-int/2addr v1, v2

    #@d9
    if-eqz v1, :cond_e

    #@db
    .line 108
    const-string/jumbo v1, "!VIS "

    #@de
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    .line 110
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    #@e3
    if-eqz v1, :cond_f

    #@e5
    .line 111
    const-string/jumbo v1, "DEAD "

    #@e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    .line 113
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@ed
    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@ef
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@f1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    .line 114
    const-string/jumbo v1, ":@"

    #@f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    .line 115
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    #@fc
    invoke-interface {v1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    #@ff
    move-result-object v1

    #@100
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@103
    move-result v1

    #@104
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@107
    move-result-object v1

    #@108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    .line 116
    const/16 v1, 0x7d

    #@10d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@110
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v1

    #@114
    iput-object v1, p0, Lcom/android/server/am/ConnectionRecord;->stringName:Ljava/lang/String;

    #@116
    return-object v1
.end method
