.class Ljava/util/ArrayList$ListItr;
.super Ljava/util/ArrayList$Itr;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "TE;>.Itr;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Ljava/util/ArrayList;I)V
    .registers 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1119
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iput-object p1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    .line 1120
    invoke-direct {p0, p1}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;)V

    .line 1121
    iput p2, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    .line 1122
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1162
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/ArrayList$ListItr;->checkForComodification()V

    .line 1165
    :try_start_3
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    .line 1166
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1167
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    .line 1168
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    .line 1169
    iget-object v1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    .line 1170
    iget v1, p0, Ljava/util/ArrayList$ListItr;->limit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ArrayList$ListItr;->limit:I
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_1d} :catch_1f

    .line 1173
    .end local v0    # "i":I
    nop

    .line 1174
    return-void

    .line 1171
    :catch_1f
    move-exception v0

    .line 1172
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 1125
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api nextIndex()I
    .registers 2

    .line 1129
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    return v0
.end method

.method public whitelist test-api previous()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1138
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/ArrayList$ListItr;->checkForComodification()V

    .line 1139
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 1140
    .local v0, "i":I
    if-ltz v0, :cond_1d

    .line 1142
    iget-object v1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1143
    .local v1, "elementData":[Ljava/lang/Object;
    array-length v2, v1

    if-ge v0, v2, :cond_17

    .line 1145
    iput v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    .line 1146
    iput v0, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    aget-object v2, v1, v0

    return-object v2

    .line 1144
    :cond_17
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1141
    .end local v1    # "elementData":[Ljava/lang/Object;
    :cond_1d
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api previousIndex()I
    .registers 2

    .line 1133
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1150
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    if-ltz v0, :cond_17

    .line 1152
    invoke-virtual {p0}, Ljava/util/ArrayList$ListItr;->checkForComodification()V

    .line 1155
    :try_start_7
    iget-object v0, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_e} :catch_10

    .line 1158
    nop

    .line 1159
    return-void

    .line 1156
    :catch_10
    move-exception v0

    .line 1157
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1151
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
