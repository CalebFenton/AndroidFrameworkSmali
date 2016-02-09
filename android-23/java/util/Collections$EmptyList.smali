.class final Ljava/util/Collections$EmptyList;
.super Ljava/util/AbstractList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyList"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7ab817b43ca79edeL


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collections$EmptyList;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/util/Collections$EmptyList;-><init>()V

    #@3
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 110
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@2
    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 94
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I

    #@0
    .prologue
    .line 102
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@2
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@5
    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 106
    invoke-static {}, Ljava/util/Collections;->-get0()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 98
    const/4 v0, 0x0

    #@1
    return v0
.end method
