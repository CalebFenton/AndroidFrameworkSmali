.class Lcom/android/server/am/RecentTasks;
.super Ljava/util/ArrayList;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/RecentTasks$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/am/TaskRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_RECENT_BITMAPS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static sTaskRecordComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final tmpAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final tmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 508
    new-instance v0, Lcom/android/server/am/RecentTasks$1;

    #@2
    invoke-direct {v0}, Lcom/android/server/am/RecentTasks$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/am/RecentTasks;->sTaskRecordComparator:Ljava/util/Comparator;

    #@7
    .line 42
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@3
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@a
    .line 55
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpAvailActCache:Ljava/util/HashMap;

    #@11
    .line 56
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpAvailAppCache:Ljava/util/HashMap;

    #@18
    .line 57
    new-instance v0, Landroid/content/pm/ActivityInfo;

    #@1a
    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    #@1f
    .line 58
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    #@21
    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    #@26
    .line 61
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    #@28
    .line 60
    return-void
.end method

.method private final moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z
    .locals 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskIndex"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, -0x1

    #@2
    .line 205
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@5
    move-result v4

    #@6
    .line 206
    .local v4, "recentsCount":I
    move-object v6, p1

    #@7
    .line 207
    .local v6, "top":Lcom/android/server/am/TaskRecord;
    move v7, p2

    #@8
    .line 208
    .local v7, "topIndex":I
    :goto_0
    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@a
    if-eqz v8, :cond_0

    #@c
    if-lez v7, :cond_0

    #@e
    .line 209
    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@10
    .line 210
    add-int/lit8 v7, v7, -0x1

    #@12
    goto :goto_0

    #@13
    .line 215
    :cond_0
    iget v8, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@15
    iget v9, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@17
    if-ne v8, v9, :cond_5

    #@19
    const/4 v5, 0x1

    #@1a
    .line 216
    .local v5, "sane":Z
    :goto_1
    move v1, v7

    #@1b
    .line 217
    .local v1, "endIndex":I
    move-object v3, v6

    #@1c
    .line 218
    .local v3, "prev":Lcom/android/server/am/TaskRecord;
    :cond_1
    if-ge v1, v4, :cond_3

    #@1e
    .line 219
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@24
    .line 222
    .local v0, "cur":Lcom/android/server/am/TaskRecord;
    if-ne v0, v6, :cond_6

    #@26
    .line 224
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@28
    if-nez v8, :cond_2

    #@2a
    iget v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@2c
    if-eq v8, v10, :cond_8

    #@2e
    .line 225
    :cond_2
    const-string/jumbo v8, "ActivityManager"

    #@31
    new-instance v9, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v10, "Bad chain @"

    #@39
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v9

    #@3d
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v9

    #@41
    .line 226
    const-string/jumbo v10, ": first task has next affiliate: "

    #@44
    .line 225
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v9

    #@48
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v9

    #@50
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 227
    const/4 v5, 0x0

    #@54
    .line 281
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    #@56
    .line 282
    if-ge v1, p2, :cond_4

    #@58
    .line 283
    const-string/jumbo v8, "ActivityManager"

    #@5b
    new-instance v9, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v10, "Bad chain @"

    #@63
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v9

    #@67
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v9

    #@6b
    .line 284
    const-string/jumbo v10, ": did not extend to task "

    #@6e
    .line 283
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v9

    #@76
    .line 284
    const-string/jumbo v10, " @"

    #@79
    .line 283
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v9

    #@7d
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v9

    #@81
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v9

    #@85
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    .line 285
    const/4 v5, 0x0

    #@89
    .line 288
    :cond_4
    if-eqz v5, :cond_d

    #@8b
    .line 291
    move v2, v7

    #@8c
    .local v2, "i":I
    :goto_3
    if-gt v2, v1, :cond_c

    #@8e
    .line 294
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@91
    move-result-object v0

    #@92
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@94
    .line 295
    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    sub-int v8, v2, v7

    #@96
    invoke-virtual {p0, v8, v0}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    #@99
    .line 291
    add-int/lit8 v2, v2, 0x1

    #@9b
    goto :goto_3

    #@9c
    .line 215
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "prev":Lcom/android/server/am/TaskRecord;
    .end local v5    # "sane":Z
    :cond_5
    const/4 v5, 0x0

    #@9d
    .restart local v5    # "sane":Z
    goto/16 :goto_1

    #@9f
    .line 232
    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "endIndex":I
    .restart local v3    # "prev":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@a1
    if-ne v8, v3, :cond_7

    #@a3
    .line 233
    iget v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@a5
    iget v9, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    #@a7
    if-eq v8, v9, :cond_8

    #@a9
    .line 234
    :cond_7
    const-string/jumbo v8, "ActivityManager"

    #@ac
    new-instance v9, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v10, "Bad chain @"

    #@b4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v9

    #@b8
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v9

    #@bc
    .line 235
    const-string/jumbo v10, ": middle task "

    #@bf
    .line 234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v9

    #@c3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v9

    #@c7
    .line 235
    const-string/jumbo v10, " @"

    #@ca
    .line 234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v9

    #@ce
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v9

    #@d2
    .line 236
    const-string/jumbo v10, " has bad next affiliate "

    #@d5
    .line 234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v9

    #@d9
    .line 237
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@db
    .line 234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v9

    #@df
    .line 237
    const-string/jumbo v10, " id "

    #@e2
    .line 234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v9

    #@e6
    .line 237
    iget v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@e8
    .line 234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v9

    #@ec
    .line 238
    const-string/jumbo v10, ", expected "

    #@ef
    .line 234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v9

    #@f3
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v9

    #@f7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v9

    #@fb
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@fe
    .line 239
    const/4 v5, 0x0

    #@ff
    .line 240
    goto/16 :goto_2

    #@101
    .line 243
    :cond_8
    iget v8, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@103
    if-ne v8, v10, :cond_9

    #@105
    .line 245
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@107
    if-eqz v8, :cond_3

    #@109
    .line 246
    const-string/jumbo v8, "ActivityManager"

    #@10c
    new-instance v9, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    const-string/jumbo v10, "Bad chain @"

    #@114
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v9

    #@118
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v9

    #@11c
    .line 247
    const-string/jumbo v10, ": last task "

    #@11f
    .line 246
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v9

    #@123
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v9

    #@127
    .line 247
    const-string/jumbo v10, " has previous affiliate "

    #@12a
    .line 246
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v9

    #@12e
    .line 248
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@130
    .line 246
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v9

    #@134
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v9

    #@138
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@13b
    .line 249
    const/4 v5, 0x0

    #@13c
    goto/16 :goto_2

    #@13e
    .line 255
    :cond_9
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@140
    if-nez v8, :cond_a

    #@142
    .line 256
    const-string/jumbo v8, "ActivityManager"

    #@145
    new-instance v9, Ljava/lang/StringBuilder;

    #@147
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@14a
    const-string/jumbo v10, "Bad chain @"

    #@14d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v9

    #@151
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@154
    move-result-object v9

    #@155
    .line 257
    const-string/jumbo v10, ": task "

    #@158
    .line 256
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v9

    #@15c
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v9

    #@160
    .line 257
    const-string/jumbo v10, " has previous affiliate "

    #@163
    .line 256
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v9

    #@167
    .line 258
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@169
    .line 256
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v9

    #@16d
    .line 258
    const-string/jumbo v10, " but should be id "

    #@170
    .line 256
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v9

    #@174
    .line 259
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@176
    .line 256
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v9

    #@17a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17d
    move-result-object v9

    #@17e
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@181
    .line 260
    const/4 v5, 0x0

    #@182
    .line 261
    goto/16 :goto_2

    #@184
    .line 264
    :cond_a
    iget v8, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@186
    iget v9, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@188
    if-eq v8, v9, :cond_b

    #@18a
    .line 265
    const-string/jumbo v8, "ActivityManager"

    #@18d
    new-instance v9, Ljava/lang/StringBuilder;

    #@18f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@192
    const-string/jumbo v10, "Bad chain @"

    #@195
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v9

    #@199
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v9

    #@19d
    .line 266
    const-string/jumbo v10, ": task "

    #@1a0
    .line 265
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v9

    #@1a4
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v9

    #@1a8
    .line 266
    const-string/jumbo v10, " has affiliated id "

    #@1ab
    .line 265
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v9

    #@1af
    .line 267
    iget v10, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@1b1
    .line 265
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v9

    #@1b5
    .line 267
    const-string/jumbo v10, " but should be "

    #@1b8
    .line 265
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v9

    #@1bc
    .line 268
    iget v10, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@1be
    .line 265
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v9

    #@1c2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c5
    move-result-object v9

    #@1c6
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1c9
    .line 269
    const/4 v5, 0x0

    #@1ca
    .line 270
    goto/16 :goto_2

    #@1cc
    .line 272
    :cond_b
    move-object v3, v0

    #@1cd
    .line 273
    add-int/lit8 v1, v1, 0x1

    #@1cf
    .line 274
    if-lt v1, v4, :cond_1

    #@1d1
    .line 275
    const-string/jumbo v8, "ActivityManager"

    #@1d4
    new-instance v9, Ljava/lang/StringBuilder;

    #@1d6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1d9
    const-string/jumbo v10, "Bad chain ran off index "

    #@1dc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v9

    #@1e0
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v9

    #@1e4
    .line 276
    const-string/jumbo v10, ": last task "

    #@1e7
    .line 275
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v9

    #@1eb
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v9

    #@1ef
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f2
    move-result-object v9

    #@1f3
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1f6
    .line 277
    const/4 v5, 0x0

    #@1f7
    .line 278
    goto/16 :goto_2

    #@1f9
    .line 299
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "i":I
    :cond_c
    const/4 v8, 0x1

    #@1fa
    return v8

    #@1fb
    .line 303
    .end local v2    # "i":I
    :cond_d
    return v11
