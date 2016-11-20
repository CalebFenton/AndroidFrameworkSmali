.class final Lcom/android/server/am/ActiveServices$ServiceDumper;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceDumper"
.end annotation


# instance fields
.field private final args:[Ljava/lang/String;

.field private final dumpAll:Z

.field private final dumpPackage:Ljava/lang/String;

.field private final fd:Ljava/io/FileDescriptor;

.field private final matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

.field private needSep:Z

.field private final nowReal:J

.field private final opti:I

.field private printed:Z

.field private printedAnything:Z

.field private final pw:Ljava/io/PrintWriter;

.field private final services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 11
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2926
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2914
    new-instance v7, Ljava/util/ArrayList;

    #@7
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    #@c
    .line 2916
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f
    move-result-wide v8

    #@10
    iput-wide v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    #@12
    .line 2918
    const/4 v7, 0x0

    #@13
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@15
    .line 2919
    const/4 v7, 0x0

    #@16
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    #@18
    .line 2920
    const/4 v7, 0x0

    #@19
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@1b
    .line 2928
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    #@1d
    .line 2929
    iput-object p3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@1f
    .line 2930
    iput-object p4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    #@21
    .line 2931
    move/from16 v0, p5

    #@23
    iput v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->opti:I

    #@25
    .line 2932
    move/from16 v0, p6

    #@27
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    #@29
    .line 2933
    move-object/from16 v0, p7

    #@2b
    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    #@2d
    .line 2934
    new-instance v7, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    #@2f
    invoke-direct {v7}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    #@32
    iput-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    #@34
    .line 2935
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    #@36
    move/from16 v0, p5

    #@38
    invoke-virtual {v7, p4, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    #@3b
    .line 2937
    iget-object v7, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@3d
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@3f
    invoke-virtual {v7}, Lcom/android/server/am/UserController;->getUsers()[I

    #@42
    move-result-object v6

    #@43
    .line 2938
    .local v6, "users":[I
    const/4 v7, 0x0

    #@44
    array-length v8, v6

    #@45
    :goto_0
    if-ge v7, v8, :cond_4

    #@47
    aget v5, v6, v7

    #@49
    .line 2939
    .local v5, "user":I
    invoke-static {p1, v5}, Lcom/android/server/am/ActiveServices;->-wrap0(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@4c
    move-result-object v4

    #@4d
    .line 2940
    .local v4, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v9, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@4f
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    #@52
    move-result v9

    #@53
    if-lez v9, :cond_3

    #@55
    .line 2941
    const/4 v3, 0x0

    #@56
    .local v3, "si":I
    :goto_1
    iget-object v9, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@58
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    #@5b
    move-result v9

    #@5c
    if-ge v3, v9, :cond_3

    #@5e
    .line 2942
    iget-object v9, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    #@60
    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@63
    move-result-object v2

    #@64
    check-cast v2, Lcom/android/server/am/ServiceRecord;

    #@66
    .line 2943
    .local v2, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    #@68
    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@6a
    invoke-virtual {v9, v2, v10}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@6d
    move-result v9

    #@6e
    if-nez v9, :cond_1

    #@70
    .line 2941
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@72
    goto :goto_1

    #@73
    .line 2946
    :cond_1
    if-eqz p7, :cond_2

    #@75
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@77
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@79
    move-object/from16 v0, p7

    #@7b
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v9

    #@7f
    if-eqz v9, :cond_0

    #@81
    .line 2949
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    #@83
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@86
    goto :goto_2

    #@87
    .line 2938
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v3    # "si":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@89
    goto :goto_0

    #@8a
    .line 2927
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v5    # "user":I
    :cond_4
    return-void
.end method

.method private dumpHeaderLocked()V
    .locals 2

    #@0
    .prologue
    .line 2956
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@2
    const-string/jumbo v1, "ACTIVITY MANAGER SERVICES (dumpsys activity services)"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 2957
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@a
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 2958
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@10
    const-string/jumbo v1, "  Last ANR service:"

    #@13
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16
    .line 2959
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@18
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@1a
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    #@1c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    .line 2960
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@21
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@24
    .line 2955
    :cond_0
    return-void
.end method

.method private dumpRemainsLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 3162
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@4
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v5

    #@a
    if-lez v5, :cond_6

    #@c
    .line 3163
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@e
    .line 3164
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@11
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v5

    #@17
    if-ge v1, v5, :cond_5

    #@19
    .line 3165
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@1b
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    #@23
    .line 3166
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    #@25
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@27
    invoke-virtual {v5, v3, v6}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_1

    #@2d
    .line 3164
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 3169
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    #@32
    if-eqz v5, :cond_2

    #@34
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    #@36
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@38
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v5

    #@3e
    if-eqz v5, :cond_0

    #@40
    .line 3172
    :cond_2
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    #@42
    .line 3173
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@44
    if-nez v5, :cond_4

    #@46
    .line 3174
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@48
    if-eqz v5, :cond_3

    #@4a
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@4c
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    #@4f
    .line 3175
    :cond_3
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@51
    .line 3176
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@53
    const-string/jumbo v6, "  Pending services:"

    #@56
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59
    .line 3177
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@5b
    .line 3179
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@5d
    const-string/jumbo v6, "  * Pending "

    #@60
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@65
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@68
    .line 3180
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@6a
    const-string/jumbo v6, "    "

    #@6d
    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@70
    goto :goto_1

    #@71
    .line 3182
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_5
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@73
    .line 3185
    .end local v1    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@75
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@7a
    move-result v5

    #@7b
    if-lez v5, :cond_d

    #@7d
    .line 3186
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@7f
    .line 3187
    const/4 v1, 0x0

    #@80
    .restart local v1    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@82
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@84
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@87
    move-result v5

    #@88
    if-ge v1, v5, :cond_c

    #@8a
    .line 3188
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@8c
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    #@8e
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@91
    move-result-object v3

    #@92
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    #@94
    .line 3189
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    #@96
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@98
    invoke-virtual {v5, v3, v6}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@9b
    move-result v5

    #@9c
    if-nez v5, :cond_8

    #@9e
    .line 3187
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@a0
    goto :goto_2

    #@a1
    .line 3192
    :cond_8
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    #@a3
    if-eqz v5, :cond_9

    #@a5
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    #@a7
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@a9
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@ab
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ae
    move-result v5

    #@af
    if-eqz v5, :cond_7

    #@b1
    .line 3195
    :cond_9
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    #@b3
    .line 3196
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@b5
    if-nez v5, :cond_b

    #@b7
    .line 3197
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@b9
    if-eqz v5, :cond_a

    #@bb
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@bd
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    #@c0
    .line 3198
    :cond_a
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@c2
    .line 3199
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@c4
    const-string/jumbo v6, "  Restarting services:"

    #@c7
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ca
    .line 3200
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@cc
    .line 3202
    :cond_b
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@ce
    const-string/jumbo v6, "  * Restarting "

    #@d1
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d4
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@d6
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@d9
    .line 3203
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@db
    const-string/jumbo v6, "    "

    #@de
    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@e1
    goto :goto_3

    #@e2
    .line 3205
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_c
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@e4
    .line 3208
    .end local v1    # "i":I
    :cond_d
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@e6
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@e8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@eb
    move-result v5

    #@ec
    if-lez v5, :cond_14

    #@ee
    .line 3209
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@f0
    .line 3210
    const/4 v1, 0x0

    #@f1
    .restart local v1    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@f3
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@f5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@f8
    move-result v5

    #@f9
    if-ge v1, v5, :cond_13

    #@fb
    .line 3211
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@fd
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    #@ff
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@102
    move-result-object v3

    #@103
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    #@105
    .line 3212
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    #@107
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@109
    invoke-virtual {v5, v3, v6}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@10c
    move-result v5

    #@10d
    if-nez v5, :cond_f

    #@10f
    .line 3210
    :cond_e
    :goto_5
    add-int/lit8 v1, v1, 0x1

    #@111
    goto :goto_4

    #@112
    .line 3215
    :cond_f
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    #@114
    if-eqz v5, :cond_10

    #@116
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    #@118
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@11a
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@11c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11f
    move-result v5

    #@120
    if-eqz v5, :cond_e

    #@122
    .line 3218
    :cond_10
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    #@124
    .line 3219
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@126
    if-nez v5, :cond_12

    #@128
    .line 3220
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@12a
    if-eqz v5, :cond_11

    #@12c
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@12e
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    #@131
    .line 3221
    :cond_11
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@133
    .line 3222
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@135
    const-string/jumbo v6, "  Destroying services:"

    #@138
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13b
    .line 3223
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@13d
    .line 3225
    :cond_12
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@13f
    const-string/jumbo v6, "  * Destroy "

    #@142
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@145
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@147
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@14a
    .line 3226
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@14c
    const-string/jumbo v6, "    "

    #@14f
    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@152
    goto :goto_5

    #@153
    .line 3228
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_13
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@155
    .line 3231
    .end local v1    # "i":I
    :cond_14
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    #@157
    if-eqz v5, :cond_1b

    #@159
    .line 3232
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@15b
    .line 3233
    const/4 v2, 0x0

    #@15c
    .local v2, "ic":I
    :goto_6
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@15e
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@160
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@163
    move-result v5

    #@164
    if-ge v2, v5, :cond_1b

    #@166
    .line 3234
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@168
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    #@16a
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16d
    move-result-object v4

    #@16e
    check-cast v4, Ljava/util/ArrayList;

    #@170
    .line 3235
    .local v4, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v1, 0x0

    #@171
    .restart local v1    # "i":I
    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@174
    move-result v5

    #@175
    if-ge v1, v5, :cond_1a

    #@177
    .line 3236
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17a
    move-result-object v0

    #@17b
    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    #@17d
    .line 3237
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    #@17f
    iget-object v6, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@181
    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@183
    iget-object v7, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@185
    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    #@187
    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@189
    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@18c
    move-result v5

    #@18d
    if-nez v5, :cond_16

    #@18f
    .line 3235
    :cond_15
    :goto_8
    add-int/lit8 v1, v1, 0x1

    #@191
    goto :goto_7

    #@192
    .line 3240
    :cond_16
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    #@194
    if-eqz v5, :cond_17

    #@196
    iget-object v5, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@198
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@19a
    if-eqz v5, :cond_15

    #@19c
    .line 3241
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    #@19e
    iget-object v6, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@1a0
    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@1a2
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@1a4
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1a6
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a9
    move-result v5

    #@1aa
    if-eqz v5, :cond_15

    #@1ac
    .line 3244
    :cond_17
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    #@1ae
    .line 3245
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@1b0
    if-nez v5, :cond_19

    #@1b2
    .line 3246
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@1b4
    if-eqz v5, :cond_18

    #@1b6
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@1b8
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    #@1bb
    .line 3247
    :cond_18
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@1bd
    .line 3248
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@1bf
    const-string/jumbo v6, "  Connection bindings to services:"

    #@1c2
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c5
    .line 3249
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@1c7
    .line 3251
    :cond_19
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@1c9
    const-string/jumbo v6, "  * "

    #@1cc
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cf
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@1d1
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1d4
    .line 3252
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@1d6
    const-string/jumbo v6, "    "

    #@1d9
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ConnectionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@1dc
    goto :goto_8

    #@1dd
    .line 3233
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    #@1df
    goto/16 :goto_6

    #@1e1
    .line 3257
    .end local v1    # "i":I
    .end local v2    # "ic":I
    .end local v4    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1b
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    #@1e3
    if-nez v5, :cond_1c

    #@1e5
    .line 3258
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@1e7
    const-string/jumbo v6, "  (nothing)"

    #@1ea
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ed
    .line 3161
    :cond_1c
    return-void
.end method

.method private dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    .line 3090
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2
    .line 3091
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v2, :cond_0

    #@4
    .line 3092
    return-void

    #@5
    .line 3094
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@7
    .line 3095
    .local v3, "thread":Landroid/app/IApplicationThread;
    if-nez v3, :cond_1

    #@9
    .line 3096
    return-void

    #@a
    .line 3098
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@c
    const-string/jumbo v6, "    Client:"

    #@f
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 3099
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@14
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    #@17
    .line 3101
    :try_start_0
    new-instance v4, Lcom/android/internal/os/TransferPipe;

    #@19
    invoke-direct {v4}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@1c
    .line 3103
    .local v4, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@23
    move-result-object v5

    #@24
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    #@26
    invoke-interface {v3, v5, p1, v6}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    #@29
    .line 3104
    const-string/jumbo v5, "      "

    #@2c
    invoke-virtual {v4, v5}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    #@2f
    .line 3107
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    #@31
    const-wide/16 v6, 0x7d0

    #@33
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    .line 3109
    :try_start_2
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@39
    .line 3116
    .end local v4    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_0
    const/4 v5, 0x1

    #@3a
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@3c
    .line 3089
    return-void

    #@3d
    .line 3108
    .restart local v4    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v5

    #@3e
    .line 3109
    :try_start_3
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@41
    .line 3108
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@42
    .line 3111
    .end local v4    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v1

    #@43
    .line 3112
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@45
    new-instance v6, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v7, "      Failure while dumping the service: "

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c
    goto :goto_0

    #@5d
    .line 3113
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@5e
    .line 3114
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@60
    const-string/jumbo v6, "      Got a RemoteException while dumping the service"

    #@63
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    goto :goto_0
.end method

.method private dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 3056
    iget v5, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    #@3
    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserHeaderLocked(I)V

    #@6
    .line 3057
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@8
    const-string/jumbo v6, "  * "

    #@b
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 3058
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@10
    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@13
    .line 3059
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    #@15
    if-eqz v5, :cond_1

    #@17
    .line 3060
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@19
    const-string/jumbo v6, "    "

    #@1c
    invoke-virtual {p1, v5, v6}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@1f
    .line 3061
    const/4 v5, 0x1

    #@20
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@22
    .line 3055
    :cond_0
    return-void

    #@23
    .line 3063
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@25
    const-string/jumbo v6, "    app="

    #@28
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    .line 3064
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@2d
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2f
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@32
    .line 3065
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@34
    const-string/jumbo v6, "    created="

    #@37
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 3066
    iget-wide v6, p1, Lcom/android/server/am/ServiceRecord;->createTime:J

    #@3c
    iget-wide v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    #@3e
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@40
    invoke-static {v6, v7, v8, v9, v5}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@43
    .line 3067
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@45
    const-string/jumbo v6, " started="

    #@48
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    .line 3068
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@4d
    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    #@4f
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@52
    .line 3069
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@54
    const-string/jumbo v6, " connections="

    #@57
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    .line 3070
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@5c
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@5e
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@61
    move-result v6

    #@62
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    #@65
    .line 3071
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@67
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@6a
    move-result v5

    #@6b
    if-lez v5, :cond_0

    #@6d
    .line 3072
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@6f
    const-string/jumbo v6, "    Connections:"

    #@72
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@75
    .line 3073
    const/4 v2, 0x0

    #@76
    .local v2, "conni":I
    :goto_0
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@78
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@7b
    move-result v5

    #@7c
    if-ge v2, v5, :cond_0

    #@7e
    .line 3074
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    #@80
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@83
    move-result-object v0

    #@84
    check-cast v0, Ljava/util/ArrayList;

    #@86
    .line 3075
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    #@87
    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8a
    move-result v5

    #@8b
    if-ge v3, v5, :cond_3

    #@8d
    .line 3076
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@90
    move-result-object v1

    #@91
    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    #@93
    .line 3077
    .local v1, "conn":Lcom/android/server/am/ConnectionRecord;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@95
    const-string/jumbo v6, "      "

    #@98
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b
    .line 3078
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@9d
    iget-object v6, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@9f
    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    #@a1
    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    #@a3
    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    #@a6
    move-result-object v6

    #@a7
    invoke-virtual {v6, v10, v10, v10, v10}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@aa
    move-result-object v6

    #@ab
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    .line 3080
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@b0
    const-string/jumbo v6, " -> "

    #@b3
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b6
    .line 3081
    iget-object v5, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    #@b8
    iget-object v4, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    #@ba
    .line 3082
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@bc
    if-eqz v4, :cond_2

    #@be
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    #@c1
    move-result-object v5

    #@c2
    :goto_2
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c5
    .line 3075
    add-int/lit8 v3, v3, 0x1

    #@c7
    goto :goto_1

    #@c8
    .line 3082
    :cond_2
    const-string/jumbo v5, "null"

    #@cb
    goto :goto_2

    #@cc
    .line 3073
    .end local v1    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@ce
    goto :goto_0
.end method

.method private dumpUserHeaderLocked(I)V
    .locals 4
    .param p1, "user"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 3042
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 3043
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3044
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@b
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@e
    .line 3046
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "  User "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, " active services:"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 3047
    iput-boolean v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@30
    .line 3049
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    #@32
    .line 3050
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@34
    if-eqz v0, :cond_2

    #@36
    .line 3051
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@38
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@3b
    .line 3041
    :cond_2
    return-void
.end method

.method private dumpUserRemainsLocked(I)V
    .locals 9
    .param p1, "user"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 3120
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@4
    invoke-static {v4, p1}, Lcom/android/server/am/ActiveServices;->-wrap0(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    #@7
    move-result-object v3

    #@8
    .line 3121
    .local v3, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@a
    .line 3122
    const/4 v2, 0x0

    #@b
    .local v2, "si":I
    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    .local v0, "SN":I
    :goto_0
    if-ge v2, v0, :cond_5

    #@13
    .line 3123
    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@1b
    .line 3124
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    #@1d
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@1f
    invoke-virtual {v4, v1, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@22
    move-result v4

    #@23
    if-nez v4, :cond_1

    #@25
    .line 3122
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 3127
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    #@2a
    if-eqz v4, :cond_2

    #@2c
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    #@2e
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@30
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_0

    #@38
    .line 3130
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@3a
    if-nez v4, :cond_4

    #@3c
    .line 3131
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    #@3e
    if-eqz v4, :cond_3

    #@40
    .line 3132
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@42
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    #@45
    .line 3134
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@47
    new-instance v5, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v6, "  User "

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    const-string/jumbo v6, " delayed start services:"

    #@5a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@65
    .line 3135
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@67
    .line 3137
    :cond_4
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    #@69
    .line 3138
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@6b
    const-string/jumbo v5, "  * Delayed start "

    #@6e
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@73
    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@76
    goto :goto_1

    #@77
    .line 3140
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_5
    iput-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@79
    .line 3141
    const/4 v2, 0x0

    #@7a
    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7f
    move-result v0

    #@80
    :goto_2
    if-ge v2, v0, :cond_b

    #@82
    .line 3142
    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    #@84
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@87
    move-result-object v1

    #@88
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@8a
    .line 3143
    .restart local v1    # "r":Lcom/android/server/am/ServiceRecord;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    #@8c
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    #@8e
    invoke-virtual {v4, v1, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@91
    move-result v4

    #@92
    if-nez v4, :cond_7

    #@94
    .line 3141
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@96
    goto :goto_2

    #@97
    .line 3146
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    #@99
    if-eqz v4, :cond_8

    #@9b
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    #@9d
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@9f
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@a1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v4

    #@a5
    if-eqz v4, :cond_6

    #@a7
    .line 3149
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@a9
    if-nez v4, :cond_a

    #@ab
    .line 3150
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    #@ad
    if-eqz v4, :cond_9

    #@af
    .line 3151
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@b1
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    #@b4
    .line 3153
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@b6
    new-instance v5, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v6, "  User "

    #@be
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v5

    #@c2
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v5

    #@c6
    const-string/jumbo v6, " starting in background:"

    #@c9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v5

    #@cd
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v5

    #@d1
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d4
    .line 3154
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@d6
    .line 3156
    :cond_a
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    #@d8
    .line 3157
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@da
    const-string/jumbo v5, "  * Starting bg "

    #@dd
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e0
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    #@e2
    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e5
    goto :goto_3

    #@e6
    .line 3119
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_b
    return-void
.end method


# virtual methods
.method dumpLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2965
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V

    #@4
    .line 2968
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@6
    iget-object v6, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@8
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@a
    invoke-virtual {v6}, Lcom/android/server/am/UserController;->getUsers()[I

    #@d
    move-result-object v4

    #@e
    .line 2969
    .local v4, "users":[I
    array-length v7, v4

    #@f
    move v6, v5

    #@10
    :goto_0
    if-ge v6, v7, :cond_4

    #@12
    aget v3, v4, v6

    #@14
    .line 2971
    .local v3, "user":I
    const/4 v2, 0x0

    #@15
    .line 2972
    .local v2, "serviceIdx":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v5

    #@1b
    if-ge v2, v5, :cond_0

    #@1d
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v5

    #@23
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    #@25
    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    #@27
    if-eq v5, v3, :cond_0

    #@29
    .line 2973
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 2975
    :cond_0
    const/4 v5, 0x0

    #@2d
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@2f
    .line 2976
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v5

    #@35
    if-ge v2, v5, :cond_2

    #@37
    .line 2977
    const/4 v5, 0x0

    #@38
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@3a
    .line 2978
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v5

    #@40
    if-ge v2, v5, :cond_1

    #@42
    .line 2979
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@4a
    .line 2980
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v2, v2, 0x1

    #@4c
    .line 2981
    iget v5, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    #@4e
    if-eq v5, v3, :cond_3

    #@50
    .line 2986
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@52
    iget-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@54
    or-int/2addr v5, v8

    #@55
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@57
    .line 2989
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V

    #@5a
    .line 2969
    add-int/lit8 v5, v6, 0x1

    #@5c
    move v6, v5

    #@5d
    goto :goto_0

    #@5e
    .line 2984
    .restart local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    goto :goto_2

    #@62
    .line 2991
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v2    # "serviceIdx":I
    .end local v3    # "user":I
    .end local v4    # "users":[I
    :catch_0
    move-exception v0

    #@63
    .line 2992
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/ActiveServices;->-get0()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    const-string/jumbo v6, "Exception in dumpServicesLocked"

    #@6a
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    .line 2995
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V

    #@70
    .line 2964
    return-void
.end method

.method dumpWithClient()V
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2999
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@3
    iget-object v6, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@5
    monitor-enter v6

    #@6
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@9
    .line 3000
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v6

    #@d
    .line 2999
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@10
    .line 3004
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@12
    iget-object v6, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@14
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@16
    invoke-virtual {v6}, Lcom/android/server/am/UserController;->getUsers()[I

    #@19
    move-result-object v4

    #@1a
    .line 3005
    .local v4, "users":[I
    array-length v7, v4

    #@1b
    move v6, v5

    #@1c
    :goto_0
    if-ge v6, v7, :cond_4

    #@1e
    aget v3, v4, v6

    #@20
    .line 3007
    .local v3, "user":I
    const/4 v2, 0x0

    #@21
    .line 3008
    .local v2, "serviceIdx":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v5

    #@27
    if-ge v2, v5, :cond_0

    #@29
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v5

    #@2f
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    #@31
    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@33
    if-eq v5, v3, :cond_0

    #@35
    .line 3009
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_1

    #@38
    .line 2999
    .end local v2    # "serviceIdx":I
    .end local v3    # "user":I
    .end local v4    # "users":[I
    :catchall_0
    move-exception v5

    #@39
    monitor-exit v6

    #@3a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3d
    throw v5

    #@3e
    .line 3011
    .restart local v2    # "serviceIdx":I
    .restart local v3    # "user":I
    .restart local v4    # "users":[I
    :cond_0
    const/4 v5, 0x0

    #@3f
    :try_start_2
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@41
    .line 3012
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    #@43
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@46
    move-result v5

    #@47
    if-ge v2, v5, :cond_2

    #@49
    .line 3013
    const/4 v5, 0x0

    #@4a
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@4c
    .line 3014
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    #@4e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@51
    move-result v5

    #@52
    if-ge v2, v5, :cond_1

    #@54
    .line 3015
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    #@56
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@59
    move-result-object v1

    #@5a
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    #@5c
    .line 3016
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v2, v2, 0x1

    #@5e
    .line 3017
    iget v5, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    #@60
    if-eq v5, v3, :cond_3

    #@62
    .line 3025
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@64
    iget-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    #@66
    or-int/2addr v5, v8

    #@67
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    #@69
    .line 3028
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@6b
    iget-object v8, v5, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@6d
    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@6e
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@71
    .line 3029
    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@74
    :try_start_4
    monitor-exit v8

    #@75
    .line 3028
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@78
    .line 3005
    add-int/lit8 v5, v6, 0x1

    #@7a
    move v6, v5

    #@7b
    goto :goto_0

    #@7c
    .line 3020
    .restart local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@7e
    iget-object v8, v5, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@80
    monitor-enter v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@81
    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@84
    .line 3021
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@87
    :try_start_6
    monitor-exit v8

    #@88
    .line 3020
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@8b
    .line 3023
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    #@8e
    goto :goto_2

    #@8f
    .line 3032
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v2    # "serviceIdx":I
    .end local v3    # "user":I
    .end local v4    # "users":[I
    :catch_0
    move-exception v0

    #@90
    .line 3033
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/ActiveServices;->-get0()Ljava/lang/String;

    #@93
    move-result-object v5

    #@94
    const-string/jumbo v6, "Exception in dumpServicesLocked"

    #@97
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9a
    .line 3036
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    #@9c
    iget-object v6, v5, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@9e
    monitor-enter v6

    #@9f
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@a2
    .line 3037
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@a5
    monitor-exit v6

    #@a6
    .line 3036
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@a9
    .line 2998
    return-void

    #@aa
    .line 3020
    .restart local v1    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v2    # "serviceIdx":I
    .restart local v3    # "user":I
    .restart local v4    # "users":[I
    :catchall_1
    move-exception v5

    #@ab
    :try_start_8
    monitor-exit v8

    #@ac
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@af
    throw v5

    #@b0
    .line 3028
    .end local v1    # "r":Lcom/android/server/am/ServiceRecord;
    :catchall_2
    move-exception v5

    #@b1
    monitor-exit v8

    #@b2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@b5
    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    #@b6
    .line 3036
    .end local v2    # "serviceIdx":I
    .end local v3    # "user":I
    .end local v4    # "users":[I
    :catchall_3
    move-exception v5

    #@b7
    monitor-exit v6

    #@b8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@bb
    throw v5
.end method
