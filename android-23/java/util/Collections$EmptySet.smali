.class final Ljava/util/Collections$EmptySet;
.super Ljava/util/AbstractSet;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptySet"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x15f5721db403cb28L


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collections$EmptySet;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/util/Collections$EmptySet;-><init>()V

    #@3
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 131
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@2
    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 127
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
    .line 123
    const/4 v0, 0x0

    #@1
    return v0
.end method