.end method

.method private processNextAffiliateChainLocked(I)I
    .locals 12
    .param p1, "start"    # I

    #@0
    .prologue
    .line 517
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v6

    #@4
    check-cast v6, Lcom/android/server/am/TaskRecord;

    #@6
    .line 518
    .local v6, "startTask":Lcom/android/server/am/TaskRecord;
    iget v0, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@8
    .line 521
    .local v0, "affiliateId":I
    iget v9, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    #@a
    if-ne v9, v0, :cond_0

    #@c
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@e
    if-nez v9, :cond_0

    #@10
    .line 522
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@12
    if-nez v9, :cond_0

    #@14
    .line 526
    const/4 v9, 0x1

    #@15
    iput-boolean v9, v6, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@17
    .line 527
    add-int/lit8 v9, p1, 0x1

    #@19
    return v9

    #@1a
    .line 531
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    #@1f
    .line 532
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@22
    move-result v9

    #@23
    add-int/lit8 v2, v9, -0x1

    #@25
    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_2

    #@27
    .line 533
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v7

    #@2b
    check-cast v7, Lcom/android/server/am/TaskRecord;

    #@2d
    .line 534
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    iget v9, v7, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@2f
    if-ne v9, v0, :cond_1

    #@31
    .line 535
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@34
    .line 536
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    .line 532
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@3b
    goto :goto_0

    #@3c
    .line 542
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@3e
    sget-object v10, Lcom/android/server/am/RecentTasks;->sTaskRecordComparator:Ljava/util/Comparator;

    #@40
    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@43
    .line 546
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@45
    const/4 v10, 0x0

    #@46
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v1

    #@4a
    check-cast v1, Lcom/android/server/am/TaskRecord;

    #@4c
    .line 547
    .local v1, "first":Lcom/android/server/am/TaskRecord;
    const/4 v9, 0x1

    #@4d
    iput-boolean v9, v1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@4f
    .line 548
    iget-object v9, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@51
    if-eqz v9, :cond_3

    #@53
    .line 549
    const-string/jumbo v9, "ActivityManager"

    #@56
    new-instance v10, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v11, "Link error 1 first.next="

    #@5e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v10

    #@62
    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@64
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v10

    #@68
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v10

    #@6c
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 550
    const/4 v9, 0x0

    #@70
    invoke-virtual {v1, v9}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@73
    .line 551
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    #@75
    const/4 v10, 0x0

    #@76
    invoke-virtual {v9, v1, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@79
    .line 554
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@7b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@7e
    move-result v8

    #@7f
    .line 555
    .local v8, "tmpSize":I
    const/4 v2, 0x0

    #@80
    :goto_1
    add-int/lit8 v9, v8, -0x1

    #@82
    if-ge v2, v9, :cond_6

    #@84
    .line 556
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@86
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@89
    move-result-object v4

    #@8a
    check-cast v4, Lcom/android/server/am/TaskRecord;

    #@8c
    .line 557
    .local v4, "next":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@8e
    add-int/lit8 v10, v2, 0x1

    #@90
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@93
    move-result-object v5

    #@94
    check-cast v5, Lcom/android/server/am/TaskRecord;

    #@96
    .line 558
    .local v5, "prev":Lcom/android/server/am/TaskRecord;
    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@98
    if-eq v9, v5, :cond_4

    #@9a
    .line 559
    const-string/jumbo v9, "ActivityManager"

    #@9d
    new-instance v10, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v11, "Link error 2 next="

    #@a5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v10

    #@a9
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v10

    #@ad
    const-string/jumbo v11, " prev="

    #@b0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v10

    #@b4
    iget-object v11, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@b6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v10

    #@ba
    .line 560
    const-string/jumbo v11, " setting prev="

    #@bd
    .line 559
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v10

    #@c1
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v10

    #@c5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v10

    #@c9
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@cc
    .line 561
    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@cf
    .line 562
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    #@d1
    const/4 v10, 0x0

    #@d2
    invoke-virtual {v9, v4, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@d5
    .line 564
    :cond_4
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@d7
    if-eq v9, v4, :cond_5

    #@d9
    .line 565
    const-string/jumbo v9, "ActivityManager"

    #@dc
    new-instance v10, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v11, "Link error 3 prev="

    #@e4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v10

    #@e8
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v10

    #@ec
    const-string/jumbo v11, " next="

    #@ef
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v10

    #@f3
    iget-object v11, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@f5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v10

    #@f9
    .line 566
    const-string/jumbo v11, " setting next="

    #@fc
    .line 565
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v10

    #@100
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v10

    #@104
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v10

    #@108
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10b
    .line 567
    invoke-virtual {v5, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@10e
    .line 568
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    #@110
    const/4 v10, 0x0

    #@111
    invoke-virtual {v9, v5, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@114
    .line 570
    :cond_5
    const/4 v9, 0x1

    #@115
    iput-boolean v9, v5, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@117
    .line 555
    add-int/lit8 v2, v2, 0x1

    #@119
    goto/16 :goto_1

    #@11b
    .line 573
    .end local v4    # "next":Lcom/android/server/am/TaskRecord;
    .end local v5    # "prev":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@11d
    add-int/lit8 v10, v8, -0x1

    #@11f
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@122
    move-result-object v3

    #@123
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@125
    .line 574
    .local v3, "last":Lcom/android/server/am/TaskRecord;
    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@127
    if-eqz v9, :cond_7

    #@129
    .line 575
    const-string/jumbo v9, "ActivityManager"

    #@12c
    new-instance v10, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    const-string/jumbo v11, "Link error 4 last.prev="

    #@134
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v10

    #@138
    iget-object v11, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@13a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v10

    #@13e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@141
    move-result-object v10

    #@142
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@145
    .line 576
    const/4 v9, 0x0

    #@146
    invoke-virtual {v3, v9}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@149
    .line 577
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    #@14b
    const/4 v10, 0x0

    #@14c
    invoke-virtual {v9, v3, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@14f
    .line 581
    :cond_7
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@151
    invoke-virtual {p0, p1, v9}, Lcom/android/server/am/RecentTasks;->addAll(ILjava/util/Collection;)Z

    #@154
    .line 582
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    #@156
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    #@159
    .line 585
    add-int v9, p1, v8

    #@15b
    return v9
.end method


# virtual methods
.method final addLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v10, -0x1

    #@2
    const/4 v11, 0x0

    #@3
    .line 307
    iget v8, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@5
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@7
    if-ne v8, v9, :cond_0

    #@9
    .line 308
    iget v8, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@b
    if-eq v8, v10, :cond_1

    #@d
    .line 307
    :cond_0
    const/4 v0, 0x1

    #@e
    .line 311
    .local v0, "isAffiliated":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@11
    move-result v5

    #@12
    .line 313
    .local v5, "recentsCount":I
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@14
    if-eqz v8, :cond_3

    #@16
    .line 316
    return-void

    #@17
    .line 309
    .end local v0    # "isAffiliated":Z
    .end local v5    # "recentsCount":I
    :cond_1
    iget v8, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@19
    if-eq v8, v10, :cond_2

    #@1b
    const/4 v0, 0x1

    #@1c
    .restart local v0    # "isAffiliated":Z
    goto :goto_0

    #@1d
    .end local v0    # "isAffiliated":Z
    :cond_2
    const/4 v0, 0x0

    #@1e
    .restart local v0    # "isAffiliated":Z
    goto :goto_0

    #@1f
    .line 319
    .restart local v5    # "recentsCount":I
    :cond_3
    if-nez v0, :cond_4

    #@21
    if-lez v5, :cond_4

    #@23
    invoke-virtual {p0, v11}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v8

    #@27
    if-ne v8, p1, :cond_4

    #@29
    .line 321
    return-void

    #@2a
    .line 325
    :cond_4
    if-eqz v0, :cond_5

    #@2c
    if-lez v5, :cond_5

    #@2e
    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@30
    if-eqz v8, :cond_5

    #@32
    .line 326
    iget v9, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@34
    invoke-virtual {p0, v11}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v8

    #@38
    check-cast v8, Lcom/android/server/am/TaskRecord;

    #@3a
    iget v8, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@3c
    if-ne v9, v8, :cond_5

    #@3e
    .line 329
    return-void

    #@3f
    .line 332
    :cond_5
    const/4 v2, 0x0

    #@40
    .line 336
    .local v2, "needAffiliationFix":Z
    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@42
    if-eqz v8, :cond_8

    #@44
    .line 337
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    #@47
    move-result v6

    #@48
    .line 338
    .local v6, "taskIndex":I
    if-ltz v6, :cond_9

    #@4a
    .line 339
    if-nez v0, :cond_6

    #@4c
    .line 341
    invoke-virtual {p0, v6}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@4f
    .line 342
    invoke-virtual {p0, v11, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    #@52
    .line 343
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    #@54
    invoke-virtual {v8, p1, v11}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@57
    .line 346
    return-void

    #@58
    .line 349
    :cond_6
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    #@5b
    move-result v8

    #@5c
    if-eqz v8, :cond_7

    #@5e
    .line 351
    return-void

    #@5f
    .line 356
    :cond_7
    const/4 v2, 0x1

    #@60
    .line 365
    .end local v6    # "taskIndex":I
    :cond_8
    :goto_1
    invoke-virtual {p0, p1, v12}, Lcom/android/server/am/RecentTasks;->trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I

    #@63
    .line 367
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@66
    move-result v5

    #@67
    .line 368
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    #@6a
    move-result v1

    #@6b
    .line 369
    .local v1, "maxRecents":I
    :goto_2
    if-lt v5, v1, :cond_a

    #@6d
    .line 370
    add-int/lit8 v8, v5, -0x1

    #@6f
    invoke-virtual {p0, v8}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@72
    move-result-object v7

    #@73
    check-cast v7, Lcom/android/server/am/TaskRecord;

    #@75
    .line 371
    .local v7, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    #@78
    .line 372
    add-int/lit8 v5, v5, -0x1

    #@7a
    goto :goto_2

    #@7b
    .line 359
    .end local v1    # "maxRecents":I
    .end local v7    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "taskIndex":I
    :cond_9
    const-string/jumbo v8, "ActivityManager"

    #@7e
    new-instance v9, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v10, "Task with inRecent not in recents: "

    #@86
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v9

    #@8a
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v9

    #@8e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v9

    #@92
    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 360
    const/4 v2, 0x1

    #@96
    goto :goto_1

    #@97
    .line 374
    .end local v6    # "taskIndex":I
    .restart local v1    # "maxRecents":I
    :cond_a
    iput-boolean v12, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@99
    .line 375
    if-eqz v0, :cond_b

    #@9b
    if-eqz v2, :cond_e

    #@9d
    .line 378
    :cond_b
    invoke-virtual {p0, v11, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    #@a0
    .line 426
    :cond_c
    :goto_3
    if-eqz v2, :cond_d

    #@a2
    .line 428
    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@a4
    invoke-virtual {p0, v8}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    #@a7
    .line 306
    :cond_d
    return-void

    #@a8
    .line 380
    :cond_e
    if-eqz v0, :cond_c

    #@aa
    .line 383
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@ac
    .line 384
    .local v3, "other":Lcom/android/server/am/TaskRecord;
    if-nez v3, :cond_f

    #@ae
    .line 385
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@b0
    .line 387
    :cond_f
    if-eqz v3, :cond_13

    #@b2
    .line 388
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    #@b5
    move-result v4

    #@b6
    .line 389
    .local v4, "otherIndex":I
    if-ltz v4, :cond_12

    #@b8
    .line 392
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@ba
    if-ne v3, v8, :cond_10

    #@bc
    .line 395
    add-int/lit8 v6, v4, 0x1

    #@be
    .line 403
    .restart local v6    # "taskIndex":I
    :goto_4
    invoke-virtual {p0, v6, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    #@c1
    .line 406
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    #@c4
    move-result v8

    #@c5
    if-eqz v8, :cond_11

    #@c7
    .line 408
    return-void

    #@c8
    .line 399
    .end local v6    # "taskIndex":I
    :cond_10
    move v6, v4

    #@c9
    .restart local v6    # "taskIndex":I
    goto :goto_4

    #@ca
    .line 413
    :cond_11
    const/4 v2, 0x1

    #@cb
    goto :goto_3

    #@cc
    .line 417
    .end local v6    # "taskIndex":I
    :cond_12
    const/4 v2, 0x1

    #@cd
    goto :goto_3

    #@ce
    .line 422
    .end local v4    # "otherIndex":I
    :cond_13
    const/4 v2, 0x1

    #@cf
    goto :goto_3
.end method

.method cleanupLocked(I)V
    .locals 13
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@3
    move-result v5

    #@4
    .line 103
    .local v5, "recentsCount":I
    if-nez v5, :cond_0

    #@6
    .line 106
    return-void

    #@7
    .line 109
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@a
    move-result-object v4

    #@b
    .line 110
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/4 v10, -0x1

    #@c
    if-ne p1, v10, :cond_2

    #@e
    .line 111
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    #@10
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    #@13
    move-result-object v9

    #@14
    .line 112
    .local v9, "users":[I
    :goto_0
    const/4 v8, 0x0

    #@15
    .local v8, "userIdx":I
    :goto_1
    array-length v10, v9

    #@16
    if-ge v8, v10, :cond_f

    #@18
    .line 113
    aget v7, v9, v8

    #@1a
    .line 114
    .local v7, "user":I
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@1d
    move-result v10

    #@1e
    add-int/lit8 v5, v10, -0x1

    #@20
    .line 115
    move v3, v5

    #@21
    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_e

    #@23
    .line 116
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v6

    #@27
    check-cast v6, Lcom/android/server/am/TaskRecord;

    #@29
    .line 117
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget v10, v6, Lcom/android/server/am/TaskRecord;->userId:I

    #@2b
    if-eq v10, v7, :cond_3

    #@2d
    .line 115
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    #@2f
    goto :goto_2

    #@30
    .line 111
    .end local v3    # "i":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "user":I
    .end local v8    # "userIdx":I
    .end local v9    # "users":[I
    :cond_2
    const/4 v10, 0x1

    #@31
    new-array v9, v10, [I

    #@33
    const/4 v10, 0x0

    #@34
    aput p1, v9, v10

    #@36
    .restart local v9    # "users":[I
    goto :goto_0

    #@37
    .line 121
    .restart local v3    # "i":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "user":I
    .restart local v8    # "userIdx":I
    :cond_3
    iget-boolean v10, v6, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@39
    if-eqz v10, :cond_4

    #@3b
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@3e
    move-result-object v10

    #@3f
    if-nez v10, :cond_4

    #@41
    .line 123
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@44
    .line 124
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    #@47
    .line 125
    const-string/jumbo v10, "ActivityManager"

    #@4a
    new-instance v11, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v12, "Removing auto-remove without activity: "

    #@52
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v11

    #@56
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v11

    #@5a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v11

    #@5e
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    goto :goto_3

    #@62
    .line 129
    :cond_4
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@64
    if-eqz v10, :cond_1

    #@66
    .line 130
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailActCache:Ljava/util/HashMap;

    #@68
    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@6a
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    move-result-object v0

    #@6e
    check-cast v0, Landroid/content/pm/ActivityInfo;

    #@70
    .line 131
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_6

    #@72
    .line 133
    :try_start_0
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@74
    .line 134
    const/16 v11, 0x2200

    #@76
    .line 133
    invoke-interface {v4, v10, v11, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@79
    move-result-object v0

    #@7a
    .line 140
    if-nez v0, :cond_5

    #@7c
    .line 141
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    #@7e
    .line 143
    :cond_5
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailActCache:Ljava/util/HashMap;

    #@80
    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@82
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    .line 145
    :cond_6
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    #@87
    if-ne v0, v10, :cond_b

    #@89
    .line 149
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailAppCache:Ljava/util/HashMap;

    #@8b
    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@8d
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@90
    move-result-object v11

    #@91
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    move-result-object v1

    #@95
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    #@97
    .line 150
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_8

    #@99
    .line 152
    :try_start_1
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@9b
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@9e
    move-result-object v10

    #@9f
    .line 153
    const/16 v11, 0x2200

    #@a1
    .line 152
    invoke-interface {v4, v10, v11, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@a4
    move-result-object v1

    #@a5
    .line 159
    if-nez v1, :cond_7

    #@a7
    .line 160
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    #@a9
    .line 162
    :cond_7
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailAppCache:Ljava/util/HashMap;

    #@ab
    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@ad
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@b0
    move-result-object v11

    #@b1
    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b4
    .line 164
    :cond_8
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    #@b6
    if-eq v1, v10, :cond_9

    #@b8
    iget v10, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@ba
    const/high16 v11, 0x800000

    #@bc
    and-int/2addr v10, v11

    #@bd
    if-nez v10, :cond_a

    #@bf
    .line 166
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@c2
    .line 167
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    #@c5
    .line 168
    const-string/jumbo v10, "ActivityManager"

    #@c8
    new-instance v11, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v12, "Removing no longer valid recent: "

    #@d0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v11

    #@d4
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v11

    #@d8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v11

    #@dc
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@df
    goto/16 :goto_3

    #@e1
    .line 174
    :cond_a
    const/4 v10, 0x0

    #@e2
    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@e4
    goto/16 :goto_3

    #@e6
    .line 177
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_b
    iget-boolean v10, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    #@e8
    if-eqz v10, :cond_c

    #@ea
    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@ec
    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@ee
    if-eqz v10, :cond_c

    #@f0
    .line 178
    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f2
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    #@f4
    const/high16 v11, 0x800000

    #@f6
    and-int/2addr v10, v11

    #@f7
    if-nez v10, :cond_d

    #@f9
    .line 184
    :cond_c
    const/4 v10, 0x0

    #@fa
    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@fc
    goto/16 :goto_3

    #@fe
    .line 188
    :cond_d
    const/4 v10, 0x1

    #@ff
    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@101
    goto/16 :goto_3

    #@103
    .line 112
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_e
    add-int/lit8 v8, v8, 0x1

    #@105
    goto/16 :goto_1

    #@107
    .line 196
    .end local v3    # "i":I
    .end local v7    # "user":I
    :cond_f
    const/4 v3, 0x0

    #@108
    .line 197
    .restart local v3    # "i":I
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@10b
    move-result v5

    #@10c
    .line 198
    :goto_4
    if-ge v3, v5, :cond_10

    #@10e
    .line 199
    invoke-direct {p0, v3}, Lcom/android/server/am/RecentTasks;->processNextAffiliateChainLocked(I)I

    #@111
    move-result v3

    #@112
    goto :goto_4

    #@113
    .line 101
    :cond_10
    return-void

    #@114
    .line 155
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "user":I
    :catch_0
    move-exception v2

    #@115
    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    #@117
    .line 136
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@118
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3
.end method

.method removeTasksForUserLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 77
    if-gtz p1, :cond_0

    #@2
    .line 78
    const-string/jumbo v2, "ActivityManager"

    #@5
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v4, "Can\'t remove recent task on user "

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 79
    return-void

    #@1d
    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@20
    move-result v2

    #@21
    add-int/lit8 v0, v2, -0x1

    #@23
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@25
    .line 83
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Lcom/android/server/am/TaskRecord;

    #@2b
    .line 84
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    #@2d
    if-ne v2, p1, :cond_1

    #@2f
    .line 87
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@32
    .line 88
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    #@35
    .line 82
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@37
    goto :goto_0

    #@38
    .line 93
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3a
    const/4 v3, 0x0

    #@3b
    const/4 v4, 0x1

    #@3c
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@3f
    .line 76
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@3
    move-result v1

    #@4
    .line 66
    .local v1, "recentsCount":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 67
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/server/am/TaskRecord;

    #@d
    .line 68
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    #@f
    if-ne v3, p1, :cond_0

    #@11
    .line 69
    return-object v2

    #@12
    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 72
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v3, 0x0

    #@16
    return-object v3
.end method

.method trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I
    .locals 14
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "doTrim"    # Z

    #@0
    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    #@3
    move-result v5

    #@4
    .line 438
    .local v5, "recentsCount":I
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@6
    .line 439
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    #@8
    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    #@b
    move-result v1

    #@c
    .line 440
    :goto_0
    iget v12, p1, Lcom/android/server/am/TaskRecord;->maxRecents:I

    #@e
    add-int/lit8 v4, v12, -0x1

    #@10
    .line 441
    .local v4, "maxRecents":I
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_10

    #@13
    .line 442
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v9

    #@17
    check-cast v9, Lcom/android/server/am/TaskRecord;

    #@19
    .line 443
    .local v9, "tr":Lcom/android/server/am/TaskRecord;
    if-eq p1, v9, :cond_c

    #@1b
    .line 444
    iget v12, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@1d
    iget v13, v9, Lcom/android/server/am/TaskRecord;->userId:I

    #@1f
    if-eq v12, v13, :cond_2

    #@21
    .line 441
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_1

    #@24
    .line 439
    .end local v2    # "i":I
    .end local v4    # "maxRecents":I
    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v1, 0x0

    #@25
    .local v1, "document":Z
    goto :goto_0

    #@26
    .line 447
    .end local v1    # "document":Z
    .restart local v2    # "i":I
    .restart local v4    # "maxRecents":I
    .restart local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v12, 0x3

    #@27
    if-le v2, v12, :cond_3

    #@29
    .line 448
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->freeLastThumbnail()V

    #@2c
    .line 450
    :cond_3
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@2e
    .line 452
    .local v10, "trIntent":Landroid/content/Intent;
    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@30
    if-eqz v12, :cond_5

    #@32
    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@34
    iget-object v13, v9, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@36
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v7

    #@3a
    .line 453
    :goto_3
    if-eqz v3, :cond_6

    #@3c
    invoke-virtual {v3, v10}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@3f
    move-result v8

    #@40
    .line 454
    :goto_4
    if-eqz v10, :cond_7

    #@42
    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    #@45
    move-result v11

    #@46
    .line 455
    :goto_5
    if-eqz v1, :cond_8

    #@48
    move v0, v11

    #@49
    .line 456
    :goto_6
    if-nez v7, :cond_4

    #@4b
    if-eqz v8, :cond_9

    #@4d
    .line 460
    :cond_4
    :goto_7
    if-eqz v0, :cond_b

    #@4f
    .line 462
    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@51
    if-eqz v12, :cond_a

    #@53
    .line 463
    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@55
    if-eqz v12, :cond_a

    #@57
    .line 464
    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@59
    iget-object v13, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@5b
    invoke-virtual {v12, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v6

    #@5f
    .line 465
    :goto_8
    if-eqz v6, :cond_0

    #@61
    .line 468
    if-lez v4, :cond_c

    #@63
    .line 469
    add-int/lit8 v4, v4, -0x1

    #@65
    .line 470
    goto :goto_2

    #@66
    .line 452
    :cond_5
    const/4 v7, 0x0

    #@67
    .local v7, "sameAffinity":Z
    goto :goto_3

    #@68
    .line 453
    .end local v7    # "sameAffinity":Z
    :cond_6
    const/4 v8, 0x0

    #@69
    .local v8, "sameIntent":Z
    goto :goto_4

    #@6a
    .line 454
    .end local v8    # "sameIntent":Z
    :cond_7
    const/4 v11, 0x0

    #@6b
    .local v11, "trIsDocument":Z
    goto :goto_5

    #@6c
    .line 455
    .end local v11    # "trIsDocument":Z
    :cond_8
    const/4 v0, 0x0

    #@6d
    .local v0, "bothDocuments":Z
    goto :goto_6

    #@6e
    .line 456
    .end local v0    # "bothDocuments":Z
    :cond_9
    if-eqz v0, :cond_0

    #@70
    goto :goto_7

    #@71
    .line 462
    :cond_a
    const/4 v6, 0x0

    #@72
    .local v6, "sameActivity":Z
    goto :goto_8

    #@73
    .line 474
    .end local v6    # "sameActivity":Z
    :cond_b
    if-nez v1, :cond_0

    #@75
    if-nez v11, :cond_0

    #@77
    .line 480
    .end local v10    # "trIntent":Landroid/content/Intent;
    :cond_c
    if-nez p2, :cond_d

    #@79
    .line 483
    return v2

    #@7a
    .line 489
    :cond_d
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    #@7d
    .line 490
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    #@80
    .line 491
    if-eq p1, v9, :cond_e

    #@82
    .line 492
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    #@85
    .line 494
    :cond_e
    add-int/lit8 v2, v2, -0x1

    #@87
    .line 495
    add-int/lit8 v5, v5, -0x1

    #@89
    .line 496
    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@8b
    if-nez v12, :cond_f

    #@8d
    .line 499
    move-object p1, v9

    #@8e
    .line 501
    :cond_f
    iget-object v12, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    #@90
    const/4 v13, 0x0

    #@91
    invoke-virtual {v12, v9, v13}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@94
    goto :goto_2

    #@95
    .line 504
    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_10
    const/4 v12, -0x1

    #@96
    return v12
.end method
