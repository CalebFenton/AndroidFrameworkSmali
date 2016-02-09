.class public Lcom/android/commands/appops/AppOpsCommand;
.super Lcom/android/internal/os/BaseCommand;
.source "AppOpsCommand.java"


# static fields
.field private static final ARGUMENT_USER:Ljava/lang/String; = "--user"

.field private static final COMMAND_GET:Ljava/lang/String; = "get"

.field private static final COMMAND_RESET:Ljava/lang/String; = "reset"

.field private static final COMMAND_SET:Ljava/lang/String; = "set"

.field private static final MODE_ALLOW:Ljava/lang/String; = "allow"

.field private static final MODE_DEFAULT:Ljava/lang/String; = "default"

.field private static final MODE_DENY:Ljava/lang/String; = "deny"

.field private static final MODE_IGNORE:Ljava/lang/String; = "ignore"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    #@3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 40
    new-instance v0, Lcom/android/commands/appops/AppOpsCommand;

    #@2
    invoke-direct {v0}, Lcom/android/commands/appops/AppOpsCommand;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/commands/appops/AppOpsCommand;->run([Ljava/lang/String;)V

    #@8
    .line 39
    return-void
.end method

.method private runGet()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    const/4 v13, 0x0

    #@1
    .line 181
    .local v13, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    #@2
    .line 182
    .local v10, "op":Ljava/lang/String;
    const/16 v17, -0x2

    #@4
    .line 183
    .end local v10    # "op":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .local v17, "userId":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArg()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .local v3, "argument":Ljava/lang/String;
    if-eqz v3, :cond_3

    #@a
    .line 184
    const-string/jumbo v18, "--user"

    #@d
    move-object/from16 v0, v18

    #@f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v18

    #@13
    if-eqz v18, :cond_0

    #@15
    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArgRequired()Ljava/lang/String;

    #@18
    move-result-object v18

    #@19
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1c
    move-result v17

    #@1d
    goto :goto_0

    #@1e
    .line 187
    :cond_0
    if-nez v13, :cond_1

    #@20
    .line 188
    move-object v13, v3

    #@21
    .local v13, "packageName":Ljava/lang/String;
    goto :goto_0

    #@22
    .line 189
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_1
    if-nez v10, :cond_2

    #@24
    .line 190
    move-object v10, v3

    #@25
    .local v10, "op":Ljava/lang/String;
    goto :goto_0

    #@26
    .line 192
    .end local v10    # "op":Ljava/lang/String;
    :cond_2
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@28
    new-instance v19, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v20, "Error: Unsupported argument: "

    #@30
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v19

    #@34
    move-object/from16 v0, v19

    #@36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v19

    #@3a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v19

    #@3e
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@41
    .line 193
    return-void

    #@42
    .line 198
    :cond_3
    if-nez v13, :cond_4

    #@44
    .line 199
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@46
    const-string/jumbo v19, "Error: Package name not specified."

    #@49
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4c
    .line 200
    return-void

    #@4d
    .line 203
    :cond_4
    if-eqz v10, :cond_6

    #@4f
    move-object/from16 v0, p0

    #@51
    invoke-direct {v0, v10}, Lcom/android/commands/appops/AppOpsCommand;->strOpToOp(Ljava/lang/String;)I

    #@54
    move-result v11

    #@55
    .line 207
    .local v11, "opInt":I
    :goto_1
    const/16 v18, -0x2

    #@57
    move/from16 v0, v17

    #@59
    move/from16 v1, v18

    #@5b
    if-ne v0, v1, :cond_5

    #@5d
    .line 208
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@60
    move-result v17

    #@61
    .line 211
    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@64
    move-result-object v14

    #@65
    .line 213
    .local v14, "pm":Landroid/content/pm/IPackageManager;
    const-string/jumbo v18, "appops"

    #@68
    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6b
    move-result-object v18

    #@6c
    .line 212
    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    #@6f
    move-result-object v2

    #@70
    .line 214
    .local v2, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    move/from16 v0, v17

    #@72
    invoke-interface {v14, v13, v0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    #@75
    move-result v16

    #@76
    .line 215
    .local v16, "uid":I
    if-gez v16, :cond_7

    #@78
    .line 216
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7a
    new-instance v19, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v20, "Error: No UID for "

    #@82
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v19

    #@86
    move-object/from16 v0, v19

    #@88
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v19

    #@8c
    const-string/jumbo v20, " in user "

    #@8f
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v19

    #@93
    move-object/from16 v0, v19

    #@95
    move/from16 v1, v17

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v19

    #@9b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v19

    #@9f
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a2
    .line 217
    return-void

    #@a3
    .line 203
    .end local v2    # "appOpsService":Lcom/android/internal/app/IAppOpsService;
    .end local v11    # "opInt":I
    .end local v14    # "pm":Landroid/content/pm/IPackageManager;
    .end local v16    # "uid":I
    :cond_6
    const/4 v11, 0x0

    #@a4
    .restart local v11    # "opInt":I
    goto :goto_1

    #@a5
    .line 220
    .restart local v2    # "appOpsService":Lcom/android/internal/app/IAppOpsService;
    .restart local v14    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v16    # "uid":I
    :cond_7
    if-eqz v10, :cond_9

    #@a7
    const/16 v18, 0x1

    #@a9
    move/from16 v0, v18

    #@ab
    new-array v0, v0, [I

    #@ad
    move-object/from16 v18, v0

    #@af
    const/16 v19, 0x0

    #@b1
    aput v11, v18, v19

    #@b3
    .line 219
    :goto_2
    move/from16 v0, v16

    #@b5
    move-object/from16 v1, v18

    #@b7
    invoke-interface {v2, v0, v13, v1}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    #@ba
    move-result-object v12

    #@bb
    .line 221
    .local v12, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v12, :cond_8

    #@bd
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@c0
    move-result v18

    #@c1
    if-gtz v18, :cond_a

    #@c3
    .line 222
    :cond_8
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c5
    const-string/jumbo v19, "No operations."

    #@c8
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@cb
    .line 223
    return-void

    #@cc
    .line 220
    .end local v12    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_9
    const/16 v18, 0x0

    #@ce
    goto :goto_2

    #@cf
    .line 225
    .restart local v12    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d2
    move-result-wide v8

    #@d3
    .line 226
    .local v8, "now":J
    const/4 v6, 0x0

    #@d4
    .local v6, "i":I
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@d7
    move-result v18

    #@d8
    move/from16 v0, v18

    #@da
    if-ge v6, v0, :cond_10

    #@dc
    .line 227
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@df
    move-result-object v18

    #@e0
    check-cast v18, Landroid/app/AppOpsManager$PackageOps;

    #@e2
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    #@e5
    move-result-object v5

    #@e6
    .line 228
    .local v5, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v7, 0x0

    #@e7
    .local v7, "j":I
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@ea
    move-result v18

    #@eb
    move/from16 v0, v18

    #@ed
    if-ge v7, v0, :cond_f

    #@ef
    .line 229
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f2
    move-result-object v4

    #@f3
    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    #@f5
    .line 230
    .local v4, "ent":Landroid/app/AppOpsManager$OpEntry;
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f7
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    #@fa
    move-result v19

    #@fb
    invoke-static/range {v19 .. v19}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@fe
    move-result-object v19

    #@ff
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@102
    .line 231
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@104
    const-string/jumbo v19, ": "

    #@107
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@10a
    .line 232
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    #@10d
    move-result v18

    #@10e
    packed-switch v18, :pswitch_data_0

    #@111
    .line 246
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@113
    const-string/jumbo v19, "mode="

    #@116
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@119
    .line 247
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11b
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    #@11e
    move-result v19

    #@11f
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(I)V

    #@122
    .line 250
    :goto_5
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    #@125
    move-result-wide v18

    #@126
    const-wide/16 v20, 0x0

    #@128
    cmp-long v18, v18, v20

    #@12a
    if-eqz v18, :cond_b

    #@12c
    .line 251
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@12e
    const-string/jumbo v19, "; time="

    #@131
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@134
    .line 252
    new-instance v15, Ljava/lang/StringBuilder;

    #@136
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@139
    .line 253
    .local v15, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    #@13c
    move-result-wide v18

    #@13d
    sub-long v18, v8, v18

    #@13f
    move-wide/from16 v0, v18

    #@141
    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@144
    .line 254
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@146
    move-object/from16 v0, v18

    #@148
    invoke-virtual {v0, v15}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    #@14b
    .line 255
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14d
    const-string/jumbo v19, " ago"

    #@150
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@153
    .line 257
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    #@156
    move-result-wide v18

    #@157
    const-wide/16 v20, 0x0

    #@159
    cmp-long v18, v18, v20

    #@15b
    if-eqz v18, :cond_c

    #@15d
    .line 258
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@15f
    const-string/jumbo v19, "; rejectTime="

    #@162
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@165
    .line 259
    new-instance v15, Ljava/lang/StringBuilder;

    #@167
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@16a
    .line 260
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    #@16d
    move-result-wide v18

    #@16e
    sub-long v18, v8, v18

    #@170
    move-wide/from16 v0, v18

    #@172
    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@175
    .line 261
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@177
    move-object/from16 v0, v18

    #@179
    invoke-virtual {v0, v15}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    #@17c
    .line 262
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17e
    const-string/jumbo v19, " ago"

    #@181
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@184
    .line 264
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    #@187
    move-result v18

    #@188
    const/16 v19, -0x1

    #@18a
    move/from16 v0, v18

    #@18c
    move/from16 v1, v19

    #@18e
    if-ne v0, v1, :cond_e

    #@190
    .line 265
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@192
    const-string/jumbo v19, " (running)"

    #@195
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@198
    .line 272
    :cond_d
    :goto_6
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19a
    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintStream;->println()V

    #@19d
    .line 228
    add-int/lit8 v7, v7, 0x1

    #@19f
    goto/16 :goto_4

    #@1a1
    .line 234
    :pswitch_0
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1a3
    const-string/jumbo v19, "allow"

    #@1a6
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@1a9
    goto/16 :goto_5

    #@1ab
    .line 237
    :pswitch_1
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1ad
    const-string/jumbo v19, "ignore"

    #@1b0
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@1b3
    goto/16 :goto_5

    #@1b5
    .line 240
    :pswitch_2
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1b7
    const-string/jumbo v19, "deny"

    #@1ba
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@1bd
    goto/16 :goto_5

    #@1bf
    .line 243
    :pswitch_3
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1c1
    const-string/jumbo v19, "default"

    #@1c4
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@1c7
    goto/16 :goto_5

    #@1c9
    .line 266
    :cond_e
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    #@1cc
    move-result v18

    #@1cd
    if-eqz v18, :cond_d

    #@1cf
    .line 267
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1d1
    const-string/jumbo v19, "; duration="

    #@1d4
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@1d7
    .line 268
    new-instance v15, Ljava/lang/StringBuilder;

    #@1d9
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1dc
    .line 269
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    #@1df
    move-result v18

    #@1e0
    move/from16 v0, v18

    #@1e2
    int-to-long v0, v0

    #@1e3
    move-wide/from16 v18, v0

    #@1e5
    move-wide/from16 v0, v18

    #@1e7
    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@1ea
    .line 270
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1ec
    move-object/from16 v0, v18

    #@1ee
    invoke-virtual {v0, v15}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    #@1f1
    goto :goto_6

    #@1f2
    .line 226
    .end local v4    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_f
    add-int/lit8 v6, v6, 0x1

    #@1f4
    goto/16 :goto_3

    #@1f6
    .line 179
    .end local v5    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v7    # "j":I
    :cond_10
    return-void

    #@1f7
    .line 232
    nop

    #@1f8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private runReset()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    const/4 v2, 0x0

    #@1
    .line 279
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, -0x2

    #@2
    .line 280
    .end local v2    # "packageName":Ljava/lang/String;
    .local v3, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArg()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .local v1, "argument":Ljava/lang/String;
    if-eqz v1, :cond_5

    #@8
    .line 281
    const-string/jumbo v5, "--user"

    #@b
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_3

    #@11
    .line 282
    invoke-virtual {p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArgRequired()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 283
    .local v4, "userStr":Ljava/lang/String;
    const-string/jumbo v5, "all"

    #@18
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 284
    const/4 v3, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 285
    :cond_0
    const-string/jumbo v5, "current"

    #@23
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_1

    #@29
    .line 286
    const/4 v3, -0x2

    #@2a
    goto :goto_0

    #@2b
    .line 287
    :cond_1
    const-string/jumbo v5, "owner"

    #@2e
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_2

    #@34
    .line 288
    const/4 v3, 0x0

    #@35
    goto :goto_0

    #@36
    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArgRequired()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3d
    move-result v3

    #@3e
    goto :goto_0

    #@3f
    .line 293
    .end local v4    # "userStr":Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_4

    #@41
    .line 294
    move-object v2, v1

    #@42
    .local v2, "packageName":Ljava/lang/String;
    goto :goto_0

    #@43
    .line 296
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_4
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@45
    new-instance v6, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v7, "Error: Unsupported argument: "

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5c
    .line 297
    return-void

    #@5d
    .line 304
    :cond_5
    const/4 v5, -0x2

    #@5e
    if-ne v3, v5, :cond_6

    #@60
    .line 305
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@63
    move-result v3

    #@64
    .line 309
    :cond_6
    const-string/jumbo v5, "appops"

    #@67
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6a
    move-result-object v5

    #@6b
    .line 308
    invoke-static {v5}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    #@6e
    move-result-object v0

    #@6f
    .line 310
    .local v0, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    invoke-interface {v0, v3, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    #@72
    .line 311
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@74
    const-string/jumbo v6, "Reset all modes for: "

    #@77
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@7a
    .line 312
    const/4 v5, -0x1

    #@7b
    if-ne v3, v5, :cond_7

    #@7d
    .line 313
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7f
    const-string/jumbo v6, "all users"

    #@82
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@85
    .line 317
    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@87
    const-string/jumbo v6, ", "

    #@8a
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@8d
    .line 318
    if-nez v2, :cond_8

    #@8f
    .line 319
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@91
    const-string/jumbo v6, "all packages"

    #@94
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@97
    .line 277
    :goto_2
    return-void

    #@98
    .line 315
    :cond_7
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9a
    const-string/jumbo v6, "user "

    #@9d
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@a0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a2
    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->print(I)V

    #@a5
    goto :goto_1

    #@a6
    .line 321
    :cond_8
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a8
    const-string/jumbo v6, "package "

    #@ab
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@ae
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b0
    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b3
    goto :goto_2
.end method

.method private runSet()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    const/4 v6, 0x0

    #@1
    .line 108
    .local v6, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    #@2
    .line 109
    .local v4, "op":Ljava/lang/String;
    const/4 v2, 0x0

    #@3
    .line 110
    .local v2, "mode":Ljava/lang/String;
    const/4 v9, -0x2

    #@4
    .line 111
    .end local v2    # "mode":Ljava/lang/String;
    .end local v4    # "op":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .local v9, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArg()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .local v1, "argument":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@a
    .line 112
    const-string/jumbo v10, "--user"

    #@d
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v10

    #@11
    if-eqz v10, :cond_0

    #@13
    .line 113
    invoke-virtual {p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArgRequired()Ljava/lang/String;

    #@16
    move-result-object v10

    #@17
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a
    move-result v9

    #@1b
    goto :goto_0

    #@1c
    .line 115
    :cond_0
    if-nez v6, :cond_1

    #@1e
    .line 116
    move-object v6, v1

    #@1f
    .local v6, "packageName":Ljava/lang/String;
    goto :goto_0

    #@20
    .line 117
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    #@22
    .line 118
    move-object v4, v1

    #@23
    .local v4, "op":Ljava/lang/String;
    goto :goto_0

    #@24
    .line 119
    .end local v4    # "op":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_3

    #@26
    .line 120
    move-object v2, v1

    #@27
    .local v2, "mode":Ljava/lang/String;
    goto :goto_0

    #@28
    .line 122
    .end local v2    # "mode":Ljava/lang/String;
    :cond_3
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    new-instance v11, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v12, "Error: Unsupported argument: "

    #@32
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v11

    #@36
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v11

    #@3a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v11

    #@3e
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@41
    .line 123
    return-void

    #@42
    .line 128
    :cond_4
    if-nez v6, :cond_5

    #@44
    .line 129
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@46
    const-string/jumbo v11, "Error: Package name not specified."

    #@49
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4c
    .line 130
    return-void

    #@4d
    .line 131
    :cond_5
    if-nez v4, :cond_6

    #@4f
    .line 132
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@51
    const-string/jumbo v11, "Error: Operation not specified."

    #@54
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@57
    .line 133
    return-void

    #@58
    .line 134
    :cond_6
    if-nez v2, :cond_7

    #@5a
    .line 135
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5c
    const-string/jumbo v11, "Error: Mode not specified."

    #@5f
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@62
    .line 136
    return-void

    #@63
    .line 139
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/commands/appops/AppOpsCommand;->strOpToOp(Ljava/lang/String;)I

    #@66
    move-result v5

    #@67
    .line 140
    .local v5, "opInt":I
    if-gez v5, :cond_8

    #@69
    .line 141
    return-void

    #@6a
    .line 144
    :cond_8
    const-string/jumbo v10, "allow"

    #@6d
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v10

    #@71
    if-eqz v10, :cond_a

    #@73
    .line 146
    const/4 v3, 0x0

    #@74
    .line 164
    .local v3, "modeInt":I
    :goto_1
    const/4 v10, -0x2

    #@75
    if-ne v9, v10, :cond_9

    #@77
    .line 165
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@7a
    move-result v9

    #@7b
    .line 168
    :cond_9
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@7e
    move-result-object v7

    #@7f
    .line 170
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    const-string/jumbo v10, "appops"

    #@82
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@85
    move-result-object v10

    #@86
    .line 169
    invoke-static {v10}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    #@89
    move-result-object v0

    #@8a
    .line 171
    .local v0, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    invoke-interface {v7, v6, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    #@8d
    move-result v8

    #@8e
    .line 172
    .local v8, "uid":I
    if-gez v8, :cond_e

    #@90
    .line 173
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@92
    new-instance v11, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v12, "Error: No UID for "

    #@9a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v11

    #@9e
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v11

    #@a2
    const-string/jumbo v12, " in user "

    #@a5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v11

    #@a9
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v11

    #@ad
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v11

    #@b1
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b4
    .line 174
    return-void

    #@b5
    .line 144
    .end local v0    # "appOpsService":Lcom/android/internal/app/IAppOpsService;
    .end local v3    # "modeInt":I
    .end local v7    # "pm":Landroid/content/pm/IPackageManager;
    .end local v8    # "uid":I
    :cond_a
    const-string/jumbo v10, "deny"

    #@b8
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bb
    move-result v10

    #@bc
    if-eqz v10, :cond_b

    #@be
    .line 149
    const/4 v3, 0x2

    #@bf
    .line 150
    .restart local v3    # "modeInt":I
    goto :goto_1

    #@c0
    .line 144
    .end local v3    # "modeInt":I
    :cond_b
    const-string/jumbo v10, "ignore"

    #@c3
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c6
    move-result v10

    #@c7
    if-eqz v10, :cond_c

    #@c9
    .line 152
    const/4 v3, 0x1

    #@ca
    .line 153
    .restart local v3    # "modeInt":I
    goto :goto_1

    #@cb
    .line 144
    .end local v3    # "modeInt":I
    :cond_c
    const-string/jumbo v10, "default"

    #@ce
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d1
    move-result v10

    #@d2
    if-eqz v10, :cond_d

    #@d4
    .line 155
    const/4 v3, 0x3

    #@d5
    .line 156
    .restart local v3    # "modeInt":I
    goto :goto_1

    #@d6
    .line 158
    .end local v3    # "modeInt":I
    :cond_d
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d8
    new-instance v11, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v12, "Error: Mode "

    #@e0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v11

    #@e4
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v11

    #@e8
    const-string/jumbo v12, " is not valid,"

    #@eb
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v11

    #@ef
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v11

    #@f3
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f6
    .line 159
    return-void

    #@f7
    .line 176
    .restart local v0    # "appOpsService":Lcom/android/internal/app/IAppOpsService;
    .restart local v3    # "modeInt":I
    .restart local v7    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v8    # "uid":I
    :cond_e
    invoke-interface {v0, v5, v8, v6, v3}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    #@fa
    .line 106
    return-void
.end method

.method private strOpToOp(Ljava/lang/String;)I
    .locals 5
    .param p1, "op"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v2

    #@4
    return v2

    #@5
    .line 92
    :catch_0
    move-exception v0

    #@6
    .line 95
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 96
    :catch_1
    move-exception v1

    #@c
    .line 99
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 100
    :catch_2
    move-exception v0

    #@12
    .line 101
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Error: "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f
    .line 102
    const/4 v2, -0x1

    #@30
    return v2
.end method


# virtual methods
.method public onRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 62
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v1, "set"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 64
    invoke-direct {p0}, Lcom/android/commands/appops/AppOpsCommand;->runSet()V

    #@10
    .line 60
    :goto_0
    return-void

    #@11
    .line 62
    :cond_0
    const-string/jumbo v1, "get"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 68
    invoke-direct {p0}, Lcom/android/commands/appops/AppOpsCommand;->runGet()V

    #@1d
    goto :goto_0

    #@1e
    .line 62
    :cond_1
    const-string/jumbo v1, "reset"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 72
    invoke-direct {p0}, Lcom/android/commands/appops/AppOpsCommand;->runReset()V

    #@2a
    goto :goto_0

    #@2b
    .line 76
    :cond_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v3, "Error: Unknown command: \'"

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    const-string/jumbo v3, "\'."

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4b
    goto :goto_0
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 45
    const-string/jumbo v0, "usage: appops set [--user <USER_ID>] <PACKAGE> <OP> <MODE>\n       appops get [--user <USER_ID>] <PACKAGE> [<OP>]\n       appops reset [--user <USER_ID>] [<PACKAGE>]\n  <PACKAGE> an Android package name.\n  <OP>      an AppOps operation.\n  <MODE>    one of allow, ignore, deny, or default\n  <USER_ID> the user id under which the package is installed. If --user is not\n            specified, the current user is assumed.\n"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 44
    return-void
.end method
