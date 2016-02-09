.class Ljava/util/Collections$CheckedListIterator;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2944
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    .local p1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2945
    iput-object p1, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    #@5
    .line 2946
    iput-object p2, p0, Ljava/util/Collections$CheckedListIterator;->type:Ljava/lang/Class;

    #@7
    .line 2944
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2982
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedListIterator;->type:Ljava/lang/Class;

    #@4
    invoke-static {p1, v1}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@b
    .line 2981
    return-void
.end method

.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 2950
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    #@0
    .prologue
    .line 2962
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2954
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    #@0
    .prologue
    .line 2970
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2966
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    #@0
    .prologue
    .line 2974
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 2958
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    #@5
    .line 2957
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2978
    .local p0, "this":Ljava/util/Collections$CheckedListIterator;, "Ljava/util/Collections$CheckedListIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedListIterator;->i:Ljava/util/ListIterator;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedListIterator;->type:Ljava/lang/Class;

    #@4
    invoke-static {p1, v1}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@b
    .line 2977
    return-void
.end method
