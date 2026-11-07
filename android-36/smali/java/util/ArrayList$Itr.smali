.class Ljava/util/ArrayList$Itr;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field greylist-max-o cursor:I

.field greylist-max-o expectedModCount:I

.field greylist-max-o lastRet:I

.field protected greylist-max-o limit:I

.field final synthetic blacklist this$0:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1056
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1049
    iget-object p1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/ArrayList;->-$$Nest$fgetsize(Ljava/util/ArrayList;)I

    move-result p1

    iput p1, p0, Ljava/util/ArrayList$Itr;->limit:I

    .line 1052
    const/4 p1, -0x1

    iput p1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    .line 1053
    iget-object p1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget p1, p1, Ljava/util/ArrayList;->modCount:I

    iput p1, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    .line 1056
    return-void
.end method


# virtual methods
.method final blacklist checkForComodification()V
    .registers 3

    .line 1110
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_9

    .line 1112
    return-void

    .line 1111
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1093
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/ArrayList;->-$$Nest$fgetsize(Ljava/util/ArrayList;)I

    move-result v0

    .line 1095
    .local v0, "size":I
    iget v1, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 1096
    .local v1, "i":I
    if-ge v1, v0, :cond_38

    .line 1097
    iget-object v2, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget-object v2, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1098
    .local v2, "es":[Ljava/lang/Object;
    array-length v3, v2

    if-ge v1, v3, :cond_32

    .line 1100
    :goto_14
    if-ge v1, v0, :cond_28

    iget-object v3, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    iget v4, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-ne v3, v4, :cond_28

    .line 1101
    invoke-static {v2, v1}, Ljava/util/ArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1100
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1103
    :cond_28
    iput v1, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 1104
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    .line 1105
    invoke-virtual {p0}, Ljava/util/ArrayList$Itr;->checkForComodification()V

    goto :goto_38

    .line 1099
    :cond_32
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1107
    .end local v2    # "es":[Ljava/lang/Object;
    :cond_38
    :goto_38
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 1059
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iget v0, p0, Ljava/util/ArrayList$Itr;->cursor:I

    iget v1, p0, Ljava/util/ArrayList$Itr;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1064
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    invoke-virtual {p0}, Ljava/util/ArrayList$Itr;->checkForComodification()V

    .line 1065
    iget v0, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 1066
    .local v0, "i":I
    iget v1, p0, Ljava/util/ArrayList$Itr;->limit:I

    if-ge v0, v1, :cond_1f

    .line 1068
    iget-object v1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1069
    .local v1, "elementData":[Ljava/lang/Object;
    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 1071
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 1072
    iput v0, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    aget-object v2, v1, v0

    return-object v2

    .line 1070
    :cond_19
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1067
    .end local v1    # "elementData":[Ljava/lang/Object;
    :cond_1f
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 1076
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iget v0, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    if-ltz v0, :cond_2a

    .line 1078
    invoke-virtual {p0}, Ljava/util/ArrayList$Itr;->checkForComodification()V

    .line 1081
    :try_start_7
    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1082
    iget v0, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    iput v0, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 1083
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    .line 1084
    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    .line 1085
    iget v0, p0, Ljava/util/ArrayList$Itr;->limit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$Itr;->limit:I
    :try_end_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_21} :catch_23

    .line 1088
    nop

    .line 1089
    return-void

    .line 1086
    :catch_23
    move-exception v0

    .line 1087
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1077
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
