.class Ljava/util/Collections$CheckedRandomAccessList;
.super Ljava/util/Collections$CheckedList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedRandomAccessList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x16bc0e55a2d7f2f1L


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2957
    .local p0, "this":Ljava/util/Collections$CheckedRandomAccessList;, "Ljava/util/Collections$CheckedRandomAccessList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    #@3
    .line 2956
    return-void
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2961
    .local p0, "this":Ljava/util/Collections$CheckedRandomAccessList;, "Ljava/util/Collections$CheckedRandomAccessList<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedRandomAccessList;

    #@2
    .line 2962
    iget-object v1, p0, Ljava/util/Collections$CheckedRandomAccessList;->list:Ljava/util/List;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Ljava/util/Collections$CheckedRandomAccessList;->type:Ljava/lang/Class;

    #@a
    .line 2961
    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CheckedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    #@d
    return-object v0
.end method
