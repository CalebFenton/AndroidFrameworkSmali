.class Ljava/util/ArrayList$SubList$1;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ArrayList$SubList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field cursor:I

.field expectedModCount:I

.field lastRet:I

.field final synthetic this$1:Ljava/util/ArrayList$SubList;

.field final synthetic val$index:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList$SubList;II)V
    .locals 1
    .param p2, "val$index"    # I
    .param p3, "val$offset"    # I

    #@0
    .prologue
    .line 1092
    .local p1, "this$1":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iput-object p1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@2
    iput p2, p0, Ljava/util/ArrayList$SubList$1;->val$index:I

    #@4
    iput p3, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 1093
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->val$index:I

    #@b
    iput v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@d
    .line 1094
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    #@10
    .line 1095
    iget-object v0, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@12
    iget-object v0, v0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@14
    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    #@16
    iput v0, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    #@18
    .line 1092
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1192
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    #@2
    iget-object v3, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@4
    iget-object v3, v3, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@6
    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    #@8
    if-eq v2, v3, :cond_0

    #@a
    .line 1193
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@c
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@f
    throw v2

    #@10
    .line 1196
    :cond_0
    :try_start_0
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@12
    .line 1197
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@14
    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList$SubList;->add(ILjava/lang/Object;)V

    #@17
    .line 1198
    add-int/lit8 v2, v1, 0x1

    #@19
    iput v2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@1b
    .line 1199
    const/4 v2, -0x1

    #@1c
    iput v2, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    #@1e
    .line 1200
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@20
    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@22
    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    #@24
    iput v2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 1191
    return-void

    #@27
    .line 1201
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    #@28
    .line 1202
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@2a
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2d
    throw v2
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1135
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1136
    iget-object v4, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@5
    iget v3, v4, Ljava/util/ArrayList$SubList;->size:I

    #@7
    .line 1137
    .local v3, "size":I
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@9
    .line 1138
    .local v1, "i":I
    if-lt v1, v3, :cond_0

    #@b
    .line 1139
    return-void

    #@c
    .line 1141
    :cond_0
    iget-object v4, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@e
    iget-object v4, v4, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@10
    iget-object v0, v4, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@12
    .line 1142
    .local v0, "elementData":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    #@14
    add-int/2addr v4, v1

    #@15
    array-length v5, v0

    #@16
    if-lt v4, v5, :cond_1

    #@18
    .line 1143
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@1a
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1d
    throw v4

    #@1e
    .line 1145
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-eq v2, v3, :cond_2

    #@20
    iget-object v4, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@22
    iget v4, v4, Ljava/util/ArrayList$SubList;->modCount:I

    #@24
    iget v5, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    #@26
    if-ne v4, v5, :cond_2

    #@28
    .line 1146
    iget v4, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    #@2a
    add-int/lit8 v1, v2, 0x1

    #@2c
    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/2addr v4, v2

    #@2d
    aget-object v4, v0, v4

    #@2f
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@32
    :cond_1
    move v2, v1

    #@33
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@34
    .line 1149
    :cond_2
    iput v2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@36
    iput v2, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    #@38
    .line 1150
    iget v4, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    #@3a
    iget-object v5, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@3c
    iget-object v5, v5, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@3e
    iget v5, v5, Ljava/util/ArrayList;->modCount:I

    #@40
    if-eq v4, v5, :cond_3

    #@42
    .line 1151
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@44
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@47
    throw v4

    #@48
    .line 1134
    :cond_3
    return-void
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 1098
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@2
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@4
    iget v1, v1, Ljava/util/ArrayList$SubList;->size:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1116
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 1103
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    #@2
    iget-object v3, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@4
    iget-object v3, v3, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@6
    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    #@8
    if-eq v2, v3, :cond_0

    #@a
    .line 1104
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@c
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@f
    throw v2

    #@10
    .line 1105
    :cond_0
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@12
    .line 1106
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@14
    iget v2, v2, Ljava/util/ArrayList$SubList;->size:I

    #@16
    if-lt v1, v2, :cond_1

    #@18
    .line 1107
    new-instance v2, Ljava/util/NoSuchElementException;

    #@1a
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@1d
    throw v2

    #@1e
    .line 1108
    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@20
    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@22
    iget-object v0, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@24
    .line 1109
    .local v0, "elementData":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    #@26
    add-int/2addr v2, v1

    #@27
    array-length v3, v0

    #@28
    if-lt v2, v3, :cond_2

    #@2a
    .line 1110
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@2c
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2f
    throw v2

    #@30
    .line 1111
    :cond_2
    add-int/lit8 v2, v1, 0x1

    #@32
    iput v2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@34
    .line 1112
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    #@36
    iput v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    #@38
    add-int/2addr v2, v1

    #@39
    aget-object v2, v0, v2

    #@3b
    return-object v2
