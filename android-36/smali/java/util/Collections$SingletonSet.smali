.class Ljava/util/Collections$SingletonSet;
.super Ljava/util/AbstractSet;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x2c52419829c0b1bfL


# instance fields
.field private final greylist-max-o element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 5193
    .local p0, "this":Ljava/util/Collections$SingletonSet;, "Ljava/util/Collections$SingletonSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Ljava/util/Collections$SingletonSet;->element:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 5201
    .local p0, "this":Ljava/util/Collections$SingletonSet;, "Ljava/util/Collections$SingletonSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonSet;->element:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 5206
    .local p0, "this":Ljava/util/Collections$SingletonSet;, "Ljava/util/Collections$SingletonSet<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonSet;->element:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5207
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 5218
    .local p0, "this":Ljava/util/Collections$SingletonSet;, "Ljava/util/Collections$SingletonSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonSet;->element:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 5196
    .local p0, "this":Ljava/util/Collections$SingletonSet;, "Ljava/util/Collections$SingletonSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonSet;->element:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singletonIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 5214
    .local p0, "this":Ljava/util/Collections$SingletonSet;, "Ljava/util/Collections$SingletonSet<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 5199
    .local p0, "this":Ljava/util/Collections$SingletonSet;, "Ljava/util/Collections$SingletonSet<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 5210
    .local p0, "this":Ljava/util/Collections$SingletonSet;, "Ljava/util/Collections$SingletonSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonSet;->element:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singletonSpliterator(Ljava/lang/Object;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
