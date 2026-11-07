.class Ljava/util/Collections$UnmodifiableSet;
.super Ljava/util/Collections$UnmodifiableCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x7fe26d2e70647fabL


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1296
    .local p0, "this":Ljava/util/Collections$UnmodifiableSet;, "Ljava/util/Collections$UnmodifiableSet<TE;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1297
    .local p0, "this":Ljava/util/Collections$UnmodifiableSet;, "Ljava/util/Collections$UnmodifiableSet<TE;>;"
    if-eq p1, p0, :cond_d

    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSet;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1298
    .local p0, "this":Ljava/util/Collections$UnmodifiableSet;, "Ljava/util/Collections$UnmodifiableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSet;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method
