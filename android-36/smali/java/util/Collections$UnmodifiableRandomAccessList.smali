.class Ljava/util/Collections$UnmodifiableRandomAccessList;
.super Ljava/util/Collections$UnmodifiableList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableRandomAccessList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x2348186ae0b7b9b1L


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1633
    .local p0, "this":Ljava/util/Collections$UnmodifiableRandomAccessList;, "Ljava/util/Collections$UnmodifiableRandomAccessList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    .line 1634
    return-void
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1652
    .local p0, "this":Ljava/util/Collections$UnmodifiableRandomAccessList;, "Ljava/util/Collections$UnmodifiableRandomAccessList<TE;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableList;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableRandomAccessList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1637
    .local p0, "this":Ljava/util/Collections$UnmodifiableRandomAccessList;, "Ljava/util/Collections$UnmodifiableRandomAccessList<TE;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableRandomAccessList;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableRandomAccessList;->list:Ljava/util/List;

    .line 1638
    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    .line 1637
    return-object v0
.end method
