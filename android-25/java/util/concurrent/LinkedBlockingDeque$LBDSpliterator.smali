.class final Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LBDSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field batch:I

.field current:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field est:J

.field exhausted:Z

.field final queue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedBlockingDeque;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1108
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.LBDSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1109
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    #@5
    .line 1110
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    #@8
    move-result v0

    #@9
    int-to-long v0, v0

    #@a
    iput-wide v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    #@c
    .line 1108
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1213
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.LBDSpliterator<TE;>;"
    const/16 v0, 0x1110

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1113
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.LBDSpliterator<TE;>;"
    iget-wide v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    #@2
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1156
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.LBDSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 1157
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    #@a
    .line 1158
    .local v3, "q":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v1, v3, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    .line 1159
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v4, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    #@e
    if-nez v4, :cond_5

    #@10
    .line 1160
    const/4 v4, 0x1

    #@11
    iput-boolean v4, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    #@13
    .line 1161
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@15
    .line 1163
    .local v2, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_1
    const/4 v0, 0x0

    #@16
    .line 1164
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@19
    .line 1166
    if-nez v2, :cond_2

    #@1b
    .line 1167
    :try_start_0
    iget-object v2, v3, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@1d
    .line 1168
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    if-eqz v2, :cond_3

    #@1f
    .line 1169
    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@21
    .line 1170
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1171
    if-eqz v0, :cond_2

    #@25
    .line 1175
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@28
    .line 1177
    if-eqz v0, :cond_4

    #@2a
    .line 1178
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2d
    .line 1179
    :cond_4
    if-nez v2, :cond_1

    #@2f
    .line 1155
    .end local v2    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_5
    return-void

    #@30
    .line 1174
    .restart local v2    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v4

    #@31
    .line 1175
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@34
    .line 1174
    throw v4
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.LBDSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v4, 0x1

    #@1
    .line 1184
    if-nez p1, :cond_0

    #@3
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v3

    #@9
    .line 1185
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    #@b
    .line 1186
    .local v2, "q":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v1, v2, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@d
    .line 1187
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    #@f
    if-nez v3, :cond_4

    #@11
    .line 1188
    const/4 v0, 0x0

    #@12
    .line 1189
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@15
    .line 1191
    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@17
    if-nez v3, :cond_1

    #@19
    .line 1192
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@1b
    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@1d
    .line 1193
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 1194
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@23
    iget-object v0, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@25
    .line 1195
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@27
    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@29
    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 1196
    if-eqz v0, :cond_1

    #@2d
    .line 1200
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@30
    .line 1202
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@32
    if-nez v3, :cond_3

    #@34
    .line 1203
    iput-boolean v4, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    #@36
    .line 1204
    :cond_3
    if-eqz v0, :cond_4

    #@38
    .line 1205
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@3b
    .line 1206
    return v4

    #@3c
    .line 1199
    :catchall_0
    move-exception v3

    #@3d
    .line 1200
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@40
    .line 1199
    throw v3

    #@41
    .line 1209
    :cond_4
    const/4 v3, 0x0

    #@42
    return v3
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1117
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.LBDSpliterator<TE;>;"
    iget-object v7, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    #@2
    .line 1118
    .local v7, "q":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->batch:I

    #@4
    .line 1119
    .local v1, "b":I
    if-gtz v1, :cond_5

    #@6
    const/4 v5, 0x1

    #@7
    .line 1120
    .local v5, "n":I
    :goto_0
    iget-boolean v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    #@9
    if-nez v8, :cond_8

    #@b
    .line 1121
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@d
    .local v2, "h":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v2, :cond_0

    #@f
    iget-object v2, v7, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@11
    if-eqz v2, :cond_8

    #@13
    .line 1122
    :cond_0
    iget-object v8, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@15
    if-eqz v8, :cond_8

    #@17
    .line 1123
    new-array v0, v5, [Ljava/lang/Object;

    #@19
    .line 1124
    .local v0, "a":[Ljava/lang/Object;
    iget-object v4, v7, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1b
    .line 1125
    .local v4, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v3, 0x0

    #@1c
    .line 1126
    .local v3, "i":I
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@1e
    .line 1127
    .local v6, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@21
    .line 1129
    if-nez v6, :cond_1

    #@23
    :try_start_0
    iget-object v6, v7, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@25
    if-eqz v6, :cond_3

    #@27
    .line 1131
    :cond_1
    iget-object v8, v6, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@29
    aput-object v8, v0, v3

    #@2b
    if-eqz v8, :cond_2

    #@2d
    .line 1132
    add-int/lit8 v3, v3, 0x1

    #@2f
    .line 1133
    :cond_2
    iget-object v6, v6, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    if-eqz v6, :cond_3

    #@33
    if-lt v3, v5, :cond_1

    #@35
    .line 1136
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@38
    .line 1138
    iput-object v6, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@3a
    if-nez v6, :cond_7

    #@3c
    .line 1139
    const-wide/16 v8, 0x0

    #@3e
    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    #@40
    .line 1140
    const/4 v8, 0x1

    #@41
    iput-boolean v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    #@43
    .line 1144
    :cond_4
    :goto_1
    if-lez v3, :cond_8

    #@45
    .line 1145
    iput v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->batch:I

    #@47
    .line 1147
    const/4 v8, 0x0

    #@48
    const/16 v9, 0x1110

    #@4a
    .line 1146
    invoke-static {v0, v8, v3, v9}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    #@4d
    move-result-object v8

    #@4e
    return-object v8

    #@4f
    .line 1119
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "h":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v3    # "i":I
    .end local v4    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "n":I
    .end local v6    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_5
    const/high16 v8, 0x2000000

    #@51
    if-lt v1, v8, :cond_6

    #@53
    const/high16 v5, 0x2000000

    #@55
    .restart local v5    # "n":I
    goto :goto_0

    #@56
    .end local v5    # "n":I
    :cond_6
    add-int/lit8 v5, v1, 0x1

    #@58
    .restart local v5    # "n":I
    goto :goto_0

    #@59
    .line 1135
    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "h":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .restart local v3    # "i":I
    .restart local v4    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v8

    #@5a
    .line 1136
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@5d
    .line 1135
    throw v8

    #@5e
    .line 1142
    :cond_7
    iget-wide v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    #@60
    int-to-long v10, v3

    #@61
    sub-long/2addr v8, v10

    #@62
    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    #@64
    const-wide/16 v10, 0x0

    #@66
    cmp-long v8, v8, v10

    #@68
    if-gez v8, :cond_4

    #@6a
    .line 1143
    const-wide/16 v8, 0x0

    #@6c
    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    #@6e
    goto :goto_1

    #@6f
    .line 1152
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "h":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v3    # "i":I
    .end local v4    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_8
    const/4 v8, 0x0

    #@70
    return-object v8
.end method
