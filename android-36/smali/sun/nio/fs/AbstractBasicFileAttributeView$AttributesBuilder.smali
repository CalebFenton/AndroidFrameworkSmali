.class Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
.super Ljava/lang/Object;
.source "AbstractBasicFileAttributeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/AbstractBasicFileAttributeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttributesBuilder"
.end annotation


# instance fields
.field private blacklist copyAll:Z

.field private blacklist map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist names:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/Set;[Ljava/lang/String;)V
    .registers 7
    .param p2, "requested"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 96
    .local p1, "allowed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->names:Ljava/util/Set;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->map:Ljava/util/Map;

    .line 97
    array-length v0, p2

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_50

    aget-object v2, p2, v1

    .line 98
    .local v2, "name":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 99
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->copyAll:Z

    goto :goto_2e

    .line 101
    :cond_23
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 103
    iget-object v3, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->names:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v2    # "name":Ljava/lang/String;
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 102
    .restart local v2    # "name":Ljava/lang/String;
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' not recognized"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    .end local v2    # "name":Ljava/lang/String;
    :cond_50
    return-void
.end method

.method static blacklist create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
    .registers 3
    .param p1, "requested"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;"
        }
    .end annotation

    .line 112
    .local p0, "allowed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;-><init>(Ljava/util/Set;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method blacklist add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method blacklist match(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 119
    iget-boolean v0, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->copyAll:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->names:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method blacklist unmodifiableMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->map:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
