.class abstract Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field greylist-max-o next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field greylist-max-o nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/concurrent/LinkedBlockingDeque;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/LinkedBlockingDeque;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1070
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    iget-object p1, p1, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1073
    .local p1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1075
    :try_start_a
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->firstNode()Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_18

    .line 1076
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1d

    .line 1078
    :cond_18
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1079
    nop

    .line 1080
    return-void

    .line 1078
    :catchall_1d
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1079
    throw v0
.end method

.method private greylist-max-o succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1065
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    .local p1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextNode(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v0

    move-object v1, v0

    .end local p1    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-ne p1, v0, :cond_b

    .line 1066
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->firstNode()Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v1

    .line 1067
    :cond_b
    return-object v1
.end method


# virtual methods
.method abstract greylist-max-o firstNode()Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1108
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_9

    return-void

    .line 1111
    :cond_9
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1112
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1113
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1114
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const/16 v3, 0x40

    .line 1115
    .local v3, "batchSize":I
    const/4 v4, 0x0

    .line 1116
    .local v4, "es":[Ljava/lang/Object;
    const/4 v5, 0x1

    .line 1118
    .local v5, "len":I
    :cond_16
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1120
    if-nez v4, :cond_42

    .line 1121
    :try_start_1b
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextNode(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v6

    move-object v1, v6

    .line 1122
    nop

    .local v6, "q":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :goto_21
    if-eqz v6, :cond_34

    .line 1123
    iget-object v7, v6, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-eqz v7, :cond_2e

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x40

    if-ne v5, v7, :cond_2e

    .line 1124
    goto :goto_34

    .line 1122
    :cond_2e
    invoke-direct {p0, v6}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v7

    move-object v6, v7

    goto :goto_21

    .line 1125
    .end local v6    # "q":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_34
    :goto_34
    new-array v6, v5, [Ljava/lang/Object;

    move-object v4, v6

    .line 1126
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 1127
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    .line 1128
    const/4 v6, 0x1

    .local v6, "n":I
    goto :goto_43

    .line 1137
    .end local v6    # "n":I
    :catchall_40
    move-exception v0

    goto :goto_57

    .line 1130
    :cond_42
    const/4 v6, 0x0

    .line 1131
    .restart local v6    # "n":I
    :goto_43
    if-eqz v1, :cond_5b

    if-ge v6, v5, :cond_5b

    .line 1132
    iget-object v7, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v7, v4, v6

    if-eqz v7, :cond_51

    .line 1133
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1134
    add-int/lit8 v6, v6, 0x1

    .line 1131
    :cond_51
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v7
    :try_end_55
    .catchall {:try_start_1b .. :try_end_55} :catchall_40

    move-object v1, v7

    goto :goto_43

    .line 1137
    .end local v6    # "n":I
    :goto_57
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1138
    throw v0

    .line 1137
    .restart local v6    # "n":I
    :cond_5b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1138
    nop

    .line 1139
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_60
    if-ge v7, v6, :cond_6a

    .line 1140
    aget-object v8, v4, v7

    .line 1141
    .local v8, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1139
    .end local v8    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    .line 1143
    .end local v7    # "i":I
    :cond_6a
    if-lez v6, :cond_6e

    if-nez v1, :cond_16

    .line 1144
    :cond_6e
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1083
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1088
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-eqz v0, :cond_31

    .line 1090
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1091
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    .line 1092
    .local v0, "x":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1093
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1095
    const/4 v3, 0x0

    .line 1096
    .local v3, "e":Ljava/lang/Object;, "TE;"
    :try_start_11
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextNode(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v4

    move-object v1, v4

    :goto_16
    if-eqz v1, :cond_23

    iget-object v4, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    move-object v3, v4

    if-nez v4, :cond_23

    .line 1097
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-result-object v4

    move-object v1, v4

    goto :goto_16

    .line 1098
    :cond_23
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1099
    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_2c

    .line 1101
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1102
    nop

    .line 1103
    return-object v0

    .line 1101
    :catchall_2c
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1102
    throw v3

    .line 1089
    .end local v0    # "x":Ljava/lang/Object;, "TE;"
    .end local v2    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_31
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method abstract greylist-max-o nextNode(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 1147
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1148
    .local v0, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-eqz v0, :cond_21

    .line 1150
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1151
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1152
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1154
    :try_start_e
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_17

    .line 1155
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1c

    .line 1157
    :cond_17
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1158
    nop

    .line 1159
    return-void

    .line 1157
    :catchall_1c
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1158
    throw v2

    .line 1149
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
