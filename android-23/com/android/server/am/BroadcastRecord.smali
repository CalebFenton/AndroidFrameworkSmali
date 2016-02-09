.class final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field static final APP_RECEIVE:I = 0x1

.field static final CALL_DONE_RECEIVE:I = 0x3

.field static final CALL_IN_RECEIVE:I = 0x2

.field static final IDLE:I = 0x0

.field static final WAITING_SERVICES:I = 0x4


# instance fields
.field anrCount:I

.field final appOp:I

.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final callerPackage:Ljava/lang/String;

.field final callingPid:I

.field final callingUid:I

.field curApp:Lcom/android/server/am/ProcessRecord;

.field curComponent:Landroid/content/ComponentName;

.field curFilter:Lcom/android/server/am/BroadcastFilter;

.field curReceiver:Landroid/content/pm/ActivityInfo;

.field dispatchClockTime:J

.field dispatchTime:J

.field enqueueClockTime:J

.field finishTime:J

.field final initialSticky:Z

.field final intent:Landroid/content/Intent;

.field nextReceiver:I

.field final options:Landroid/app/BroadcastOptions;

.field final ordered:Z

.field queue:Lcom/android/server/am/BroadcastQueue;

.field receiver:Landroid/os/IBinder;

.field receiverTime:J

.field final receivers:Ljava/util/List;

.field final requiredPermissions:[Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultAbort:Z

.field resultCode:I

.field resultData:Ljava/lang/String;

.field resultExtras:Landroid/os/Bundle;

.field resultTo:Landroid/content/IIntentReceiver;

.field state:I

.field final sticky:Z

.field final targetComp:Landroid/content/ComponentName;

.field final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZI)V
    .locals 2
    .param p1, "_queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "_intent"    # Landroid/content/Intent;
    .param p3, "_callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "_callerPackage"    # Ljava/lang/String;
    .param p5, "_callingPid"    # I
    .param p6, "_callingUid"    # I
    .param p7, "_resolvedType"    # Ljava/lang/String;
    .param p8, "_requiredPermissions"    # [Ljava/lang/String;
    .param p9, "_appOp"    # I
    .param p10, "_options"    # Landroid/app/BroadcastOptions;
    .param p11, "_receivers"    # Ljava/util/List;
    .param p12, "_resultTo"    # Landroid/content/IIntentReceiver;
    .param p13, "_resultCode"    # I
    .param p14, "_resultData"    # Ljava/lang/String;
    .param p15, "_resultExtras"    # Landroid/os/Bundle;
    .param p16, "_serialized"    # Z
    .param p17, "_sticky"    # Z
    .param p18, "_initialSticky"    # Z
    .param p19, "_userId"    # I

    #@0
    .prologue
    .line 188
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 195
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    #@5
    .line 196
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@7
    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    #@d
    .line 198
    iput-object p3, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    #@f
    .line 199
    iput-object p4, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@11
    .line 200
    iput p5, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@13
    .line 201
    iput p6, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@15
    .line 202
    iput-object p7, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    #@17
    .line 203
    iput-object p8, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@19
    .line 204
    iput p9, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@1b
    .line 205
    iput-object p10, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    #@1d
    .line 206
    iput-object p11, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@1f
    .line 207
    iput-object p12, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    #@21
    .line 208
    iput p13, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@23
    .line 209
    move-object/from16 v0, p14

    #@25
    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@27
    .line 210
    move-object/from16 v0, p15

    #@29
    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@2b
    .line 211
    move/from16 v0, p16

    #@2d
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@2f
    .line 212
    move/from16 v0, p17

    #@31
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    #@33
    .line 213
    move/from16 v0, p18

    #@35
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    #@37
    .line 214
    move/from16 v0, p19

    #@39
    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@3b
    .line 215
    const/4 v1, 0x0

    #@3c
    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@3e
    .line 216
    const/4 v1, 0x0

    #@3f
    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@41
    .line 194
    return-void
.end method


