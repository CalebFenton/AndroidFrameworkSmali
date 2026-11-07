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
        "Ljava/util/Collections$CheckedList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x16bc0e55a2d7f2f1L


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/List;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 3906
    .local p0, "this":Ljava/util/Collections$CheckedRandomAccessList;, "Ljava/util/Collections$CheckedRandomAccessList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 3907
    return-void
.end method


# virtual methods
.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 3910
    .local p0, "this":Ljava/util/Collections$CheckedRandomAccessList;, "Ljava/util/Collections$CheckedRandomAccessList<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedRandomAccessList;

    iget-object v1, p0, Ljava/util/Collections$CheckedRandomAccessList;->list:Ljava/util/List;

    .line 3911
    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Collections$CheckedRandomAccessList;->type:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CheckedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 3910
    return-object v0
.end method
