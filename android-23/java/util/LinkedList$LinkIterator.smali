.class final Ljava/util/LinkedList$LinkIterator;
.super Ljava/lang/Object;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ET:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TET;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastLink:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TET;>;"
        }
    .end annotation
.end field

.field link:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TET;>;"
        }
    .end annotation
.end field

.field final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TET;>;"
        }
    .end annotation
.end field

.field pos:I


# direct methods
.method constructor <init>(Ljava/util/LinkedList;I)V
    .locals 1
    .param p2, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<TET;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 67
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList<TE;>.LinkIterator<TET;>;"
    .local p1, "object":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TET;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput-object p1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@5
    .line 69
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@7
    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    #@9
    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    #@b
    .line 70
    if-ltz p2, :cond_1

    #@d
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@f
    iget v0, v0, Ljava/util/LinkedList;->size:I

    #@11
    if-gt p2, v0, :cond_1

    #@13
    .line 74
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@15
    iget-object v0, v0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@17
    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@19
    .line 75
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@1b
    iget v0, v0, Ljava/util/LinkedList;->size:I

    #@1d
    div-int/lit8 v0, v0, 0x2

    #@1f
    if-ge p2, v0, :cond_0

    #@21
    .line 76
    const/4 v0, -0x1

    #@22
    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@24
    :goto_0
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    if-ge v0, p2, :cond_2

    #@2a
    .line 77
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@2c
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@2e
    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@30
    .line 76
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@32
    add-int/lit8 v0, v0, 0x1

    #@34
    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@36
    goto :goto_0

    #@37
    .line 80
    :cond_0
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@39
    iget v0, v0, Ljava/util/LinkedList;->size:I

    #@3b
    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@3d
    :goto_1
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@3f
    if-lt v0, p2, :cond_2

    #@41
    .line 81
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@43
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@45
    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@47
    .line 80
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@49
    add-int/lit8 v0, v0, -0x1

    #@4b
    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@4d
    goto :goto_1

    #@4e
    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@50
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@53
    throw v0

    #@54
    .line 67
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TET;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 90
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList<TE;>.LinkIterator<TET;>;"
    .local p1, "object":Ljava/lang/Object;, "TET;"
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    #@2
    iget-object v3, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@4
    iget v3, v3, Ljava/util/LinkedList;->modCount:I

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 91
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@a
    iget-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@c
    .line 92
    .local v1, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    new-instance v0, Ljava/util/LinkedList$Link;

    #@e
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@10
    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    #@13
    .line 93
    .local v0, "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@15
    iput-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@17
    .line 94
    iput-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@19
    .line 95
    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@1b
    .line 96
    const/4 v2, 0x0

    #@1c
    iput-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    #@1e
    .line 97
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@24
    .line 98
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    #@26
    add-int/lit8 v2, v2, 0x1

    #@28
    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    #@2a
    .line 99
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@2c
    iget v3, v2, Ljava/util/LinkedList;->size:I

    #@2e
    add-int/lit8 v3, v3, 0x1

    #@30
    iput v3, v2, Ljava/util/LinkedList;->size:I

    #@32
    .line 100
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@34
    iget v3, v2, Ljava/util/LinkedList;->modCount:I

    #@36
    add-int/lit8 v3, v3, 0x1

    #@38
    iput v3, v2, Ljava/util/LinkedList;->modCount:I

    #@3a
    .line 89
    return-void

    #@3b
    .line 102
    .end local v0    # "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    .end local v1    # "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    :cond_0
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@3d
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@40
    throw v2
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 107
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList<TE;>.LinkIterator<TET;>;"
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@2
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@4
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@6
    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@8
    if-eq v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    #@0
    .prologue
    .line 111
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList<TE;>.LinkIterator<TET;>;"
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@2
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@4
    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

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

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TET;"
        }
    .end annotation

    #@0
    .prologue
    .line 115
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList<TE;>.LinkIterator<TET;>;"
    iget v1, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    #@2
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@4
    iget v2, v2, Ljava/util/LinkedList;->modCount:I

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 116
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@a
    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@c
    .line 117
    .local v0, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@e
    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@10
    if-eq v0, v1, :cond_0

    #@12
    .line 118
    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@14
    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    #@16
    .line 119
    iget v1, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    iput v1, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@1c
    .line 120
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@1e
    iget-object v1, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@20
    return-object v1

    #@21
    .line 122
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@23
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@26
    throw v1

    #@27
    .line 124
    .end local v0    # "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@29
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2c
    throw v1
