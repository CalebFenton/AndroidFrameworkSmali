.class Ljava/util/Collections$CheckedSet;
.super Ljava/util/Collections$CheckedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x41249ba27ad9ffabL


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3074
    .local p0, "this":Ljava/util/Collections$CheckedSet;, "Ljava/util/Collections$CheckedSet<TE;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    #@3
    .line 3073
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3078
    .local p0, "this":Ljava/util/Collections$CheckedSet;, "Ljava/util/Collections$CheckedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSet;->c:Ljava/util/Collection;

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
    .line 3082
    .local p0, "this":Ljava/util/Collections$CheckedSet;, "Ljava/util/Collections$CheckedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSet;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method
