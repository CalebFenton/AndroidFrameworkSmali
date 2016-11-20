.class final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field static final APP_RECEIVE:I = 0x1

.field static final CALL_DONE_RECEIVE:I = 0x3

.field static final CALL_IN_RECEIVE:I = 0x2

.field static final DELIVERY_DELIVERED:I = 0x1

.field static final DELIVERY_PENDING:I = 0x0

.field static final DELIVERY_SKIPPED:I = 0x2

.field static final DELIVERY_TIMEOUT:I = 0x3

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

.field final delivery:[I

.field dispatchClockTime:J

.field dispatchTime:J

.field enqueueClockTime:J

.field finishTime:J

.field final initialSticky:Z

.field final intent:Landroid/content/Intent;

.field manifestCount:I

.field manifestSkipCount:I

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
    .line 215
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 222
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    #@5
    .line 223
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@7
    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    #@d
    .line 225
    iput-object p3, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    #@f
    .line 226
    iput-object p4, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    #@11
    .line 227
    iput p5, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    #@13
    .line 228
    iput p6, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    #@15
    .line 229
    iput-object p7, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    #@17
    .line 230
    iput-object p8, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@19
    .line 231
    iput p9, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@1b
    .line 232
    iput-object p10, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    #@1d
    .line 233
    iput-object p11, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@1f
    .line 234
    if-eqz p11, :cond_0

    #@21
    invoke-interface {p11}, Ljava/util/List;->size()I

    #@24
    move-result v1

    #@25
    :goto_0
    new-array v1, v1, [I

    #@27
    iput-object v1, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    #@29
    .line 235
    iput-object p12, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    #@2b
    .line 236
    iput p13, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@2d
    .line 237
    move-object/from16 v0, p14

    #@2f
    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@31
    .line 238
    move-object/from16 v0, p15

    #@33
    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@35
    .line 239
    move/from16 v0, p16

    #@37
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@39
    .line 240
    move/from16 v0, p17

    #@3b
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    #@3d
    .line 241
    move/from16 v0, p18

    #@3f
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    #@41
    .line 242
    move/from16 v0, p19

    #@43
    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@45
    .line 243
    const/4 v1, 0x0

    #@46
    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@48
    .line 244
    const/4 v1, 0x0

    #@49
    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@4b
    .line 221
    return-void

    #@4c
    .line 234
    :cond_0
    const/4 v1, 0x0

    #@4d
    goto :goto_0
.end method


# virtual methods
.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 8
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
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 249
    const/4 v7, -0x1

    #@3
    if-eq p3, v7, :cond_1

    #@5
    iget v7, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@7
    if-eq v7, p3, :cond_1

    #@9
    .line 250
    :cond_0
    return v6

    #@a
    .line 249
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@c
    if-eqz v7, :cond_0

    #@e
    .line 253
    const/4 v0, 0x0

    #@f
    .line 255
    .local v0, "didSomething":Z
    iget-object v7, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@11
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@14
    move-result v7

    #@15
    add-int/lit8 v1, v7, -0x1

    #@17
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_8

    #@19
    .line 256
    iget-object v7, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@1b
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    .line 257
    .local v3, "o":Ljava/lang/Object;
    instance-of v7, v3, Landroid/content/pm/ResolveInfo;

    #@21
    if-nez v7, :cond_3

    #@23
    .line 255
    .end local v3    # "o":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@25
    goto :goto_0

    #@26
    .line 260
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_3
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@28
    .end local v3    # "o":Ljava/lang/Object;
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2a
    .line 262
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-eqz p1, :cond_4

    #@2c
    .line 263
    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2e
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@30
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_6

    #@36
    .line 264
    if-eqz p2, :cond_5

    #@38
    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3a
    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3d
    move-result v4

    #@3e
    .line 265
    .local v4, "sameComponent":Z
    :goto_2
    if-eqz v4, :cond_2

    #@40
    .line 266
    if-nez p4, :cond_7

    #@42
    .line 267
    return v5

    #@43
    .end local v4    # "sameComponent":Z
    :cond_4
    move v4, v5

    #@44
    .line 262
    goto :goto_2

    #@45
    :cond_5
    move v4, v5

    #@46
    .line 264
    goto :goto_2

    #@47
    :cond_6
    move v4, v6

    #@48
    .line 263
    goto :goto_2

    #@49
    .line 269
    .restart local v4    # "sameComponent":Z
    :cond_7
    const/4 v0, 0x1

    #@4a
    .line 270
    iget-object v7, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@4c
    invoke-interface {v7, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@4f
    .line 271
    iget v7, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@51
    if-ge v1, v7, :cond_2

    #@53
    .line 272
    iget v7, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@55
    add-int/lit8 v7, v7, -0x1

    #@57
    iput v7, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@59
    goto :goto_1

    #@5a
    .line 276
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "sameComponent":Z
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
    .line 278
    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "sdf"    # Ljava/text/SimpleDateFormat;

    #@0
    .prologue
    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v6

    #@4
    .line 103
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
    .line 104
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
    .line 105
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
    .line 106
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
    .line 108
    :cond_0
    move-object/from16 v0, p0

    #@5d
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@5f
    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@62
    move-result-object v3

    #@63
    .line 109
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    #@65
    .line 110
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
    .line 112
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
    .line 113
    move-object/from16 v0, p0

    #@97
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    #@99
    if-eqz v11, :cond_10

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
    .line 114
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
    .line 115
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
    .line 116
    move-object/from16 v0, p0

    #@cc
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@ce
    if-eqz v11, :cond_11

    #@d0
    move-object/from16 v0, p0

    #@d2
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    #@d4
    array-length v11, v11

    #@d5
    if-lez v11, :cond_11

    #@d7
    .line 118
    :goto_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@da
    const-string/jumbo v11, "requiredPermissions="

    #@dd
    move-object/from16 v0, p1

    #@df
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    .line 119
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
    .line 120
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
    .line 122
    :cond_2
    move-object/from16 v0, p0

    #@102
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    #@104
    if-eqz v11, :cond_3

    #@106
    .line 123
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
    .line 125
    :cond_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@121
    const-string/jumbo v11, "enqueueClockTime="

    #@124
    move-object/from16 v0, p1

    #@126
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@129
    .line 126
    new-instance v11, Ljava/util/Date;

    #@12b
    move-object/from16 v0, p0

    #@12d
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    #@12f
    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    #@132
    move-object/from16 v0, p3

    #@134
    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@137
    move-result-object v11

    #@138
    move-object/from16 v0, p1

    #@13a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13d
    .line 127
    const-string/jumbo v11, " dispatchClockTime="

    #@140
    move-object/from16 v0, p1

    #@142
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@145
    .line 128
    new-instance v11, Ljava/util/Date;

    #@147
    move-object/from16 v0, p0

    #@149
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    #@14b
    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    #@14e
    move-object/from16 v0, p3

    #@150
    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@153
    move-result-object v11

    #@154
    move-object/from16 v0, p1

    #@156
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@159
    .line 129
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15c
    const-string/jumbo v11, "dispatchTime="

    #@15f
    move-object/from16 v0, p1

    #@161
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@164
    .line 130
    move-object/from16 v0, p0

    #@166
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@168
    move-object/from16 v0, p1

    #@16a
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@16d
    .line 131
    const-string/jumbo v11, " ("

    #@170
    move-object/from16 v0, p1

    #@172
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@175
    .line 132
    move-object/from16 v0, p0

    #@177
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    #@179
    move-object/from16 v0, p0

    #@17b
    iget-wide v14, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    #@17d
    sub-long/2addr v12, v14

    #@17e
    move-object/from16 v0, p1

    #@180
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@183
    .line 133
    const-string/jumbo v11, " since enq)"

    #@186
    move-object/from16 v0, p1

    #@188
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18b
    .line 134
    move-object/from16 v0, p0

    #@18d
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    #@18f
    const-wide/16 v14, 0x0

    #@191
    cmp-long v11, v12, v14

    #@193
    if-eqz v11, :cond_12

    #@195
    .line 135
    const-string/jumbo v11, " finishTime="

    #@198
    move-object/from16 v0, p1

    #@19a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19d
    move-object/from16 v0, p0

    #@19f
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    #@1a1
    move-object/from16 v0, p1

    #@1a3
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1a6
    .line 136
    const-string/jumbo v11, " ("

    #@1a9
    move-object/from16 v0, p1

    #@1ab
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ae
    .line 137
    move-object/from16 v0, p0

    #@1b0
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iget-wide v14, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    #@1b6
    sub-long/2addr v12, v14

    #@1b7
    move-object/from16 v0, p1

    #@1b9
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@1bc
    .line 138
    const-string/jumbo v11, " since disp)"

    #@1bf
    move-object/from16 v0, p1

    #@1c1
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c4
    .line 142
    :goto_2
    const-string/jumbo v11, ""

    #@1c7
    move-object/from16 v0, p1

    #@1c9
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cc
    .line 143
    move-object/from16 v0, p0

    #@1ce
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    #@1d0
    if-eqz v11, :cond_4

    #@1d2
    .line 144
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d5
    const-string/jumbo v11, "anrCount="

    #@1d8
    move-object/from16 v0, p1

    #@1da
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1dd
    move-object/from16 v0, p0

    #@1df
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    #@1e1
    move-object/from16 v0, p1

    #@1e3
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    #@1e6
    .line 146
    :cond_4
    move-object/from16 v0, p0

    #@1e8
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    #@1ea
    if-nez v11, :cond_5

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@1f0
    const/4 v12, -0x1

    #@1f1
    if-eq v11, v12, :cond_13

    #@1f3
    .line 147
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f6
    const-string/jumbo v11, "resultTo="

    #@1f9
    move-object/from16 v0, p1

    #@1fb
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fe
    move-object/from16 v0, p0

    #@200
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    #@202
    move-object/from16 v0, p1

    #@204
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@207
    .line 148
    const-string/jumbo v11, " resultCode="

    #@20a
    move-object/from16 v0, p1

    #@20c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20f
    move-object/from16 v0, p0

    #@211
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    #@213
    move-object/from16 v0, p1

    #@215
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    #@218
    .line 149
    const-string/jumbo v11, " resultData="

    #@21b
    move-object/from16 v0, p1

    #@21d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@220
    move-object/from16 v0, p0

    #@222
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@224
    move-object/from16 v0, p1

    #@226
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@229
    .line 151
    :cond_6
    move-object/from16 v0, p0

    #@22b
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@22d
    if-eqz v11, :cond_7

    #@22f
    .line 152
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@232
    const-string/jumbo v11, "resultExtras="

    #@235
    move-object/from16 v0, p1

    #@237
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23a
    move-object/from16 v0, p0

    #@23c
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    #@23e
    move-object/from16 v0, p1

    #@240
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@243
    .line 154
    :cond_7
    move-object/from16 v0, p0

    #@245
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@247
    if-nez v11, :cond_8

    #@249
    move-object/from16 v0, p0

    #@24b
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@24d
    if-nez v11, :cond_8

    #@24f
    move-object/from16 v0, p0

    #@251
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    #@253
    if-nez v11, :cond_8

    #@255
    move-object/from16 v0, p0

    #@257
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    #@259
    if-eqz v11, :cond_9

    #@25b
    .line 155
    :cond_8
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25e
    const-string/jumbo v11, "resultAbort="

    #@261
    move-object/from16 v0, p1

    #@263
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@266
    move-object/from16 v0, p0

    #@268
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    #@26a
    move-object/from16 v0, p1

    #@26c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@26f
    .line 156
    const-string/jumbo v11, " ordered="

    #@272
    move-object/from16 v0, p1

    #@274
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@277
    move-object/from16 v0, p0

    #@279
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    #@27b
    move-object/from16 v0, p1

    #@27d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@280
    .line 157
    const-string/jumbo v11, " sticky="

    #@283
    move-object/from16 v0, p1

    #@285
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@288
    move-object/from16 v0, p0

    #@28a
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    #@28c
    move-object/from16 v0, p1

    #@28e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@291
    .line 158
    const-string/jumbo v11, " initialSticky="

    #@294
    move-object/from16 v0, p1

    #@296
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@299
    move-object/from16 v0, p0

    #@29b
    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    #@29d
    move-object/from16 v0, p1

    #@29f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    #@2a2
    .line 160
    :cond_9
    move-object/from16 v0, p0

    #@2a4
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@2a6
    if-nez v11, :cond_a

    #@2a8
    move-object/from16 v0, p0

    #@2aa
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@2ac
    if-eqz v11, :cond_b

    #@2ae
    .line 161
    :cond_a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b1
    const-string/jumbo v11, "nextReceiver="

    #@2b4
    move-object/from16 v0, p1

    #@2b6
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b9
    move-object/from16 v0, p0

    #@2bb
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    #@2bd
    move-object/from16 v0, p1

    #@2bf
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    #@2c2
    .line 162
    const-string/jumbo v11, " receiver="

    #@2c5
    move-object/from16 v0, p1

    #@2c7
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ca
    move-object/from16 v0, p0

    #@2cc
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    #@2ce
    move-object/from16 v0, p1

    #@2d0
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2d3
    .line 164
    :cond_b
    move-object/from16 v0, p0

    #@2d5
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@2d7
    if-eqz v11, :cond_c

    #@2d9
    .line 165
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2dc
    const-string/jumbo v11, "curFilter="

    #@2df
    move-object/from16 v0, p1

    #@2e1
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e4
    move-object/from16 v0, p0

    #@2e6
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    #@2e8
    move-object/from16 v0, p1

    #@2ea
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2ed
    .line 167
    :cond_c
    move-object/from16 v0, p0

    #@2ef
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@2f1
    if-eqz v11, :cond_d

    #@2f3
    .line 168
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f6
    const-string/jumbo v11, "curReceiver="

    #@2f9
    move-object/from16 v0, p1

    #@2fb
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fe
    move-object/from16 v0, p0

    #@300
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@302
    move-object/from16 v0, p1

    #@304
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@307
    .line 170
    :cond_d
    move-object/from16 v0, p0

    #@309
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@30b
    if-eqz v11, :cond_e

    #@30d
    .line 171
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@310
    const-string/jumbo v11, "curApp="

    #@313
    move-object/from16 v0, p1

    #@315
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@318
    move-object/from16 v0, p0

    #@31a
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    #@31c
    move-object/from16 v0, p1

    #@31e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@321
    .line 172
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@324
    const-string/jumbo v11, "curComponent="

    #@327
    move-object/from16 v0, p1

    #@329
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32c
    .line 173
    move-object/from16 v0, p0

    #@32e
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@330
    if-eqz v11, :cond_14

    #@332
    move-object/from16 v0, p0

    #@334
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    #@336
    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@339
    move-result-object v11

    #@33a
    :goto_4
    move-object/from16 v0, p1

    #@33c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33f
    .line 174
    move-object/from16 v0, p0

    #@341
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@343
    if-eqz v11, :cond_e

    #@345
    move-object/from16 v0, p0

    #@347
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@349
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@34b
    if-eqz v11, :cond_e

    #@34d
    .line 175
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@350
    const-string/jumbo v11, "curSourceDir="

    #@353
    move-object/from16 v0, p1

    #@355
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@358
    .line 176
    move-object/from16 v0, p0

    #@35a
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    #@35c
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@35e
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@360
    move-object/from16 v0, p1

    #@362
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@365
    .line 179
    :cond_e
    move-object/from16 v0, p0

    #@367
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@369
    if-eqz v11, :cond_f

    #@36b
    .line 180
    const-string/jumbo v10, " (?)"

    #@36e
    .line 181
    .local v10, "stateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    #@370
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@372
    packed-switch v11, :pswitch_data_0

    #@375
    .line 187
    :goto_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@378
    const-string/jumbo v11, "state="

    #@37b
    move-object/from16 v0, p1

    #@37d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@380
    move-object/from16 v0, p0

    #@382
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    #@384
    move-object/from16 v0, p1

    #@386
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    #@389
    move-object/from16 v0, p1

    #@38b
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38e
    .line 189
    .end local v10    # "stateStr":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    #@390
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@392
    if-eqz v11, :cond_15

    #@394
    move-object/from16 v0, p0

    #@396
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@398
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@39b
    move-result v2

    #@39c
    .line 190
    .local v2, "N":I
    :goto_6
    new-instance v11, Ljava/lang/StringBuilder;

    #@39e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@3a1
    move-object/from16 v0, p2

    #@3a3
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a6
    move-result-object v11

    #@3a7
    const-string/jumbo v12, "  "

    #@3aa
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ad
    move-result-object v11

    #@3ae
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b1
    move-result-object v8

    #@3b2
    .line 191
    .local v8, "p2":Ljava/lang/String;
    new-instance v9, Landroid/util/PrintWriterPrinter;

    #@3b4
    move-object/from16 v0, p1

    #@3b6
    invoke-direct {v9, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@3b9
    .line 192
    .local v9, "printer":Landroid/util/PrintWriterPrinter;
    const/4 v4, 0x0

    #@3ba
    .local v4, "i":I
    :goto_7
    if-ge v4, v2, :cond_18

    #@3bc
    .line 193
    move-object/from16 v0, p0

    #@3be
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    #@3c0
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3c3
    move-result-object v5

    #@3c4
    .line 194
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c7
    .line 195
    move-object/from16 v0, p0

    #@3c9
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    #@3cb
    aget v11, v11, v4

    #@3cd
    packed-switch v11, :pswitch_data_1

    #@3d0
    .line 200
    const-string/jumbo v11, "???????"

    #@3d3
    move-object/from16 v0, p1

    #@3d5
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d8
    .line 202
    :goto_8
    const-string/jumbo v11, " #"

    #@3db
    move-object/from16 v0, p1

    #@3dd
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e0
    move-object/from16 v0, p1

    #@3e2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@3e5
    const-string/jumbo v11, ": "

    #@3e8
    move-object/from16 v0, p1

    #@3ea
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ed
    .line 203
    instance-of v11, v5, Lcom/android/server/am/BroadcastFilter;

    #@3ef
    if-eqz v11, :cond_16

    #@3f1
    .line 204
    move-object/from16 v0, p1

    #@3f3
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3f6
    .line 205
    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    #@3f8
    .end local v5    # "o":Ljava/lang/Object;
    move-object/from16 v0, p1

    #@3fa
    invoke-virtual {v5, v0, v8}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@3fd
    .line 192
    :goto_9
    add-int/lit8 v4, v4, 0x1

    #@3ff
    goto :goto_7

    #@400
    .line 113
    .end local v2    # "N":I
    .end local v4    # "i":I
    .end local v8    # "p2":Ljava/lang/String;
    .end local v9    # "printer":Landroid/util/PrintWriterPrinter;
    :cond_10
    const-string/jumbo v11, "null"

    #@403
    goto/16 :goto_0

    #@405
    .line 117
    :cond_11
    move-object/from16 v0, p0

    #@407
    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    #@409
    const/4 v12, -0x1

    #@40a
    if-eq v11, v12, :cond_2

    #@40c
    goto/16 :goto_1

    #@40e
    .line 140
    :cond_12
    const-string/jumbo v11, " receiverTime="

    #@411
    move-object/from16 v0, p1

    #@413
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@416
    move-object/from16 v0, p0

    #@418
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    #@41a
    move-object/from16 v0, p1

    #@41c
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@41f
    goto/16 :goto_2

    #@421
    .line 146
    :cond_13
    move-object/from16 v0, p0

    #@423
    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    #@425
    if-eqz v11, :cond_6

    #@427
    goto/16 :goto_3

    #@429
    .line 173
    :cond_14
    const-string/jumbo v11, "--"

    #@42c
    goto/16 :goto_4

    #@42e
    .line 182
    .restart local v10    # "stateStr":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v10, " (APP_RECEIVE)"

    #@431
    goto/16 :goto_5

    #@433
    .line 183
    :pswitch_1
    const-string/jumbo v10, " (CALL_IN_RECEIVE)"

    #@436
    goto/16 :goto_5

    #@438
    .line 184
    :pswitch_2
    const-string/jumbo v10, " (CALL_DONE_RECEIVE)"

    #@43b
    goto/16 :goto_5

    #@43d
    .line 185
    :pswitch_3
    const-string/jumbo v10, " (WAITING_SERVICES)"

    #@440
    goto/16 :goto_5

    #@442
    .line 189
    .end local v10    # "stateStr":Ljava/lang/String;
    :cond_15
    const/4 v2, 0x0

    #@443
    .restart local v2    # "N":I
    goto/16 :goto_6

    #@445
    .line 196
    .restart local v4    # "i":I
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v8    # "p2":Ljava/lang/String;
    .restart local v9    # "printer":Landroid/util/PrintWriterPrinter;
    :pswitch_4
    const-string/jumbo v11, "Pending"

    #@448
    move-object/from16 v0, p1

    #@44a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44d
    goto :goto_8

    #@44e
    .line 197
    :pswitch_5
    const-string/jumbo v11, "Deliver"

    #@451
    move-object/from16 v0, p1

    #@453
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@456
    goto :goto_8

    #@457
    .line 198
    :pswitch_6
    const-string/jumbo v11, "Skipped"

    #@45a
    move-object/from16 v0, p1

    #@45c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45f
    goto/16 :goto_8

    #@461
    .line 199
    :pswitch_7
    const-string/jumbo v11, "Timeout"

    #@464
    move-object/from16 v0, p1

    #@466
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@469
    goto/16 :goto_8

    #@46b
    .line 206
    :cond_16
    instance-of v11, v5, Landroid/content/pm/ResolveInfo;

    #@46d
    if-eqz v11, :cond_17

    #@46f
    .line 207
    const-string/jumbo v11, "(manifest)"

    #@472
    move-object/from16 v0, p1

    #@474
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@477
    .line 208
    check-cast v5, Landroid/content/pm/ResolveInfo;

    #@479
    .end local v5    # "o":Ljava/lang/Object;
    const/4 v11, 0x0

    #@47a
    invoke-virtual {v5, v9, v8, v11}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    #@47d
    goto :goto_9

    #@47e
    .line 210
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, p1

    #@480
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@483
    goto/16 :goto_9

    #@485
    .line 100
    .end local v5    # "o":Ljava/lang/Object;
    :cond_18
    return-void

    #@486
    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@492
    .line 195
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 282
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
    .line 283
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 284
    const-string/jumbo v1, " u"

    #@1b
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 284
    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    #@21
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 284
    const-string/jumbo v1, " "

    #@28
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 284
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    #@2e
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 284
    const-string/jumbo v1, "}"

    #@39
    .line 282
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
