.class final Ljava/util/Collections$EmptyMap;
.super Ljava/util/AbstractMap;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyMap"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x593614855adce7d0L


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 136
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collections$EmptyMap;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/util/Collections$EmptyMap;-><init>()V

    #@3
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 164
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@2
    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 140
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 144
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 148
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 152
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 156
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    #@0
    .prologue
    .line 160
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@2
    return-object v0
.end method
