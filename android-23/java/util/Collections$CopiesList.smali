.class final Ljava/util/Collections$CopiesList;
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
    name = "CopiesList"
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
.field private static final serialVersionUID:J = 0x26033c45b17003f8L


# instance fields
.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final n:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    .line 65
    if-gez p1, :cond_0

    #@5
    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "length < 0: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 68
    :cond_0
    iput p1, p0, Ljava/util/Collections$CopiesList;->n:I

    #@21
    .line 69
    iput-object p2, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    #@23
    .line 64
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 73
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

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
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

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
    .line 81
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 82
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    #@8
    return-object v0

    #@9
    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@b
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@e
    throw v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 77
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    #@2
    return v0
.end method