# virtual methods
.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@1
    .line 221
    const/4 v5, -0x1

    #@2
    if-eq p3, v5, :cond_1

    #@4
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@6
    if-eq v5, p3, :cond_1

    #@8
    .line 222
    :cond_0
    return v6

    #@9
    .line 221
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 225
    const/4 v0, 0x0

    #@e
    .line 227
    .local v0, "didSomething":Z
    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@10
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@13
    move-result v5

    #@14
    add-int/lit8 v1, v5, -0x1

    #@16
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_8

    #@18
    .line 228
    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@1a
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    .line 229
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Landroid/content/pm/ResolveInfo;

    #@20
    if-nez v5, :cond_3

    #@22
    .line 227
    .end local v3    # "o":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@24
    goto :goto_0

    #@25
    .line 232
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_3
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@27
    .end local v3    # "o":Ljava/lang/Object;
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@29
    .line 234
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-eqz p1, :cond_4

    #@2b
    .line 235
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2d
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@2f
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_6

    #@35
    .line 236
    if-eqz p2, :cond_5

    #@37
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@39
    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3c
    move-result v4

    #@3d
    .line 237
    :goto_2
    if-eqz v4, :cond_2

    #@3f
    .line 238
    if-nez p4, :cond_7

    #@41
    .line 239
    const/4 v5, 0x1

    #@42
    return v5

    #@43
    .line 234
    :cond_4
    const/4 v4, 0x1

    #@44
    .local v4, "sameComponent":Z
    goto :goto_2

    #@45
    .line 236
    .end local v4    # "sameComponent":Z
    :cond_5
    const/4 v4, 0x1

    #@46
    .restart local v4    # "sameComponent":Z
    goto :goto_2

    #@47
    .line 235
    .end local v4    # "sameComponent":Z
    :cond_6
    const/4 v4, 0x0

    #@48
    .restart local v4    # "sameComponent":Z
    goto :goto_2

    #@49
    .line 241
    .end local v4    # "sameComponent":Z
    :cond_7
    const/4 v0, 0x1

    #@4a
    .line 242
    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@4c
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@4f
    .line 243
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@51
    if-ge v1, v5, :cond_2

    #@53
    .line 244
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@55
    add-int/lit8 v5, v5, -0x1

    #@57
    iput v5, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@59
    goto :goto_1

    #@5a
    .line 248
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_8
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@5c
    iget-object v6, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@5e
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@61
    move-result v6

    #@62
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@65
    move-result v5

    #@66
    iput v5, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@68
    .line 250
    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v6

    #@4
    .line 94
    .local v6, "now":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    move-object/from16 v0, p1

    #@9
    move-object/from16 v1, p0

    #@b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@e
    const-string/jumbo v11, " to user "

    #@11
    move-object/from16 v0, p1

    #@13
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    move-object/from16 v0, p0

    #@18
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@1a
    move-object/from16 v0, p1

    #@1c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    #@1f
    .line 95
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@26
    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    #@29
    move-result-object v11

    #@2a
    move-object/from16 v0, p1

    #@2c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f
    .line 96
    move-object/from16 v0, p0

    #@31
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    #@33
    if-eqz v11, :cond_0

    #@35
    move-object/from16 v0, p0

    #@37
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@3d
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@40
    move-result-object v12

    #@41
    if-eq v11, v12, :cond_0

    #@43
    .line 97
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    const-string/jumbo v11, "  targetComp: "

    #@49
    move-object/from16 v0, p1

    #@4b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    move-object/from16 v0, p0

    #@50
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    #@52
    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@55
    move-result-object v11

    #@56
    move-object/from16 v0, p1

    #@58
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5b
    .line 99
    :cond_0
    move-object/from16 v0, p0

    #@5d
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@5f
    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@62
    move-result-object v3

    #@63
    .line 100
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    #@65
    .line 101
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    const-string/jumbo v11, "  extras: "

    #@6b
    move-object/from16 v0, p1

    #@6d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@73
    move-result-object v11

    #@74
    move-object/from16 v0, p1

    #@76
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@79
    .line 103
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    const-string/jumbo v11, "caller="

    #@7f
    move-object/from16 v0, p1

    #@81
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@84
    move-object/from16 v0, p0

    #@86
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@88
    move-object/from16 v0, p1

    #@8a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    const-string/jumbo v11, " "

    #@90
    move-object/from16 v0, p1

    #@92
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@95
    .line 104
    move-object/from16 v0, p0

    #@97
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    #@99
    if-eqz v11, :cond_11

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    #@9f
    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    #@a2
    move-result-object v11

    #@a3
    :goto_0
    move-object/from16 v0, p1

    #@a5
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    .line 105
    const-string/jumbo v11, " pid="

    #@ab
    move-object/from16 v0, p1

    #@ad
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b0
    move-object/from16 v0, p0

    #@b2
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@b4
    move-object/from16 v0, p1

    #@b6
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    #@b9
    .line 106
    const-string/jumbo v11, " uid="

    #@bc
    move-object/from16 v0, p1

    #@be
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c1
    move-object/from16 v0, p0

    #@c3
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@c5
    move-object/from16 v0, p1

    #@c7
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    #@ca
    .line 107
    move-object/from16 v0, p0

    #@cc
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@ce
    if-eqz v11, :cond_12

    #@d0
    move-object/from16 v0, p0

    #@d2
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@d4
    array-length v11, v11

    #@d5
    if-lez v11, :cond_12

    #@d7
    .line 109
    :goto_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@da
    const-string/jumbo v11, "requiredPermissions="

    #@dd
    move-object/from16 v0, p1

    #@df
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    .line 110
    move-object/from16 v0, p0

    #@e4
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@e6
    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@e9
    move-result-object v11

    #@ea
    move-object/from16 v0, p1

    #@ec
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ef
    .line 111
    const-string/jumbo v11, "  appOp="

    #@f2
    move-object/from16 v0, p1

    #@f4
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f7
    move-object/from16 v0, p0

    #@f9
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@fb
    move-object/from16 v0, p1

    #@fd
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    #@100
    .line 113
    :cond_2
    move-object/from16 v0, p0

    #@102
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    #@104
    if-eqz v11, :cond_3

    #@106
    .line 114
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@109
    const-string/jumbo v11, "options="

    #@10c
    move-object/from16 v0, p1

    #@10e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@111
    move-object/from16 v0, p0

    #@113
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    #@115
    invoke-virtual {v11}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    #@118
    move-result-object v11

    #@119
    move-object/from16 v0, p1

    #@11b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@11e
    .line 116
    :cond_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@121
    const-string/jumbo v11, "enqueueClockTime="

    #@124
    move-object/from16 v0, p1

    #@126
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@129
    .line 117
    new-instance v11, Ljava/util/Date;

    #@12b
    move-object/from16 v0, p0

    #@12d
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    #@12f
    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    #@132
    move-object/from16 v0, p1

    #@134
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@137
    .line 118
    const-string/jumbo v11, " dispatchClockTime="

    #@13a
    move-object/from16 v0, p1

    #@13c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13f
    .line 119
    new-instance v11, Ljava/util/Date;

    #@141
    move-object/from16 v0, p0

    #@143
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    #@145
    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    #@148
    move-object/from16 v0, p1

    #@14a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@14d
    .line 120
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@150
    const-string/jumbo v11, "dispatchTime="

    #@153
    move-object/from16 v0, p1

    #@155
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@158
    .line 121
    move-object/from16 v0, p0

    #@15a
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@15c
    move-object/from16 v0, p1

    #@15e
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@161
    .line 122
    move-object/from16 v0, p0

    #@163
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    #@165
    const-wide/16 v14, 0x0

    #@167
    cmp-long v11, v12, v14

    #@169
    if-eqz v11, :cond_13

    #@16b
    .line 123
    const-string/jumbo v11, " finishTime="

    #@16e
    move-object/from16 v0, p1

    #@170
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@173
    move-object/from16 v0, p0

    #@175
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    #@177
    move-object/from16 v0, p1

    #@179
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@17c
    .line 127
    :goto_2
    const-string/jumbo v11, ""

    #@17f
    move-object/from16 v0, p1

    #@181
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@184
    .line 128
    move-object/from16 v0, p0

    #@186
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    #@188
    if-eqz v11, :cond_4

    #@18a
    .line 129
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18d
    const-string/jumbo v11, "anrCount="

    #@190
    move-object/from16 v0, p1

    #@192
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@195
    move-object/from16 v0, p0

    #@197
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    #@199
    move-object/from16 v0, p1

    #@19b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    #@19e
    .line 131
    :cond_4
    move-object/from16 v0, p0

    #@1a0
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    #@1a2
    if-nez v11, :cond_5

    #@1a4
    move-object/from16 v0, p0

    #@1a6
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@1a8
    const/4 v12, -0x1

    #@1a9
    if-eq v11, v12, :cond_14

    #@1ab
    .line 132
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ae
    const-string/jumbo v11, "resultTo="

    #@1b1
    move-object/from16 v0, p1

    #@1b3
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    #@1ba
    move-object/from16 v0, p1

    #@1bc
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@1bf
    .line 133
    const-string/jumbo v11, " resultCode="

    #@1c2
    move-object/from16 v0, p1

    #@1c4
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@1cb
    move-object/from16 v0, p1

    #@1cd
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    #@1d0
    .line 134
    const-string/jumbo v11, " resultData="

    #@1d3
    move-object/from16 v0, p1

    #@1d5
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d8
    move-object/from16 v0, p0

    #@1da
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@1dc
    move-object/from16 v0, p1

    #@1de
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e1
    .line 136
    :cond_6
    move-object/from16 v0, p0

    #@1e3
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@1e5
    if-eqz v11, :cond_7

    #@1e7
    .line 137
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ea
    const-string/jumbo v11, "resultExtras="

    #@1ed
    move-object/from16 v0, p1

    #@1ef
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f2
    move-object/from16 v0, p0

    #@1f4
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@1f6
    move-object/from16 v0, p1

    #@1f8
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1fb
    .line 139
    :cond_7
    move-object/from16 v0, p0

    #@1fd
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@1ff
    if-nez v11, :cond_8

    #@201
    move-object/from16 v0, p0

    #@203
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@205
    if-nez v11, :cond_8

    #@207
    move-object/from16 v0, p0

    #@209
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    #@20b
    if-nez v11, :cond_8

    #@20d
    move-object/from16 v0, p0

    #@20f
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    #@211
    if-eqz v11, :cond_9

    #@213
    .line 140
    :cond_8
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@216
    const-string/jumbo v11, "resultAbort="

    #@219
    move-object/from16 v0, p1

    #@21b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21e
    move-object/from16 v0, p0

    #@220
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@222
    move-object/from16 v0, p1

    #@224
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@227
    .line 141
    const-string/jumbo v11, " ordered="

    #@22a
    move-object/from16 v0, p1

    #@22c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22f
    move-object/from16 v0, p0

    #@231
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@233
    move-object/from16 v0, p1

    #@235
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@238
    .line 142
    const-string/jumbo v11, " sticky="

    #@23b
    move-object/from16 v0, p1

    #@23d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@240
    move-object/from16 v0, p0

    #@242
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    #@244
    move-object/from16 v0, p1

    #@246
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@249
    .line 143
    const-string/jumbo v11, " initialSticky="

    #@24c
    move-object/from16 v0, p1

    #@24e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@251
    move-object/from16 v0, p0

    #@253
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    #@255
    move-object/from16 v0, p1

    #@257
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    #@25a
    .line 145
    :cond_9
    move-object/from16 v0, p0

    #@25c
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@25e
    if-nez v11, :cond_a

    #@260
    move-object/from16 v0, p0

    #@262
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@264
    if-eqz v11, :cond_b

    #@266
    .line 146
    :cond_a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@269
    const-string/jumbo v11, "nextReceiver="

    #@26c
    move-object/from16 v0, p1

    #@26e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@271
    move-object/from16 v0, p0

    #@273
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@275
    move-object/from16 v0, p1

    #@277
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    #@27a
    .line 147
    const-string/jumbo v11, " receiver="

    #@27d
    move-object/from16 v0, p1

    #@27f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@282
    move-object/from16 v0, p0

    #@284
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@286
    move-object/from16 v0, p1

    #@288
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@28b
    .line 149
    :cond_b
    move-object/from16 v0, p0

    #@28d
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@28f
    if-eqz v11, :cond_c

    #@291
    .line 150
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@294
    const-string/jumbo v11, "curFilter="

    #@297
    move-object/from16 v0, p1

    #@299
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29c
    move-object/from16 v0, p0

    #@29e
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@2a0
    move-object/from16 v0, p1

    #@2a2
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2a5
    .line 152
    :cond_c
    move-object/from16 v0, p0

    #@2a7
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@2a9
    if-eqz v11, :cond_d

    #@2ab
    .line 153
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ae
    const-string/jumbo v11, "curReceiver="

    #@2b1
    move-object/from16 v0, p1

    #@2b3
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b6
    move-object/from16 v0, p0

    #@2b8
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@2ba
    move-object/from16 v0, p1

    #@2bc
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2bf
    .line 155
    :cond_d
    move-object/from16 v0, p0

    #@2c1
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@2c3
    if-eqz v11, :cond_e

    #@2c5
    .line 156
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c8
    const-string/jumbo v11, "curApp="

    #@2cb
    move-object/from16 v0, p1

    #@2cd
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d0
    move-object/from16 v0, p0

    #@2d2
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@2d4
    move-object/from16 v0, p1

    #@2d6
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2d9
    .line 157
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2dc
    const-string/jumbo v11, "curComponent="

    #@2df
    move-object/from16 v0, p1

    #@2e1
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e4
    .line 158
    move-object/from16 v0, p0

    #@2e6
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@2e8
    if-eqz v11, :cond_15

    #@2ea
    move-object/from16 v0, p0

    #@2ec
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@2ee
    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@2f1
    move-result-object v11

    #@2f2
    :goto_4
    move-object/from16 v0, p1

    #@2f4
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f7
    .line 159
    move-object/from16 v0, p0

    #@2f9
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@2fb
    if-eqz v11, :cond_e

    #@2fd
    move-object/from16 v0, p0

    #@2ff
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@301
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@303
    if-eqz v11, :cond_e

    #@305
    .line 160
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@308
    const-string/jumbo v11, "curSourceDir="

    #@30b
    move-object/from16 v0, p1

    #@30d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@310
    .line 161
    move-object/from16 v0, p0

    #@312
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@314
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@316
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@318
    move-object/from16 v0, p1

    #@31a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31d
    .line 164
    :cond_e
    move-object/from16 v0, p0

    #@31f
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@321
    if-eqz v11, :cond_f

    #@323
    .line 165
    const-string/jumbo v10, " (?)"

    #@326
    .line 166
    .local v10, "stateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    #@328
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@32a
    packed-switch v11, :pswitch_data_0

    #@32d
    .line 172
    :goto_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@330
    const-string/jumbo v11, "state="

    #@333
    move-object/from16 v0, p1

    #@335
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@338
    move-object/from16 v0, p0

    #@33a
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@33c
    move-object/from16 v0, p1

    #@33e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    #@341
    move-object/from16 v0, p1

    #@343
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@346
    .line 174
    .end local v10    # "stateStr":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    #@348
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@34a
    if-eqz v11, :cond_16

    #@34c
    move-object/from16 v0, p0

    #@34e
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@350
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@353
    move-result v2

    #@354
    .line 175
    .local v2, "N":I
    :goto_6
    new-instance v11, Ljava/lang/StringBuilder;

    #@356
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@359
    move-object/from16 v0, p2

    #@35b
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35e
    move-result-object v11

    #@35f
    const-string/jumbo v12, "  "

    #@362
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@365
    move-result-object v11

    #@366
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@369
    move-result-object v8

    #@36a
    .line 176
    .local v8, "p2":Ljava/lang/String;
    new-instance v9, Landroid/util/PrintWriterPrinter;

    #@36c
    move-object/from16 v0, p1

    #@36e
    invoke-direct {v9, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@371
    .line 177
    .local v9, "printer":Landroid/util/PrintWriterPrinter;
    const/4 v4, 0x0

    #@372
    .local v4, "i":I
    :goto_7
    if-ge v4, v2, :cond_18

    #@374
    .line 178
    move-object/from16 v0, p0

    #@376
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@378
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@37b
    move-result-object v5

    #@37c
    .line 179
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37f
    const-string/jumbo v11, "Receiver #"

    #@382
    move-object/from16 v0, p1

    #@384
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@387
    move-object/from16 v0, p1

    #@389
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@38c
    .line 180
    const-string/jumbo v11, ": "

    #@38f
    move-object/from16 v0, p1

    #@391
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@394
    move-object/from16 v0, p1

    #@396
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@399
    .line 181
    instance-of v11, v5, Lcom/android/server/am/BroadcastFilter;

    #@39b
    if-eqz v11, :cond_17

    #@39d
    .line 182
    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    #@39f
    .end local v5    # "o":Ljava/lang/Object;
    move-object/from16 v0, p1

    #@3a1
    invoke-virtual {v5, v0, v8}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@3a4
    .line 177
    :cond_10
    :goto_8
    add-int/lit8 v4, v4, 0x1

    #@3a6
    goto :goto_7

    #@3a7
    .line 104
    .end local v2    # "N":I
    .end local v4    # "i":I
    .end local v8    # "p2":Ljava/lang/String;
    .end local v9    # "printer":Landroid/util/PrintWriterPrinter;
    :cond_11
    const-string/jumbo v11, "null"

    #@3aa
    goto/16 :goto_0

    #@3ac
    .line 108
    :cond_12
    move-object/from16 v0, p0

    #@3ae
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@3b0
    const/4 v12, -0x1

    #@3b1
    if-eq v11, v12, :cond_2

    #@3b3
    goto/16 :goto_1

    #@3b5
    .line 125
    :cond_13
    const-string/jumbo v11, " receiverTime="

    #@3b8
    move-object/from16 v0, p1

    #@3ba
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3bd
    move-object/from16 v0, p0

    #@3bf
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@3c1
    move-object/from16 v0, p1

    #@3c3
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@3c6
    goto/16 :goto_2

    #@3c8
    .line 131
    :cond_14
    move-object/from16 v0, p0

    #@3ca
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@3cc
    if-eqz v11, :cond_6

    #@3ce
    goto/16 :goto_3

    #@3d0
    .line 158
    :cond_15
    const-string/jumbo v11, "--"

    #@3d3
    goto/16 :goto_4

    #@3d5
    .line 167
    .restart local v10    # "stateStr":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v10, " (APP_RECEIVE)"

    #@3d8
    goto/16 :goto_5

    #@3da
    .line 168
    :pswitch_1
    const-string/jumbo v10, " (CALL_IN_RECEIVE)"

    #@3dd
    goto/16 :goto_5

    #@3df
    .line 169
    :pswitch_2
    const-string/jumbo v10, " (CALL_DONE_RECEIVE)"

    #@3e2
    goto/16 :goto_5

    #@3e4
    .line 170
    :pswitch_3
    const-string/jumbo v10, " (WAITING_SERVICES)"

    #@3e7
    goto/16 :goto_5

    #@3e9
    .line 174
    .end local v10    # "stateStr":Ljava/lang/String;
    :cond_16
    const/4 v2, 0x0

    #@3ea
    .restart local v2    # "N":I
    goto/16 :goto_6

    #@3ec
    .line 183
    .restart local v4    # "i":I
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v8    # "p2":Ljava/lang/String;
    .restart local v9    # "printer":Landroid/util/PrintWriterPrinter;
    :cond_17
    instance-of v11, v5, Landroid/content/pm/ResolveInfo;

    #@3ee
    if-eqz v11, :cond_10

    #@3f0
    .line 184
    check-cast v5, Landroid/content/pm/ResolveInfo;

    #@3f2
    .end local v5    # "o":Ljava/lang/Object;
    invoke-virtual {v5, v9, v8}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@3f5
    goto :goto_8

    #@3f6
    .line 91
    :cond_18
    return-void

    #@3f7
    .line 166
    nop

    #@3f8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "BroadcastRecord{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 255
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 256
    const-string/jumbo v1, " u"

    #@1b
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 256
    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@21
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 256
    const-string/jumbo v1, " "

    #@28
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 256
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@2e
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 256
    const-string/jumbo v1, "}"

    #@39
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0
.end method