.end method

.method public nextIndex()I
    .locals 1

    #@0
    .prologue
    .line 128
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList<TE;>.LinkIterator<TET;>;"
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TET;"
        }
    .end annotation

    #@0
    .prologue
    .line 132
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList<TE;>.LinkIterator<TET;>;"
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    #@2
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@4
    iget v1, v1, Ljava/util/LinkedList;->modCount:I

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 133
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@a
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@c
    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 134
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@12
    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    #@14
    .line 135
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@16
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@18
    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@1a
    .line 136
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@1c
    add-int/lit8 v0, v0, -0x1

    #@1e
    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@20
    .line 137
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    #@22
    iget-object v0, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@24
    return-object v0

    #@25
    .line 139
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    #@27
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@2a
    throw v0

    #@2b
    .line 141
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@2d
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@30
    throw v0
.end method

.method public previousIndex()I
    .locals 1

    #@0
    .prologue
    .line 145
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList<TE;>.LinkIterator<TET;>;"
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@2
    return v0
.end method

.method public remove()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList<TE;>.LinkIterator<TET;>;"
    const/4 v4, 0x0

    #@1
    .line 149
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    #@3
    iget-object v3, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@5
    iget v3, v3, Ljava/util/LinkedList;->modCount:I

    #@7
    if-ne v2, v3, :cond_2

    #@9
    .line 150
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 151
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    #@f
    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@11
    .line 152
    .local v0, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    #@13
    iget-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@15
    .line 153
    .local v1, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@17
    .line 154
    iput-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@19
    .line 155
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    #@1b
    iget-object v3, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@1d
    if-ne v2, v3, :cond_0

    #@1f
    .line 156
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@21
    add-int/lit8 v2, v2, -0x1

    #@23
    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    #@25
    .line 158
    :cond_0
    iput-object v1, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    #@27
    .line 159
    iput-object v4, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    #@29
    .line 160
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    #@2b
    add-int/lit8 v2, v2, 0x1

    #@2d
    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    #@2f
    .line 161
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@31
    iget v3, v2, Ljava/util/LinkedList;->size:I

    #@33
    add-int/lit8 v3, v3, -0x1

    #@35
    iput v3, v2, Ljava/util/LinkedList;->size:I

    #@37
    .line 162
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@39
    iget v3, v2, Ljava/util/LinkedList;->modCount:I

    #@3b
    add-int/lit8 v3, v3, 0x1

    #@3d
    iput v3, v2, Ljava/util/LinkedList;->modCount:I

    #@3f
    .line 148
    return-void

    #@40
    .line 164
    .end local v0    # "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    .end local v1    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    #@42
    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    #@45
    throw v2

    #@46
    .line 167
    :cond_2
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@48
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@4b
    throw v2
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TET;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 172
    .local p0, "this":Ljava/util/LinkedList$LinkIterator;, "Ljava/util/LinkedList<TE;>.LinkIterator<TET;>;"
    .local p1, "object":Ljava/lang/Object;, "TET;"
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    #@2
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    #@4
    iget v1, v1, Ljava/util/LinkedList;->modCount:I

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 173
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 174
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    #@e
    iput-object p1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@10
    .line 171
    return-void

    #@11
    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@16
    throw v0

    #@17
    .line 179
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@19
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1c
    throw v0
.end method
