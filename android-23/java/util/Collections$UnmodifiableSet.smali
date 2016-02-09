.class Ljava/util/Collections$UnmodifiableSet;
.super Ljava/util/Collections$UnmodifiableCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7fe26d2e70647fabL


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1313
    .local p0, "this":Ljava/util/Collections$UnmodifiableSet;, "Ljava/util/Collections$UnmodifiableSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    #@3
    .line 1312
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1317
    .local p0, "this":Ljava/util/Collections$UnmodifiableSet;, "Ljava/util/Collections$UnmodifiableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSet;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 1321
    .local p0, "this":Ljava/util/Collections$UnmodifiableSet;, "Ljava/util/Collections$UnmodifiableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSet;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method
