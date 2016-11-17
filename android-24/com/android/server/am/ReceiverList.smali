.class final Lcom/android/server/am/ReceiverList;
.super Ljava/util/ArrayList;
.source "ReceiverList.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/am/BroadcastFilter;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field public final app:Lcom/android/server/am/ProcessRecord;

.field curBroadcast:Lcom/android/server/am/BroadcastRecord;

.field linkedToDeath:Z

.field final owner:Lcom/android/server/am/ActivityManagerService;

.field public final pid:I

.field public final receiver:Landroid/content/IIntentReceiver;

.field stringName:Ljava/lang/String;

.field public final uid:I

.field public final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IIILandroid/content/IIntentReceiver;)V
    .locals 1
    .param p1, "_owner"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "_pid"    # I
    .param p4, "_uid"    # I
    .param p5, "_userId"    # I
    .param p6, "_receiver"    # Landroid/content/IIntentReceiver;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@3
    .line 40
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@6
    .line 41
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    #@9
    .line 47
    iput-object p1, p0, Lcom/android/server/am/ReceiverList;->owner:Lcom/android/server/am/ActivityManagerService;

    #@b
    .line 48
    iput-object p6, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    #@d
    .line 49
    iput-object p2, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@f
    .line 50
    iput p3, p0, Lcom/android/server/am/ReceiverList;->pid:I

    #@11
    .line 51
    iput p4, p0, Lcom/android/server/am/ReceiverList;->uid:I

    #@13
    .line 52
    iput p5, p0, Lcom/android/server/am/ReceiverList;->userId:I

    #@15
    .line 46
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    #@3
    .line 65
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->owner:Lcom/android/server/am/ActivityManagerService;

    #@5
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    #@a
    .line 63
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    new-instance v4, Landroid/util/PrintWriterPrinter;

    #@2
    invoke-direct {v4, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@5
    .line 80
    .local v4, "pr":Landroid/util/Printer;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ReceiverList;->dumpLocal(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@8
    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    const-string/jumbo v6, "  "

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 82
    .local v3, "p2":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ReceiverList;->size()I

    #@1f
    move-result v0

    #@20
    .line 83
    .local v0, "N":I
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@23
    .line 84
    invoke-virtual {p0, v2}, Lcom/android/server/am/ReceiverList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    #@29
    .line 85
    .local v1, "bf":Lcom/android/server/am/BroadcastFilter;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    const-string/jumbo v5, "Filter #"

    #@2f
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@35
    .line 86
    const-string/jumbo v5, ": BroadcastFilter{"

    #@38
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    .line 87
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3e
    move-result v5

    #@3f
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    .line 88
    const/16 v5, 0x7d

    #@48
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(C)V

    #@4b
    .line 89
    invoke-virtual {v1, p1, v4, v3}, Lcom/android/server/am/BroadcastFilter;->dumpInReceiverList(Ljava/io/PrintWriter;Landroid/util/Printer;Ljava/lang/String;)V

    #@4e
    .line 83
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_0

    #@51
    .line 78
    .end local v1    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_0
    return-void
.end method

.method dumpLocal(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 69
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4
    const-string/jumbo v1, "app="

    #@7
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@c
    if-eqz v1, :cond_0

    #@e
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@10
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 70
    const-string/jumbo v0, " pid="

    #@1a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    iget v0, p0, Lcom/android/server/am/ReceiverList;->pid:I

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@22
    const-string/jumbo v0, " uid="

    #@25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    iget v0, p0, Lcom/android/server/am/ReceiverList;->uid:I

    #@2a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2d
    .line 71
    const-string/jumbo v0, " user="

    #@30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33
    iget v0, p0, Lcom/android/server/am/ReceiverList;->userId:I

    #@35
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@38
    .line 72
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@3a
    if-nez v0, :cond_1

    #@3c
    iget-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    #@3e
    if-eqz v0, :cond_2

    #@40
    .line 73
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    const-string/jumbo v0, "curBroadcast="

    #@46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    #@4b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@4e
    .line 74
    const-string/jumbo v0, " linkedToDeath="

    #@51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    iget-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    #@56
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@59
    .line 68
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 57
    if-ne p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 60
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 94
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->stringName:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 95
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->stringName:Ljava/lang/String;

    #@8
    return-object v1

    #@9
    .line 97
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const/16 v1, 0x80

    #@d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@10
    .line 98
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ReceiverList{"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 99
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@19
    move-result v1

    #@1a
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 101
    iget v1, p0, Lcom/android/server/am/ReceiverList;->pid:I

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 103
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@2e
    if-eqz v1, :cond_1

    #@30
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    #@32
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@34
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 104
    const/16 v1, 0x2f

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    .line 105
    iget v1, p0, Lcom/android/server/am/ReceiverList;->uid:I

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    .line 106
    const-string/jumbo v1, "/u"

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 107
    iget v1, p0, Lcom/android/server/am/ReceiverList;->userId:I

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    .line 108
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    #@4e
    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    #@51
    move-result-object v1

    #@52
    instance-of v1, v1, Landroid/os/Binder;

    #@54
    if-eqz v1, :cond_2

    #@56
    const-string/jumbo v1, " local:"

    #@59
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 109
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    #@5e
    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    #@61
    move-result-object v1

    #@62
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@65
    move-result v1

    #@66
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    .line 110
    const/16 v1, 0x7d

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@72
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    iput-object v1, p0, Lcom/android/server/am/ReceiverList;->stringName:Ljava/lang/String;

    #@78
    return-object v1

    #@79
    .line 103
    :cond_1
    const-string/jumbo v1, "(unknown name)"

    #@7c
    goto :goto_0

    #@7d
    .line 108
    :cond_2
    const-string/jumbo v1, " remote:"

    #@80
    goto :goto_1
.end method
