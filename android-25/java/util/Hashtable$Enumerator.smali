.class Ljava/util/Hashtable$Enumerator;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Enumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TT;>;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field entry:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected expectedModCount:I

.field index:I

.field iterator:Z

.field lastReturned:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field table:[Ljava/util/Hashtable$HashtableEntry;

.field final synthetic this$0:Ljava/util/Hashtable;

.field type:I


# direct methods
.method constructor <init>(Ljava/util/Hashtable;IZ)V
    .locals 2
    .param p2, "type"    # I
    .param p3, "iterator"    # Z

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    .local p1, "this$0":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 1144
    iput-object p1, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 1125
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    #@8
    invoke-static {v0}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@e
    .line 1126
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@10
    array-length v0, v0

    #@11
    iput v0, p0, Ljava/util/Hashtable$Enumerator;->index:I

    #@13
    .line 1127
    iput-object v1, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    #@15
    .line 1128
    iput-object v1, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    #@17
    .line 1142
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    #@19
    invoke-static {v0}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    #@1f
    .line 1145
    iput p2, p0, Ljava/util/Hashtable$Enumerator;->type:I

    #@21
    .line 1146
    iput-boolean p3, p0, Ljava/util/Hashtable$Enumerator;->iterator:Z

    #@23
    .line 1144
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 1150
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    #@3
    .line 1151
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    #@5
    .line 1152
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@7
    .line 1154
    .local v2, "t":[Ljava/util/Hashtable$HashtableEntry;
    :goto_0
    if-nez v0, :cond_0

    #@9
    if-lez v1, :cond_0

    #@b
    .line 1155
    add-int/lit8 v1, v1, -0x1

    #@d
    aget-object v0, v2, v1

    #@f
    goto :goto_0

    #@10
    .line 1157
    :cond_0
    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    #@12
    .line 1158
    iput v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    #@14
    .line 1159
    if-eqz v0, :cond_1

    #@16
    const/4 v3, 0x1

    #@17
    :cond_1
    return v3
.end method

.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 1182
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    invoke-virtual {p0}, Ljava/util/Hashtable$Enumerator;->hasMoreElements()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1186
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    #@2
    invoke-static {v0}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 1187
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@c
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@f
    throw v0

    #@10
    .line 1188
    :cond_0
    invoke-virtual {p0}, Ljava/util/Hashtable$Enumerator;->nextElement()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1163
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-object v1, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    #@2
    .line 1164
    .local v1, "et":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v2, p0, Ljava/util/Hashtable$Enumerator;->index:I

    #@4
    .line 1165
    .local v2, "i":I
    iget-object v3, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@6
    .line 1167
    .local v3, "t":[Ljava/util/Hashtable$HashtableEntry;
    :goto_0
    if-nez v1, :cond_0

    #@8
    if-lez v2, :cond_0

    #@a
    .line 1168
    add-int/lit8 v2, v2, -0x1

    #@c
    aget-object v1, v3, v2

    #@e
    goto :goto_0

    #@f
    .line 1170
    :cond_0
    iput-object v1, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    #@11
    .line 1171
    iput v2, p0, Ljava/util/Hashtable$Enumerator;->index:I

    #@13
    .line 1172
    if-eqz v1, :cond_3

    #@15
    .line 1173
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    #@17
    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    #@19
    .line 1174
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@1b
    iput-object v4, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    #@1d
    .line 1175
    iget v4, p0, Ljava/util/Hashtable$Enumerator;->type:I

    #@1f
    if-nez v4, :cond_2

    #@21
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@23
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_1
    :goto_1
    return-object v0

    #@24
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_2
    iget v4, p0, Ljava/util/Hashtable$Enumerator;->type:I

    #@26
    const/4 v5, 0x1

    #@27
    if-ne v4, v5, :cond_1

    #@29
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@2b
    goto :goto_1

    #@2c
    .line 1177
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_3
    new-instance v4, Ljava/util/NoSuchElementException;

    #@2e
    const-string/jumbo v5, "Hashtable Enumerator"

    #@31
    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@34
    throw v4
.end method

.method public remove()V
    .locals 7

    #@0
    .prologue
    .line 1192
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-boolean v4, p0, Ljava/util/Hashtable$Enumerator;->iterator:Z

    #@2
    if-nez v4, :cond_0

    #@4
    .line 1193
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v4

    #@a
    .line 1194
    :cond_0
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    #@c
    if-nez v4, :cond_1

    #@e
    .line 1195
    new-instance v4, Ljava/lang/IllegalStateException;

    #@10
    const-string/jumbo v5, "Hashtable Enumerator"

    #@13
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v4

    #@17
    .line 1196
    :cond_1
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    #@19
    invoke-static {v4}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    #@1c
    move-result v4

    #@1d
    iget v5, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    #@1f
    if-eq v4, v5, :cond_2

    #@21
    .line 1197
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@23
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@26
    throw v4

    #@27
    .line 1199
    :cond_2
    iget-object v5, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    #@29
    monitor-enter v5

    #@2a
    .line 1200
    :try_start_0
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    #@2c
    invoke-static {v4}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    #@2f
    move-result-object v3

    #@30
    .line 1201
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    #@32
    iget v4, v4, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@34
    const v6, 0x7fffffff

    #@37
    and-int/2addr v4, v6

    #@38
    array-length v6, v3

    #@39
    rem-int v1, v4, v6

    #@3b
    .line 1203
    .local v1, "index":I
    aget-object v0, v3, v1

    #@3d
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v2, 0x0

    #@3e
    :goto_0
    if-eqz v0, :cond_5

    #@40
    .line 1205
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    #@42
    if-ne v0, v4, :cond_4

    #@44
    .line 1206
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    #@46
    invoke-static {v4}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    #@49
    move-result v6

    #@4a
    add-int/lit8 v6, v6, 0x1

    #@4c
    invoke-static {v4, v6}, Ljava/util/Hashtable;->-set1(Ljava/util/Hashtable;I)I

    #@4f
    .line 1207
    iget v4, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    #@51
    add-int/lit8 v4, v4, 0x1

    #@53
    iput v4, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    #@55
    .line 1208
    if-nez v2, :cond_3

    #@57
    .line 1209
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@59
    aput-object v4, v3, v1

    #@5b
    .line 1212
    :goto_1
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    #@5d
    invoke-static {v4}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    #@60
    move-result v6

    #@61
    add-int/lit8 v6, v6, -0x1

    #@63
    invoke-static {v4, v6}, Ljava/util/Hashtable;->-set0(Ljava/util/Hashtable;I)I

    #@66
    .line 1213
    const/4 v4, 0x0

    #@67
    iput-object v4, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@69
    monitor-exit v5

    #@6a
    .line 1214
    return-void

    #@6b
    .line 1211
    :cond_3
    :try_start_1
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@6d
    iput-object v4, v2, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    goto :goto_1

    #@70
    .line 1199
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "index":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :catchall_0
    move-exception v4

    #@71
    monitor-exit v5

    #@72
    throw v4

    #@73
    .line 1204
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "index":I
    .restart local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :cond_4
    move-object v2, v0

    #@74
    .local v2, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@76
    goto :goto_0

    #@77
    .line 1217
    .end local v2    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_5
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@79
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@7c
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
