.class final Ljava/util/Collections$SingletonList;
.super Ljava/util/AbstractList;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2aef29103ca79b97L


# instance fields
.field final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 271
    .local p0, "this":Ljava/util/Collections$SingletonList;, "Ljava/util/Collections$SingletonList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    .line 272
    iput-object p1, p0, Ljava/util/Collections$SingletonList;->element:Ljava/lang/Object;

    #@5
    .line 271
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 276
    .local p0, "this":Ljava/util/Collections$SingletonList;, "Ljava/util/Collections$SingletonList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonList;->element:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_1

    #@4
    if-nez p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0

    #@a
    :cond_1
    iget-object v0, p0, Ljava/util/Collections$SingletonList;->element:Ljava/lang/Object;

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 280
    .local p0, "this":Ljava/util/Collections$SingletonList;, "Ljava/util/Collections$SingletonList<TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 281
    iget-object v0, p0, Ljava/util/Collections$SingletonList;->element:Ljava/lang/Object;

    #@4
    return-object v0

    #@5
    .line 283
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@7
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@a
    throw v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 287
    .local p0, "this":Ljava/util/Collections$SingletonList;, "Ljava/util/Collections$SingletonList<TE;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method