.end method

.method public nextIndex()I
    .locals 1

    #@0
    .prologue
    .line 1155
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@2
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 1121
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    #@2
    iget-object v3, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@4
    iget-object v3, v3, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@6
    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    #@8
    if-eq v2, v3, :cond_0

    #@a
    .line 1122
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@c
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@f
    throw v2

    #@10
    .line 1123
    :cond_0
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@12
    add-int/lit8 v1, v2, -0x1

    #@14
    .line 1124
    .local v1, "i":I
    if-gez v1, :cond_1

    #@16
    .line 1125
    new-instance v2, Ljava/util/NoSuchElementException;

    #@18
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@1b
    throw v2

    #@1c
    .line 1126
    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@1e
    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@20
    iget-object v0, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@22
    .line 1127
    .local v0, "elementData":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    #@24
    add-int/2addr v2, v1

    #@25
    array-length v3, v0

    #@26
    if-lt v2, v3, :cond_2

    #@28
    .line 1128
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@2a
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2d
    throw v2

    #@2e
    .line 1129
    :cond_2
    iput v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@30
    .line 1130
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    #@32
    iput v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    #@34
    add-int/2addr v2, v1

    #@35
    aget-object v2, v0, v2

    #@37
    return-object v2
.end method

.method public previousIndex()I
    .locals 1

    #@0
    .prologue
    .line 1159
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    return v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .line 1163
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    #@2
    if-gez v1, :cond_0

    #@4
    .line 1164
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v1

    #@a
    .line 1165
    :cond_0
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    #@c
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@e
    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@10
    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    #@12
    if-eq v1, v2, :cond_1

    #@14
    .line 1166
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@16
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@19
    throw v1

    #@1a
    .line 1169
    :cond_1
    :try_start_0
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@1c
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    #@1e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList$SubList;->remove(I)Ljava/lang/Object;

    #@21
    .line 1170
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    #@23
    iput v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    #@25
    .line 1171
    const/4 v1, -0x1

    #@26
    iput v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    #@28
    .line 1172
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@2a
    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@2c
    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    #@2e
    iput v1, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 1162
    return-void

    #@31
    .line 1173
    :catch_0
    move-exception v0

    #@32
    .line 1174
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@34
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@37
    throw v1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1179
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    #@2
    if-gez v1, :cond_0

    #@4
    .line 1180
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v1

    #@a
    .line 1181
    :cond_0
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    #@c
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@e
    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@10
    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    #@12
    if-eq v1, v2, :cond_1

    #@14
    .line 1182
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@16
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@19
    throw v1

    #@1a
    .line 1185
    :cond_1
    :try_start_0
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    #@1c
    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    #@1e
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    #@20
    iget v3, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    #@22
    add-int/2addr v2, v3

    #@23
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 1178
    return-void

    #@27
    .line 1186
    :catch_0
    move-exception v0

    #@28
    .line 1187
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@2a
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2d
    throw v1
.end method
