.class final Lcom/android/server/am/IntentBindRecord;
.super Ljava/lang/Object;
.source "IntentBindRecord.java"


# instance fields
.field final apps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/AppBindRecord;",
            ">;"
        }
    .end annotation
.end field

.field binder:Landroid/os/IBinder;

.field doRebind:Z

.field hasBound:Z

.field final intent:Landroid/content/Intent$FilterComparison;

.field received:Z

.field requested:Z

.field final service:Lcom/android/server/am/ServiceRecord;

.field stringName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V
    .locals 1
    .param p1, "_service"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "_intent"    # Landroid/content/Intent$FilterComparison;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 36
    iput-object v0, p0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@a
    .line 75
    iput-object p1, p0, Lcom/android/server/am/IntentBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@c
    .line 76
    iput-object p2, p0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@e
    .line 74
    return-void
.end method


# virtual methods
.method collectFlags()I
    .locals 5

    #@0
    .prologue
    .line 80
    const/4 v1, 0x0

    #@1
    .line 81
    .local v1, "flags":I
    iget-object v4, p0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v2, v4, -0x1

    #@9
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@b
    .line 82
    iget-object v4, p0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Lcom/android/server/am/AppBindRecord;

    #@13
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    #@15
    .line 83
    .local v0, "connections":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@18
    move-result v4

    #@19
    add-int/lit8 v3, v4, -0x1

    #@1b
    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_0

    #@1d
    .line 84
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    #@23
    iget v4, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    #@25
    or-int/2addr v1, v4

    #@26
    .line 83
    add-int/lit8 v3, v3, -0x1

    #@28
    goto :goto_1

    #@29
    .line 81
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 87
    .end local v0    # "connections":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "j":I
    :cond_1
    return v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "service="

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/android/server/am/IntentBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/IntentBindRecord;->dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@11
    .line 51
    return-void
.end method

.method dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x7d

    #@2
    const/4 v4, 0x0

    #@3
    .line 57
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string/jumbo v2, "intent={"

    #@9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 58
    iget-object v2, p0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@e
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@11
    move-result-object v2

    #@12
    const/4 v3, 0x1

    #@13
    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    .line 59
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(C)V

    #@1d
    .line 60
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    const-string/jumbo v2, "binder="

    #@23
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    iget-object v2, p0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    #@28
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2b
    .line 61
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    const-string/jumbo v2, "requested="

    #@31
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    iget-boolean v2, p0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    #@36
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@39
    .line 62
    const-string/jumbo v2, " received="

    #@3c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    iget-boolean v2, p0, Lcom/android/server/am/IntentBindRecord;->received:Z

    #@41
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@44
    .line 63
    const-string/jumbo v2, " hasBound="

    #@47
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    iget-boolean v2, p0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    #@4c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@4f
    .line 64
    const-string/jumbo v2, " doRebind="

    #@52
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55
    iget-boolean v2, p0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    #@57
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@5a
    .line 65
    const/4 v1, 0x0

    #@5b
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@5d
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@60
    move-result v2

    #@61
    if-ge v1, v2, :cond_0

    #@63
    .line 66
    iget-object v2, p0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    #@65
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@68
    move-result-object v0

    #@69
    check-cast v0, Lcom/android/server/am/AppBindRecord;

    #@6b
    .line 67
    .local v0, "a":Lcom/android/server/am/AppBindRecord;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    const-string/jumbo v2, "* Client AppBindRecord{"

    #@71
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    .line 68
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@77
    move-result v2

    #@78
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    .line 69
    const/16 v2, 0x20

    #@81
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    #@84
    iget-object v2, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@86
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@89
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(C)V

    #@8c
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    const-string/jumbo v3, "  "

    #@98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/AppBindRecord;->dumpInIntentBind(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@a3
    .line 65
    add-int/lit8 v1, v1, 0x1

    #@a5
    goto :goto_0

    #@a6
    .line 56
    .end local v0    # "a":Lcom/android/server/am/AppBindRecord;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 91
    iget-object v0, p0, Lcom/android/server/am/IntentBindRecord;->stringName:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 92
    iget-object v0, p0, Lcom/android/server/am/IntentBindRecord;->stringName:Ljava/lang/String;

    #@7
    return-object v0

    #@8
    .line 94
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    const/16 v0, 0x80

    #@c
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    .line 95
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "IntentBindRecord{"

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 96
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 97
    const/16 v0, 0x20

    #@22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 98
    invoke-virtual {p0}, Lcom/android/server/am/IntentBindRecord;->collectFlags()I

    #@28
    move-result v0

    #@29
    and-int/lit8 v0, v0, 0x1

    #@2b
    if-eqz v0, :cond_1

    #@2d
    .line 99
    const-string/jumbo v0, "CR "

    #@30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/IntentBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@35
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 102
    const/16 v0, 0x3a

    #@3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    .line 103
    iget-object v0, p0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@41
    if-eqz v0, :cond_2

    #@43
    .line 104
    iget-object v0, p0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@45
    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@48
    move-result-object v0

    #@49
    move v3, v2

    #@4a
    move v4, v2

    #@4b
    move v5, v2

    #@4c
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@4f
    .line 106
    :cond_2
    const/16 v0, 0x7d

    #@51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@54
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    iput-object v0, p0, Lcom/android/server/am/IntentBindRecord;->stringName:Ljava/lang/String;

    #@5a
    return-object v0
.end method
